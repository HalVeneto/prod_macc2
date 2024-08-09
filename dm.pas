unit dm;

{$mode ObjFPC}{$H+}
{$WARN 5024 off : Parameter "$1" not used}
{$WARN 4104 off : Implicit string type conversion from "$1" to "$2"}
{$WARN 4105 off : Implicit string type conversion with potential data loss from "$1" to "$2"}

interface

uses
  Classes, SysUtils, PQConnection, SQLDB, SQLDBLib, DB,
  System.UITypes,
  login, //per xUser, 19/07/24, verificare
  units;

type
  { Tfd }
  Tfd = class(TDataModule)
    dsImm: TDataSource;
    dsRtem1: TDataSource;
    dsTempi: TDataSource;
    dsRtem: TDataSource;
    dsTempi1: TDataSource;
    dsMeff: TDataSource;
    dsZq: TDataSource;
    PQConn: TPQConnection;
    qImm: TSQLQuery;
    qImmCli: TStringField;
    qImmcod: TStringField;
    qImmCommInt: TLargeintField;
    qImmDes: TStringField;
    qImmDiam: TWordField;
    qImmImm: TBlobField;
    qImmImmJpg: TGraphicField;
    qImmimmnom: TStringField;
    qImmimmnom1: TStringField;
    qImmLungh: TWordField;
    qLavscod: TLongintField;
    qLavscomm: TLongintField;
    qLavsdes: TStringField;
    qLavsDis: TStringField;
    qLavslav: TStringField;
    qLavsMater: TStringField;
    qLavsnote: TMemoField;
    qLavsNotes: TStringField;
    qLavsposiz: TLongintField;
    qLavsqta: TFloatField;
    qLavsqta_as_posiz: TFloatField;
    qLavsrigalav: TFloatField;
    qLavssel: TLongintField;
    SQLDBLibraryLoader: TSQLDBLibraryLoader;
    SQLTransact: TSQLTransaction;
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
    Trtem1: TSQLQuery;
    TmEff: TSQLQuery;
    TrtemCli: TStringField;
    TrtemCli1: TStringField;
    Trtemcod: TFloatField;
    Trtemcod1: TFloatField;
    Trtemcomm: TLongintField;
    Trtemcomm1: TLongintField;
    TrtemDis: TStringField;
    TrtemDis1: TStringField;
    TrtemPz: TStringField;
    TrtemPz1: TStringField;
    Trtemriga: TFloatField;
    Trtemriga1: TFloatField;
    Trtemrigalav: TLongintField;
    Trtemrigalav1: TLongintField;
    Trtemtmp: TFloatField;
    Trtemtmp1: TFloatField;
    Ttem1alle: TTimeField;
    Ttem1cod: TFloatField;
    Ttem1conf: TLongintField;
    Ttem1ctrmin: TFloatField;
    Ttem1ctrore: TFloatField;
    Ttem1dalle: TTimeField;
    Ttem1data: TDateField;
    Ttem1dessost: TMemoField;
    Ttem1lav: TStringField;
    Ttem1macch: TStringField;
    Ttem1ncr: TLongintField;
    Ttem1note: TMemoField;
    Ttem1noteint: TMemoField;
    Ttem1olio: TLongintField;
    Ttem1oliod: TFloatField;
    Ttem1oliog: TFloatField;
    Ttem1pers: TStringField;
    Ttem1sost: TLongintField;
    Ttem1sugg: TMemoField;
    Ttem1tipo: TStringField;
    Ttem1tipoman: TLongintField;
    Ttempi: TSQLQuery;
    Trtem: TSQLQuery;
    Ttempi1: TSQLQuery;
    Ttempi1DesLav: TStringField;
    Ttempialle1: TTimeField;
    Ttempicod1: TFloatField;
    Ttempictrmin1: TFloatField;
    Ttempictrore1: TFloatField;
    Ttempidalle1: TTimeField;
    Ttempidata1: TDateField;
    TtempiDesLav: TStringField;
    TtempiDesNote1: TWideStringField;
    Ttempidessost1: TMemoField;
    Ttempilav1: TStringField;
    Ttempimacch1: TStringField;
    Ttempincr1: TLongintField;
    Ttempinote1: TMemoField;
    Ttempinoteint1: TMemoField;
    Ttempiolio1: TLongintField;
    Ttempioliod1: TFloatField;
    Ttempioliog1: TFloatField;
    Ttempipers1: TStringField;
    Ttempirigalav: TLongintField;
    Ttempisost1: TLongintField;
    Ttempisugg1: TMemoField;
    Ttempitipo1: TStringField;
    Ttempitipoman1: TLongintField;
    zq: TSQLQuery;
    Ttempialle: TTimeField;
    Ttempicod: TFloatField;
    Ttempictrmin: TFloatField;
    Ttempictrore: TFloatField;
    Ttempidalle: TTimeField;
    Ttempidata: TDateField;
    TtempiDesNote: TWideStringField;
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
    Ttempisost: TLongintField;
    Ttempisugg: TMemoField;
    Ttempitipo: TStringField;
    Ttempitipoman: TLongintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure Trtem1AfterPost(DataSet: TDataSet);
    procedure Trtem1CalcFields(DataSet: TDataSet);
    procedure TrtemAfterPost(DataSet: TDataSet);
    procedure TrtemCalcFields(DataSet: TDataSet);
    procedure Ttempi1AfterPost(DataSet: TDataSet);
    procedure Ttempi1CalcFields(DataSet: TDataSet);
    procedure TtempiAfterPost(DataSet: TDataSet);
    procedure TtempiBeforePost(DataSet: TDataSet);
    procedure TtempiCalcFields(DataSet: TDataSet);
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
      't.cod,t.data,t.macch,t.pers,t.lav,t.note,t.noteint,t.ncr,t.tipo,t.dalle,' +
      't.alle,t.tipoman,t.olio,t.sost,t.oliog,t.oliod,t.dessost,t.sugg,t.ctrore,t.ctrmin,' +
      'rigalav';
  maxComm:byte=6;
