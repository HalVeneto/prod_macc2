unit main;

{$mode objfpc}{$H+}
{$WARN 4104 off : Implicit string type conversion from "$1" to "$2"}
{$WARN 4105 off : Implicit string type conversion with potential data loss from "$1" to "$2"}
{$WARN 5024 off : Parameter "$1" not used}
{$WARN 6058 off : Call to subroutine "$1" marked as inline is not inlined}
interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  DBCtrls, Buttons, ExtCtrls, DBGrids, Grids, CheckBoxThemed,
  JvThumbImage, JvMovableBevel, JvNavigationPane, BCPanel, BCButton,
  BGRAFlashProgressBar, ovcrlbl, kedits, SqlDb, DB, RxDBTimeEdit, rxmemds,
  RxDBGrid, rxdbdateedit, rxctrls, rxtooledit;

const
  {$I versione.include.pas}

type

  { TFmain }

  TFmain = class(TForm)
    BallLav: TSpeedButton;
    BallLav1: TSpeedButton;
    BannModif: TBCButton;
    Battese: TSpeedButton;
    Battese1: TSpeedButton;
    BazzFlt: TBCButton;
    Bcanc: TBCButton;
    BcancRegEff: TBCButton;
    BcfgSave: TBCButton;
    BconfMod: TBCButton;
    BdisFin: TBCButton;
    BdisIni: TBCButton;
    BdisPrec: TBCButton;
    BdisSucc: TBCButton;
    Bfine: TBCButton;
    Bflt: TBCButton;
    BgoDis: TBCButton;
    BmodReg: TBCButton;
    BnonProdutt: TSpeedButton;
    BnonProdutt1: TSpeedButton;
    BnuovaReg: TBCButton;
    BokC1: TBCButton;
    BokC1a: TBCButton;
    BokC2: TBCButton;
    BokC2a: TBCButton;
    BokC3: TBCButton;
    BokC3a: TBCButton;
    BokC4: TBCButton;
    BokC4a: TBCButton;
    BokC5: TBCButton;
    BokC5a: TBCButton;
    BokC6: TBCButton;
    BokC6a: TBCButton;
    BokLav: TBCButton;
    BokLav1: TBCButton;
    BokNote: TBCButton;
    BokOre: TBCButton;
    BokOre1: TBCButton;
    BokTipoPz: TBCButton;
    Bprodutt: TSpeedButton;
    Bprodutt1: TSpeedButton;
    Bstart: TBCButton;
    Bstop: TBCButton;
    cbAss: TCheckBox;
    cbCtrMacch: TCheckBoxThemed;
    cbImm: TCheckBox;
    cbLav: TDBComboBox;
    cbLav1: TDBComboBox;
    dbgInd: TDBGrid;
    dbNavAggIndex: TDBNavigator;
    dbNavAggLavFin: TDBNavigator;
    dbtCodReg: TDBText;
    dbtLav: TDBText;
    dbtLav1: TDBText;
    dbtNoteLav: TDBText;
    dbtNoteLav1: TDBText;
    dbtReg: TDBText;
    dgEl: TRxDBGrid;
    dsAnom: TDataSource;
    dsElf: TDataSource;
    dsLav: TDataSource;
    dsLavs: TDataSource;
    dsQel: TDataSource;
    dsZq2: TDataSource;
    dsZq: TDataSource;
    Eadiam: TEdit;
    Ealun: TEdit;
    Ec1: TEdit;
    Ec1a: TEdit;
    Ec2: TEdit;
    Ec2a: TEdit;
    Ec3: TEdit;
    Ec3a: TEdit;
    Ec4: TEdit;
    Ec4a: TEdit;
    Ec5: TEdit;
    Ec5a: TEdit;
    Ec6: TEdit;
    Ec6a: TEdit;
    Ecli: TEdit;
    EctrMin: TDBEdit;
    EctrMin1: TDBEdit;
    EctrOre: TDBEdit;
    EctrOre1: TDBEdit;
    Edadiam: TEdit;
    Edalun: TEdit;
    Edata1: TRxDBDateEdit;
    Edes: TEdit;
    Edis: TEdit;
    Efine1: TRxDBTimeEdit;
    EfltCli: TEdit;
    EfltComm: TEdit;
    EfltData: TRxDateEdit;
    EfltDis: TEdit;
    EfltGg: TEdit;
    Eini: TRxDBTimeEdit;
    Eini1: TRxDBTimeEdit;
    Emacch: TEdit;
    Encr: TDBEdit;
    Encr1: TDBEdit;
    gbCfg: TGroupBox;
    gbComm: TGroupBox;
    gbComm1: TGroupBox;
    gbCtrMacc: TGroupBox;
    gbCtrMacc1: TGroupBox;
    gbLavFin: TGroupBox;
    gbNcr: TGroupBox;
    gbNcr1: TGroupBox;
    imageInd: TJvThumbImage;
    imgDis: TJvThumbImage;
    imgDis1: TJvThumbImage;
    KFileNameEdit: TKFileNameEdit;
    Lad: TLabel;
    Lalun: TLabel;
    Lattese: TLabel;
    Lattese1: TLabel;
    LcfgHmin: TLabel;
    LcfgHmin1: TLabel;
    Lcli: TLabel;
    Lcli1: TLabel;
    Lcli1a: TLabel;
    Lcli2: TLabel;
    Lcli2a: TLabel;
    Lcli3: TLabel;
    Lcli3a: TLabel;
    Lcli4: TLabel;
    Lcli4a: TLabel;
    Lcli5: TLabel;
    Lcli5a: TLabel;
    Lcli6: TLabel;
    Lcli6a: TLabel;
    Lcli7: TLabel;
    LcodPlann1: TLabel;
    LcodPlann1a: TLabel;
    LcodPlann2: TLabel;
    LcodPlann2a: TLabel;
    LcodPlann3: TLabel;
    LcodPlann3a: TLabel;
    LcodPlann4: TLabel;
    LcodPlann4a: TLabel;
    LcodPlann5: TLabel;
    LcodPlann5a: TLabel;
    LcodPlann6: TLabel;
    LcodPlann6a: TLabel;
    Lcomm: TLabel;
    Lcomm1: TLabel;
    LctrMin: TLabel;
    LctrMin1: TLabel;
    LctrOre: TLabel;
    LctrOre1: TLabel;
    Ldad: TLabel;
    Ldalun: TLabel;
    LdataReg: TLabel;
    Ldata_sett: TLabel;
    Ldes_dis: TLabel;
    Ldiam_dis: TLabel;
    Ldis: TLabel;
    Ldis1: TLabel;
    Ldis1a: TLabel;
    Ldis2: TLabel;
    Ldis2a: TLabel;
    Ldis3: TLabel;
    Ldis3a: TLabel;
    Ldis4: TLabel;
    Ldis4a: TLabel;
    Ldis5: TLabel;
    Ldis5a: TLabel;
    Ldis6: TLabel;
    Ldis6a: TLabel;
    Ldis7: TLabel;
    Ldisdis: TLabel;
    Ldur: TLabel;
    Ldur1: TLabel;
    Ldurata: TLabel;
    Ldurata1: TLabel;
    Lferie: TLabel;
    Lfine1: TLabel;
    LfltCliDx: TLabel;
    LfltCommDx: TLabel;
    LfltData: TLabel;
    LfltDisDx: TLabel;
    LfltGg: TLabel;
    LggCtrl: TLabel;
    LhelpIndice: TLabel;
    LhelpLav_: TLabel;
    Lidx: TRxLabel;
    LimmDisInd: TLabel;
    LimmInd: TLabel;
    LinfoVers: TLabel;
    Lini: TLabel;
    Lini1: TLabel;
    Llav: TLabel;
    Llav1: TLabel;
    Llavorazione_: TLabel;
    Llun2: TLabel;
    Llun3: TLabel;
    Llun_dis: TLabel;
    Lmacch_dis: TLabel;
    LminOreLav: TLabel;
    LnonProdutt: TLabel;
    LnonProdutt1: TLabel;
    LnoteLav: TLabel;
    LnoteLav1: TLabel;
    LnoteLav2: TLabel;
    LnoteLav3: TLabel;
    Lno_anom: TLabel;
    Lpdf: TLabel;
    Lperclidis: TLabel;
    Lprodutt: TLabel;
    Lprodutt1: TLabel;
    Lprodutt2: TLabel;
    Lprodutt3: TLabel;
    Lpz: TLabel;
    Lpz1: TLabel;
    Lpz1a: TLabel;
    Lpz2: TLabel;
    Lpz2a: TLabel;
    Lpz3: TLabel;
    Lpz3a: TLabel;
    Lpz4: TLabel;
    Lpz4a: TLabel;
    Lpz5: TLabel;
    Lpz5a: TLabel;
    Lpz6: TLabel;
    Lpz6a: TLabel;
    Lpz7: TLabel;
    Lreg: TLabel;
    LrigaLav1: TLabel;
    LrigaLav1a: TLabel;
    LrigaLav2: TLabel;
    LrigaLav2a: TLabel;
    LrigaLav3: TLabel;
    LrigaLav3a: TLabel;
    LrigaLav4: TLabel;
    LrigaLav4a: TLabel;
    LrigaLav5: TLabel;
    LrigaLav5a: TLabel;
    LrigaLav6: TLabel;
    LrigaLav6a: TLabel;
    Ltit_macc: TLabel;
    Ltit_macc_: TLabel;
    Ltit_ut: TLabel;
    Ltit_ut_: TLabel;
    Lvers: TLabel;
    LwarnComm: TLabel;
    LwarnComm1: TLabel;
    Mferie: TMemo;
    MnoteDis: TDBMemo;
    MnoteOp: TDBMemo;
    MnoteOp1: TDBMemo;
    PageControl: TPageControl;
    pAssenza: TJvNavPaneToolPanel;
    pbDis: TBGRAFlashProgressBar;
    pCloseImm: TPanel;
    pImmInd: TJvMovablePanel;
    pLavFin: TBCPanel;
    pNav: TBCPanel;
    pReg: TBCPanel;
    pReg1: TBCPanel;
    pTit: TBCPanel;
    pTitDis: TBCPanel;
    qEl: TSQLQuery;
    qEladora: TTimeField;
    qElalle: TTimeField;
    qElcli: TStringField;
    qElcod: TFloatField;
    qEldalle: TTimeField;
    qEldaora: TTimeField;
    qEldata: TDateField;
    qElDataDes: TStringField;
    qEldes: TMemoField;
    qEllav: TStringField;
    qElmacch: TStringField;
    qElnote: TMemoField;
    qElnoteint: TMemoField;
    qElNotes: TStringField;
    qElpers: TStringField;
    qElrigalav: TLongintField;
    qEltipo: TStringField;
    qLavs: TSQLQuery;
    qLavscod: TLongintField;
    qLavscomm: TLongintField;
    qLavsdes: TStringField;
    qLavsDis: TStringField;
    qLavsevidenz: TLongintField;
    qLavslav: TStringField;
    qLavsMater: TStringField;
    qLavsnote: TMemoField;
    qLavsNotes: TStringField;
    qLavsposiz: TLongintField;
    qLavsqta: TFloatField;
    qLavsqta_as_posiz: TFloatField;
    qLavsrigalav: TFloatField;
    qLavssel: TLongintField;
    rgAss: TRxRadioGroup;
    rgTipoPezzo: TDBRadioGroup;
    rgTipoPezzo1: TDBRadioGroup;
    rlMot: TOvcRotatedLabel;
    sg: TStringGrid;
    Telf: TRxMemoryData;
    TelfAdOra: TStringField;
    TelfAlle: TTimeField;
    TelfCli: TStringField;
    TelfCod: TLargeintField;
    TelfCol: TBooleanField;
    TelfCommint: TLargeintField;
    TelfDalle: TTimeField;
    TelfDaOra: TStringField;
    TelfData: TDateField;
    TelfDataDes: TStringField;
    TelfDesLav: TStringField;
    TelfDis: TStringField;
    TelfElComms: TStringField;
    TelfElDiss: TStringField;
    TelfLav: TStringField;
    TelfMacc: TStringField;
    TelfNote: TStringField;
    TelfNoteInt: TStringField;
    TelfPers: TStringField;
    tsDis: TTabSheet;
    tsDone: TTabSheet;
    Tlav: TRxMemoryData;
    TlavCod: TFloatField;
    TlavComm: TLargeintField;
    TlavCtrmin: TLongintField;
    TlavDes: TStringField;
    TlavDes2: TStringField;
    TlavDis: TStringField;
    TlavEvidenz: TLargeintField;
    TlavLav: TStringField;
    TlavMater: TStringField;
    TlavNcr: TLargeintField;
    TlavNote: TMemoField;
    TlavNotes: TWideStringField;
    TlavPosiz: TLargeintField;
    TlavQta: TFloatField;
    TlavQta_as_posiz: TFloatField;
    TlavRigaLav: TFloatField;
    TlavSel: TLongintField;
    tsMan: TTabSheet;
    tsAnom: TTabSheet;
    Tanom: TRxMemoryData;
    TanomAss: TLongintField;
    TanomCod: TFloatField;
    TanomData: TDateField;
    TanomDataGds: TStringField;
    TanomNote: TStringField;
    TanomUsc: TLongintField;
    tsLav: TTabSheet;
    zq2: TSQLQuery;
    tsCfg: TTabSheet;
    zq: TSQLQuery;
    procedure BannModifClick(Sender: TObject);
    procedure BazzFltClick(Sender: TObject);
    procedure BcancClick(Sender: TObject);
    procedure BcancRegEffClick(Sender: TObject);
    procedure BcfgSaveClick(Sender: TObject);
    procedure BconfModClick(Sender: TObject);
    procedure BfineClick(Sender: TObject);
    procedure BfltClick(Sender: TObject);
    procedure BmodRegClick(Sender: TObject);
    procedure BnuovaRegClick(Sender: TObject);
    procedure BstartClick(Sender: TObject);
    procedure BstopClick(Sender: TObject);
    procedure dbgIndCellClick(Column: TColumn);
    procedure dbgIndPrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
    procedure dbNavAggIndexClick(Sender: TObject; Button: TDBNavButtonType);
    procedure dgElPrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure imageIndClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure qElCalcFields(DataSet: TDataSet);
    procedure qLavsCalcFields(DataSet: TDataSet);
    procedure TlavCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  Fmain: TFmain;

