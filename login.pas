unit login;

{$mode objfpc}{$H+}
{$WARN 4104 off : Implicit string type conversion from "$1" to "$2"}
{$WARN 5024 off : Parameter "$1" not used}
interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, StdCtrls, BCPanel,
  BCButton;

type

  { TFlog }

  TFlog = class(TForm)
    Bok: TBCButton;
    Bann: TBCButton;
    cbUser: TComboBox;
    cbMacc: TComboBox;
    Epw: TEdit;
    Lmacc: TLabel;
    Lpw: TLabel;
    Lut: TLabel;
    Lvers: TLabel;
    pLog: TBCPanel;
    procedure BannClick(Sender: TObject);
    procedure BokClick(Sender: TObject);
    procedure cbMaccExit(Sender: TObject);
    procedure cbMaccKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbUserExit(Sender: TObject);
    procedure cbUserKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EpwKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LutClick(Sender: TObject);
  private

  public

  end;

const
  volte:integer=0;
var
  Flog: TFlog;
  xHost,xUser,xMacch,xDatabase,xUserProd,xUserPers,xPassword:string;
  log_in:boolean;

implementation

uses
  dm,
  units,
  windows; //per VK_

{$R *.lfm}

{ TFlog }

function encrypt(s:string):string;
var
  x:byte;
begin
  if length(s)>20 then begin
    mess('impossibile criptare con lunghezza>20',_info,_icons);
    result:='';
    exit;
  end;
  for x:=1 to length(s) do begin
    if ord(s[x])<48 then begin
      mess('impossibile criptare - cambiare carattere -> '+s[x]+' <-',_info,_icons);
      result:='';
      exit;
    end;
    s[x]:=chr(ord(s[x])-5-x);
    case s[x] of
      '\':s[x]:=#1;
      '''':s[x]:=#2;
    end;
  end;
  result:=s;
end;

function decrypt(s:string):string;
var
  x:byte;
begin
  for x:=1 to length(s) do begin
    if s[x]=#1 then
      s[x]:='\'
    else
      if s[x]=#2 then
        s[x]:='''';
    s[x]:=chr(ord(s[x])+5+x);
  end;

  result:='start:'+s+':end';
end;

function estraiCodice(daDove:string):string;
var
  x,p:byte;
  m:string;
begin
  daDove:=trim(daDove);
  p:=pos('(',daDove); //se non c'è il cod. tra parentesi (messo in autom. dopo il nome) si presume sia stato dato solo il codice
  if p=0 then
    result:=daDove
  else
    if length(daDove)=p then //se ultimo car., non ok
      result:=''
    else
      begin
      m:='';
      for x:=p+1 to length(daDove) do
        if daDove[x]<>')' then
          m:=m+daDove[x];
      result:=m;
    end;
end;

procedure TFlog.BokClick(Sender: TObject);
var
  pw,m,d,ut:string;
  s:widestring;
  p,x:byte;
  utok,maccok,pwok,ok,found:boolean;

  function ctrlPw(pw:string):boolean;
  var
    x:byte;
  begin
    if trim(pw)='' then
      result:=false
    else
      begin
        if length(pw)>20 then begin
          mess('password troppo lunga, max 20 caratteri',_info,_icons);
          result:=false;
        end;
        for x:=1 to length(pw) do
          if not (pw[x] in ['A'..'Z','a'..'z','0'..'9','-','_','?','!','#']) then begin
            mess('non valida - usare solo: lettere, numeri, -, _, ?, !, #',_info,_icons);
            result:=false;
            exit;
          end;
      end;
    result:=true;
  end;

