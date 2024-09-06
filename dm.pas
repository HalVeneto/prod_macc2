unit dm;

(*
- qImm: select distinct d.cod,
((replace(d.des,chr(157),'ø'))::character varying) as des,
d.lungh,d.diam, d.immnom,d.immjpg,tc.descr as cli, tc.data,rc.commint
from dis d
left join rcomm rc on rc.dis=d.cod
left join tcomm tc on tc.cod=rc.cod
where cod is not null limit 1
- host: 192.168.1.11 port 5432 / localhost 5434
*)

{$mode ObjFPC}{$H+}
{$WARN 5024 off : Parameter "$1" not used}
{$WARN 4104 off : Implicit string type conversion from "$1" to "$2"}
{$WARN 4105 off : Implicit string type conversion with potential data loss from "$1" to "$2"}

interface

uses
  Classes, SysUtils, PQConnection, SQLDB, DB,
  ZConnection, ZDataset, //ZAbstractRODataset,
  System.UITypes,
  login, //per xUser, 19/07/24, verificare
  units;

type
  { Tfd }
  Tfd = class(TDataModule)
    dsTempi: TDataSource;
    dsImm: TDataSource;
    dsRtem1: TDataSource;
    dsTempi1: TDataSource;
    dsRtem: TDataSource;
    dsMeff: TDataSource;
    dsZq: TDataSource;
    qImmcli: TStringField;
    qImmcod: TStringField;
    qImmcommint: TLongintField;
    qImmdata: TDateField;
    qImmdes: TStringField;
    qImmdiam: TFloatField;
    qImmimmjpg: TBlobField;
    qImmimmnom: TStringField;
    qImmlungh: TFloatField;
    TmEffapparecchio: TStringField;
    TmEffcliente: TStringField;
    TmEffcod: TFloatField;
    TmEffcodcli: TStringField;
    TmEffdata: TDateField;
    TmEfff1: TFloatField;
    TmEffgaranzia: TStringField;
    TmEffmacch: TStringField;
    TmEffnotes: TMemoField;
    TmEffperiod: TLongintField;
    TmEffscad: TDateField;
    TmEfftipop: TLongintField;
    Trtem1: TZQuery;
    Trtem1Cli: TStringField;
    Trtem1cod: TFloatField;
    Trtem1comm: TLongintField;
    Trtem1Dis: TStringField;
    Trtem1Pz: TStringField;
    Trtem1riga: TFloatField;
    Trtem1rigalav: TLongintField;
    Trtem1tmp: TFloatField;
    TrtemCli: TStringField;
    Trtemcod: TFloatField;
    Trtemcomm: TLongintField;
    TrtemDis: TStringField;
    TrtemPz: TStringField;
    Trtemriga: TFloatField;
    Trtemrigalav: TLongintField;
    Trtemtmp: TFloatField;
    Ttempi1: TZQuery;
    Trtem: TZQuery;
    TmEff: TZQuery;
    Ttempi1alle: TTimeField;
    Ttempi1cod: TFloatField;
    Ttempi1ctrmin: TFloatField;
    Ttempi1ctrore: TFloatField;
    Ttempi1dalle: TTimeField;
    Ttempi1data: TDateField;
    Ttempi1DesNote: TStringField;
    Ttempi1dessost: TMemoField;
    Ttempi1lav: TStringField;
    Ttempi1macch: TStringField;
    Ttempi1ncr: TLongintField;
    Ttempi1note: TMemoField;
    Ttempi1noteint: TMemoField;
    Ttempi1olio: TLongintField;
    Ttempi1oliod: TFloatField;
    Ttempi1oliog: TFloatField;
    Ttempi1pers: TStringField;
    Ttempi1rigalav: TLongintField;
    Ttempi1sost: TLongintField;
    Ttempi1sugg: TMemoField;
    Ttempi1tipo: TStringField;
    Ttempi1tipoman: TLongintField;
    Ttempialle: TTimeField;
    Ttempicod: TFloatField;
    Ttempictrmin: TFloatField;
    Ttempictrore: TFloatField;
    Ttempidalle: TTimeField;
    Ttempidata: TDateField;
    TtempiDesNote: TStringField;
    Ttempidessost: TMemoField;
    Ttempilav: TStringField;
    Ttempimacch: TStringField;
    Ttempincr: TLongintField;
    Ttempinote: TMemoField;
    Ttempinoteint: TMemoField;
    Ttempiolio: TLongintField;
    Ttempioliod: TFloatField;
    Ttempioliog: TFloatField;
    Ttempipers: TStringField;
    Ttempirigalav: TLongintField;
    Ttempisost: TLongintField;
    Ttempisugg: TMemoField;
    Ttempitipo: TStringField;
    Ttempitipoman: TLongintField;
    ZConn: TZConnection;
    Ttempi: TZQuery;
    zq: TZQuery;
    qImm: TZQuery;
    procedure Trtem1AfterPost(DataSet: TDataSet);
    procedure Trtem1_AfterPost(DataSet: TDataSet);
    procedure Trtem1_CalcFields(DataSet: TDataSet);
    procedure TrtemAfterPost(DataSet: TDataSet);
    procedure TrtemCalcFields(DataSet: TDataSet);
    procedure Ttempi1AfterPost(DataSet: TDataSet);
    procedure Ttempi1_CalcFields(DataSet: TDataSet);
    procedure TmEffCalcFields(DataSet: TDataSet);
    procedure TtempiAfterPost(DataSet: TDataSet);
    procedure TtempiBeforePost(DataSet: TDataSet);
    procedure TtempiCalcFields(DataSet: TDataSet);
    procedure TtempinoteGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
  private

  public

  end;