implementation

{$R *.lfm}

{ TFmain }

uses
  units,
  login,
  dm,
  dateUtils,
  Process,
  //MouseAndKeyInput,
  LCLType, //per mb_iconWarning e mb_Ok
  helps;

const
  sep='|';
  lav_da_escludere:string='and lav<>''NP'' and lav<>''NT'' and lav<>''NN'''; //no 'CORSO'!
  maxPic=18; //per dis.
  attivo_        :shortint = 1;
  inattivo_      :shortint = 0;
  motivo_salto_prima_lavorazione_='motivo per cui ho saltato la prima lavorazione:';

procedure pulsanti(inizio,altri:boolean);
begin
  with Fmain do begin
    Bcanc.Visible :=altri;
    Bstop.Visible :=altri;
    Bfine.Visible :=altri;
    Bstart.Visible:=inizio;
    pReg.Visible  :=altri;
    LhelpIndice.Visible:=False;
  end;
end;

procedure assComm(comm:TEdit; dis,cli,pz,rl,cp:TLabel; commv,disv,cliv,pzv,rigalav,codplann:string); //assegna valori commesse a campi edit

  function eCommerc(des:string):string;
  var
    x:byte;
    des2:string;
  begin
    des2:='';
    for x:=1 to length(des) do begin
      des2+=des[x];
      if des[x]='&' then
        des2+='&';
    end;
    Result:=des2;
  end;

  function zero(nr: string):string;
  begin
    if vlr(nr)<=0 then
      Result:='' //else mette 0 e considera come codice
    else
      Result:=nr;
  end;

begin
  comm.Text   :=zero(commv);
  dis.Caption :=disv;
  cli.Caption :=eCommerc(cliv);
  pz.Caption  :=pzv;
  pz.Alignment:=taRightJustify;
  rl.Caption  :=zero(rigalav);
  cp.Caption  :=zero(codplann);
end;

procedure leggiCfg();
var
  f :textFile;
  fn:string;
  x :integer;

  procedure leggiVal(var vlr:string; default:string);
  begin
    {$I-}
    readln(f,vlr);
    {$I+}
    if IOResult<>0 then
      vlr:=default;
  end;

begin
  fn:=pLoc+'\cfg.inf';
  if not fileExists(fn) then begin
    //defaults già assegnati da leggiVal()
    mess('file '+fn+' non trovato',_info,_icons);
    exit;
  end;
  assignFile(f,fn);
  {$I-}
  reset(f);
  {$I+}
  if IOResult=0 then
    with Fmain do begin
      leggiVal(rcfg.blocca,'1'); //unused

      zgo(zq2,'select imprit as min_ore_lav,askarea as gg_ctrl from pargen','op');
      LminOreLav.Caption:=vts(zq2['min_ore_lav']);

      x:=trunc(vlr(vts(zq2['gg_ctrl'])));
      if x<=0 then
        x:=30;
      Lggctrl.Caption:=i2s(x);
      EfltGg.Text:=i2s(x);

      leggiVal(rcfg.ctrMacch,'1');
      cbCtrMacch.Checked:=rcfg.ctrMacch='1';

      leggiVal(rcfg.pdf,'');
      KfileNameEdit.Text:=rcfg.pdf;

      closeFile(f);
    end;
end;

function anomalie():boolean;
var
  dal,al,dat,ore,msg:string;
  maxRows,r,gds,gg,x:word;
  s                 :WideString;
  saltaAnom,found   :boolean;
  d,attDal          :TDate;