begin //Bok
  utok:=false;
  maccok:=false;
  pwok:=false;
  Flog.BorderIcons:=[];
  //volte:=0;
  xUser:=estraiCodice(cbUser.Text);
  if xUser='' then begin
    mess('indicare codice utente',_info,_icons);
    cbUser.SetFocus;
    utok:=false;
    end
  else
    begin
    s:='select cod from pers where upper(cod)='+qs(xUser);
    zgo(fd.zq,s,'op');
    if fd.zq.IsEmpty then begin
      cbUser.SetFocus;
      utok:=false;
      mess('codice utente "'+xUser+'" non riconosciuto',_info,_icons);
      end
    else
      begin
      utok:=true;
    end;
  end;

  if trim(cbMacc.Text)='' then begin
    mess('indicare codice macchina',_info,_icons);
    cbMacc.SetFocus;
    maccok:=false;
    //exit;
    end
  else
    begin
    p:=pos('(',cbMacc.Text);
    m:=copy(cbMacc.Text,p+1,5); //si può quindi anche dare direttamente un codice a 2 cifre
    //if m[2]=')' then m:=copy(m,1,1);
    if pos(')',m)>0 then
      m:=copy(m,1,pos(')',m)-1);
    xMacch:=m;
    //deb('macch:'+m);

    //s:='select cod from categ where freea1='+qs('mac')+' and upper(cod)='+qs(xMacch);
    s:='select cod from macch where upper(cod)='+qs(xMacch); //18/08/2021
    zgo(fd.zq,s,'op');
    if fd.zq.IsEmpty then begin
      cbMacc.SetFocus;
      maccok:=false;
      mess('codice macchina "'+xMacch+'" non riconosciuto',_info,_icons);
      end
    else
      begin
      maccok:=true;
    end;
  end;

  if utok and maccok then begin
    if Epw.Text='çava' then begin //'chpw' then begin
      repeat
        pw:='';
        if not inputQuery('cambio password','nuova password:',pw) then
          exit;
        xPassword:='';
        if not inputQuery('verifica','ripetere password:',xPassword) then
          exit;
        ok:=pw=xPassword;
        if ok then
          ok:=ctrlPw(xPassword)
        else
          mess('le password non coincidono',_info,_icons);
      until ok;
      s:='update pers set pwba='+qs(encrypt(xPassword))+' where ut='+qs(xUser);
      zgo(fd.zq,s,'ex');
      Epw.Text:=xpassword;
    end;

    //if cercaParam('§') then begin
      //deb('1');
      found:=false;
      for x:=1 to paramCount do
        if pos('çaplane',paramStr(x))>0 then begin //v. poi
          d:=paramStr(x);
          found:=true;
          break;
        end;
      //deb(d);
    if found then
        if d='çaplanexmoi' then //questo param. da solo lascia entrare tutti senza pw (fino al 15/07/24 era §§)
          pwok:=true
        else
          begin //"çaplane" seguito da cod utente lascia entrare senza pw solo quell'utente
          if length(d)>1 then
            ut:=copy(d,9,255); //5,255);
          //deb(ut+'/'+xUser);
          if lowerCase(ut)=lowerCase(xUser) then //v. note a inizio main.pas
            pwok:=true;
        end;
    //end;

    if not pwok then begin
      xPassword:=encrypt(Epw.Text);
      s:='select pwba from pers where ut='+qs(xUser);
      zgo(fd.zq,s,'op');
      if (fd.zq.RecordCount=0) or ((vts(fd.zq['pwba']))='') then begin //pw mai definita perché facoltativa; se non si indica è ok e resta vuota
        pwok:=true;
        if xPassword<>'' then begin //se si indica la pw ed era vuota, aggiorna pw operatore
          s:='update pers set pwba='+qs(xPassword)+' where ut='+qs(xUser);
          //showmessage(s);
          zgo(fd.zq,s,'ex');
        end
        end
      else
        begin
        s:='select cod from pers where ut='+qs(xUser)+' and pwba='+qs(xPassword);
        zgo(fd.zq,s,'op');
        if fd.zq.RecordCount>=1 then
          pwok:=true
        else
          begin
          inc(volte);
          case volte of
            1:mess('dati di accesso non validi - riprovare',_info,_icons);
            2:mess('anche stavolta i dati di accesso non sono validi - riprovare',_info,_icons);
            else mess('è la '+i2s(volte)+'° volta che i dati di accesso non sono validi... - riprovare',_info,_icons);
          end;
        end;
      end;
    end;
  end;
  log_in:=utok and maccok and pwok;

  (*if log_in then
    deb('ok')
  else
    deb('non ok');*)

  if log_in then
    close;

  //deb('...');
end;

procedure TFlog.BannClick(Sender: TObject);
begin
  {if cambio_macc then begin
    close;
    exit;
  end;}
  log_in:=false;
  close;
  Halt(0);
end;

procedure TFlog.cbMaccExit(Sender: TObject);
var
  s:widestring;
  cod:string;
begin
  cod:=estraiCodice(cbMacc.Text);
  if cod='' then begin
    mess('indicare codice macchina valido',_info,_icons);
    cbMacc.SetFocus;
    end
  else
    begin
    s:='select cod from macch where upper(cod)='+qs(cod);
    zgo(fd.zq,s,'op');
    if fd.zq.IsEmpty then begin
      cbMacc.SetFocus;
      mess('codice macchina "'+cod+'" non riconosciuto',_info,_icons);
    end;
  end;
end;

procedure TFlog.cbMaccKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if key=VK_RETURN then
    if Epw.Visible then
      Epw.SetFocus
    else
      BokClick(application);
end;

procedure TFlog.cbUserExit(Sender: TObject);
var
  s:widestring;
  cod:string;
begin
  cod:=estraiCodice(cbUser.Text);
  if cod='' then begin
    mess('indicare codice utente valido',_info,_icons);
    cbUser.SetFocus;
    end
  else
    begin
    s:='select cod from pers where upper(cod)='+qs(cod);
    zgo(fd.zq,s,'op');
    if fd.zq.IsEmpty then begin
      cbUser.SetFocus;
      mess('codice utente "'+cod+'" non riconosciuto',_info,_icons);
    end;
  end;
end;

procedure TFlog.cbUserKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if key=VK_RETURN then
    cbMacc.SetFocus;
end;

procedure TFlog.EpwKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key=VK_RETURN then
    BokClick(application);
end;

procedure TFlog.FormCreate(Sender: TObject);
begin
  log_in:=false;
end;