type
  finestre_type=record //indica se la finestra è già attiva (true) o no
    simp,manut:boolean;
  end;
  cfg_type=record
    blocca,
    dataIniMan,ctrMacch,pdf:string;
  end;

const
  estensioni_ammesse='pdfjpgtifbmppng';
  campi_tempi:
    string=
      't.cod,t.data,t.macch,t.pers,t.lav,t.note,t.noteint,t.ncr,t.tipo,' +
      't.dalle,t.alle,t.tipoman,t.olio,t.sost,t.oliog,t.oliod,t.dessost,t.sugg,' +
      't.ctrore,t.ctrmin,rigalav';
  maxComm:byte=6;
  _test_:Boolean=True; //se True legge in locale

var
  fd: Tfd;
  clOrange:TColor;
  stop_timer:boolean;
  rcfg:cfg_type;
  reg_rapida_attiva:boolean;

  //procedure sqgo(sq:TSqlQuery; tr:TSqlTransaction; s:WideString; az:string);
  procedure zgo(sq:TZQuery; s:widestring; az:string);
  function maxCodNum(tblName,campo:string; tbl:TZQuery):longint;
  function pulisci(stg:string):string; //toglie note come [2pz], [2h], {100°}<-posizione

implementation

uses
  Dialogs; //solo per showmessage e per debug

{$R *.lfm}

procedure zgo(sq:TZQuery; s:WideString; az:string);
begin
  sq.Close;
  sq.SQL.Clear;
  sq.SQL.Add(s);
  if az='op' then begin
    sq.Open;
    sq.First;
    end
  else
    if az='ex' then
      sq.ExecSQL
    else
      mess('impossibile eseguire query - azione "'+az+'" sconosciuta','attenzione',_icons);
end;

{ Tfd }

procedure Tfd.Ttempi1AfterPost(DataSet: TDataSet);
begin
  Ttempi1.ApplyUpdates;
end;

procedure Tfd.Trtem1_AfterPost(DataSet: TDataSet);
begin
  Trtem1.ApplyUpdates();
end;

procedure Tfd.Trtem1_CalcFields(DataSet: TDataSet);
begin

end;

procedure Tfd.Trtem1AfterPost(DataSet: TDataSet);
begin
  Trtem1.ApplyUpdates;
end;

procedure Tfd.TrtemAfterPost(DataSet: TDataSet);
begin
  Trtem.ApplyUpdates();
end;

procedure Tfd.TrtemCalcFields(DataSet: TDataSet);
var
  ok:Boolean;
  s:WideString;
begin
  if Trtem.State=dsInactive then
    exit;
  if trim(TrtemComm.Text)<>'' then begin
    if trim(TrtemRigalav.Text)='' then
      ok:=false
    else
      begin
      s:='select rc.dis,rc.qta,tc.descr as nome';
      agg(s,'from rcomm rc');
      agg(s,'left join tcomm tc on rc.anno=tc.anno and rc.cod=tc.cod');
      agg(s,'where rc.commint='+TrtemComm.Text);
      zgo(zq,s,'op');
      ok:=zq.RecordCount>0;
    end;
    if ok then begin
      TrtemCli.Value:=vts(zq['nome']);
      TrtemDis.Value:=vts(zq['dis']);
      TrtemPz.Value:=vts(zq['qta']);
    end;
  end;
end;

procedure Tfd.Ttempi1_CalcFields(DataSet: TDataSet);
var
  des:string;
begin
  des:=trim(Ttempi1Note.AsString);
  if length(des)>1 then
    if des[length(des)]='[' then //a volte resta...
      des:=copy(des,1,length(des)-1);
  Ttempi1DesNote.Value:=des;
end;

procedure Tfd.TmEffCalcFields(DataSet: TDataSet);
var
  ok:Boolean;
  s:WideString;