begin
  with Fmain do begin
    sg.Hide;
    pAssenza.Hide;
    Lno_anom.Hide;

    Tanom.Close;
    Tanom.Open;
    //fd.Tpers.Open;
    //fd.Tpers.Locate('ut',xUser,[]);
    if xUser='' then
      exit;
    s:='select cod,descr,attdal from pers where cod='+qs(xUser);
    zgo(zq2,s,op_);
    attDal:=strToDate(vts(zq2['attdal']));

    //cerca rapportini mancanti degli ultimi rcfg.ggCtrl giorni o dalla data di inizio lavoro:
    gg:=30;
    zgo(zq2,'select askarea as gg_ctrl from pargen',op_);
    gg:=trunc(vlr(vts(zq2['gg_ctrl'])));
    if attDal=0 then
      dal:=formatDateTime('dd/mm/yyyy',Now-gg)
    else
      begin
      dal:=formatDateTime('dd/mm/yyyy',attDal);
      if strToDate(dal)<Now-gg then
        dal:=formatDateTime('dd/mm/yyyy',Now-gg);
    end;
    al:=formatDateTime('dd/mm/yyyy',Now-1); //=ieri

    //cerca rapportini mancanti:
    s:='select distinct(t.data) from tempi t';
    agg(s,'where t.cod>0');
    agg(s,'and t.data>=to_date('+qs(dal)+','+qs('dd/mm/yyyy')+')');
    agg(s,'and t.data<=to_date('+qs(al)+','+qs('dd/mm/yyyy')+')');
    //agg(s,'and t.pers='+qs(xUser));
    agg(s,'order by t.data');
    zgo(zq,s,'op');
    found:=False;
    if zq.RecordCount>0 then begin
      d:=Now-1;
      //el:='';
      //found:=false;
      while d>=strToDate(dal) do begin
        gds:=dayOfWeek(d);
        if not (gds in [1, 7]) then begin //esclude sab. e dom.
          //dat:=formatDateTime('yyyy/mm/dd',d);
          //zq.Locate('data',dat,[]);
          dat:=formatDateTime('dd/mm/yyyy',d);

          s:='select count(*) as tot from tempi where data=to_date('+qs(dat)+','+qs('dd/mm/yyyy')+')';
          zgo(zq2,s,'op');
          if vlr(vts(zq2['tot']))>0 then begin //considera solo se ci sono altre reg. in quel gg. (else era chiuso/festa)
            //if vts(zq['data'])<>dat then begin //se non trovato rapp. nella data
            s:='select count(*) as tot from tempi where pers='+qs(xUser)+' and data=to_date('+qs(dat)+','+qs('dd/mm/yyyy')+')';
            zgo(zq2,s,'op');
            if vlr(vts(zq2['tot']))=0 then begin
              if Tanom.State=dsInactive then
                Tanom.Open;
              Tanom.Insert;
              gds:=dayOfWeek(d);
              TanomData.Value   :=d;
              TanomDataGds.Value:=nomeGiorno(gds)+' '+dat;
              TanomNote.Value   :='rapportino mancante';
              //el:=el+' '+nomeGiorno(dayOfWeek(d))+' '+dat;
              Tanom.Post;
              found:=True;
            end;
          end; //se ci sono altre reg.
        end;
        d:=d-1;
      end;
    end; //cerca rapp.

    //ctrl se ci sono reg. fino a ieri ancora aperte:
    s:='select cod,data,lav from tempi'; //s:='select cod,data,macch,lav from tempi';
    agg(s,'where alle=' + qs('00:00:00'));
    agg(s,'and data<to_date(' + qs(formatDateTime('dd/mm/yyyy',Now))+','+qs('dd/mm/yyyy')+')');
    agg(s,'and data>=to_date(' + qs(formatDateTime('dd/mm/yyyy',Now-gg))+','+qs('dd/mm/yyyy')+')');
    agg(s,'and pers=' + qs(xUser));
    agg(s,lav_da_escludere);
    agg(s,'order by data desc');
    zgo(zq,s,'op');
    if not zq.IsEmpty then begin
      //s:='';
      zq.First;
      while not zq.EOF do begin
        //s:=s+'reg.:'+vts(zq['cod'])+' del '+vts(zq['data'])+' lav.: '+vts(zq['lav'])+' macch.: '+vts(zq['macch'])+cr;
        //if Tanom.State=dsInactive then Tanom.Open;
        Tanom.Insert;
        dat:=vts(zq['data']);
        if trim(dat)='' then
          gds:=0
        else
          gds:=dayOfWeek(strToDate(dat));
        TanomData.Value   :=strToDate(dat);
        TanomDataGds.Value:=nomeGiorno(gds)+' '+dat;
        TanomCod.Value    :=vlr(vts(zq['cod']));
        //if vts(zq['lav'])='' then
        //TanomNote.Value:='registrazione senza lavorazione'
        //else
        TanomNote.Value   :='registrazione senza ora di fine';
        //el:=el+' '+nomeGiorno(dayOfWeek(d))+' '+dat;
        Tanom.Post;
        found:=True;
        zq.Next;
      end;
      zq.Close;
      //mess('ci sono registrazioni rimaste aperte:'+cr+s,'attenzione',_icons);
    end;

    //ctrl se ci sono reg. senza cod. lavoraz.:
    s:='select cod,data,lav from tempi'; //s:='select cod,data,macch,lav from tempi';
    agg(s,'where lav=''''');
    agg(s,'and data<to_date('+qs(formatDateTime('dd/mm/yyyy',Now))+','+qs('dd/mm/yyyy')+')');
    agg(s,'and data>=to_date('+qs(formatDateTime('dd/mm/yyyy',Now-gg))+','+qs('dd/mm/yyyy')+')');
    agg(s,'and pers='+qs(xUser));
    agg(s,'order by data desc');
    zgo(zq,s,'op');
    if not zq.IsEmpty then begin
      //s:='';
      zq.First;
      while not zq.EOF do begin
        //s:=s+'reg.:'+vts(zq['cod'])+' del '+vts(zq['data'])+' lav.: '+vts(zq['lav'])+' macch.: '+vts(zq['macch'])+cr;
        //if Tanom.State=dsInactive then Tanom.Open;
        Tanom.Insert;
        dat:=vts(zq['data']);
        if trim(dat)='' then
          gds:=0
        else
          gds:=dayOfWeek(strToDate(dat));
        TanomData.Value   :=strToDate(dat);
        TanomDataGds.Value:=nomeGiorno(gds)+' '+dat;
        TanomCod.Value    :=vlr(vts(zq['cod']));
        TanomNote.Value   :='registrazione senza lavorazione';
        Tanom.Post;
        found:=True;
        zq.Next;
      end;
      zq.Close;
    end;

    //ctrl se ore lavorate < min. in cfg:
    s:='select data,sum(alle-dalle) as ore';
    agg(s,'from tempi');
    agg(s,'where data<to_date('+qs(formatDateTime('dd/mm/yyyy',Now))+','+qs('dd/mm/yyyy')+')');
    agg(s,'and data>=to_date('+qs(formatDateTime('dd/mm/yyyy',Now-gg))+','+qs('dd/mm/yyyy')+')');
    agg(s,'and dalle<>'+qs('00:00:00')+' and alle<>'+qs('00:00:00'));
    //agg(s,lav_da_escludere); non dovrebbe servire
    agg(s,'and extract(dow from data)<>6'); //escluso sabato
    agg(s,'and pers='+qs(xUser));
    agg(s,'group by data');

    //dat := '07:00'; //rcfg.Hmin;
    //old: dat:=rcfg.Hmin;
    zgo(zq2,'select imprit as min_ore_lav from pargen','op');
    dat:=vts(zq2['min_ore_lav']);
    x:=pos(',',dat);
    if x=0 then begin
      if length(dat)=1 then
        dat:='0'+dat+':00' //7->07:00
      else
        if length(dat)=2 then
        dat+=dat+':00' //10->10:00
      end
    else
      begin
      if x>0 then
        dat[x]:=':';
      if x=2 then
        dat:='0'+dat;
      if length(dat)<5 then
        dat:=dat+'0';
      if copy(dat,4,2)='50' then
        dat:=copy(dat,1,3)+'30'; //6,5->06:50->06:30
    end;

    {if pos('.5',dat)>0 then //valori ammessi: interi (es. 5.0) o mezze ore (es. 5.5)
      dat:=copy(dat,1,pos('.',dat)-1)+':30'
    else
      dat:=copy(dat,1,pos('.',dat)-1)+':00';}
    agg(s,'having sum(alle-dalle) < '+qs(dat));
    agg(s,'order by data desc');
    zgo(zq,s,'op');
    if not zq.IsEmpty then begin
      //s:='';
      zq.First;
      while not zq.EOF do begin
        s:='select sum(conf) as uscantic from tempi';
        //sum perché basta un solo check "uscita antic." nella giornata
        agg(s,'where data=to_date('+qs(vts(zq['data']))+','+qs('dd/mm/yyyy')+')');
        agg(s,'and pers='+qs(xUser));
        zgo(zq2,s,'op');
        if vts(zq2['uscantic'])='0' then begin //se non ci sono uscite anticipate
          //if Tanom.State=dsInactive then Tanom.Open;
          Tanom.Insert;
          dat:=vts(zq['data']);
          if trim(dat)='' then
            gds:=0
          else
            gds:=dayOfWeek(strToDate(dat));
          TanomData.Value:=strToDate(dat);
          TanomDataGds.Value:=nomeGiorno(gds)+' '+dat;
          //TanomCod.Value:=vlr(vts(zq['cod']));
          dat:=vts(zq['ore']);
          dat:=copy(dat,1,length(dat)-3); //toglie secondi
          TanomNote.Value:='ore lavorate '+dat;
          Tanom.Post;
          found:=True;
        end;
        zq.Next;
      end;
      zq.Close;
    end;

    //ctrl se orari corretti:
    s := 'select cod,data,dalle,alle';
    agg(s, 'from tempi');
    agg(s, 'where data<to_date(' + qs(formatDateTime('dd/mm/yyyy',Now)) +
      ',' + qs('dd/mm/yyyy') + ')');
    agg(s, 'and data>=to_date(' + qs(formatDateTime('dd/mm/yyyy',Now-gg))+','+qs('dd/mm/yyyy')+')');
    agg(s, 'and dalle<>' + qs('00:00:00') + ' and alle<>' + qs('00:00:00'));
    agg(s, 'and alle<dalle'); //compreso sabato
    agg(s, 'and pers=' + qs(xUser));
    zgo(zq, s, 'op');
    if not zq.IsEmpty then begin
      zq.First;
      while not zq.EOF do begin
        Tanom.Insert;
        dat := vts(zq['data']);
        if trim(dat) = '' then
          gds := 0
        else
          gds := dayOfWeek(strToDate(dat));
        TanomData.Value := strToDate(dat);
        TanomDataGds.Value := nomeGiorno(gds) + ' ' + dat;
        TanomCod.Value := vlr(vts(zq['cod']));

        s  :='orari errati (dalle ';
        dat:=vts(zq['dalle']);
        dat:=copy(dat, 1, length(dat)-3); //toglie secondi
        s  :=s+dat+' alle ';
        dat:=vts(zq['alle']);
        dat:=copy(dat, 1,length(dat)-3); //toglie secondi
        s  :=s+dat+')';
        TanomNote.Value:=s;

        Tanom.Post;
        found:=True;
        zq.Next;
      end;
      zq.Close;
    end;

    //ctrl_successione_orari:
    s := 'select cod,data,dalle,alle from tempi';
    agg(s, 'where pers=' + qs(xUser));
    agg(s, 'and alle<>' + qs('00:00:00') + ' and alle<>' + qs('00:00:00'));
    agg(s, 'and data<to_date(' + qs(formatDateTime('dd/mm/yyyy', Now)) +
      ',' + qs('dd/mm/yyyy') + ')');
    agg(s, 'and data>=to_date(' + qs(formatDateTime('dd/mm/yyyy', Now - gg)) + ',' +
      qs('dd/mm/yyyy') + ')');
    agg(s, 'and pers=' + qs(xUser));
    agg(s, lav_da_escludere);
    agg(s, 'order by data asc,dalle asc,alle asc');
    zgo(zq, s, 'op');
    if not zq.IsEmpty then begin
      //s:='';
      zq.First;
      dat := '';
      al := '';
      while not zq.EOF do begin
        if (vts(zq['dalle']) <> qs('00:00:00')) and (vts(zq['alle']) <> qs('00:00:00')) then begin
          if (dat <> '') and (al <> '') then begin
            if (dat = vts(zq['data'])) and (vts(zq['dalle']) < al) then begin
              Tanom.Insert;
              dat := vts(zq['data']);
              if trim(dat)='' then
                gds:=0
              else
                gds:=dayOfWeek(strToDate(dat));
              TanomData.Value   :=strToDate(dat);
              TanomDataGds.Value:=nomeGiorno(gds)+' '+dat;
              TanomCod.Value    :=vlr(vts(zq['cod']));

              ore:=al;
              ore:=copy(ore,1,length(ore)-3); //toglie secondi
              s  :='errore in successione orari ('+ore+'->';
              ore:=vts(zq['dalle']);
              ore:=copy(ore, 1, length(ore)-3); //toglie secondi
              s  :=s+ore + ')';
              TanomNote.Value:=s;

              Tanom.Post;
              found:=True;
              zq.Next;
            end;
          end;
          al :=vts(zq['alle']);
          dat:=vts(zq['data']);
        end;
        zq.Next;
      end;
      zq.Close;
    end;

    saltaAnom := False; //<----------
    if found and (not saltaAnom) then begin //se trovate anomalie nelle reg. prec.
      sg.Show;
      Tanom.First;
      r:= 0;
      sg.Clear;
      while not Tanom.EOF do begin
        Inc(r);
        Tanom.Next;
      end;
      maxRows:=r+1;
      sg.RowCount:=maxRows;
      for r:=2 to 5 do begin //to 4
        sg.Columns.Items[r].ButtonStyle:=cbsButtonColumn;
        sg.Columns.Items[r].Font.Size:=10;
        sg.Columns.Items[r].Color:=clRed;
      end;
      {for r:=1 to maxRows-1 do begin
        sg.Cells[2,r]:='assenza';
        sg.Cells[3,r]:='registrazione';
        sg.Cells[4,r]:='uscita antic.';
      end;}

      sg.Visible:=found;
      Tanom.SortOnFields('data',True,True); //caseInsensitive,descending
      Tanom.First;
      r:=1;
      while not Tanom.EOF do begin
        sg.Cells[0,r]:=TanomDataGds.Text;
        sg.Cells[1,r]:=TanomNote.Text;
        sg.Cells[6,r]:=TanomData.Text; //sg.Cells[5,r]:=TanomData.Text;
        sg.Cells[7,r]:=TanomCod.Text;

        msg := lowerCase(TanomNote.Text);
        if (pos('err',msg)=0) and (pos('senza',msg)=0) and (pos('lavorate',msg)=0) then
          sg.Cells[2,r]:='assenza';
        sg.Cells[3,r]:='registrazione';

        if not cercaParam('nouscrit') then
          if (pos('err',msg)=0) and (pos('senza',msg)=0) and (pos('mancan',msg)=0) then
            sg.Cells[4,r]:='uscita ant./ritardo';

        if (pos('err',msg)>0) or (pos('senza',msg)>0) then begin
          sg.Cells[5,r] :='modifica'; //correzione';
          //showmessage(sg.Cells[5,r]);
        end;

        Tanom.Next;
        Inc(r);
      end;
      sg.Show;
      sg.Repaint;
      end //if found
    else
      begin
      Lno_anom.Left:=sg.Left;
      Lno_anom.Show;
    end;
  end; //with Fmain
  if cercaParam('noanom') then
    Result:=false
  else
    Result:=found;
end;

procedure azzeraCommesse(
  c1,c2,c3,c4,c5,c6:TEdit;
  d1,d2,d3,d4,d5,d6:TLabel;
  cl1,cl2,cl3,cl4,cl5,cl6:TLabel;
  pz1,pz2,pz3,pz4,pz5,pz6:TLabel;
  rl1,rl2,rl3,rl4,rl5,rl6:TLabel;
  cp1,cp2,cp3,cp4,cp5,cp6:TLabel);
begin
  c1.Text:='';
  c2.Text:='';
  c3.Text:='';
  c4.Text:='';
  c5.Text:='';
  c6.Text:='';
  d1.Caption:='';
  d2.Caption:='';
  d3.Caption:='';
  d4.Caption:='';
  d5.Caption:='';
  d6.Caption:='';
  cl1.Caption:='';
  cl2.Caption:='';
  cl3.Caption:='';
  cl4.Caption:='';
  cl5.Caption:='';
  cl6.Caption:='';
  pz1.Caption:='';
  pz2.Caption:='';
  pz3.Caption:='';
  pz4.Caption:='';
  pz5.Caption:='';
  pz6.Caption:='';
  rl1.Caption:='';
  rl2.Caption:='';
  rl3.Caption:='';
  rl4.Caption:='';
  rl5.Caption:='';
  rl6.Caption:='';
  cp1.Caption:='';
  cp2.Caption:='';
  cp3.Caption:='';
  cp4.Caption:='';
  cp5.Caption:='';
  cp6.Caption:='';
end;

procedure dimensiona_indice(mostra_reg_planner: boolean);
var
  w:word;
begin
  with Fmain do begin
    w:=dbgInd.Width-20;
    dbgInd.Columns[0].Width:= 4 * w div 100; //sel.
    dbgInd.Columns[1].Width:=58 * w div 100; //note old:60
    dbgInd.Columns[2].Width:= 5 * w div 100; //c.i. //7
    dbgInd.Columns[4].Width:=21 * w div 100; //dis.
    dbgInd.Columns[5].Width:= 0 * w div 100; //lav.
    {dbgInd.Columns.Items[6].ButtonStyle:=cbsButtonColumn;
    dbgInd.Columns.Items[6].Font.Size:=10;
    dbgInd.Columns.Items[6].Color:=clRed;}
    dbgInd.Columns[6].Width:= 3 * w div 100; //pz in riga OC
    dbgInd.Columns[7].Width:= 0 * w div 100; //rigalav.
    dbgInd.Columns[8].Width:= 6 * w div 100; //merce arrivata

    if mostra_reg_planner then
      dbgInd.Columns[10].Width:=100
    else
      dbgInd.Columns[10].Width:=0;

    dbgInd.Columns[11].Width:= 2 * w div 100; //forza chiusura
    dbgInd.Columns[11].Color:=clRed;
    dbgInd.Columns[11].ButtonStyle:=cbsButtonColumn;
    dbgInd.Columns[11].Font.Size:=10;
  end;
end;

procedure indice(stato:byte); //0=inattivo (quando lav. in corso), 1=attivo, 99=non cambiare
var
  s:WideString;
  cod,macc:string;
begin
  with Fmain do begin
    LhelpIndice.Visible:=False;
    cod:='';
    try
      if Tlav.State<>dsInactive then begin
        cod:=TlavCod.asString;
      end;
    finally
      dimensiona_indice(False);
    end;

    s:='select ord from macch where cod='+qs(xMacch);
    zgo(zq,s,'op');
    str(vlr(vts(zq['ord'])):1:0,macc); //= a sql seguente
    s:=   'select 0 as sel,p.cod,p.note,p.des,p.comm,p.lav,p.rigalav,rc.qta,'; //p.d1 as rigalav,rc.qta,';
    agg(s,'p.riserv as evidenz,p.qta as qta_as_posiz,p.posiz');
    agg(s,'from planner p');
    agg(s,'left join rcomm rc on p.comm=rc.commint');
    agg(s,'where p.col='+macc); //macc=posizione assegnata alla macchina nell'ordine delle colonne
    agg(s,'and p.fatto<>1'); //ex i1
    agg(s,'and p.notaint<>1'); //ex d2
    agg(s,'order by p.qta asc,p.comm asc'); //p.qta=posiz
    zgo(qLavs,s,'op');

    Tlav.Close;
    Tlav.Open;

    //scrive qLavs in Tlav else dà "cannot update a complex query with more than one table" dopo "inizio"
    qlavs.First;
    while not qlavs.EOF do begin
      Tlav.Insert;
      TlavSel.Value:=0;
      TlavCod.Value:=qlavsCod.Value;
      TlavComm.Value:=qlavsComm.Value;
      TlavDis.Value:=qlavsDis.Value;
      TlavNote.Value:=qlavsNote.asstring;
      //TlavNotes.Value:=qlavsNotes.Value;
      TlavLav.Value:=qlavsLav.Value; //deb(TlavLav.Value);
      TlavMater.Value:=qlavsMater.Value;
      TlavQta.Value:=qlavsQta.Value;
      TlavRigaLav.Value:=qlavsRigaLav.Value; //serve?
      TlavEvidenz.Value:=qlavsEvidenz.Value;
      TlavQta_as_posiz.Value:=qlavsQta_as_posiz.Value;
      TlavPosiz.Value:=qlavsPosiz.Value;

      Tlav.Post;
      qlavs.Next;
    end;
    //Tlav.SortOnFields('qta;comm',true,false); //campi,case ins.,descend.
    Tlav.SortOnFields('qta_as_posiz;posiz',True,False); //campi,case ins.,descend.
    Tlav.First;

    case stato of
      1:begin //attivo
        dbgInd.Color:=clBtnFace;
        dbgInd.Font.Size:=16;
        dbgInd.Font.Style:=[fsBold];
        dbgInd.ReadOnly:=False; //fa anche da flag
      end;
      0:begin //inattivo = lavorazione/i in corso
        dbgInd.Color:=clGray; //flag
        dbgInd.Font.Size:=12;
        dbgInd.Font.Style:=[];
        dbgInd.ReadOnly:=True; //fa anche da flag
      end;
    end;

    //shImportante.Color:=clOrange; shImportante.Repaint;
    if cod<>'' then begin //new - else torna ad inizio
      Tlav.Locate('cod',cod,[]);
      end
    else
      Tlav.First;
  end;
end;

function controllo_versione(var lab:TLabel; tipoDato:shortInt):boolean;
const
  campo_prg='vers_data_prod_macc';
  campo_ser='vers_serie_prod_macc';
var
  serie:string[1];
  d    :string;
  ok   :boolean;
begin
  with Fmain do begin
    lab.Caption:='';
    d:='select '+campo_prg+','+campo_ser+' from agg_da_server';
    zgo(fd.zq, d, 'op');
    if fd.zq.IsEmpty then begin
      lab.Font.Color:=clYellow;
      lab.Font.Size :=11;
      lab.Caption   :='impossibile controllare aggiornamento software';
      Result        :=False;
      end
    else
      begin
      d:=vts(fd.zq[campo_prg]);
      serie:=vts(fd.zq[campo_ser]);
      if d<>'' then begin
        ok:=strToDate(vers_data)>=strToDate(d);
        if ok then
          if vers_data=d then //cfr serie solo se stessa data
            ok:=trim(vers_serie)>=trim(serie);
        if not ok then begin
          lab.Font.Color:=clRed;
          lab.Font.Size :=14;
          case tipoDato of
            1: lab.Caption:='versione NON aggiornata';
            2: lab.Caption:='versione installata: '+vers_data+vers_serie+' (NON aggiornata)';
          end;
          //+cr+'(server '+d+serie+', locale '+vers_data+vers_serie+')';
          Result:=False;
          end
        else
          begin
          lab.Font.Color:=clGray;
          lab.Font.Size :=10;
          case tipoDato of
            1: lab.Caption:='versione aggiornata';
            2: lab.Caption:='versione installata: '+vers_data+vers_serie+' (aggiornata)';
          end;
          Result:=True;
        end;
      end;
    end;
    fd.zq.Close;
    lab.Repaint;
  end;
end;

procedure ferie_previste(); //mostra ferie previste di chi usa la macchina (scrollbar non ci sta e comunque basta l'inizio):
var
  found,primo:boolean;
  s:widestring;
  d,t:string;
begin
  with Fmain do begin
    found:=false;
    s:='select cod,descr from pers where att=1 and macch='+qs(xMacch);
    zgo(fd.zq,s,'op');
    Mferie.Lines.Clear;
    fd.zq.First;
    while not fd.zq.EOF do begin
      s:='select cod,data,fino,nom,flag from disp';
      agg(s,'where sez=''ass''');
      d:=formatDateTime('dd/mm/yyyy',Now);
      agg(s,'and (data>=to_date('+qs(d)+','+qs('dd/mm/yyyy')+')'); //fa vedere anche prima dell'assenza
      agg(s,'and to_date('+qs(d)+','+qs('dd/mm/yyyy')+')<=fino)');
      agg(s,'and op='+qs(fd.zq['cod']));
      zgo(zq2,s,'op');
      zq2.First;
      t:=vts(fd.zq['descr']);
      if zq2.RecordCount>0 then
        s:=t+': '
      else
        s:='';
      primo:=true;
      while not zq2.EOF do begin
        if not primo then
          s+='; ';
        primo:=false;

        if vts(zq2['data'])=vts(zq2['fino']) then
          s+=' '+vts(zq2['data'])
        else
          s+=' dal '+vts(zq2['data'])+' al '+vts(zq2['fino'])+' ';

        if trim(vts(zq2['nom']))<>t then
          s+=copy(trim(vts(zq2['nom'])),length(t)+1,255); //aggiunge eventuali note dopo il nome

        found:=true;
        zq2.Next;
      end;
      if s<>'' then begin
        Mferie.Font.Size:=10;
        Mferie.Font.Color:=clHotLight;
        Mferie.Lines.Add(s);
        //SendMessage(Mferie.Handle,EM_SCROLLCARET,0,0); //EM_LINESCROLL,0,Memo.Lines.Count);
        //Mferie.Repaint; Mferie.ReAlign;
        Mferie.SetFocus;
        Mferie.Update;
        //for x:=1 to 9 do
          //KeyInput.Press(VK_UP); //sposta cursore a inizio (9 è arbitrario) else dopo last row c'è CR che scrolla in su se sono > 1
      end;
      fd.zq.Next;
    end;
    if not found then begin
      Mferie.Font.Size:=10;
      Mferie.Font.Color:=clBlack;
      Mferie.Lines.Add('nessuna richiesta di ferie per gli operatori di questa macchina');
    end;
  end;