procedure TFlog.FormShow(Sender: TObject);
var
  par,m,des,s:string;
  x:word;
  p:byte;
begin
  Flog.BorderIcons:=[];
  volte:=0;

  (*xMacch:='2';
  xHost:='192.168.1.11';
  xUser:='postgres';
  xPassword:='postgres';
  xDatabase:='prod';*)
  //xMacch:='2';
  (*xHost:='192.168.1.11';
  xUser:='postgres'; //'hal';
  xPassword:=''; //'bdr529';
  xDatabase:='prod';*)

  (*xMacch:='';
  xHost:='192.168.1.11';
  xUser:='';
  xPassword:='';
  xDatabase:='prod';*)

  xUser:=''; xMacch:=''; xHost:=''; xDatabase:='';
  for x:=1 to application.ParamCount do begin
    par:=lowerCase(paramStr(x));
    p:=pos('macc=',par);
    if p>0 then
      xMacch:=copy(par,p+5,255)
    else
      begin
      p:=pos('ut=',par);
      if p>0 then
        xUser:=upperCase(copy(par,p+3,255))
      else
        begin
        p:=pos('server=',par);
        if p>0 then
          xHost:=lowerCase(copy(par,p+7,255))
        else
          begin
          p:=pos('db=',par);
          if p>0 then
            xDatabase:=lowerCase(copy(par,p+3,255));
        end;
      end;
    end;
  end; //for

  if xHost='' then
    xHost:='192.168.1.11'; //'serverdell';
  if xDatabase='' then
    xDatabase:='prod';
  cbMacc.Text:='';
  if xMacch<>'' then //da param. icona
    cbMacc.Text:=xMacch;
  cbUser.Text:='';
  if xUser<>'' then //da param. icona
    cbUser.Text:=xUser;

  //deb('ante login');
  (*//deve connettersi "anonimamente" per leggere utenti e macchine:
  //try
    with fd do begin
      Zconnection.Connected:=false;
      //Zconnection.LibraryLocation:=pLoc+'\libpq.dll';
      Zconnection.User:='postgres';
      Zconnection.Password:='postgres';
      Zconnection.HostName:=xHost;
      Zconnection.Database:=xDatabase;
      Zconnection.Connect;
    end;*)
  (*except
    mess('impossibile leggere macchine',_info,_icons);
    log_in:=false;
    close;
  end;*)


  (*try
    with fd do begin
      Zconnection.Connected:=false;
      //Zconnection.LibraryLocation:=pLoc+'\libpq.dll';
      Zconnection.User:=xUser; //des;
      Zconnection.Password:=xPassword;
      Zconnection.HostName:=xHost; //'localhost'
      Zconnection.Database:=xDatabase;
      Zconnection.Connect;
    end;
  except
    on E:Exception do begin
      mess('accesso non riuscito ('+E.Message+')'+cr
        +'(macc='+xMacch+', ut='+xUser+', pw='+xPassword+')',_info,_icons);
      close;
      Halt(0);
    end;
  end;*)

  //if fd.Zconnection.Connected then deb('connesso');
  s:='select cod,descr from pers where att=1 and macch<>''''';
  zgo(fd.zq,s,'op');
  //deb('query ok');
  //deb(i2s(fd.zq.recordcount)+' recs');
  if fd.zq.IsEmpty then begin
    mess('nessun utente definito nel server',_info,_icons);
    log_in:=false;
    close;
    end
  else
    begin
    if xUser<>'' then
      m:='('+xUser+')';
    fd.zq.First;
    cbUser.Items.Clear;
    //deb('1');
    while not fd.zq.eof do begin
      s:=format('%-s (%-s)',[vts(fd.zq['descr']),vts(fd.zq['cod'])]);
      //deb(s);
      cbUser.Items.Add(s); //vts(zq['cod'])+' ('+vts(zq['descr'])+')');
      if xUser<>'' then
        if pos(m,s)>0 then
          des:=s;
      fd.zq.Next;
    end;
  end;
  if xUser<>'' then
    cbUser.Text:=des;

  s:='select cod,des from macch where el=1 order by des';
  zgo(fd.zq,s,'op');
  if fd.zq.IsEmpty then begin
    mess('nessuna macchina definita nel server',_info,_icons);
    log_in:=false;
    close;
    end
  else
    begin
    if xMacch<>'' then
      m:='('+xMacch+')';
    fd.zq.First;
    cbMacc.Items.Clear;
    while not fd.zq.eof do begin
      s:=format('%-s (%-s)',[vts(fd.zq['des']),vts(fd.zq['cod'])]);
      cbMacc.Items.Add(s);
      if xMacch<>'' then
        if pos(m,s)>0 then
          des:=s;
      fd.zq.Next;
    end;
    if xMacch<>'' then
      cbMacc.Text:=des;
  end;

  fd.zq.Close;
  //fd.Zconnection.Connected:=false; //poi si riconnette con il nome utente

  cbUser.SetFocus;
end;

procedure TFlog.LutClick(Sender: TObject);
begin
  deb(decrypt(']bYf'));
end;

end.