var
  fd: Tfd;
  clOrange:TColor;
  stop_timer:boolean;
  rcfg:cfg_type;
  reg_rapida_attiva:boolean;

  //procedure sqgo(sq:TSqlQuery; tr:TSqlTransaction; s:WideString; az:string);
  procedure zgo(sq:TSqlQuery; s:widestring; az:string);
  function maxCodNum(tblName,campo:string; tbl:TSqlQuery):longint;

implementation

uses
  Dialogs; //solo per showmessage e per debug

{$R *.lfm}

(* old: procedure zgo(sq:TSqlQuery; s:WideString; az:string);
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
end; *)

(*procedure sqgo(sq:TSqlQuery; tr:TSqlTransaction; s:WideString; az:string);
begin
  if tr.Active then
    tr.Rollback;
  sq.Close;
  sq.SQL.Clear;
  sq.SQL.Add(s);
  if az='op' then begin
    sq.Open;
    sq.First;
    end
  else
    if az='ex' then begin
      try
        sq.SQLTransaction.StartTransaction;
        sq.ExecSQL;
        sq.SQLTransaction.Commit;
      except
        on E: Exception do begin
          tr.Rollback;
          showMessage('SQL error: ' + E.Message);
        end;
      end;
      end
    else
      mess('impossibile eseguire query - azione "'+az+'" sconosciuta','attenzione',_icons);
end;*)


procedure zgo(sq:TSqlQuery; s:WideString; az:string);
begin
  //if fd.SQLTransact.Active then
    //fd.SQLTransact.Rollback;
  //fd.SQLTransact.StartTransaction;
  sq.Close;
  sq.SQL.Clear;
  sq.SQL.Add(s);
  if az='op' then begin
    sq.Open;
    sq.First;
    end
  else
    if az='ex' then begin
      try
        sq.ExecSQL;
        //sq.SQLTransaction.Commit;
      except
        on E: Exception do begin
          //fd.SQLTransact.Rollback;
          showMessage('SQL error: ' + E.Message);
        end;
      end;
      end
    else
      mess('impossibile eseguire query - azione "'+az+'" sconosciuta','attenzione',_icons);
end;

{ Tfd }

procedure Tfd.TrtemCalcFields(DataSet: TDataSet);
var
  ok:Boolean;
  s:WideString;
begin
  if Trtem.State=dsInactive then
    exit;
  if trim(TrtemComm.Text)<>'' then begin
    if trim(TrtemRigaLav.Text)='' then
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

procedure Tfd.TrtemAfterPost(DataSet: TDataSet);
begin
  Trtem.ApplyUpdates();
end;

procedure Tfd.Trtem1AfterPost(DataSet: TDataSet);
begin
  Trtem1.ApplyUpdates();
end;

procedure Tfd.DataModuleCreate(Sender: TObject);
begin

end;

procedure Tfd.Trtem1CalcFields(DataSet: TDataSet);
var
  ok:Boolean;
  s:WideString;
begin
  if Trtem1.State=dsInactive then
    exit;
  if trim(TrtemComm1.Text)<>'' then begin
    if trim(TrtemRigaLav1.Text)='' then
      ok:=false
    else
      begin
      s:='select rc.dis,rc.qta,tc.descr as nome';
      agg(s,'from rcomm rc');
      agg(s,'left join tcomm tc on rc.anno=tc.anno and rc.cod=tc.cod');
      agg(s,'where rc.commint='+TrtemComm1.Text);
      zgo(zq,s,'op');
      ok:=zq.RecordCount>0;
    end;
    if ok then begin
      TrtemCli1.Value:=vts(zq['nome']);
      TrtemDis1.Value:=vts(zq['dis']);
      TrtemPz1.Value:=vts(zq['qta']);
    end;
  end;
end;

procedure Tfd.Ttempi1AfterPost(DataSet: TDataSet);
begin
  Ttempi1.ApplyUpdates();
end;

procedure Tfd.Ttempi1CalcFields(DataSet: TDataSet);
var
  des:string;
begin
  des:=trim(TtempiNote1.AsString);
  if length(des)>1 then
    if des[length(des)]='[' then //a volte resta...
      des:=copy(des,1,length(des)-1);
  TtempiDesNote1.Value:=des;
end;

procedure Tfd.TtempiAfterPost(DataSet: TDataSet);
begin
  Ttempi.ApplyUpdates();
end;

procedure Tfd.TtempiBeforePost(DataSet: TDataSet);
var
  c:double;
begin
  if fd.TtempiPers.Text='' then
    fd.TtempiPers.Value:=xUser;
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
  des:widestring;
begin
  //nb2: ctrl se dà err. quando si rientra da Fmot, sia in desnote che deslav
  des:=trim(TtempiNote.AsString);
  if length(des)>1 then
    if des[length(des)]='[' then //a volte resta...
      des:=copy(des,1,length(des)-1);
  TtempiDesNote.Value:=des;

  (* cod:=TtempiLav.Text;
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

function maxCodNum(tblName,campo:string; tbl:TSqlQuery):longint;
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

