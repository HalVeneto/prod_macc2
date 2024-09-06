unit helps;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, SQLDB, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, ZDataset, Rxdbgrid;

type

  { TFel }

  TFel = class(TForm)
    Bcerca: TButton;
    Bclose: TSpeedButton;
    Bflt: TSpeedButton;
    Bflt1: TSpeedButton;
    dsZqH: TDataSource;
    dbgH: TRxDBGrid;
    Ecerca: TEdit;
    Lhint: TLabel;
    zqH: TZQuery;
    procedure BcercaClick(Sender: TObject);
    procedure BcloseClick(Sender: TObject);
    procedure Bok(Sender: TObject);
    procedure BfltClick(Sender: TObject);
    procedure dbgHDblClick(Sender: TObject);
    procedure dbgHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

const
  maxHelpV=5;

type
  helpv_type=array[0..maxHelpV] of string[20];

procedure elenca(sql:widestring; ccod:byte; tit:string; head:array of string);

var
  Fel: TFel;
  esc_:boolean; //indica se è stato battuto ESC nella grid degli help
  helpCod_:string[50]; //ritorna il cod. dall'help
  arrHelpCod_:array[1..6] of string[200]; //ritorna un array con codice composto; 200 perché può ritornare anche mail

implementation

{$R *.lfm}

{ TFel }

uses
  //dm,
  LCLType; //serve per VK_
  //units; //per mess()
  //utils;

function qs(cosa:string):string; //duplicato da units.pas
begin
  result:=quotedStr(cosa);
end;

function vlr(cosa:string):double; //trasf. stringa in double, rende 0 se trasf. non valida - duplicato da units.pas
var
  ctrl:integer;
  x:byte;
  valore:double;
  nn:string;
begin
  cosa:=trim(cosa); //elimina spazi
  //elimina tutto quello che non è cifre o "segno -" o punto:
  nn:='';
  if cosa='' then
    valore:=0
  else
    begin
    for x:=1 to length(cosa) do
      if cosa[x]=',' then
        cosa[x]:='.';
    for x:=1 to length(cosa) do
      if cosa[x] in ['-','.','0'..'9'] then
        nn:=nn+cosa[x];
    val(nn,valore,ctrl);
    if ctrl<>0 then
      valore:=0;
  end;
  result:=valore;
end;

procedure TFel.dbgHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN:begin
      close;
      esc_:=false; //è stato selez. un codice che viene gestito in elenca()
    end;
    VK_ESCAPE:close;
  end;
  esc_:=key=VK_ESCAPE;
end;

procedure TFel.dbgHDblClick(Sender: TObject);
begin
  close;
  esc_:=false; //è stato selez. un codice che viene gestito in elenca()
end;

procedure TFel.BcercaClick(Sender: TObject);
begin
  if trim(Ecerca.Text)='' then begin
    //mess('cosa cerco?',_info,_icons);
    showMessage('cosa cerco?');
    exit;
  end;
  //dbgH.ShowFilterDialog;
  (*dbgH.SelectAllRows;
  for x:=1 to dbgH.SelectedRows.Count-1 do begin;
    des:=dbgH.DataSource.DataSet.Fields[1].AsString;
    //...
  end;
  dbgH.DeSelectAllRows;*)
  if trim(Ecerca.Text)<>'' then begin
    zqh.Filtered:=false;
    if not zqH.Locate(zqh.Fields[0].FieldName,Ecerca.Text{%H-},[loCaseInsensitive,loPartialKey]) then
      //mess('non trovato',_info,_icons);
      showMessage('non trovato'); //per evitare di usare dm.pas
  end;
end;

procedure TFel.BcloseClick(Sender: TObject);
begin
  esc_:=true;
  close;
end;

procedure TFel.Bok(Sender: TObject);
begin
  close;
  esc_:=false; //è stato selez. un codice che viene gestito in elenca()
end;

procedure TFel.BfltClick(Sender: TObject);
var
  campo,flt,sql:string;
  x:byte;
  p:integer;
  lens:array[1..22] of integer; //22 fuzzy
begin
  if trim(Ecerca.Text)='' then begin
    //mess('cosa filtro?',_info,_icons);
    showMessage('cosa filtro?');
    exit;
  end;
  campo:=zqh.Fields[0].FieldName;
  for x:=0 to dbgH.Columns.Count-1 do
    lens[x]:=dbgH.Columns[x].Width;
  sql:=zqH.SQL.Text;
  p:=pos('order by',sql);
  if trim(Ecerca.Text)='' then
    flt:=''
  else
    flt:=' and lower('+campo+') like '+qs('%'+lowerCase(Ecerca.Text)+'%');
  if p>0 then
    insert(flt,sql,p-1)
  else
    sql+=flt;
  zqH.Close;
  zqH.SQL.Clear;
  zqH.SQL.Add(sql);
  zqH.Open;
  for x:=0 to dbgH.Columns.Count-1 do
    dbgH.Columns[x].Width:=lens[x];
  dbgH.Refresh;
end;

procedure TFel.FormShow(Sender: TObject);
var
  w,x:longint;