end;

procedure popolaLavorazioni(cb:TDBComboBox; quale:char);
var
  s:WideString;
begin
  with Fmain do begin
    cb.Items.Clear;
    s:='select cod,descr from op where tipo=''i'' and el=1'; //interne + riporta in elenco
    case quale of
      'a':agg(s,'and quote=1');
      'p':agg(s,'and produtt=1');
      'n':agg(s,'and produtt=0 and quote=0'); //quote=0=non elencare anche attese
    end;
    agg(s,'order by descr'); //by cod');
    zgo(zq,s,'op');
    while not zq.EOF do begin
      cb.Items.Add(vts(zq['descr'])+sep+vts(zq['cod']));
      zq.Next;
    end;
  end;
end;

procedure inizializza(); //16/04/24
var
  s:widestring;
  x:integer;
begin
  with Fmain do begin
    tsMan.Caption:='manutenzioni';

    ferie_previste();

    //posizione iniziale miniatura:
    pImmInd.Left:=(screen.Width-pImmInd.Width)-40; // div 2;
    pImmInd.Top:=pNav.Top-pImmInd.Height+60; //(screen.Height-pImmInd.Height)-10; // div 2;

    //cerca se ci sono lavorazioni in corso (non chiuse):
    s:='select '+campi_tempi;
    agg(s,'from tempi t');
    agg(s,'where t.dalle<>'+qs('00:00:00')+' and t.alle='+qs('00:00:00'));
    //alle=0=lav. in corso
    agg(s,'and coalesce(t.lav,'+qs('')+')<>'+qs('NP')); //non presente
    agg(s,'and coalesce(t.lav,'+qs('')+')<>'+qs('NT')); //non trovato
    agg(s,'and t.macch='+qs(xMacch));
    agg(s,'and t.pers='+qs(xUser));
    //deb(s);
    zgo(fd.Ttempi,s,'op');
    //deb('ext');
    if fd.Ttempi.RecordCount>0 then begin
      pulsanti(False,True);
      Ldurata.Caption:=formatDateTime('hh:mm',Now-fd.TtempiDalle.Value);
      Ldurata.Repaint;
      s:='select * from rtempi';
      agg(s,'where cod='+fd.TtempiCod.Text);
      agg(s,'order by comm');
      zgo(fd.Trtem,s,'op');
      fd.Trtem.First;
      x:=1;
      while not fd.Trtem.EOF do begin
        case x of
          1:assComm(Ec1, Ldis1, Lcli1, Lpz1, LrigaLav1, LcodPlann1,
              fd.TrtemComm.Text, fd.TrtemDis.Text, fd.TrtemCli.Text,
              fd.TrtemPz.Text, fd.TrtemRigaLav.Text, fd.TrtemTmp.Text);
          2:assComm(Ec2, Ldis2, Lcli2, Lpz2, LrigaLav2, LcodPlann2,
              fd.TrtemComm.Text, fd.TrtemDis.Text, fd.TrtemCli.Text,
              fd.TrtemPz.Text, fd.TrtemRigaLav.Text, fd.TrtemTmp.Text);
          3:assComm(Ec3, Ldis3, Lcli3, Lpz3, LrigaLav3, LcodPlann3,
              fd.TrtemComm.Text, fd.TrtemDis.Text, fd.TrtemCli.Text,
              fd.TrtemPz.Text, fd.TrtemRigaLav.Text, fd.TrtemTmp.Text);
          4:assComm(Ec4, Ldis4, Lcli4, Lpz4, LrigaLav4, LcodPlann4,
              fd.TrtemComm.Text, fd.TrtemDis.Text, fd.TrtemCli.Text,
              fd.TrtemPz.Text, fd.TrtemRigaLav.Text, fd.TrtemTmp.Text);
          5:assComm(Ec5, Ldis5, Lcli5, Lpz5, LrigaLav5, LcodPlann5,
              fd.TrtemComm.Text, fd.TrtemDis.Text, fd.TrtemCli.Text,
              fd.TrtemPz.Text, fd.TrtemRigaLav.Text, fd.TrtemTmp.Text);
          6:assComm(Ec6, Ldis6, Lcli6, Lpz6, LrigaLav6, LcodPlann6,
              fd.TrtemComm.Text, fd.TrtemDis.Text, fd.TrtemCli.Text,
              fd.TrtemPz.Text, fd.TrtemRigaLav.Text, fd.TrtemTmp.Text);
        end;
        inc(x);
        fd.Trtem.Next;
      end;
      //deb('fine');
      //shImportante.Color:=clOrange; shImportante.Repaint;
      imgDis.Picture.Clear;
      if trim(Ldis1.Caption)<>'' then begin
        imgDis.Hint:=Ldis1.Caption; //serve anche per leggere il dis. per zoom

        s:='select immjpg as imm,immnom from dis where cod='+qs(Ldis1.Caption);
        zgo(fd.qImm,s,'op');
        if not fd.qImm.IsEmpty then begin
          fd.qImmImm.SaveToFile('img.jpg');
          try
            imgDis.Picture.LoadFromFile('img.jpg');
          except
            on E:Exception do
              mess('rilevata anomalia: '+E.ClassName+cr+E.Message,'attenzione',_icons);
          end;
          imgDis.Repaint;
        end;
      end;
      indice(inattivo_);
      end
    else
      begin
      indice(attivo_);
    end;
  end;
end;

function noAstx(tit: string): string;
begin
  if tit[1]='*' then
    tit:=copy(tit,2,length(tit)-2);
  Result:=tit;
end;

function astx(tit: string): string;
begin
  tit:='*'+tit+'*';
  Result:=tit;
end;