begin
  if Trtem1.State=dsInactive then
    exit;
  if trim(Trtem1Comm.Text)<>'' then begin
    if trim(Trtem1RigaLav.Text)='' then
      ok:=false
    else
      begin
      s:='select rc.dis,rc.qta,tc.descr as nome';
      agg(s,'from rcomm rc');
      agg(s,'left join tcomm tc on rc.anno=tc.anno and rc.cod=tc.cod');
      agg(s,'where rc.commint='+Trtem1Comm.Text);
      zgo(zq,s,'op');
      ok:=zq.RecordCount>0;
    end;
    if ok then begin
      Trtem1Cli.Value:=vts(zq['nome']);
      Trtem1Dis.Value:=vts(zq['dis']);
      Trtem1Pz.Value:=vts(zq['qta']);
    end;
  end;
end;

procedure Tfd.TtempiAfterPost(DataSet: TDataSet);
var
  s:WideString;
  ts,cod:String;
begin
  Ttempi.ApplyUpdates;

  (*ts:=TtempiDalle.Text;
  cod:=TtempiCod.Text;
  s:='update tempi set dalle='+qs(ts)+' where cod='+cod;
  //deb(s);
  zgo(zq,s,ex_);
  //deb('scritto:'+ttempidalle.text);*)
end;

procedure Tfd.TtempiBeforePost(DataSet: TDataSet);
var
  c:Double;
  ts:String;
  t:TTime;
begin
  if fd.TtempiPers.Text='' then
    fd.TtempiPers.Value:=xUser;


  (*ts:=TtempiDalle.text;
  deb(ts);
  t:=strToTime(ts); //ZTime2Time(TtempiDalle.Value);
  deb(formatdatetime('hh:mm:ss',t));
  TtempiDalle.Value:=Time2ZTime(t);
  deb(TtempiDalle.text);*)

  //riassegna progr. prima di scrivere rec.
  if Dataset.State=dsInsert then begin
    zgo(zq,'select max(cod) as r from tempi',op_);
    if zq.IsEmpty then
      c:=1
    else
      c:=vlr(vts(zq['r']))+1;
    fd.TtempiCod.Value:=c;
  end;
end;

procedure Tfd.TtempiCalcFields(DataSet: TDataSet);
var
  des:String;
begin
  if DataSet.State in [dsInsert,dsEdit] then begin
    //nb2: ctrl se dà err. quando si rientra da Fmot, sia in desnote che deslav
    des:=trim(TtempiNote.AsString);
    des:=pulisci(des);
    (*if length(des)>1 then
      if des[length(des)]='[' then //a volte resta...
        des:=copy(des,1,length(des)-1);*)
    TtempiDesNote.Value:=des;
  end;

  (* cod:=Ttempi_lav.Text;
  if trim(cod)='' then
    TtempiDesLav.Value:=''
  else
    begin
    {if Top.Locate('cod',cod,[]) then
      TtempiDesLav.Value:=TopDescr.Text
    else
      TtempiDesLav.Value:=cod+' ???';}
    s:='select descr from op where cod='+qs(cod);
    deb(s);
    zq.Close;
    zq.SQL.Clear;
    zq.SQL.Add(s);
    zq.Open;
    deb('query ok');
    if zq.IsEmpty then
      TtempiDesLav.Value:=''
    else
      TtempiDesLav.Value:=vts(zq['descr']);
  end;
  deb('fine'); *)
end;

procedure Tfd.TtempinoteGetText(Sender: TField; var aText: string;
  DisplayText: Boolean);
begin
  aText:=TtempiNote.AsString;
end;

function pulisci(stg:string):string; //toglie note come [2pz], [2h], {100°}<-posizione
var
  p,x:Byte;
begin
  p:=pos('pz]',stg);
  if p>0 then begin
    x:=p-1;
    while (x>1) and (stg[x]<>'[') do
      dec(x);
    if stg[x]='[' then
      stg:=copy(stg,1,x);
  end;
  if pos('{',stg)>0 then
    stg:=copy(stg,1,pos('{',stg)-1); //toglie posizione (es.{10})

  if length(stg)>1 then
    if stg[length(stg)]='[' then //a volte resta...
      stg:=copy(stg,1,length(stg)-1);

  result:=stg;
end;

function maxCodNum(tblName,campo:string; tbl:TZQuery):longint;
var
  sql,vs:string;
  v:longint;
begin
  sql:='select max('+campo+') as maxval from '+tblName+' where (cast(cod as character varying) ~ '+qs('^([0-9]+[.]?[0-9]*|[.][0-9]+)$')+')';
  zgo(fd.zq,sql,'op');
  fd.zq.first;
  vs:=vts(fd.zq['maxval']);
  v:=trunc(vlr(vs))+1;
  fd.zq.Close;
  result:=v;
end;

end.