begin
  //dbgH.ScrollWidth:=50;
  if Fel.Left<0 then
    Fel.Left:=0;
  if Fel.Top<0 then
    Fel.Top:=0;
  if Fel.Top>screen.Height-50 then
    Fel.Top:=10;
  if Fel.Left>screen.Width-100 then
    Fel.Left:=10;
  if Fel.Width>screen.Width-10 then //se > ampiezza screen, riduci
    Fel.Width:=screen.Width-10;

  //showmessage('left:'+inttostr(Fel.Left)+' w:'+inttostr(Fel.Width)+' scrw:'+inttostr(screen.width));
  //showmessage('left:'+inttostr(Fel.Left)+' w:'+inttostr(Fel.Width));

  //--->ampiezza minima 520 messa in constraint<---
  w:=0;
  for x:=0 to dbgH.Columns.Count-1 do begin //se colonne troppo grandi, ridimensiona
    if dbgH.Columns[x].Width>350 then
      dbgH.Columns[x].Width:=350;
    w:=w+dbgH.Columns[x].Width;
  end;
  Fel.Width:=w+40; //ridimensiona finestra



  if Fel.Left+Fel.Width>screen.Width then //se estremità dx esce da screen, sposta a sx
    Fel.Left:=2;

  //showmessage('left:'+inttostr(Fel.Left)+' w:'+inttostr(Fel.Width)+' scrw:'+inttostr(screen.width));

end;

//---

procedure elenca(sql:widestring; ccod:byte; tit:string; head:array of string);
var
  p,psz,x:byte;
  w,wdt:word;
  titolo:string;
  //hf,rf:TFont; //TFreeTypeFont;
begin
  with Fel do begin
    //ccod: numero campi codice da ritornare (da porre all'inizio elenco; non sono visualizzati nell'help)
    helpCod_:=''; //new
    //zqH.DataSource:=nil;
    zqH.Close;
    zqH.SQL.Clear;
    zqH.SQL.Add(sql{%H-});
    zqH.Open;

    if zqH.IsEmpty then begin
      esc_:=true;
      //mess('nessuna corrispondenza trovata',_info,_icons);
      showMessage('nessuna corrispondenza trovata');
      exit;
    end;

    //deb(i2s(zqH.FieldCount));
    //nasconde campi codice nella finestra (fino a ccod):
    for x:=0 to zqH.FieldCount-1 do
      zqH.fields[x].Visible:=x>=ccod;
    dbgH.DataSource:=dsZqH;
    dbgH.Visible:=true;
    caption:=tit;
    esc_:=true; //se non si esce con 2clic non seleziona codice
    width:=500;
    height:=320;

    (*hf:=TFreeTypeFont.Create;
    hf.Name:='Calibri'; //'Arial';
    hf.SizeInPoints:=10;
    hf.Style:=[fsItalic];

    rf:=TFont.Create;
    rf.Name:='Calibri'; //'Tahoma';
    rf.SizeInPoints:=10;
    rf.Style:=[fsBold];*)

    //dimensiona finestra secondo campi da visualizzare:
    w:=0;
    //dbgH.AutoAdjustColumns;
    p:=0;
    //deb('colcount='+i2s(dbgH.Columns.Count));
    for x:=0 to dbgH.Columns.Count-1 do
      if (dbgH.Columns[x].Visible) and (dbgH.Columns[x].Width>0) then
        inc(p);

    for x:=0 to p-1 do begin
      //if (dbgH.Columns[x].Visible) and (dbgH.Columns[x].Width>0) then begin
        titolo:=head[x];
        psz:=pos(':',titolo);
        if psz>0 then begin
          wdt:=trunc(vlr(copy(titolo,psz+1,255)));
          //dbgH.Columns[x+1].Width:=wdt;
          if dbgH.Columns[x+ccod].Width>wdt then //new 01/07/24
            dbgH.Columns[x+ccod].Width:=wdt; //c.s.
          titolo:=copy(titolo,1,psz-1);
          //showmessage(i2s(x)+':'+i2s(wdt)+'->'+titolo);
        end;
        w:=w+wdt+2;
      //end; disab. 07/07/24

      //if length(titolo)>x then
        dbgH.Columns[x+ccod].Title.Caption:=titolo //nb: + ccod, campi chiave da saltare
      //end;
      //else
        //dbgH.Columns[x].Title.Caption:='';
      //dbgH.Columns[x].Title.Font:=hf;
      //dbgH.Columns[x].Font:=rf;

      //end;
    end;

    try
      //dbgH.AutoAdjustColumns; //disab. 09/12/23, non dimensiona correttamente, tronca
      //dbgH.AutoSize:=true;
      //Fel.Width:=w+100*2;
    finally
      (*try ...spesso dà list index out of bounds...
        for x:=0 to length(head) do  begin
          p:=pos(':',head[x]);
          if p>0 then begin
            wdt:=trunc(vlr(copy(head[x],p+1,255)));
            dbgH.Columns[x+ccod].Width:=wdt;
          end;
        end;
        w:=0;
        for x:=0 to dbgH.Columns.Count-1 do begin
          w:=w+dbgH.Columns[x].Width;
          //deb(i2s(w));
        end;
        if w<250 then
          w:=250; //else non si vede titolo
        Fel.Width:=w+20*2;
      finally
      end;*)
      ShowModal;
    end;

    if not esc_ then begin
      try
        if ccod=1 then
          helpCod_:=zqH.fields[0].Text
        else
          begin
          for x:=1 to 6 do
            arrHelpCod_[x]:='';
          for x:=1 to ccod do
            arrHelpCod_[x]:=zqH.fields[x-1].Text;
          //showmessage('1:'+arrHelpCod_[1]+' 2:'+arrHelpCod_[2]);
        end;
      except
        helpCod_:='';
      end;
    end;
  end; //with
end;


end.