procedure start_all();
begin
  with Fmain do begin
    (*try
      with fd do begin
        Zconnection.Connected:=False; //Zconnection.LibraryLocation:=pLoc+'\libpq.dll';
        Zconnection.User     :=xUser; //des;
        Zconnection.Password :=xPassword;
        Zconnection.HostName :=xHost; //'localhost'
        Zconnection.Database :=xDatabase;
        Zconnection.Connect;
      end;
    except
      on E: Exception do begin
        mess('accesso non riuscito ('+E.Message+')'+cr+'(macc='+xMacch+', ut='+xUser+', pw='+xPassword+')',_info,_icons);
        //Close; 26/04/24 dopo spostamento da FormShow a questa proc.
        Halt(0);
      end;
    end;*)
    controllo_versione(Lvers,1);
    controllo_versione(LinfoVers,2);

    tsCfg.TabVisible:=True; //cercaParam('cfg'); abil. 06/02/24
    //legge lavorazioni:
    popolaLavorazioni(cbLav,#0);
    //popolaLavorazioni(cbLav1,#0);

    //cerca eventuali anomalie nelle registrazioni:
    if anomalie() then begin
      tsAnom.Caption:='*'+noAstx(tsAnom.Caption)+'*';
      pageControl.ActivePageIndex:=2;
      anomalie();
      exit; //05/06/23
      end
    else
      begin
      tsLav.Caption:='*'+noAstx(tsLav.Caption)+'*';
      pageControl.ActivePageIndex:=0;
    end;
    inizializza(); //16/04/24
  end;
end;

procedure TFmain.FormShow(Sender: TObject);
var
  x,p   :byte;
  fn,par:string;
  s     :WideString;
  f     :textFile;
begin
  pulsanti(True,False);
  clOrange:=TColor($0167E5); //l'arancione non esiste, così viene creato ("Orange is much red (E5), green (67) and a bit of blue (01)")
  //lavorazioni:
  Ldurata.Caption:='';
  //lav.finite:
  EfltGg.Text:='60'; //gg. da considerare per elenco registrazioni finite
  //disegni:
  //Lidx.Caption:=''; sez. dis
  //LimmDisInd.Caption:='';
  //pImmInd.Hide;
  //pbDis.Hide; sez dis
  //manutenzioni:
  //BsaveMan.Enabled   :=False;
  //BannMan.Enabled    :=False;
  //LhelpIndice.Visible:=False;

  getDir(0, pLoc);
  fn:=pLoc+'\cfg.inf';
  if fileExists(fn) then begin
    leggiCfg()
    end
  else
    begin
    assignFile(f,fn);
    rewrite(f);
    writeln(f,1);
    //blocca prod_macc se ci sono anomalie (bisogna sistemarle prima di procedere)
    //writeln(f,6.5); //ora da server - old: minimo ore lavorate oltre cui viene segnalato (0=non segnalare)
    writeln(f,15); //gg da ctrl
    closeFile(f);
    leggiCfg();
  end;

  azzeraCommesse(Ec1, Ec2, Ec3, Ec4, Ec5, Ec6,
    Ldis1, Ldis2, Ldis3, Ldis4, Ldis5, Ldis6,
    Lcli1, Lcli2, Lcli3, Lcli4, Lcli5, Lcli6,
    Lpz1, Lpz2, Lpz3, Lpz4, Lpz5, Lpz6,
    LrigaLav1, LrigaLav2, LrigaLav3, LrigaLav4, LrigaLav5, LrigaLav6,
    LcodPlann1, LcodPlann2, LcodPlann3, LcodPlann4, LcodPlann5, LcodPlann6);

  xUser    :='';
  xMacch   :='';
  xHost    :='';
  xDatabase:='';
  for x:=1 to application.ParamCount do begin
    par:=lowerCase(ParamStr(x));
    p:=pos('macc=', par);
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

  Flog:=TFlog.Create(application);
  Flog.WindowState:=wsNormal;
  Flog.ShowModal;
  if not log_in then
    Halt(0);

  if xHost='' then
    xHost:='serverdell';
  if xDatabase='' then
    xDatabase:='prod';
  if trim(xMacch)='' then begin
    mess('macchina non definita - impossibile proseguire', _info, _icons);
    exit;
  end;
  s:='select des from macch where cod='+qs(xMacch);
  zgo(fd.zq,s,'op');
  if fd.zq.IsEmpty then begin
    mess('codice macchina '+xMacch+' sconosciuto - impossibile proseguire',_info,_icons);
    exit;
    end
  else
    Ltit_macc.Caption:=xMacch+' '+vts(fd.zq['des']);

  if trim(xUser)='' then begin
    mess('utente non definito - impossibile proseguire',_info,_icons);
    exit;
  end;
  s:='select descr from pers where cod='+qs(xUser);
  zgo(fd.zq,s,'op');
  if fd.zq.IsEmpty then begin
    mess('codice utente '+xUser+' sconosciuto - impossibile proseguire',_info,_icons);
    exit;
    end
  else
    Ltit_ut.Caption:=vts(fd.zq['descr']);

  Fmain.WindowState:=wsMaximized;
  Ldata_sett.Caption:=formatDateTime('dd/mm/yyyy',Now)+' settimana '+i2s(WeekOfTheYear(Now));

  start_all();
end;

function leggiDis(dis, sql, nomef: string; vis, msg: boolean): string;
var
  ok:boolean;
  //e:integer;
  //handle:integer;// HWND;
  x: byte;
  cod,rig,tip,fn,ext:string;
  s:WideString;
  f:file;
  //handle:HWND;
  AProcess:TProcess;
begin
  if dis='' then begin
    mess('disegno non specificato',_info,_icons);
    exit;
  end;
  leggiCfg();
  if trim(rcfg.pdf)='' then begin
    mess('lettore PDF non specificato',_info,_icons);
    exit;
  end;
  with fd do begin
    if sql='' then begin
      cod:='';
      x:=pos('§',dis);
      if x>0 then begin
        cod:=copy(dis,x+1,255);
        dis:=copy(dis,1,x-1);
      end;
      s:='select cod,0 as rig,1,des,'+qs('d')+' as tipo from dis where cod='+qs(dis);
      //d=disegno
      //deb(s);
      if True then begin //not rpar.dis then begin //fa vedere solo dis. principale
        (*s:=s+' union '; ...deve far vedere solo dis., non alleg. ...
        s:=s+' select cod,r as rig,2,descr as des,'+qs('a')+' as tipo from doc_dis where cod='+qs(dis)+' and riga=0 and imm is not null '; //la descr. allegato (=a) deve essere = al cod. dis.
        s:=s+' union ';
        s:=s+' select distinct cod,riga as rig,3,des,'+qs('r')+' as tipo from rdis where dis='+qs(dis)+' and imm is not null '; //r=riga dis.*)
        if cod<>'' then
          agg(s,'and cod='+qs(cod));
        agg(s,'order by des');
      end;
      zgo(zq,s,'op');

      if zq.RecordCount=0 then begin
        if msg then
          mess('nessuna scheda disegno con codice '+dis,_info,_icons);
        Result:='';
        exit;
      end;

      if (zq.RecordCount=1) or (not vis) then begin //aggiunto "not vis" 04/12/19 else fa elenco anche x vis. miniatura
        cod :=qs(vts(zq['cod']));
        rig :=qs(vts(zq['rig']));
        tip :=vts(zq['tipo']);
        if tip = '' then
          tip := ' ';
        case tip[1] of
          'd':s:='select imm,immnom from dis where cod=' + cod;
          'a':s:='select imm,file as immnom from doc_dis where cod=' + cod + ' and r=' + rig;
          'r':s:='select imm,immnom from rdis where cod=' + cod + ' and riga=' + rig;
          ' ':begin
            mess('tipo sconosciuto',_info,_icons);
            Result:='';
            exit;
          end;
        end;
        //deb('tipo='+tip+' - s='+s);
        end
      else
        begin
        elenca(s,3,'selezione disegno',['descrizione', 'tipo']);
        if esc_ then begin
          Result:='';
          exit;
          end
        else
          begin
          cod:=qs(arrHelpCod_[1]); //qs(vts(zq['cod']));
          rig:=qs(arrHelpCod_[2]); //qs(vts(zq['rig']));
          tip:=arrHelpCod_[3]; //vts(zq['tipo']);
          if tip='' then
            tip:=' ';
          case tip[1] of
            '1':s:='select imm,immnom from dis where cod='+cod;
            '2':s:='select imm,file as immnom from doc_dis where cod='+cod+' and r='+rig;
            '3':s:='select imm,immnom from rdis where cod='+cod+' and riga='+rig;
            ' ':begin
              mess('tipo sconosciuto',_info,_icons);
              Result:='';
              exit;
            end;
          end;
        end;
      end;
      end
    else
      s:=sql;
    //deb(s);
    zgo(qImm,s,'op');
    //deb(i2s(qImm.RecordCount));
    ok:=False;
    if qImm.RecordCount=0 then begin
      //deb('!');
      Result:='';
      end
    else
      begin
      ok:=not qImmImm.IsNull;
      if not ok then //new 23/10/19
        Result:=''
      else
        begin
        //deb('img name:'+vts(qImm['immNom']));
        ext:=lowerCase(extens(qImmImmNom.Text));
        if nomef='' then begin
          for x:=0 to 19 do begin
            fn:=pLoc+'\immagine'+i2s(x)+'.'+ext;
            {$I-}
            assignFile(f,fn);
            erase(f);
            {$I+}
            ok:=IOResult=0;
          end;
        end;
        x:=0;
        repeat
          if nomef='' then begin
            fn:=pLoc+'\immagine'+i2s(x)+'.'+ext;
            ok:=not fileExists(fn);
            end
          else
            begin
            if extens(nomef)='' then //new 23/10/19
              fn:=nomef+'.'+ext //new 04/04/18  //nomef;
            else
              fn:=nomef;
            ok:=True;
          end;
          if ok then begin
            {$I-}
            qImmImm.SaveToFile(fn);
            {$I+}
            ok:=IOResult=0;
            if ok then
              if vis then begin
                //deb('ext:'+ext);
                if ext='pdf' then begin
                  //deb('pdf');

                  AProcess:=TProcess.Create(nil); // Now we will create the TProcess object, and assign it to the var AProcess.
                  // Tell the new AProcess what the command to execute is. Let's use the Free Pascal compiler (i386 version that is)
                  AProcess.Executable:=rcfg.pdf; //'"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"'; //path necessario
                  AProcess.Parameters.Add(fn);
                  // We will define an option for when the program is run. This option will make sure that our program
                  // does not continue until the program we will launch has stopped running [poWaitOnExit].
                  AProcess.Options:=AProcess.Options + [poWaitOnExit];
                  AProcess.Execute; // Now let AProcess run the program
                  AProcess.Free; // This is not reached until ppc386 stops running.

                  end
                else
                  begin
                  //e:=ShellExecute(handle,'open',PChar(fn),nil,nil,SW_HIDE); nb2
                  //shellErr(e); nb2
                end
                end
              else
                begin
                Result:=fn;
                exit;
              end
            end
          else
            inc(x);
        until ok or (x>=19);
        if not ok then begin
          if vis then
            mess('troppi documenti aperti - impossibile visualizzare','attenzione',mb_ok+mb_iconWarning)
          else
            begin
            mess('troppi documenti aperti - impossibile allegare dis.'+dis,'attenzione',mb_ok+mb_iconWarning);
            Result:='';
          end;
          exit;
        end;
      end; //if ok
    end; //if
    qImm.Close;

  end;

  chDir(pLoc);
  if not ok then begin
    if msg then
      mess('nessuna immagine associata al dis.'+dis,_info,_icons);
    Result := '';
  end;
end; //leggiDis

procedure TFmain.imageIndClick(Sender: TObject);
var
  cod:string;
begin
  cod:=trim(LimmDisInd.Caption); //TlavDis.Text); no, else può essere vis. un dis. ma la riga corrente è un'altra
  if cod='' then
    mess('nessun disegno da visualizzare',_info,_icons)
  else
    leggiDis(cod,'','',True,False);
end;

procedure TFmain.dgElPrepareCanvas(sender: TObject; DataCol: Integer;
  Column: TColumn; AState: TGridDrawState);
begin
  case TelfCol.Value of
    True :dgEl.Canvas.Brush.Color:=clWindow;
    False:dgEl.Canvas.Brush.Color:=clSilver;
  end;
end;

function sqlLavFin(flt: WideString): WideString;
var
  s:WideString;
begin
  //s:='select distinct t.cod,t.data,t.macch,t.pers,t.lav,t.note,t.noteint,t.tipo,';
  s:=   'select distinct t.cod,t.data,t.macch,t.pers,t.lav,t.note,t.noteint,';
  agg(s,'case coalesce(t.note,'''')');
  agg(s,'when '''' then o.descr');
  agg(s,'when chr(13)||chr(10) then o.descr'); //nb
  agg(s,'else coalesce(t.note,'''')');
  agg(s,'end as des,');
  agg(s,'t.tipo,');

  agg(s,'cast(t.dalle as time) as daora,');
  agg(s,'cast(t.alle as time) as adora,');

  agg(s,'t.dalle,t.alle,rt.rigalav,');
  //agg(s,'tc.cod as oc,rc.commint,rc.dis,c.nome as cli,'); //simplyf(c.nome) as cli,'); dava err. con Bahmüller, trasf. in Bahmuller
  //agg(s,'tc.cod as oc,');
  agg(s,'c.nome as cli,');
  //simplyf(c.nome) as cli,'); dava err. con Bahmüller, trasf. in Bahmuller
  agg(s,'0 as col');
  agg(s,'from tempi t');
  agg(s,'left join rtempi rt on rt.cod=t.cod');
  agg(s,'left join rcomm rc on rt.comm=rc.commint');
  agg(s,'left join tcomm tc on rc.cod=tc.cod');
  agg(s,'left join op o on t.lav=o.cod');
  agg(s,'left join pers p on t.pers=p.cod');
  agg(s,'left join cli c on tc.codcli=c.cod');
  //agg(s,'where t.alle<>'+qs('00:00:00')+' and t.lav<>'+qs('NP')+' and t.lav<>'+qs('NT'));
  agg(s,'where t.cod is not null');
  //agg(s,'and t.lav<>'+qs('NP')+' and t.lav<>'+qs('NT'));
  //agg(s,'and t.alle is not null'); //non mostrare lavorazioni in corso (sono sotto)
  //non mostrare lavorazioni in corso DI OGGI (sono sotto):
  agg(s,'and (t.alle<>'+qs('00:00:00')+' or t.data<>to_date('+qs(formatDateTime('dd/mm/yyyy',Now))+','+qs('dd/mm/yyyy')+'))');
  if flt<>'' then
    agg(s,flt);
  //agg(s,'order by t.data desc,t.dalle asc,t.alle asc');
  Result:=s;
end;

procedure elenco_lavorazioni_finite(flt: string);
var
  s:WideString;
  c,comms,diss:string;
  dataXel:TDate;
  flag:boolean;
  n,w:longint;

  function perc(p:word):word;
  begin
    Result:=p*w div 100;
  end;

begin
  with Fmain do begin
    //ampiezza colonne lav.:
    w:=dgEl.Width-20;
    dgEl.Columns[0].Width :=perc(7);  //data (min.7)
    dgEl.Columns[1].Width :=perc(15); //comm. old:5 (con una sola)
    dgEl.Columns[2].Width :=perc(14); //dis. old 10
    dgEl.Columns[3].Width :=perc(10); //cli. old:16
    dgEl.Columns[4].Width :=perc(8);  //lavorazione
    dgEl.Columns[5].Width :=perc(23); //des. lav. old:22
    dgEl.Columns[6].Width :=perc(16); //note op. old:14
    dgEl.Columns[7].Width :=0;        //perc(3); //op. old:3
    dgEl.Columns[8].Width :=perc(3);  //dalle - old 4
    dgEl.Columns[9].Width :=perc(3);  //alle - old 4
    dgEl.Columns[10].Width:=0;        //old: perc(3); //macch.
    dgEl.Columns[11].Width:=perc(2);  //perc(3); //id (reg.tempi)
    s:='lavorazioni concluse ultimi '+EfltGg.Text+' giorni';
    if flt<>'' then
      agg(s,'(dati filtrati)');
    gbLavFin.Caption:=s;

    //if fd.Top.State=dsInactive then fd.Top.Open;

    s:=sqlLavFin('');
    agg(s,flt);
    agg(s,'and t.pers='+qs(xUser)); //fa vedere solo reg. utente corrente
    agg(s,'and t.data>=to_date('+qs(formatDateTime('dd/mm/yyyy',Now-vlr(EfltGg.Text)))+','+qs('dd/mm/yyyy')+')');
    agg(s,'order by t.data desc,t.dalle desc');
    qEl.Close;
    qEl.SQL.Clear;
    qEl.SQL.Add(s);
    qEl.Open;

    flag:=True;
    dataXel:=Now;
    n:=1;
    Telf.Close;
    Telf.Open;
    qEl.First;
    while not qEl.EOF do begin
      if qElData.Value<>dataXel then begin
        dataXel:=qElData.Value;
        flag:=not flag;
      end;

      Telf.Insert;
      TelfCod.Value:=trunc(qElCod.Value); //n; inc(n);
      TelfData.Value:=qElData.Value;
      TelfDataDes.Value:=qElDataDes.Value;
      TelfLav.Value:=qElLav.Value;

      s:='select distinct comm from rtempi where cod=' + TelfCod.Text + ' order by comm';
      zgo(zq,s,'op');
      comms:='';
      if not zq.IsEmpty then begin
        zq.First;
        while not zq.EOF do begin
          c:=trim(vts(zq['comm']));
          if c<>'' then
            comms:=comms+c+' ';
          zq.Next;
        end;
      end;
      TelfElComms.Value:=comms;

      comms:=trim(comms);
      diss:='';
      if comms<>'' then begin
        for n:=1 to length(comms) do
          if comms[n]=' ' then
            comms[n]:=',';
        s:='select distinct dis from rcomm where commint in ('+comms+')';
        zgo(zq,s,'op');
        if not zq.IsEmpty then begin
          zq.First;
          while not zq.EOF do begin
            c:=trim(vts(zq['dis']));
            if c<>'' then
              diss:=diss+c+' ';
            zq.Next;
          end;
        end;
      end;
      TelfElDiss.Value:=diss;

      TelfNote.Value   :=qElNote.Value; //qElDes.AsString; //qElNote.Value;
      TelfNoteInt.Value:=qElNoteInt.Value;
      TelfCli.Value    :=qElCli.Value;
      TelfPers.Value   :=qElPers.Value;
      TelfDalle.Value  :=qElDalle.Value;
      TelfAlle.Value   :=qElAlle.Value;
      TelfMacc.Value   :=qElMacch.Value;
      TelfCol.Value    :=flag;
      Telf.Post;
      qEl.Next;
    end; //while
    Telf.SortOnFields('data;dalle;alle',True,True);
    Telf.First;
  end;
end;

procedure TFmain.BfltClick(Sender: TObject);
var
  flt:string;
begin
  flt:='';
  if EfltDis.Text<>'' then
    flt:=' and lower(rc.dis) like '+qs('%'+lowerCase(EfltDis.Text)+'%');
  if EfltCli.Text<>'' then
    flt:=flt+' and lower(tc.descr) like '+qs('%'+lowerCase(EfltCli.Text)+'%');
  if EfltComm.Text<>'' then
    flt:=flt+' and rc.commint='+EfltComm.Text;
  if EfltData.Date>0 then
    flt:=flt+' and t.data=to_date('+qs(formatDateTime('dd/mm/yyyy',EfltData.Date))+','+qs('dd/mm/yyyy')+')';
  elenco_lavorazioni_finite(flt);
end;

procedure mostraDis(img:TJvThumbImage; dis:string);
var
  s:WideString;
begin
  img.Picture.Clear;
  if trim(dis)<>'' then begin
    img.Hint:=dis; //serve per zoom
    s:='select immjpg as imm,immnom from dis where cod='+qs(dis);
    zgo(fd.qImm,s,'op');
    if not fd.qImm.IsEmpty then begin
      fd.qImmImm.SaveToFile('img.jpg');
      img.Picture.LoadFromFile('img.jpg');
      img.Repaint;
    end;
  end;
end;

procedure TFmain.BmodRegClick(Sender: TObject);
var
  s:WideString;
  comm,dis,cli,pz:string;
  riga:byte;
begin
  if TelfCod.Value=0 then begin
    mess('impossibile risalire alla registrazione',_info,_icons);
    exit;
  end;
  s:='select data,alle from tempi where cod='+TelfCod.Text;
  zgo(zq,s,'op');
  if not zq.IsEmpty then
    if (vts(zq['data'])=formatDateTime('dd/mm/yyyy',Now)) and (vts(zq['alle'])='00:00:00') then begin
      mess('lavorazione in corso - impossibile procedere',_info,_icons);
      exit;
    end;
  fd.Ttempi1.Close;
  fd.Trtem1.Close;
  s:='select '+campi_tempi;
  agg(s,'from tempi t where t.cod='+TelfCod.Text);
  zgo(fd.Ttempi1,s,'op');
  pReg1.Left:=(dgEl.Width -pReg1.Width)  div 2;
  pReg1.Top :=(dgEl.Height-pReg1.Height) div 10 * 8;
  Ldurata1.Caption:='';
  if (fd.TtempiDalle1.Value>0) and (fd.TtempiAlle1.Value>0) then
    Ldurata1.Caption:=formatDateTime('hh:mm',fd.TtempiAlle1.Value-fd.TtempiDalle1.Value);

  azzeraCommesse(Ec1a, Ec2a, Ec3a, Ec4a, Ec5a, Ec6a,
    Ldis1a, Ldis2a, Ldis3a, Ldis4a, Ldis5a, Ldis6a,
    Lcli1a, Lcli2a, Lcli3a, Lcli4a, Lcli5a, Lcli6a,
    Lpz1a, Lpz2a, Lpz3a, Lpz4a, Lpz5a, Lpz6a,
    LrigaLav1a, LrigaLav2a, LrigaLav3a, LrigaLav4a, LrigaLav5a, LrigaLav6a,
    LcodPlann1a, LcodPlann2a, LcodPlann3a, LcodPlann4a, LcodPlann5a, LcodPlann6a);
  stop_timer:=True;

  s:='select comm,cod,tmp,riga,rigalav from rtempi where cod='+TelfCod.Text+' order by riga';
  zgo(fd.Trtem1,s,'op');
  fd.Trtem1.First;
  riga:=0;
  while not fd.Trtem1.EOF do begin
    if trim(fd.TrtemComm1.Text)='' then
      comm:='0'
    else
      comm:=trim(fd.TrtemComm1.Text);
    if vlr(comm)<=0 then begin
      dis:='';
      cli:='';
      pz :='';
      end
    else
      begin
      s:='select rc.dis,rc.qta,c.nome';
      agg(s,'from rcomm rc');
      agg(s,'left join tcomm tc on rc.cod=tc.cod and tc.tipo=tc.tipo and rc.anno=tc.anno');
      agg(s,'left join cli c on tc.codcli=c.cod');
      agg(s,'where commint='+comm);
      zgo(zq,s,'op');
      if zq.IsEmpty then begin
        dis:='???';
        cli:='???';
        pz :='???';
        end
      else
        begin
        dis:=vts(zq['dis']);
        cli:=vts(zq['nome']);
        pz :=vts(zq['qta']);
      end;
    end;
    Inc(riga);
    case riga of
      1:assComm(Ec1a, Ldis1a, Lcli1a, Lpz1a, LrigaLav1, LcodPlann1,
          comm, dis, cli, pz, fd.TrtemRigalav1.Text, fd.TrtemTmp1.Text);
      2:assComm(Ec2a, Ldis2a, Lcli2a, Lpz2a, LrigaLav2, LcodPlann2,
          comm, dis, cli, pz, fd.TrtemRigalav1.Text, fd.TrtemTmp1.Text);
      3:assComm(Ec3a, Ldis3a, Lcli3a, Lpz3a, LrigaLav3, LcodPlann3,
          comm, dis, cli, pz, fd.TrtemRigalav1.Text, fd.TrtemTmp1.Text);
      4:assComm(Ec4a, Ldis4a, Lcli4a, Lpz4a, LrigaLav4, LcodPlann4,
          comm, dis, cli, pz, fd.TrtemRigalav1.Text, fd.TrtemTmp1.Text);
      5:assComm(Ec5a, Ldis5a, Lcli5a, Lpz5a, LrigaLav5, LcodPlann5,
          comm, dis, cli, pz, fd.TrtemRigalav1.Text, fd.TrtemTmp1.Text);
      6:assComm(Ec6a, Ldis6a, Lcli6a, Lpz6a, LrigaLav6, LcodPlann6,
          comm, dis, cli, pz, fd.TrtemRigalav1.Text, fd.TrtemTmp1.Text);
    end;

    fd.Trtem1.Next;
  end; //while
  stop_timer:=False;
  mostraDis(imgDis1,Ldis1a.Caption);

  pReg1.Show;
end;

procedure TFmain.BnuovaRegClick(Sender: TObject);
begin
  fd.Ttempi1.Close;
  fd.Trtem1.Close;
  fd.Ttempi1.Open;

  fd.Ttempi1.Insert;
  fd.TtempiData1.Value:=Now;
  fd.TtempiCod1.Value :=maxCodNum('tempi','cod',fd.Ttempi1);
  fd.TtempiPers1.Value:=xUser;
  fd.TtempiTipo1.Value:='t';
  //campo conf (uscita anticipata) è 0 per default

  pReg1.Left:=(dgEl.Width-pReg1.Width)   div 2;
  pReg1.Top :=(dgEl.Height-pReg1.Height) div 10 * 8;

  Ldurata1.Caption:='';
  azzeraCommesse(Ec1a, Ec2a, Ec3a, Ec4a, Ec5a, Ec6a,
    Ldis1a, Ldis2a, Ldis3a, Ldis4a, Ldis5a, Ldis6a,
    Lcli1a, Lcli2a, Lcli3a, Lcli4a, Lcli5a, Lcli6a,
    Lpz1a, Lpz2a, Lpz3a, Lpz4a, Lpz5a, Lpz6a,
    LrigaLav1a, LrigaLav2a, LrigaLav3a, LrigaLav4a, LrigaLav5a, LrigaLav6a,
    LcodPlann1a, LcodPlann2a, LcodPlann3a, LcodPlann4a, LcodPlann5a, LcodPlann6a);
  pReg1.Show;
end;

procedure TFmain.BstartClick(Sender: TObject);
var
  totc,riga:word;
  cod,rig:double;
  note,s,comms: WideString;
  dis,cli,pz,rigalav,comm,mot,codLav,codplann:string;
  found_diff:boolean;
begin
  pulsanti(False,True);

  rigalav:=qLavsRigaLav.Text;
  if rigalav='' then
    rigalav:='0';
  totc  :=0;
  note  :='';
  codLav:='';
  comms :='';
  found_diff:=False;
  Tlav.First;
  riga:=1;
  while not Tlav.EOF do begin
    if TlavSel.Value=1 then begin
      deb(i2s(riga)+'/'+i2s(totc));
      if (riga>1) and (riga>totc) then begin //se si salta 1° riga e le precedenti non sono state selezionate (totc)
        //il motivo "mot" viene scritto su tbl più avanti
        mot:='';
        if inputQuery('motivare mancato rispetto sequenza scaletta',motivo_salto_prima_lavorazione_,mot) then
          mot:=motivo_salto_prima_lavorazione_+' '+mot+cr
        else
          begin
          pulsanti(True,False);
          indice(attivo_);
          exit;
        end;
      end;

      inc(totc); //totc=nr. righe selezionate
      agg(comms,TlavComm.Text);
      if note='' then
        note:=trim(TlavNotes.AsString)
      else
        if lowerCase(note)<>lowerCase(trim(TlavNotes.AsString)) then
          found_diff:=True;
      if codLav='' then begin
        codLav:=TlavLav.Text;
      end
      else
        if codLav<>TlavLav.Text then begin
          mess('codici lavorazione diversi ('+codLav+'/'+TlavLav.Text+')'+cr+'verrà considerato '+codLav,_info,_icons);
        end;
    end;
    inc(riga);
    TLav.Next;
  end;
  if found_diff then
    if messSN('lavorazioni con descrizione diversa: proseguire comunque?','conferma')<>idYes then begin
      pulsanti(True,False);
      indice(attivo_);
      exit;
    end;
  if totc=0 then
    if messSN('nessuna commessa selezionata: procedere comunque?','conferma')=idNo then begin
      pulsanti(True,False);
      indice(attivo_);
      exit;
    end;

  if fd.Ttempi.State=dsInactive then
    fd.Ttempi.Open;
  if fd.Trtem.State=dsInactive then
    fd.Trtem.Open;

  fd.Ttempi.Insert;
  cod:=maxCodNum('tempi','cod',fd.Ttempi);
  fd.TtempiCod.Value  :=cod;
  fd.TtempiData.Value :=Now;
  fd.TtempiPers.Value :=xUser;
  fd.TtempiMacch.Value:=xMacch; //nb: forza su questa macchina anche se lav. prevista per altre
  fd.TtempiLav.Value  :=codLav; //qLavsLav.Value;
  fd.TtempiDalle.Value:=strToTime(formatDateTime('hh:mm',Now)); //else tiene secondi
  fd.TtempiAlle.Value :=0; //flag, =aperto
  fd.TtempiNote.Value :=note+cr;
  fd.TtempiNoteInt.Value:=mot;
  fd.Ttempi.Post;

  stop_timer:=True;
  Ldurata.Caption:=formatDateTime('hh:mm',Now-fd.TtempiDalle.Value);

  azzeraCommesse(Ec1, Ec2, Ec3, Ec4, Ec5, Ec6,
    Ldis1, Ldis2, Ldis3, Ldis4, Ldis5, Ldis6,
    Lcli1, Lcli2, Lcli3, Lcli4, Lcli5, Lcli6,
    Lpz1, Lpz2, Lpz3, Lpz4, Lpz5, Lpz6,
    LrigaLav1, LrigaLav2, LrigaLav3, LrigaLav4, LrigaLav5, LrigaLav6,
    LcodPlann1, LcodPlann2, LcodPlann3, LcodPlann4, LcodPlann5, LcodPlann6);

  Tlav.First;
  riga := 0;
  while not Tlav.EOF do begin
    if TlavSel.Value=1 then begin //legge e scrive commesse delle lav. selezionate
      //deb('riga lav');
      codPlann:=TlavCod.Text;
      if codPlann='' then
        codPlann:='0';
      s:='select max(riga) as rig from rtempi where cod='+fd.TtempiCod.AsString;
      zgo(zq,s,'op');
      if zq.IsEmpty then
        rig:=1
      else
        rig:= vlr(vts(zq['rig']))+1;
      if trim(TlavComm.Text)='' then
        comm:='0'
      else
        comm:=trim(TlavComm.Text);
      s:='insert into rtempi (cod,riga,comm,rigalav,tmp) values ';
      agg(s,'('+fd.TtempiCod.Text+','+floatToStr(rig)+','+comm+','+rigaLav+','+codPlann+')');
      //deb(s);
      zgo(zq,s,'ex');
      //deb('ins riga');
      if vlr(comm)<=0 then begin
        dis:='';
        cli:='';
        pz :='';
        end
      else
        begin
        //deb('select riga/comm');
        s:='select rc.dis,rc.qta,c.nome';
        agg(s,'from rcomm rc');
        agg(s,'left join tcomm tc on rc.cod=tc.cod and tc.tipo=tc.tipo and rc.anno=tc.anno');
        agg(s,'left join cli c on tc.codcli=c.cod');
        agg(s,'where commint='+comm);
        //deb(s);
        zgo(zq,s,'op');
        if zq.IsEmpty then begin
          dis:='???';
          cli:='???';
          pz :='???';
          end
        else
          begin
          dis:=vts(zq['dis']);
          cli:=vts(zq['nome']);
          pz :=vts(zq['qta']);
        end;
      end;
      inc(riga);
      case riga of
        1:assComm(Ec1,Ldis1,Lcli1,Lpz1,LrigaLav1,LcodPlann1,
            comm,dis,cli,pz,rigaLav,codPlann); //deb('asscomm:'+codplann);
        2:assComm(Ec2,Ldis2,Lcli2,Lpz2,LrigaLav2,LcodPlann2,
            comm,dis,cli,pz,rigaLav,codPlann);
        3:assComm(Ec3,Ldis3,Lcli3,Lpz3,LrigaLav3,LcodPlann3,
            comm,dis,cli,pz,rigaLav,codPlann);
        4:assComm(Ec4,Ldis4,Lcli4,Lpz4,LrigaLav4,LcodPlann4,
            comm,dis,cli,pz,rigaLav,codPlann);
        5:assComm(Ec5,Ldis5,Lcli5,Lpz5,LrigaLav5,LcodPlann5,
            comm,dis,cli,pz,rigaLav,codPlann);
        6:assComm(Ec6,Ldis6,Lcli6,Lpz6,LrigaLav6,LcodPlann6,
            comm,dis,cli,pz,rigaLav,codPlann);
      end;

    end; //if sel
    Tlav.Next;
  end; //while
  Ec1.SetFocus; //per visualizzare anteprima
  //aggiorna_miniatura(img,dm.TrtemDis.Text); //dopo aggiorna() perché deve leggere Trtem!
  indice(inattivo_); //disabilita indice, new 25/08/23
  deb(codlav);
  stop_timer:=False;
end;

function ctrlCodLav(quale: TDBComboBox): boolean;
var
  cod,desLav:string;
  s:WideString;
begin
  cod:=trim(quale.Text);
  if pos(sep,cod)=0 then //codice dato direttamente
    cod:=quale.Text //per chiarezza
  else
    begin
    cod:=copy(cod,pos(sep,cod)+1,255); //se da elenco è nella forma "descr. | cod"
  end;

  quale.Text:=cod;
  if cod='' then begin
    mess('indicare codice lavorazione',_info,_icons);
    quale.SetFocus;
    Result:=False;
    exit;
  end;
  s:='select cod,descr from op where cod='+qs(cod);
  zgo(fd.zq,s,'op');
  if fd.zq.IsEmpty then begin
    mess('codice lavorazione -'+cod+'- inesistente',_info,_icons);
    quale.SetFocus;
    Result:=False;
    exit;
    end
  else
    begin
    desLav:=vts(fd.zq['descr']);
    case quale.Tag of
      1:begin
        if insEd(fd.Ttempi1) then begin
          fd.TtempiLav1.Value:=cod;
          fd.TtempiDesLav1.Value:=desLav;
          Fmain.MnoteOp1.SetFocus;
        end;
        end
      else
        begin
        if insEd(fd.Ttempi) then begin
          fd.TtempiLav.Value:=cod;
          fd.TtempiDesLav.Value:=desLav;
          Fmain.MnoteOp.SetFocus;
        end;
      end;
    end; //case
  end;
  Result:=True;
end;

function ctrlOrari(tbl:TSqlQuery; dalle,alle,data:TDateTime; cod:string):boolean;
var
  dat,h:string;
  s:widestring;
begin
  with Fmain do begin
    if (not cercaParam('noctrlorari')) then begin
      dat:=formatDateTime('dd/mm/yyyy',data);

      h:=formatDateTime('hh:mm',dalle);
      h:=h+':00';
      s:='select dalle,alle from tempi where pers='+qs(xUser);
      agg(s,'and data=to_date('+qs(dat)+','+qs('dd/mm/yyyy')+')');
      //agg(s,'and '+qs(h)+'>=dalle and '+qs(h)+'<=alle');
      agg(s,'and '+qs(h)+'>dalle and '+qs(h)+'<alle');
      if tbl.State<>dsInsert then //se in modifica non considerare reg. corrente
        agg(s,'and cod<>'+cod);

      zgo(zq,s,'op');
      if zq.RecordCount>0 then begin
        mess('"dalle" ['+formatDateTime('hh:mm', dalle)+'] rientra già in '+vts(zq['dalle'])+'-'+vts(zq['alle']),_info,_icons);
        result:=false;
        exit;
      end;

      if alle>0 then begin
        h:=formatDateTime('hh:mm', alle);
        h:=h+':00';
        s:='select dalle,alle from tempi where pers='+qs(xUser);
        agg(s,'and data=to_date('+qs(dat)+','+qs('dd/mm/yyyy')+')');
        //agg(s,'and '+qs(h)+'>=dalle and '+qs(h)+'<=alle');
        agg(s,'and '+qs(h)+'>dalle and '+qs(h)+'<alle');
        if tbl.State<>dsInsert then //se in modifica non considerare reg. corrente
          agg(s,'and cod<>'+cod);
        zgo(zq,s,'op');
        if zq.RecordCount>0 then begin
          mess('"alle" ['+formatDateTime('hh:mm', alle)+'] rientra già in '+vts(zq['dalle'])+'-'+vts(zq['alle']),_info,_icons);
          result:=false;
          exit;
        end;
      end;
    end; //if
  end; //with
end;

function controlliReg(cb:TDBComboBox; tipo:TStringField; main:boolean; dalle,alle:TDateTime; lav:string):boolean;
begin
  if tipo.isNull then begin //in caso di stop attesa o manut. è già su "altro"
    mess('indicare tipo pezzo',_info,_icons);
    Result:=False;
    exit;
  end;
  if not ctrlCodLav(cb) then
    exit;
  with Fmain do begin
    if main then begin
      if Ec1.Focused or Ec2.Focused or Ec3.Focused or Ec4.Focused or
        Ec5.Focused or Ec6.Focused then begin //se c'è il cursore sul campo
        mess('confermare commesse',_info,_icons);
        Result:=False;
        exit;
      end;
      if Eini.Focused then begin
        mess('confermare ora inizio',_info,_icons);
        Result:=False;
        exit;
      end;
      end
    else
      begin
      if Ec1a.Focused or Ec2a.Focused or Ec3a.Focused or Ec4a.Focused or
        Ec5a.Focused or Ec6a.Focused then begin //se c'è il cursore sul campo
        mess('confermare commesse',_info,_icons);
        Result:=False;
        exit;
      end;
      if Efine1.Focused then begin
        mess('confermare ora fine',_info,_icons);
        Result:=False;
        exit;
      end;
      if Eini1.Focused then begin
        mess('confermare ora inizio',_info,_icons);
        Result:=False;
        exit;
      end;
    end;
  end;

  if (lav<>'NP') and (lav<>'NT') and (lav<>'CORSO') and (lav<>'NN') then begin
    if dalle=0 then begin
      mess('ora inizio mancante o non confermata',_info,_icons);
      Result:=False;
      exit;
    end;
    if alle<>99 then //flag: si chiude reg. nuova quindi "alle" non c'è ancora
      if alle=0 then begin
        mess('ora fine mancante o non confermata',_info,_icons);
        Result:=False;
        exit;
      end;

  end;

  if alle<dalle then begin
    mess('ora fine antecedente a ora inizio',_info,_icons);
    Result:=False;
    exit;
  end;

  if main then begin
    if not ctrlOrari(fd.Ttempi,dalle,alle,fd.TtempiData.Value,fd.TtempiCod.Text) then //ctrl orari:
      exit;
    //toglie eventuali secondi agli orari e fa post della registrazione:
    if not insEd(fd.Ttempi) then
      fd.Ttempi.Edit;
    fd.TtempiDalle.Value:=strToTime(formatDateTime('hh:mm',dalle));
    fd.TtempiAlle.Value :=strToTime(formatDateTime('hh:mm',alle));
    fd.Ttempi.Post;
    end
  else
    begin
    if not ctrlOrari(fd.Ttempi1,dalle,alle,fd.TtempiData1.Value,fd.TtempiCod1.Text) then begin //ctrl orari:
      Result:=False;
      exit;
    end;
    //toglie eventuali secondi agli orari e fa post della registrazione:
    if not insEd(fd.Ttempi1) then
      fd.Ttempi1.Edit;
    fd.TtempiDalle1.Value:=strToTime(formatDateTime('hh:mm',dalle));
    fd.TtempiAlle1.Value :=strToTime(formatDateTime('hh:mm',alle));
    fd.Ttempi1.Post;
  end;
  Result:=True;
end;

procedure scriviComm(comm:string; cod:double; riga:byte; rigaLav:longint; codPlann:string);
var
  s:WideString;
begin
  if vlr(comm)>0 then begin
    fd.Trtem.Insert;
    fd.TrtemCod.Value    :=cod;
    fd.TrtemRiga.Value   :=riga;
    fd.TrtemComm.Value   :=trunc(vlr(comm));
    fd.TrtemRigaLav.Value:=rigaLav;
    if trim(codPlann)='' then
      fd.TrtemTmp.Value  :=0
    else
      fd.TrtemTmp.Value  :=strToFloat(codPlann);
    fd.Trtem.Post;

    //chiude reg. planner su Prod:
    if trim(codPlann)<>'' then begin
      s:='update planner set fatto=1 where cod='+codPlann;
      zgo(Fmain.zq,s,'ex');
    end;
  end;
end;

procedure scriviComm1(comm: string; cod: double; riga: byte; rigaLav, codPlann: longint);
begin
  if vlr(comm)>0 then begin
    fd.Trtem1.Insert;
    fd.TrtemCod1.Value    :=cod;
    fd.TrtemRiga1.Value   :=riga;
    fd.TrtemComm1.Value   :=trunc(vlr(comm));
    fd.TrtemRigaLav1.Value:=rigaLav;
    fd.TrtemTmp1.Value    :=codPlann;
    fd.Trtem1.Post;
    //in modifica non può cambiare lo stato della registrazione planner
  end;
end;

procedure TFmain.BstopClick(Sender: TObject);
var
  ora:string;
  s,cods:WideString;
  riga  :byte;
  cod   :double;
begin
  if not controlliReg(cbLav,fd.TtempiTipo,True,fd.TtempiDalle.Value,99,fd.TtempiLav.Text) then
    exit;
  if mess('conferma stop?','conferma',mb_YesNo+mb_iconQuestion)<>idYes then //questa istruz. era stranamente in fondo all proc. ...
    exit;
  pulsanti(True,False);
  //fare transazione
  cod :=fd.TtempiCod.Value;
  cods:=fd.TtempiCod.Text;
  fd.Ttempi.Edit;
  fd.TtempiPers.Value:=xUser; //per sicurezza
  ora:=formatDateTime('hh:mm',Now);
  fd.TtempiAlle.Value:=strToTime(ora); //else tiene secondi
  fd.Ttempi.Post;
  //refresh:
  fd.Ttempi.Close;
  fd.Ttempi.Open;
  //cancella righe attuali per poi riscriverle (NB: comm. a video in TEdit, non TDBEdit):
  s:='delete from rtempi where cod='+cods;
  zgo(zq,s,'ex');
  //scrive righe:
  for riga:=1 to maxComm do begin
    case riga of
      1:scriviComm(Ec1.Text,cod,riga,
          trunc(vlr(LrigaLav1.Caption)),''); //cod.planner vuoto altrimenti chiude reg.
      2:scriviComm(Ec2.Text,cod,riga,
          trunc(vlr(LrigaLav2.Caption)),'');
      3:scriviComm(Ec3.Text,cod,riga,
          trunc(vlr(LrigaLav3.Caption)),'');
      4:scriviComm(Ec4.Text,cod,riga,
          trunc(vlr(LrigaLav4.Caption)),'');
      5:scriviComm(Ec5.Text,cod,riga,
          trunc(vlr(LrigaLav5.Caption)),'');
      6:scriviComm(Ec6.Text,cod,riga,
          trunc(vlr(LrigaLav6.Caption)),'');
    end;
  end;
  indice(attivo_);
end;

procedure TFmain.dbgIndCellClick(Column: TColumn);
var
  s:WideString;
begin
  imageInd.Picture.Clear;
  if trim(TlavComm.Text)<>'' then begin
    s:='select immjpg as imm,immnom from dis where cod='+qs(TlavDis.Text);
    zgo(fd.qImm,s,'op');
    if fd.qImm.IsEmpty then
      exit;
    fd.qImmImm.SaveToFile('img.jpg');
    imageInd.Picture.LoadFromFile('img.jpg');
    LimmDisInd.Caption:=TlavDis.Text;
  end;
  pImmInd.Show; //posizione iniziale in FormShow, poi tiene eventuale spostamento
end;

procedure TFmain.dbgIndPrepareCanvas(sender: TObject; DataCol: Integer;
  Column: TColumn; AState: TGridDrawState);

  procedure col(sf,car:integer);
  begin
    dbgInd.Canvas.Brush.Color:=sf;
    dbgInd.Canvas.Font.Color :=car;
  end;

begin
  if TlavSel.Value=1 then
    col(clBlue,clWhite)
  else
    if TlavEvidenz.Value=1 then begin
      col(clOrange,clBlack);
      end
    else
      col(dbgInd.Color,clBlack);

    if not dbgInd.ReadOnly then //colora solo se attivo
      if Column.Tag=99 then
        if TlavMater.Text='nulla' then
          col(clRed,clYellow)
        else
          if TlavMater.Text='tutto' then
            col(clLime,clBlack)
          else
            if TlavMater.Text='parz.' then
              col(clAqua,clBlack)
            else
              col(dbgInd.Color,clBlack);
end;

procedure TFmain.dbNavAggIndexClick(Sender: TObject; Button: TDBNavButtonType);
begin
  case button of
    nbRefresh:start_all();
  end;
end;

procedure TFmain.BcancRegEffClick(Sender: TObject);
var
  s:WideString;
  lav: string;
begin
  s:='select lav,alle from tempi where cod='+TelfCod.Text;
  zgo(zq,s,'op');
  if not zq.IsEmpty then begin
    lav:=vts(zq['lav']);
    if (lav<>'NP') and (lav<>'NT') and (lav<>'CORSO') and (lav<>'NN') then
      if vts(zq['alle'])='00:00:00' then begin
        mess('registrazione aperta - impossibile procedere',_info,_icons);
        exit;
      end;
  end;
  if messSN('conferma cancellazione registrazione evidenziata?','conferma')=idYes then begin
    s:='delete from rtempi where cod='+TelfCod.Text;
    zgo(zq,s,'ex');
    s:='delete from tempi where cod='+TelfCod.Text;
    zgo(zq,s,'ex');
    elenco_lavorazioni_finite('');
  end;
end;

procedure TFmain.BcfgSaveClick(Sender: TObject);
var
  f:textFile;
  fn:string;
begin
  fn:=pLoc+'\cfg.inf';
  assignFile(f,fn);
  rewrite(f);
  writeln(f,'0');
  if cbCtrMacch.Checked then
    writeln(f,'1')
  else
    writeln(f,'0');
  writeln(f,KfileNameEdit.Text);
  closeFile(f);
  if insEd(zq2) then //parGen
    zq2.Post;
  leggiCfg();
end;

procedure TFmain.BconfModClick(Sender: TObject);
var
  s   :WideString;
  riga:byte;
  cod :double;
begin
  if not controlliReg(cbLav1,fd.TtempiTipo1,False,fd.TtempiDalle1.Value,fd.TtempiAlle1.Value,fd.TtempiLav.Text) then
    exit;
  cod:=fd.TtempiCod1.Value;
  if insEd(fd.Ttempi1) then
    fd.Ttempi1.Post;
  //cancella righe attuali per poi riscriverle (NB: comm. a video in TEdit, non TDBEdit):
  s:='delete from rtempi where cod='+fd.TtempiCod1.Text;
  zgo(zq,s,'ex');
  if fd.Trtem1.State=dsInactive then
    fd.Trtem1.Open;
  //scrive righe:
  for riga:=1 to maxComm do begin
    case riga of
      1:scriviComm1(Ec1a.Text,cod,riga,
          trunc(vlr(LrigaLav1a.Caption)),trunc(vlr(LcodPlann1a.Caption)));
      2:scriviComm1(Ec2a.Text,cod,riga,
          trunc(vlr(LrigaLav2a.Caption)),trunc(vlr(LcodPlann2a.Caption)));
      3:scriviComm1(Ec3a.Text,cod,riga,
          trunc(vlr(LrigaLav3a.Caption)),trunc(vlr(LcodPlann3a.Caption)));
      4:scriviComm1(Ec4a.Text,cod,riga,
          trunc(vlr(LrigaLav4a.Caption)),trunc(vlr(LcodPlann4a.Caption)));
      5:scriviComm1(Ec5a.Text,cod,riga,
          trunc(vlr(LrigaLav5a.Caption)),trunc(vlr(LcodPlann5a.Caption)));
      6:scriviComm1(Ec6a.Text,cod,riga,
          trunc(vlr(LrigaLav6a.Caption)),trunc(vlr(LcodPlann6a.Caption)));
    end;
  end;
  pReg1.Hide;
  if anomalie() then begin //ricontrolla
    tsAnom.Caption:='*'+tsAnom.Caption+'*';
    tsDone.Caption:='lavorazioni eseguite'; //per togliere asterischi, migliorare
    pageControl.ActivePageIndex:=2;
    end
  else
    begin
    pageControl.ActivePageIndex:=1;
    elenco_lavorazioni_finite(''); //aggiorna elenco
  end;
end;

procedure TFmain.BfineClick(Sender: TObject);
var
  ora:string;
  s: WideString;
  riga:byte;
  cod:double;
begin
  if not insEd(fd.Ttempi) then
    fd.Ttempi.Edit;
  fd.TtempiPers.Value:=xUser; //per sicurezza
  ora:=formatDateTime('hh:mm',Now);
  fd.TtempiAlle.Value:=strToTime(ora); //else tiene secondi
  if not controlliReg(cbLav,fd.TtempiTipo,True,fd.TtempiDalle.Value,fd.TtempiAlle.Value,fd.TtempiLav.Text) then
    exit;

  if fd.TtempiRigaLav.Value>0 then begin
    showmessage('controlli da fare');
  end;

  pulsanti(True,False); //nasconde anche pReg
  //= a Bstop: unificare?
  cod:=fd.TtempiCod.Value;
  if not insEd(fd.Ttempi) then
    fd.Ttempi.Edit;
  fd.TtempiPers.Value:=xUser; //per sicurezza
  ora:=formatDateTime('hh:mm',Now);
  fd.TtempiAlle.Value:=strToTime(ora); //else tiene secondi
  fd.Ttempi.Post;
  //cancella righe attuali per poi riscriverle (NB: comm. a video in TEdit, non TDBEdit):
  s:='delete from rtempi where cod='+fd.TtempiCod.Text;
  zgo(zq,s,'ex');
  //scrive righe:
  for riga:=1 to maxComm do begin
    case riga of
      1:scriviComm(Ec1.Text,cod,riga,
          trunc(vlr(LrigaLav1.Caption)),LcodPlann1.Caption);
      2:scriviComm(Ec2.Text,cod,riga,
          trunc(vlr(LrigaLav2.Caption)),LcodPlann2.Caption);
      3:scriviComm(Ec3.Text,cod,riga,
          trunc(vlr(LrigaLav3.Caption)),LcodPlann3.Caption);
      4:scriviComm(Ec4.Text,cod,riga,
          trunc(vlr(LrigaLav4.Caption)),LcodPlann4.Caption);
      5:scriviComm(Ec5.Text,cod,riga,
          trunc(vlr(LrigaLav5.Caption)),LcodPlann5.Caption);
      6:scriviComm(Ec6.Text,cod,riga,
          trunc(vlr(LrigaLav6.Caption)),LcodPlann6.Caption);
    end;
  end;
  //refresh:
  fd.Ttempi.Close;
  fd.Ttempi.Open;
  indice(attivo_);
end;

procedure TFmain.BazzFltClick(Sender: TObject);
begin
  EfltDis.Text :='';
  EfltComm.Text:='';
  EfltCli.Text :='';
  EfltData.Date:=0;
end;

procedure TFmain.BannModifClick(Sender: TObject);
begin
  fd.Ttempi1.Cancel;
  fd.Trtem1.Cancel;
  pReg1.Hide;
end;

procedure TFmain.BcancClick(Sender: TObject);
var
  s:WideString;
  cod:string;
begin
  stop_timer:=False;
  if fd.Ttempi.State=dsInactive then
    exit;
  if fd.Ttempi.RecordCount=0 then
    exit;
  if messSN('cancellare COMPLETAMENTE la lavorazione in corso?','conferma')<>idYes then //=idNo then
    exit;
  cod:=fd.TtempiCod.Text;
  if True then begin //not is_reg_manut(dm.TtemLav.Text) then begin
    s:='delete from rtempi where cod='+cod;
    zgo(zq,s,'ex'); //cancella commesse da reg. tempi
  end;
  s:='delete from tempi where cod='+cod;
  zgo(zq,s,'ex');

  fd.Ttempi.Close; //all new 01/09/23
  fd.Ttempi.Open;
  fd.Trtem.Close;
  fd.Trtem.Open;

  indice(attivo_); //new 01/08/23

  pulsanti(True, False);
end;

procedure azzera_dis();
var
  x:byte;
begin
  with Fmain do begin
    BdisIni.Enabled :=False;
    BdisFin.Enabled :=False;
    BdisPrec.Enabled:=False;
    BdisSucc.Enabled:=False;
    //Feldis.LdesM.Caption:=''; Feldis.LdesCc.caption:='';
    for x:=1 to maxPic do begin
      (Fmain.FindComponent('Bdis' + i2s(x)) as TButton).Caption:='';
      (Fmain.Findcomponent('Ldes' + i2s(x)) as TLabel).Caption:='';
      (Fmain.Findcomponent('img' + i2s(x)) as TJvThumbImage).Picture:=nil;
      //pDis.Repaint; nb2
    end;
  end;
end;

procedure TFmain.PageControlChange(Sender: TObject);
begin
  tsLav.Caption :=noAstx(tsLav.Caption);
  tsDone.Caption:=noAstx(tsDone.Caption);
  tsAnom.Caption:=noAstx(tsAnom.Caption);
  tsDis.Caption :=noAstx(tsDis.Caption);
  tsMan.Caption :=noAstx(tsMan.Caption);
  pImmInd.Hide;
  case pageControl.ActivePageIndex of
    0:begin
      if anomalie() then begin //se ci sono anomalie nelle reg. precedenti bisogna priam sistemarle
        mess('sistemare prima anomalie registrazioni', _info, _icons);
        pageControl.ActivePageIndex:=2;
        anomalie();
        end
      else
        begin
        pageControl.ActivePageIndex:=0; //perché anomalie() attiva la pagina 2
        tsLav.Caption:=astx(tsLav.Caption);

        inizializza();

      end;
    end;
    1:begin
      tsDone.Caption:=astx(tsDone.Caption);
      elenco_lavorazioni_finite('');
    end;
    2:begin
      tsAnom.Caption:=astx(tsAnom.Caption);
      anomalie();
    end;
    3:begin
      tsDis.Caption:=astx(tsDis.Caption);
      azzera_dis(); //disegni
    end;
    4:begin
      tsMan.Caption:=astx(tsMan.Caption);
      //manut(); nb2
    end;
    5:; //cfg
  end;
end;

procedure TFmain.qElCalcFields(DataSet: TDataSet);
var
  //dat:string;
  gds:longint;
begin
  qElNotes.Value:=qElNote.Value;

  //dat:=qElData.Text;
  gds:=dayOfWeek(qElData.Value);
  qElDataDes.Value:=nomeGiorno(gds)+' '+formatDateTime('dd/mm',qElData.Value);
end;

procedure TFmain.qLavsCalcFields(DataSet: TDataSet);
var
  dis:string;
  s:WideString;
  merce:string[11];
  p,x:word;
begin
  s:=qLavsNote.AsString;

  p:=pos('pz]',s);
  if p>0 then begin
    x:=p-1;
    while (x>1) and (s[x]<>'[') do
      dec(x);
    if s[x]='[' then begin
      s:=copy(s,1,x);
    end;
  end;
  if pos('{',s)>0 then
    s:=copy(s,1,pos('{',s)-1); //toglie posizione (es.{10})
  qLavsNotes.Value:=s;

  if qLavsComm.Text<>'' then begin
    s:='select dis from rcomm where commint='+qLavsComm.Text;
    zgo(zq2,s,'op');
    if zq2.IsEmpty then
      dis:=''
    else
      dis:=vts(zq2['dis']);
    qLavsDis.Value:=dis;

    //cerca se materiale arrivato (solo materiale, non da lavorazioni esterne):
    merce:='non necess.';
    if qLavsComm.Value>0 then begin
      s:='select sum(r.qta) as tord,sum(r.cons) as tcons';
      agg(s,'from roa r');
      agg(s,'left join toa t on r.tipo=t.tipo and r.cod=t.cod');
      agg(s,'where r.commint='+qLavsComm.Text
        +' and t.tipo<>'+qs('t') //non trasp.
        +' and t.mot='+qs('a') //<--- solo acq., non c/lav. (new 14/03/23)
        +' and r.ann<>1' //non annullato (25/08/23)
        +' and t.off='+qs('o')); //solo ordini, non rich.
      zgo(zq,s,'op');
      if vlr(vts(zq['tord']))>0 then
        if vlr(vts(zq['tcons']))=0 then
          merce:='nulla'
        else
          if vlr(vts(zq['tord']))=vlr(vts(zq['tcons'])) then
            merce:='tutto'
          else
            if vlr(vts(zq['tord']))>vlr(vts(zq['tcons'])) then
              merce:='parz.';
    end;
    qLavsMater.Value:=merce;
  end;
end;

procedure TFmain.TlavCalcFields(DataSet: TDataSet);
var
  d,d2:widestring;
  x,p:word;
begin
  d:=TlavNote.Value;
  d2:=d; //:='';
  //toglie note come [2pz], [2h], {100°}<-posizione
  p:=pos('pz]',lowerCase(d2));
  if p>0 then begin
    x:=p-1;
    while (x>1) and (d2[x]<>'[') do
      dec(x);
    if d2[x]='[' then
      d2:=copy(d2,1,x-1);
  end;
  x:=pos('{',d2);
  if x>1 then //else copia da 1 a 0
    d2:=copy(d2,1,x-1); //toglie posizione (es.{10})
  TlavDes2.AsString:=d2;
end;

end.

