unit main;

{$mode objfpc}{$H+}
{$WARN 4104 off : Implicit string type conversion from "$1" to "$2"}
{$WARN 4105 off : Implicit string type conversion with potential data loss from "$1" to "$2"}
{$WARN 5024 off : Parameter "$1" not used}
{$WARN 6058 off : Call to subroutine "$1" marked as inline is not inlined}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  DBCtrls, Buttons, ExtCtrls, DBGrids, Grids, CheckBoxThemed, JvThumbImage,
  JvMovableBevel, JvNavigationPane, BCPanel, BCButton, BGRAFlashProgressBar,
  BGRAShape, ovcrlbl, kedits, SqlDb, DB, RxDBTimeEdit, rxmemds, RxDBGrid,
  rxdbdateedit, rxctrls, rxtooledit;

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
    Bdis1: TButton;
    Bdis10: TButton;
    Bdis11: TButton;
    Bdis12: TButton;
    Bdis13: TButton;
    Bdis14: TButton;
    Bdis15: TButton;
    Bdis16: TButton;
    Bdis17: TButton;
    Bdis18: TButton;
    Bdis2: TButton;
    Bdis3: TButton;
    Bdis4: TButton;
    Bdis5: TButton;
    Bdis6: TButton;
    Bdis7: TButton;
    Bdis8: TButton;
    Bdis9: TButton;
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
    Bprec1: TBGRAShape;
    Bprodutt: TSpeedButton;
    Bprodutt1: TSpeedButton;
    Bstart: TBCButton;
    Bstop: TBCButton;
    Bsucc1: TBGRAShape;
    cbAss: TCheckBox;
    cbCtrMacch: TCheckBoxThemed;
    cbImm: TCheckBox;
    cbLav: TDBComboBox;
    cbLav1: TDBComboBox;
    dbgInd: TDBGrid;
    dbNavAggIndex: TDBNavigator;
    dbNavAggLavFin: TDBNavigator;
    dbtCodReg: TDBText;
    dbtNoteLav: TDBText;
    dbtNoteLav1: TDBText;
    dbtReg: TDBText;
    dgEl: TRxDBGrid;
    dsAnom: TDataSource;
    dsElf: TDataSource;
    dsImmLoc: TDataSource;
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
    img1: TJvThumbImage;
    img10: TJvThumbImage;
    img11: TJvThumbImage;
    img12: TJvThumbImage;
    img13: TJvThumbImage;
    img14: TJvThumbImage;
    img15: TJvThumbImage;
    img16: TJvThumbImage;
    img17: TJvThumbImage;
    img18: TJvThumbImage;
    img2: TJvThumbImage;
    img3: TJvThumbImage;
    img4: TJvThumbImage;
    img5: TJvThumbImage;
    img6: TJvThumbImage;
    img7: TJvThumbImage;
    img8: TJvThumbImage;
    img9: TJvThumbImage;
    imgDis: TJvThumbImage;
    imgDis1: TJvThumbImage;
    img_dwg: TJvThumbImage;
    img_man: TJvThumbImage;
    img_min: TJvThumbImage;
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
    Ldes1: TLabel;
    Ldes10: TLabel;
    Ldes11: TLabel;
    Ldes12: TLabel;
    Ldes13: TLabel;
    Ldes14: TLabel;
    Ldes15: TLabel;
    Ldes16: TLabel;
    Ldes17: TLabel;
    Ldes18: TLabel;
    Ldes2: TLabel;
    Ldes3: TLabel;
    Ldes4: TLabel;
    Ldes5: TLabel;
    Ldes6: TLabel;
    Ldes7: TLabel;
    Ldes8: TLabel;
    Ldes9: TLabel;
    LdesLav1: TLabel;
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
    LdesLav: TLabel;
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
    Lidx1: TRxLabel;
    LimmDisInd: TLabel;
    LimmDisInd1: TLabel;
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
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    pAssenza: TJvNavPaneToolPanel;
    pbDis: TBGRAFlashProgressBar;
    pCloseImm: TPanel;
    pDis: TPanel;
    pImmInd: TJvMovablePanel;
    pLavFin: TBCPanel;
    pNav: TBCPanel;
    pPanDis: TPanel;
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
    qImmLoc: TSQLQuery;
    qImmLocimm: TBlobField;
    qImmLocimmjpg: TBlobField;
    qImmLocimmnom: TStringField;
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
    Timer: TTimer;
    TlavCtrlDone: TLongintField;
    TlavCtrlTodo: TLongintField;
    TlavIniz: TStringField;
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
    procedure BallLav1Click(Sender: TObject);
    procedure BallLavClick(Sender: TObject);
    procedure BannModifClick(Sender: TObject);
    procedure Battese1Click(Sender: TObject);
    procedure BatteseClick(Sender: TObject);
    procedure BazzFltClick(Sender: TObject);
    procedure BcancClick(Sender: TObject);
    procedure BcancRegEffClick(Sender: TObject);
    procedure BcfgSaveClick(Sender: TObject);
    procedure BconfModClick(Sender: TObject);
    procedure BdisFinClick(Sender: TObject);
    procedure BdisIniClick(Sender: TObject);
    procedure BdisPrecClick(Sender: TObject);
    procedure BdisSuccClick(Sender: TObject);
    procedure BfineClick(Sender: TObject);
    procedure BfltClick(Sender: TObject);
    procedure BgoDisClick(Sender: TObject);
    procedure BmodRegClick(Sender: TObject);
    procedure BnonProdutt1Click(Sender: TObject);
    procedure BnonProduttClick(Sender: TObject);
    procedure BnuovaRegClick(Sender: TObject);
    procedure BokC1aClick(Sender: TObject);
    procedure BokC1Click(Sender: TObject);
    procedure BokLav1Click(Sender: TObject);
    procedure BokLavClick(Sender: TObject);
    procedure BokNoteClick(Sender: TObject);
    procedure BokOre1Click(Sender: TObject);
    procedure BokOreClick(Sender: TObject);
    procedure BokTipoPzClick(Sender: TObject);
    procedure Bprodutt1Click(Sender: TObject);
    procedure BproduttClick(Sender: TObject);
    procedure BstartClick(Sender: TObject);
    procedure BstopClick(Sender: TObject);
    procedure cbLav1Exit(Sender: TObject);
    procedure cbLavEnter(Sender: TObject);
    procedure cbLavExit(Sender: TObject);
    procedure dbgIndCellClick(Column: TColumn);
    procedure dbgIndEditButtonClick(Sender: TObject);
    procedure dbgIndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgIndPrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
    procedure dbNavAggIndexClick(Sender: TObject; Button: TDBNavButtonType);
    procedure dgElPrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
    procedure Ec1aEnter(Sender: TObject);
    procedure Ec1Enter(Sender: TObject);
    procedure Ec1Exit(Sender: TObject);
    procedure Ec2aEnter(Sender: TObject);
    procedure Ec2Enter(Sender: TObject);
    procedure Ec3aEnter(Sender: TObject);
    procedure Ec3Enter(Sender: TObject);
    procedure Ec4aEnter(Sender: TObject);
    procedure Ec4Enter(Sender: TObject);
    procedure Ec5aEnter(Sender: TObject);
    procedure Ec5Enter(Sender: TObject);
    procedure Ec6aChange(Sender: TObject);
    procedure Ec6aEnter(Sender: TObject);
    procedure Ec6Enter(Sender: TObject);
    procedure Edata1Enter(Sender: TObject);
    procedure Efine1Exit(Sender: TObject);
    procedure Eini1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imageIndClick(Sender: TObject);
    procedure imgDis1Click(Sender: TObject);
    procedure LhelpLav_Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure pCloseImmClick(Sender: TObject);
    procedure qElCalcFields(DataSet: TDataSet);
    procedure qLavsCalcFields(DataSet: TDataSet);
    procedure rlMotClick(Sender: TObject);
    procedure sgButtonClick(Sender: TObject; aCol, aRow: Integer);
    procedure TimerTimer(Sender: TObject);
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
  motivo,helps;

const
  sep='|';
  lav_da_escludere:string='and lav<>''NP'' and lav<>''NT'' and lav<>''NN'''; //no 'CORSO'!
  maxPic=18; //per dis.
  attivo_   :shortint =  1;
  inattivo_ :shortint =  0;
  invariato_:shortint = 99;
  col_ctrl_da_fare = 7;
  col_ctrl_fatti   = 8;

var
  riga_corr:word;
  quanti,pag:longint; //per dis.

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
  dal,al,dat,ore,msg:String;
  data_,ore_        :String;
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
    try
      attDal:=strToDate(vts(zq2['attdal']));
    except
      attDal:=0;
    end;

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
    //sqgo(zq,trZq,s,'op'); deb('a');


    //if trZq.Active then
      //trZq.EndTransaction;
    zq.Close;
    zq.SQL.Clear;
    zq.SQL.Add(s);
    zq.Open;


    if not zq.IsEmpty then begin
      data_:=vts(zq['data']); //nb2
      ore_ :=vts(zq['ore']); //nb2
      //s:='';
      //deb(i2s(zq.RecordCount));
      zq.First;
      //if zq.State=dsInactive then deb('zq inact1');
      while not zq.EOF do begin
        //if zq.State=dsInactive then deb('zq inact2');
        s:='select sum(conf) as uscantic from tempi';
        //sum perché basta un solo check "uscita antic." nella giornata
        agg(s,'where data=to_date('+qs(vts(zq['data']))+','+qs('dd/mm/yyyy')+')');
        agg(s,'and pers='+qs(xUser));
        //zgo(zq2,s,'op');

        //deb('zq20');
        //if trZq2.Active then
          //trZq2.EndTransaction;
        zq2.Close;
        zq2.SQL.Clear;
        //deb('zq21');
        zq2.SQL.Add(s);
        zq2.Open;
        //deb('zq22');

        //if zq.State=dsInactive then deb('zq inact3');
        //deb('b');
        if vts(zq2['uscantic'])='0' then begin //se non ci sono uscite anticipate
          //if Tanom.State=dsInactive then Tanom.Open;
          //deb('c');
          Tanom.Insert;
          //deb('d');
          //dat:=vts(zq['data']); nb2
          dat:=data_;
          if trim(dat)='' then
            gds:=0
          else
            gds:=dayOfWeek(strToDate(dat));
          TanomData.Value:=strToDate(dat);
          TanomDataGds.Value:=nomeGiorno(gds)+' '+dat;
          //TanomCod.Value:=vlr(vts(zq['cod']));
          dat:=ore_; //vts(zq['ore']);
          dat:=copy(dat,1,length(dat)-3); //toglie secondi
          TanomNote.Value:='ore lavorate '+dat;
          Tanom.Post;
          found:=True;
        end;
        //deb('e');
        //if zq.State=dsInactive then deb('zq inact4');
        zq.Next;
      end;
      //deb('f');
      zq.Close;
      //deb('g');
    end;
    //deb('anom7');

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

    //deb('anom8');
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
    dbgInd.Columns[1].Width:=49 * w div 100; //note old:58
    dbgInd.Columns[2].Width:= 5 * w div 100; //comm.int.
    dbgInd.Columns[3].Width:=21 * w div 100; //dis.
    dbgInd.Columns[4].Width:= 0 * w div 100; //lav.
    dbgInd.Columns[5].Width:= 3 * w div 100; //pz in riga OC old:3
    dbgInd.Columns[6].Width:= 0 * w div 100; //rigalav. old:0
    dbgInd.Columns[col_ctrl_da_fare].Width:= 4 * w div 100;
    dbgInd.Columns[col_ctrl_fatti].Width:= 3 * w div 100;
    dbgInd.Columns[9].Width:= 6 * w div 100; //merce arrivata
    dbgInd.Columns[10].Width:= 2 * w div 100; //lav. iniziato
    dbgInd.Columns[11].Width:= 0 * w div 100;
    dbgInd.Columns[12].Width:= 0 * w div 100;
    dbgInd.Columns[13].Width:= 0 * w div 100;
    dbgInd.Columns[14].Width:= 0 * w div 100;
    {if mostra_reg_planner then
      dbgInd.Columns[10].Width:=100
    else
      dbgInd.Columns[10].Width:=0;}
    dbgInd.Columns[14].Width:= 2 * w div 100; //forza chiusura
    dbgInd.Columns[14].Color:=clRed;
    dbgInd.Columns[14].ButtonStyle:=cbsButtonColumn;
    dbgInd.Columns[14].Font.Size:=10;
  end;
end;

procedure indice(stato:byte); //0=inattivo (quando lav. in corso), 1=attivo, 99=non cambiare
var
  s:WideString;
  cod,macc,iniz:String;
begin
  //deb('inizio indice');
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
      TlavRigaLav.Value:=qlavsRigaLav.Value;
      TlavEvidenz.Value:=qlavsEvidenz.Value;
      TlavQta_as_posiz.Value:=qlavsQta_as_posiz.Value;
      TlavPosiz.Value:=qlavsPosiz.Value;

      //controlli da fare:
      s:='select count(*) as tot from quote';
      agg(s,'where tipo='+qs('q')); //q=cq intermedio
      agg(s,'and rr='+qlavsRigaLav.Text); //rr=riga lav.
      zq.Close;
      zq.SQL.Clear;
      zq.SQL.Add(s);
      zq.Open;
      TlavCtrlTodo.Value:=trunc(vlr(vts(zq['tot'])));

      //controlli fatti:
      s:='select count(*) as tot from quote';
      agg(s,'where tipo='+qs('q')); //q=cq intermedio
      agg(s,'and rr='+qlavsRigaLav.Text); //rr=riga lav.
      agg(s,'and valore<>''0'' and valore<>'''' and valore is not null');
      zq.Close;
      zq.SQL.Clear;
      zq.SQL.Add(s);
      zq.Open;
      TlavCtrlDone.Value:=trunc(vlr(vts(zq['tot'])));

      //lavorazione iniziata:
      s:='select count(*) as tot from rtempi r';
      agg(s,'left join tempi t on r.cod=t.cod');
      agg(s,'where r.comm='+qlavsComm.Text);
      agg(s,'and t.pers='+qs(xUser));
      agg(s,'and t.macch='+qs(xMacch));
      agg(s,'and t.lav='+qs(qlavsLav.Text));
      //deb(s);
      zq.Close;
      zq.SQL.Clear;
      zq.SQL.Add(s);
      zq.Open;
      if vts(zq['tot'])='0' then
        iniz:='no'
      else
        iniz:='Si'; //con Sì si vede solo S, con ìì solo ì
      TlavIniz.Value:=iniz;

      Tlav.Post;
      qlavs.Next;
    end;
    //Tlav.SortOnFields('qta;comm',true,false); //campi,case ins.,descend.
    Tlav.SortOnFields('qta_as_posiz;posiz',True,False); //campi,case ins.,descend.
    Tlav.First;
    //deb('lav 1st');

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
  //deb('fine indice');
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
  s,ops:widestring;
  d:string;
begin
  with Fmain do begin
    Mferie.Lines.Clear;
    Mferie.Font.Size:=10;
    Mferie.Font.Color:=clBlack;
    Mferie.Lines.Add('nessuna richiesta di ferie per gli operatori di questa macchina');

    s:='select cod,descr from pers where att=1 and macch='+qs(xMacch); //pers. che lavorano con questa macchina
    zgo(fd.zq,s,op_);
    //deb(i2s(fd.zq.RecordCount));
    ops:='';
    fd.zq.First;
    //deb('1st');
    while not fd.zq.EOF do begin
      if ops<>'' then
        ops+=',';
      ops+=qs(vts(fd.zq['cod']));
      fd.zq.Next;
    end;
    if ops='' then
      exit;

    s:='select d.cod,d.data,fino,op,nom,flag,macch from disp d';
    agg(s,'left join pers p on op=p.cod');
    agg(s,'where sez=''ass''');
    d:=formatDateTime('dd/mm/yyyy',Now);
    agg(s,'and (data>=to_date('+qs(d)+','+qs('dd/mm/yyyy')+')'); //fa vedere anche prima dell'assenza
    agg(s,'and to_date('+qs(d)+','+qs('dd/mm/yyyy')+')<=fino)');
    agg(s,'and op in ('+ops+')');
    agg(s,'order by data');
    zgo(fd.zq,s,op_);
    if fd.zq.RecordCount=0 then
      exit;

    fd.zq.First;
    s:='';
    while not fd.zq.EOF do begin
      if vts(fd.zq['data'])=vts(fd.zq['fino']) then
        s+=' '+vts(fd.zq['data'])
      else
        s+=' dal '+vts(fd.zq['data'])+' al '+vts(fd.zq['fino'])+' ';
      //if trim(vts(fd.zq['nom']))<>t then
        //s+=copy(trim(vts(fd.zq['nom'])),length(t)+1,255); //aggiunge eventuali note dopo il nome
      fd.zq.Next;
    end;
    Mferie.Lines.Clear;
    Mferie.Font.Size:=8;
    Mferie.Font.Color:=clBlue;
    Mferie.Lines.Add(s);
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

procedure visDesLav(cod:string; lab:TLabel);
var
  s:WideString;
begin
  with Fmain do begin
    if trim(cod)='' then
      lab.Caption:=''
    else
      begin
      s:='select descr from op where cod='+qs(cod);
      zq.Close;
      zq.SQL.Clear;
      zq.SQL.Add(s);
      zq.Open;
      if zq.IsEmpty then
        lab.Caption:=''
      else
        lab.Caption:=vts(zq['descr']);
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

    //zgo(fd.Ttempi,s,'op');

    //if fd.trTempi.Active then
      //fd.trTempi.EndTransaction;
    fd.Ttempi.Close;
    fd.Ttempi.SQL.Clear;
    fd.Ttempi.SQL.Add(s);
    fd.Ttempi.Open;


    //deb('ext');

    if fd.Ttempi.RecordCount>0 then begin
      pulsanti(False,True);
      Ldurata.Caption:=formatDateTime('hh:mm',Now-fd.TtempiDalle.Value);
      Ldurata.Repaint;
      s:='select * from rtempi';
      agg(s,'where cod='+fd.TtempiCod.Text);
      agg(s,'order by comm');
      //zgo(fd.Trtem,s,'op');
      //if fd.trRtempi.Active then
        //fd.trRtempi.EndTransaction;
      fd.Trtem.Close;
      fd.Trtem.SQL.Clear;
      fd.Trtem.SQL.Add(s);
      //deb(s);
      fd.Trtem.Open;
      //if fd.trtem.State=dsInactive then deb('trtem inact');
      //deb('rtem ok');

      visDeslav(fd.TtempiLav.Text, LdesLav);

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
    //deb('anom');
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
  LdesLav.Caption:=''; LdesLav1.Caption:='';
  //lav.finite:
  EfltGg.Text:='60'; //gg. da considerare per elenco registrazioni finite
  //disegni:
  Lidx.Caption:='';
  LimmDisInd.Caption:='';
  pImmInd.Hide;
  pbDis.Hide;
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
      s:='select cod,0 as rig,1,des,'+qs('d')+' as tipo from dis where cod='+qs(dis); //d=disegno
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
        tip :='d'; //vts(zq['tipo']);
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
    with Fmain do begin
      zgo(qImmLoc,s,'op');
      //deb(i2s(qImmLoc.RecordCount));
      ok:=False;
      if qImmLoc.RecordCount=0 then begin
        //deb('!');
        Result:='';
        end
      else
        begin
        ok:=not qImmLocImm.IsNull;
        if not ok then //new 23/10/19
          Result:=''
        else
          begin
          //deb('img name:'+vts(qImmLoc['immNom']));
          ext:=lowerCase(extens(qImmLocImmNom.Text));
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
              qImmLocImm.SaveToFile(fn);
              {$I+}
              ok:=IOResult=0;
              if ok then
                if vis then begin
                  //deb('ext:'+ext);
                  if ext='pdf' then begin
                    AProcess:=TProcess.Create(nil);
                    AProcess.Executable:=rcfg.pdf; //'"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"'; //path necessario
                    AProcess.Parameters.Add(fn);
                    AProcess.Options:=AProcess.Options + [poWaitOnExit];
                    AProcess.Execute;
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
      qImmLoc.Close;
    end; //with

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
  cod:String;
begin
  cod:=trim(LimmDisInd.Caption); //TlavDis.Text); no, else può essere vis. un dis. ma la riga corrente è un'altra
  if cod='' then
    mess('nessun disegno da visualizzare', _info, _icons)
  else
    leggiDis(cod, '', '', True, False);
end;

procedure TFmain.imgDis1Click(Sender: TObject);
var
  cod:String;
begin
  cod:=trim(LimmDisInd1.Caption);
  if cod='' then
    mess('nessun disegno da visualizzare', _info, _icons)
  else
    leggiDis(cod, '', '', True, False);
end;

procedure TFmain.LhelpLav_Click(Sender: TObject);
begin
  fd.Trtem.Edit;
  fd.Trtemcomm.Value:=3645;
  fd.Trtem.post;
end;

procedure TFmain.dgElPrepareCanvas(sender: TObject; DataCol: Integer;
  Column: TColumn; AState: TGridDrawState);
begin
  case TelfCol.Value of
    True :dgEl.Canvas.Brush.Color:=clWindow;
    False:dgEl.Canvas.Brush.Color:=clSilver;
  end;
end;

procedure mostraDis(img:TJvThumbImage; dis:String);
var
  s:WideString;
begin
  with Fmain do begin
    img.Picture.Clear;
    LimmDisInd1.Caption:=dis;
    if trim(dis)<>'' then begin
      img.Hint:=dis; //serve per zoom
      s:='select immjpg as imm,immnom from dis where cod='+qs(dis);
      zgo(qImmLoc,s,'op');
      if not qImmLoc.IsEmpty then begin
        qImmLocImm.SaveToFile('img.jpg');
        img.Picture.LoadFromFile('img.jpg');
        img.Repaint;
      end;
    end;
  end;
end;

procedure TFmain.Ec1aEnter(Sender: TObject);
begin
  mostraDis(imgDis1,Ldis1a.Caption);
end;

procedure TFmain.Ec1Enter(Sender: TObject);
begin
  mostraDis(imgDis,Ldis1.Caption);
end;

procedure TFmain.Ec1Exit(Sender: TObject);
var
  comm,dis,cli,qta:string;
  s:WideString;
  quale:shortint;
begin
  comm :=(Sender as TEdit).Text;
  quale:=(Sender as TEdit).Tag;
  if trim(comm)='' then
    exit;
  s:='select rc.dis,rc.qta,c.nome';
  agg(s,'from rcomm rc');
  agg(s,'left join tcomm tc on rc.cod=tc.cod and tc.tipo=tc.tipo and rc.anno=tc.anno');
  agg(s,'left join cli c on tc.codcli=c.cod');
  agg(s,'where commint='+comm);
  zgo(zq,s,'op');
  if zq.IsEmpty then begin
    mess('commessa '+comm+' inesistente',_info,_icons);
    (Sender as TEdit).SetFocus;
    (Sender as TEdit).Text := '';
    end
  else
    begin
    dis:=vts(zq['dis']);
    cli:=vts(zq['nome']);
    qta:=vts(zq['qta']);
    case quale of
      1:begin
        Ldis1.Caption:=dis;
        Lcli1.Caption:=cli;
        Lpz1.Caption :=qta;
        //LrigaLav1.Caption:=''; //se comm. indicata manualmente, non ha collegamento con lavorazioni OC e planner ma così azzera in ogni caso all'uscita!!!
        //LcodPlann1.Caption:=''; //c.s.
      end;
      2:begin
        Ldis2.Caption:=dis;
        Lcli2.Caption:=cli;
        Lpz2.Caption :=qta;
        //LrigaLav2.Caption:='';
        //LcodPlann2.Caption:='';
      end;
      3:begin
        Ldis3.Caption:=dis;
        Lcli3.Caption:=cli;
        Lpz3.Caption :=qta;
        //LrigaLav3.Caption:='';
        //LcodPlann3.Caption:='';
      end;
      4:begin
        Ldis4.Caption:=dis;
        Lcli4.Caption:=cli;
        Lpz4.Caption :=qta;
        //LrigaLav4.Caption:='';
        //LcodPlann4.Caption:='';
      end;
      5:begin
        Ldis5.Caption:=dis;
        Lcli5.Caption:=cli;
        Lpz5.Caption :=qta;
        //LrigaLav5.Caption:='';
        //LcodPlann5.Caption:='';
      end;
      6:begin
        Ldis6.Caption:=dis;
        Lcli6.Caption:=cli;
        Lpz6.Caption :=qta;
        //LrigaLav6.Caption:='';
        //LcodPlann6.Caption:='';
      end;
    end; //case
  end;
end;

procedure TFmain.Ec2aEnter(Sender: TObject);
begin
  mostraDis(imgDis1,Ldis2a.Caption);
end;

procedure TFmain.Ec2Enter(Sender: TObject);
begin
  mostraDis(imgDis,Ldis2.Caption);
end;

procedure TFmain.Ec3aEnter(Sender: TObject);
begin
  mostraDis(imgDis1,Ldis3a.Caption);
end;

procedure TFmain.Ec3Enter(Sender: TObject);
begin
  mostraDis(imgDis,Ldis3.Caption);
end;

procedure TFmain.Ec4aEnter(Sender: TObject);
begin
  mostraDis(imgDis1,Ldis4a.Caption);
end;

procedure TFmain.Ec4Enter(Sender: TObject);
begin
  mostraDis(imgDis,Ldis4.Caption);
end;

procedure TFmain.Ec5aEnter(Sender: TObject);
begin
  mostraDis(imgDis1,Ldis5a.Caption);
end;

procedure TFmain.Ec5Enter(Sender: TObject);
begin
  mostraDis(imgDis,Ldis5.Caption);
end;

procedure TFmain.Ec6aChange(Sender: TObject);
begin

end;

procedure TFmain.Ec6aEnter(Sender: TObject);
begin
  mostraDis(imgDis1,Ldis6a.Caption);
end;

procedure TFmain.Ec6Enter(Sender: TObject);
begin
  mostraDis(imgDis,Ldis6.Caption);
end;

procedure TFmain.Edata1Enter(Sender: TObject);
begin
  poniEdit(fd.Ttempi1);
end;

procedure TFmain.Efine1Exit(Sender: TObject);
begin
  Ldurata1.Caption:=formatDateTime('hh:mm',fd.TtempiAlle1.Value-fd.TtempiDalle1.Value);
end;

procedure TFmain.Eini1Exit(Sender: TObject);
begin
  Ldurata1.Caption:=formatDateTime('hh:mm',fd.TtempiAlle1.Value-fd.TtempiDalle1.Value);
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

function pagine(n:word):word;
var
  p:word;
begin
  p:=n div maxPic;
  p:=p+Ord(n mod maxPic>0);
  Result := p;
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
      //(Feldis.Findcomponent('img'+i2s(x)) as TJvThumbImage).Repaint;
      //tipi[x]:='';
      pDis.Repaint;
    end;
  end;
end;

procedure elabora_dis(nuovo: boolean);
var
  oltre, fn: string;
  s: WideString;
  //tn: TJvThumbImage;
  n: longint;

  function seleziona(conImm:boolean):WideString;
  var
    s:WideString;
  begin
    with Fmain do begin
      s:='select distinct d.cod,';
      //agg(s,'replace(d.des,chr(157),'+qs('ø')+') as des,');
      agg(s,'((replace(d.des,chr(157),'+qs('ø')+'))::character varying(255)) as des,');
      agg(s,'d.lungh,d.diam,d.immnom,tc.descr as cli,tc.data,rc.commint,');
      if conImm then
        agg(s,'d.imm,d.immjpg')
      else
        agg(s,'d.imm,d.immf as immjpg');
      agg(s,'from dis d');
      agg(s,'left join rcomm rc on rc.dis=d.cod');
      agg(s,'left join tcomm tc on tc.cod=rc.cod');
      agg(s,'left join rtempi rt on rc.commint=rt.comm');
      agg(s,'left join tempi tt on rt.cod=tt.cod');
      agg(s,'where d.cod is not null');
      if Emacch.Text<>'' then
        agg(s,'and tt.macch='+qs(Emacch.Text)+' and rc.dis<>'+qs(''));
      if Ecli.Text<>'' then
        agg(s,'and simplyf(tc.descr) like '+qs('%'+simplyf(Ecli.Text)+'%'));
      if Edes.Text<>'' then
        agg(s,'and simplyf(d.des) like '+qs('%'+simplyf(Edes.Text)+'%'));
      if Edis.Text <> '' then
        agg(s,'and simplyf(d.cod) like '+qs('%'+simplyf(Edis.Text)+'%'));
      if Emacch.Text<>'' then
        agg(s,'and tt.macch='+qs(Emacch.Text)+' and rc.dis<>'+qs(''));
      if Edadiam.Text<>'' then
        agg(s,'and d.diam>='+Edadiam.Text);
      if Eadiam.Text<>'' then
        agg(s,'and d.diam<='+Eadiam.Text);
      if Edalun.Text<>'' then
        agg(s,'and d.lungh>='+Edalun.Text);
      if Ealun.Text<>'' then
        agg(s,'and d.lungh<='+Ealun.Text);
      if cbAss.State<>cbGrayed then
        case cbAss.State of
          cbChecked:agg(s,'and d.ass=1');
          cbUnChecked:agg(s,'and d.ass=0');
        end;
      if cbImm.State<>cbGrayed then
        case cbImm.State of
          cbChecked:agg(s,'and d.imm is not null');
          cbUnChecked:agg(s,'and d.imm is null');
        end;
      (*if cbMin.State<>cbGrayed then
        case cbMin.State of
          cbChecked:s:=s+' and d.immjpg is not null ';
          cbUnChecked:s:=s+' and d.immjpg is null ';
        end;
      if cbPrg.State<>cbGrayed then
        case cbPrg.State of
          cbChecked:s:=s+' and d.prg is not null ';
          cbUnChecked:s:=s+' and d.prg is null ';
        end;
      if Edal.Date>0 then
        s:=s+'and d.dcar>=to_date('+qs(Edal.Text)+','+qs('dd/mm/yyyy')+') ';
      if Eal.Date>0 then
        s:=s+'and d.dcar<=to_date('+qs(Eal.Text)+','+qs('dd/mm/yyyy')+') ';*)
      agg(s,'order by tc.data desc'); //elenca a partire dall'OC più recente
      //showmessage(s);
    end;
    Result:=s;
  end;

begin //elabora_dis
  azzera_dis();
  with Fmain do begin

    if (Edes.Text='') and (Edis.Text='') and (Edadiam.Text='') and (Eadiam.Text='') and (Edalun.Text='')
        and (Ealun.Text='') and (Ecli.Text='') and (cbAss.State=cbGrayed) then begin
      if Emacch.Text<>'' then
        oltre:='oltre alla macchina'
      else
        oltre:='';
      mess('indicare almeno un filtro '+oltre,_info,_icons);
      exit;
    end;

    if nuovo then begin
      s:=seleziona(False); //showmessage(s);
      fd.qImm.Close;
      fd.qImm.SQL.Clear;
      fd.qImm.SQL.Add(s);
      fd.qImm.Open;
      quanti:=fd.qImm.RecordCount;
      pag:=1;
      if quanti<1 then begin
        mess('nessun disegno trovato - rimuovere o modificare filtri',_info,_icons);
        exit;
      end;
    end;

    Lidx.Caption:=i2s(quanti)+' disegni'+cr+'pagina '+i2s(pag)+' di '+i2s(pagine(quanti));
    BdisSucc.Visible:=pag<pagine(quanti);
    BdisPrec.Visible:=pag>1;
    Lidx.Show;

    BdisIni.Enabled :=True;
    BdisFin.Enabled :=True;
    BdisPrec.Enabled:=True;
    BdisSucc.Enabled:=True;

    s:=seleziona(True); //agg(s,'order by d.cod');
    agg(s,'limit '+i2s(maxPic)+' offset '+i2s((pag-1)*maxPic));
    //deb('con imm');
    fd.qImm.Close;
    fd.qImm.SQL.Clear;
    fd.qImm.SQL.Add(s);
    fd.qImm.Open;
    n:=1;
    pbDis.Value:=0; pbDis.Show;
    if pag<pagine(quanti) then
      pbDis.MaxValue:=maxPic
    else
      pbDis.MaxValue:=quanti mod maxPic;
    //pbDis.ShowText:=True;
    //showmessage(i2s(pag)+'/'+i2s(pagine(quanti))+'/'+i2s(quanti mod maxpic)+'/'+i2s(pb.maxvalue));
    pbDis.Value:=0;
    fd.qImm.First;
    while (not fd.qImm.EOF) and (n<=maxPic) do begin
      pbDis.Value:=n;
      pbDis.Repaint;
      (Fmain.Findcomponent('Bdis'+i2s(n)) as TButton).Caption:=fd.qImmCod.Text;
      (Fmain.FindComponent('Ldes'+i2s(n)) as TLabel).Caption:=fd.qImmDes.Text
        +' ---'+fd.qImmCli.Text
        +'--- (OC:'+fd.qImmCommInt.AsString+')';
      //if not fd.qImmImmJpg.IsNull then begin nb2
      (* if not qImmLocImm.IsNull then begin nb2
        fn:=pLoc+'\img_tmp.jpg';

        deb(fn);

        //qImmImmJpg.SaveToFile(fn); nb2
        try
          qImmLocImm.SaveToFile(fn);
          //sleep(100);
          (Fmain.Findcomponent('img'+i2s(n)) as TJvThumbImage).Picture.LoadFromFile(fn);
          //path);
          //tipi[n]:=extens(qImmImmNom.Text);
        finally
          ;
        end;
        end
      else
        begin
        if extens(fd.qImmImmNom.Text)='dwg' then
          (Fmain.Findcomponent('img'+i2s(n)) as TJvThumbImage).Picture:=img_dwg.Picture
        else
          (Fmain.Findcomponent('img'+i2s(n)) as TJvThumbImage).Picture:=img_min.Picture;
      end; *)
      inc(n);
      fd.qImm.Next;
    end; //while
    //pbDis.ShowText:=False;
    //pb.Progress:=0;
    //Feldis.Repaint;
    pbDis.Value:=1; pbDis.Hide;
  end;
  nuovo:=False;
end;

procedure TFmain.BgoDisClick(Sender: TObject);
begin
  if (Edes.Text = '') and (Ecli.Text = '') and (Edis.Text = '') and
      (Edadiam.Text = '') and (Eadiam.Text = '') and (Emacch.Text = '') and
      (Edalun.Text = '') and (Ealun.Text = '') and (cbImm.State = cbGrayed) and
      (cbAss.State = cbGrayed) then begin
    mess('indicare almeno una selezione', _info, _icons);
    exit;
  end;
  elabora_dis(True);
  Fmain.WindowState := wsMaximized;
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
  //zgo(zq,s,'op');
  zq.Close;
  zq.SQL.Clear;
  zq.SQL.Add(s);
  zq.Open;
  if not zq.IsEmpty then
    if (vts(zq['data'])=formatDateTime('dd/mm/yyyy',Now)) and (vts(zq['alle'])='00:00:00') then begin
      mess('lavorazione in corso - impossibile procedere',_info,_icons);
      exit;
    end;
  fd.Ttempi1.Close;
  fd.Trtem1.Close;
  s:='select '+campi_tempi;
  agg(s,'from tempi t where t.cod='+TelfCod.Text);
  //zgo(fd.Ttempi1,s,'op');
  fd.Ttempi1.Close;
  fd.Ttempi1.SQL.Clear;
  fd.Ttempi1.SQL.Add(s);
  fd.Ttempi1.Open;
  pReg1.Left:=(dgEl.Width -pReg1.Width)  div 2;
  pReg1.Top :=(dgEl.Height-pReg1.Height) div 10 * 8;

  (*fd.Ttempi1.Edit;
  deb('bef post t1');
  fd.Ttempi1.fieldByName('note').asString:='prova 05/08';
  fd.Ttempi1.Post;
  deb('aft post t1');
  exit;*)


  visDeslav(fd.TtempiLav1.Text, LdesLav1);
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
  //zgo(fd.Trtem1,s,'op');
  fd.Trtem1.Close;
  fd.Trtem1.SQL.Clear;
  fd.Trtem1.SQL.Add(s);
  fd.Trtem1.Open;
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
      //zgo(zq,s,'op');
      zq.Close;
      zq.SQL.Clear;
      zq.SQL.Add(s);
      zq.Open;
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

  deb('mdis');

  mostraDis(imgDis1,Ldis1a.Caption);

  pReg1.Show;
end;

procedure TFmain.BnonProdutt1Click(Sender: TObject);
begin
  popolaLavorazioni(cbLav1,'n');
end;

procedure TFmain.BnonProduttClick(Sender: TObject);
begin
  popolaLavorazioni(cbLav,'n');
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

function ctrlCodLav(quale: TDBComboBox): boolean;
var
  cod,desLav:string;
  s:WideString;
begin
  //with Fmain do begin
  cod:=trim(quale.Text);
  //deb(i2s(pos(sep,cod)));
  if pos(sep,cod)=0 then //codice dato direttamente
    cod:=quale.Text //per chiarezza
  else
    begin
    //cod := copy(cod, 1, pos(sep, cod) - 1); //se da elenco è nella forma "cod | descr."
    cod:=copy(cod,pos(sep,cod)+1,255); //se da elenco è nella forma "descr. | cod"
    //deb(cod);
  end;

  quale.Text:=cod;
  if cod='' then begin
    mess('indicare codice lavorazione',_info,_icons);
    quale.SetFocus;
    Result:=False;
    exit;
  end;
  s:='select cod,descr from op where cod='+qs(cod);
  fd.zq.Close;
  fd.zq.SQL.Clear;
  fd.zq.SQL.Add(s);
  fd.zq.Open;
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
          //fd.TtempiDesLav1.Value:=desLav;
          //fd.Ttem1.Post;
          Fmain.MnoteOp1.SetFocus;
          //fd.Ttem1.Edit;
        end;
        end
      else
        begin
        Fmain.LdesLav.Caption:=desLav;
        (*if insEd(fd.Ttempi) then begin
          fd.TtempiLav.Value:=cod;
          fd.TtempiDesLav.Value:=desLav;
          //fd.Ttem.Post;
          Fmain.MnoteOp.SetFocus;
          //fd.Ttem.Edit;
        end;*)
      end;
    end; //case
  end;
  //deb('qqq');
  Result:=True;
end;

procedure TFmain.BokC1aClick(Sender: TObject);
var
  n: shortint;
begin
  Ldurata1.Caption:=formatDateTime('hh:mm',fd.TtempiAlle1.Value-fd.TtempiDalle1.Value);
  n:=(Sender as TBCButton).Tag;
  case n of
    1:Ec1a.SetFocus;
    2:Ec2a.SetFocus;
    3:Ec3a.SetFocus;
    4:Ec4a.SetFocus;
    5:Ec5a.SetFocus;
    6:Ec6a.SetFocus;
  end;
  MnoteOp1.SetFocus; //così esegue il ctrl comm. (onExit) e toglie il focus
end;

procedure TFmain.BokC1Click(Sender: TObject);
var
  n:byte;
begin
  Ldurata1.Caption:=formatDateTime('hh:mm',fd.TtempiAlle1.Value-fd.TtempiDalle1.Value);
  n:=(Sender as TBCButton).Tag;
  case n of
    1:Ec1.SetFocus;
    2:Ec2.SetFocus;
    3:Ec3.SetFocus;
    4:Ec4.SetFocus;
    5:Ec5.SetFocus;
    6:Ec6.SetFocus;
  end;
  MnoteOp.SetFocus; //così esegue il ctrl comm. (onExit) e toglie il focus
end;

procedure TFmain.BokLav1Click(Sender: TObject);
begin
  Ldurata1.Caption:=formatDateTime('hh:mm',fd.TtempiAlle1.Value-fd.TtempiDalle1.Value);
  //if not controlliReg(cbLav1,fd.TtemTipo1,false,fd.TtemDalle1.Value,fd.TtemAlle1.Value) then
  //exit;
  if ctrlCodLav(cbLav1) then
    MnoteOp1.SetFocus; //cbLav1.SetFocus;
end;

procedure TFmain.BokLavClick(Sender: TObject);
begin
  Ldurata.Caption:=formatDateTime('hh:mm',fd.TtempiAlle.Value-fd.TtempiDalle.Value);
  if ctrlCodLav(cbLav) then begin
    MnoteOp.SetFocus;
    //if fd.Ttem.State<>dsInsert then fd.Ttem.Edit; no, else sembra non confermato
    if not insEd(fd.Ttempi) then
      fd.Ttempi.Edit;
    fd.Ttempi.Post;
  end;
end;

procedure TFmain.BokNoteClick(Sender: TObject);
begin
  if not insEd(fd.Ttempi) then
    fd.Ttempi.Edit;
  fd.Ttempi.Post;
end;

procedure TFmain.BokOre1Click(Sender: TObject);
begin
  MnoteOp1.SetFocus;
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
      //deb('or1');
      zgo(zq,s,'op');
      //deb('or2');
      if zq.RecordCount>0 then begin
        mess('il valore "dalle" ['+formatDateTime('hh:mm', dalle)+'] rientra già in '+vts(zq['dalle'])+'-'+vts(zq['alle']),_info,_icons);
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
        //deb('or3');
        zgo(zq,s,'op');
        //deb('or4');
        if zq.RecordCount>0 then begin
          mess('"alle" ['+formatDateTime('hh:mm', alle)+'] rientra già in '+vts(zq['dalle'])+'-'+vts(zq['alle']),_info,_icons);
          result:=false;
          exit;
        end;
      end;
    end; //if
  end; //with
end;

procedure TFmain.BokOreClick(Sender: TObject);
begin
  //if strToTime(formatDateTime('hh:mm',fd.TtemDalle.Value))>strToTime(formatDateTime('hh:mm',Now)) then begin
  if strToTime(formatDateTime('hh:mm',Eini.Time))>strToTime(formatDateTime('hh:mm',Now)) then begin
    mess('ora inizio successiva a ora attuale',_info,_icons);
    Ldurata.Caption:='';
    fd.Ttempi.Edit;
    fd.TtempiDalle.Value:=0;
    Eini.SetFocus;
    end
  else
    begin
    if not ctrlOrari(fd.Ttempi,Eini.Time,0,fd.TtempiData.Value,fd.TtempiCod.Text) then
      exit;
    Ldurata.Caption:=formatDateTime('hh:mm',Now-Eini.Time);
    MnoteOp.SetFocus;
    if not insEd(fd.Ttempi) then
      fd.Ttempi.Edit;
    fd.Ttempi.Post;
  end;
end;

procedure TFmain.BokTipoPzClick(Sender: TObject);
begin
  if not insEd(fd.Ttempi) then
    fd.Ttempi.Edit;
  fd.Ttempi.Post;
end;

procedure TFmain.Bprodutt1Click(Sender: TObject);
begin
  popolaLavorazioni(cbLav1,'p');
end;

procedure TFmain.BproduttClick(Sender: TObject);
begin
  popolaLavorazioni(cbLav,'p');
end;

procedure TFmain.BstartClick(Sender: TObject);
var
  totc,riga:word;
  cod,rig:double;
  note,s,comms,desMot: WideString;
  dis,cli,pz,rigalav,comm,codLav,codplann:string; //mot (glob. in motivo.pas)
  found_diff:boolean;
begin
  pulsanti(False,True);

  rigalav:=qLavsRigaLav.Text;
  if rigalav='' then
    rigalav:='0';
  //deb('rl1:'+rigalav);
  totc  :=0;
  note  :='';
  codLav:='';
  comms :='';
  found_diff:=False;
  flag_mot  :=False;
  Tlav.First;
  riga:=1;
  while not Tlav.EOF do begin
    if TlavSel.Value=1 then begin
      //deb(i2s(riga)+'/'+i2s(totc));
      if (riga>1) and (riga>totc) then begin //se si salta 1° riga e le precedenti non sono state selezionate (totc)
        //il motivo "mot" viene scritto su tbl più avanti
        (*mot:='';
        if inputQuery('motivare mancato rispetto sequenza scaletta',motivo_salto_prima_lavorazione_,mot) then
          mot:=motivo_salto_prima_lavorazione_+' '+mot+cr
        else
          begin
          pulsanti(True,False);
          indice(attivo_);
          exit;
        end;*)
        Fmot.ShowModal;
        if mot='çaplanexmoi' then begin
          pulsanti(True,False);
          indice(attivo_);
          exit;
        end;
      end;

      inc(totc); //totc=nr. righe selezionate
      agg(comms,TlavComm.Text);
      if note='' then
        note:=trim(TlavNote.AsString)
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
  if flag_mot then begin
    desMot:=motivo_salto_prima_lavorazione_+' ';
    if Fmot.rgMot.ItemIndex<>-1 then
      desMot+=Fmot.rgMot.Items[Fmot.rgMot.ItemIndex];
    if mot<>'' then
      desMot+=' ('+mot+')';
    desMot+=cr;
    fd.TtempiNoteInt.Value:=desMot;
  end;
  fd.Ttempi.Post;
  //deb('rl2:'+rigalav);

  stop_timer:=True;
  Ldurata.Caption:=formatDateTime('hh:mm',Now-fd.TtempiDalle.Value);
  visDeslav(fd.TtempiLav.Text, LdesLav);

  azzeraCommesse(Ec1, Ec2, Ec3, Ec4, Ec5, Ec6,
    Ldis1, Ldis2, Ldis3, Ldis4, Ldis5, Ldis6,
    Lcli1, Lcli2, Lcli3, Lcli4, Lcli5, Lcli6,
    Lpz1, Lpz2, Lpz3, Lpz4, Lpz5, Lpz6,
    LrigaLav1, LrigaLav2, LrigaLav3, LrigaLav4, LrigaLav5, LrigaLav6,
    LcodPlann1, LcodPlann2, LcodPlann3, LcodPlann4, LcodPlann5, LcodPlann6);

  Tlav.First;
  riga:=0;
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
      //deb('rl3:'+rigalav);

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
  //deb(codlav);
  stop_timer:=False;
end;

function controlliReg(cb:TDBComboBox; tipo:TStringField; main:boolean; dalle,alle:TDateTime; lav:string):boolean;
begin
  //deb('1');
  if tipo.isNull then begin //in caso di stop attesa o manut. è già su "altro"
    mess('indicare tipo pezzo',_info,_icons);
    Result:=False;
    exit;
  end;
  //deb('tipo pz ok');
  if not ctrlCodLav(cb) then
    exit;
  //deb('cod.lav. pz ok');
  with Fmain do begin
    if main then begin
      if Ec1.Focused or Ec2.Focused or Ec3.Focused or Ec4.Focused or Ec5.Focused or Ec6.Focused then begin //se c'è il cursore sul campo
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
  //deb('comm. ok');

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
  //deb('ore ok');

  if alle<dalle then begin
    mess('ora fine antecedente a ora inizio',_info,_icons);
    Result:=False;
    exit;
  end;
  //deb('ore 2 ok');

  //if insed(fd.ttempi1) then deb('tempi1 insed in ctrl reg');

  if main then begin
    //deb('main');
    if not ctrlOrari(fd.Ttempi,dalle,alle,fd.TtempiData.Value,fd.TtempiCod.Text) then //ctrl orari:
      exit;
    //deb('ore 3 ok');
    //toglie eventuali secondi agli orari e fa post della registrazione:
    //if fd.Ttempi.state=dsedit then deb('tempi in edit');
    //if fd.Ttempi.state=dsinsert then deb('tempi in insert');
    //if fd.Ttempi.state=dsbrowse then deb('tempi in browse');
    if not insEd(fd.Ttempi) then
      fd.Ttempi.Edit;
    //if fd.Ttempi.state=dsedit then deb('tempi in edit 2');
    //if fd.Ttempi.state=dsinsert then deb('tempi in insert 2');
    //if fd.Ttempi.state=dsbrowse then deb('tempi in browse 2');
    fd.TtempiDalle.Value:=strToTime(formatDateTime('hh:mm',dalle)); //deb(fd.TtempiDalle.AsString);
    fd.TtempiAlle.Value :=strToTime(formatDateTime('hh:mm',alle));  //deb(fd.TtempiAlle.AsString);
    //deb('bef. post');
    //fd.Ttempi.Post; ...nb2: riabilitare...
    //deb('tolti secondi ok');
    end
  else
    begin
    //deb('ctrl orari');
    if not ctrlOrari(fd.Ttempi1,dalle,alle,fd.TtempiData1.Value,fd.TtempiCod1.Text) then begin //ctrl orari:
      Result:=False;
      exit;
    end;
    //deb('k1');
    //toglie eventuali secondi agli orari e fa post della registrazione:
    //if insed(fd.ttempi1) then deb('tempi1 insed in ctrl reg 2');
    //deb('k2');
    if not insEd(fd.Ttempi1) then
      fd.Ttempi1.Edit;
    //deb('k3');
    fd.TtempiDalle1.Value:=strToTime(formatDateTime('hh:mm',dalle));
    fd.TtempiAlle1.Value :=strToTime(formatDateTime('hh:mm',alle));
    fd.Ttempi1.Post;
    //deb('tempi1 post');
  end;
  //deb('fine ctrls');
  Result:=True;
end;

procedure scriviComm(comm,cod:string; riga:byte; rigaLav:longint; codPlann:string);
var
  s:WideString;
begin
  if vlr(comm)>0 then begin

    if fd.Trtem.State=dsInactive then begin;
      //deb('open rtempi');
      s:='select * from rtempi';
      agg(s,'where cod='+cod);
      agg(s,'order by comm');
      fd.Trtem.Close;
      fd.Trtem.SQL.Clear;
      fd.Trtem.SQL.Add(s);
      fd.Trtem.Open;
    end;

    //deb('ins');
    fd.Trtem.Insert;
    fd.TrtemCod.Value    :=trunc(vlr(cod));
    fd.TrtemRiga.Value   :=riga;
    fd.TrtemComm.Value   :=trunc(vlr(comm));
    fd.TrtemRigaLav.Value:=rigaLav;
    if trim(codPlann)='' then
      fd.TrtemTmp.Value  :=0
    else
      fd.TrtemTmp.Value  :=strToFloat(codPlann);
    fd.Trtem.Post;
    //deb('post');

    //chiude reg. planner su Prod:
    if trim(codPlann)<>'' then with Fmain do begin
      s:='update planner set fatto=1 where cod='+codPlann;
      //deb(s);
      //zgo(Fmain.zq,s,'ex');
      zq.Close;
      zq.SQL.Clear;
      zq.SQL.Add(s);
      zq.ExecSQL;
      fd.PQConn.Transaction.Commit;
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
  ora,cods:String;
  s       :WideString;
  riga    :Byte;
begin
  if not controlliReg(cbLav,fd.TtempiTipo,True,fd.TtempiDalle.Value,99,fd.TtempiLav.Text) then
    exit;
  if messSN('conferma stop?','conferma')<>idYes then //questa istruz. era stranamente in fondo all proc. ...
    exit;
  pulsanti(True,False);
  (*fd.Ttempi.Edit;
  fd.TtempiPers.Value:=xUser; //per sicurezza
  ora:=formatDateTime('hh:mm',Now);
  fd.TtempiAlle.Value:=strToTime(ora); //else tiene secondi
  fd.Ttempi.Post;*)
  cods:=fd.TtempiCod.Text;
  ora :=formatDateTime('hh:mm',Now);
  ora+=':00';
  s   :='update tempi set pers='+qs(xUser)+',alle='+qs(ora)+' where cod='+cods;
  //deb(s);
  zq.Close;
  zq.SQL.Clear;
  zq.SQL.Add(s);
  zq.ExecSQL;
  fd.PQConn.Transaction.Commit;

  //refresh:
  fd.Ttempi.Close;
  fd.Ttempi.Open;
  //cancella righe attuali per poi riscriverle (NB: comm. a video in TEdit, non TDBEdit):
  s:='delete from rtempi where cod='+cods;
  zq.Close;
  zq.SQL.Clear;
  zq.SQL.Add(s);
  zq.ExecSQL;
  //deb('del ok');
  //zgo(zq,s,'ex');
  //scrive righe:
  for riga:=1 to maxComm do begin
    case riga of
      1:scriviComm(Ec1.Text,cods,riga,
          trunc(vlr(LrigaLav1.Caption)),''); //cod.planner vuoto altrimenti chiude reg.
      2:scriviComm(Ec2.Text,cods,riga,
          trunc(vlr(LrigaLav2.Caption)),'');
      3:scriviComm(Ec3.Text,cods,riga,
          trunc(vlr(LrigaLav3.Caption)),'');
      4:scriviComm(Ec4.Text,cods,riga,
          trunc(vlr(LrigaLav4.Caption)),'');
      5:scriviComm(Ec5.Text,cods,riga,
          trunc(vlr(LrigaLav5.Caption)),'');
      6:scriviComm(Ec6.Text,cods,riga,
          trunc(vlr(LrigaLav6.Caption)),'');
    end;
  end;
  indice(attivo_);
end;

procedure TFmain.cbLav1Exit(Sender: TObject);
begin
  if pReg1.Visible then begin //potrebbe essere già partito l'hide...
    Ldurata1.Caption:=formatDateTime('hh:mm',fd.TtempiAlle1.Value-fd.TtempiDalle1.Value);
    if trim(cbLav1.Text) <> '' then
      //else non permette di uscire senza indicarlo; fa il ctrl definitivo in "conferma"
      if ctrlCodLav(cbLav1) then
        MnoteOp1.SetFocus;
  end;
end;

procedure TFmain.cbLavEnter(Sender: TObject);
begin
end;

procedure TFmain.cbLavExit(Sender: TObject);
begin
  if pReg.Visible then begin
    Ldurata.Caption:=formatDateTime('hh:mm',fd.TtempiAlle.Value-fd.TtempiDalle.Value);
    if trim(cbLav.Text)<>'' then
      //else non permette di uscire senza indicarlo; fa il ctrl definitivo in "conferma"
      if ctrlCodLav(cbLav) then
        MnoteOp.SetFocus;
  end;
end;

procedure TFmain.dbgIndCellClick(Column: TColumn);
const
  msg_='nessun controllo richiamabile';
var
  s:WideString;
  AProcess:TProcess;
  exe,params,rl,cod_,rig_:String;
begin
  case column.Index of
    col_ctrl_da_fare, col_ctrl_fatti:begin

      rl:=qLavsRigaLav.Text;
      s:='select cod,riga from rclav where rigalav='+rl;
      zgo(zq,s,op_);
      if zq.RecordCount=0 then begin
        mess(msg_, _info, _icons);
        exit;
      end;
      cod_:=vts(zq['cod']);
      if cod_='' then begin
        mess(msg_, _info, _icons);
        exit;
      end;
      rig_:=vts(zq['riga']);
      if rig_='' then begin
        mess(msg_, _info, _icons);
        exit;
      end;

      AProcess:=TProcess.Create(nil);
      exe:='quote.exe'; //'c:\lazarus\prgs\quote\quote.exe';
      if not fileExists(exe) then begin
        mess(exe+' non trovato',_info,_icons);
        exit;
      end;
      AProcess.Executable:=exe;
      params:='daprodmacc rclrl='+rl+' rccod='+cod_+' rcriga='+rig_+' nrcert=-1 debug';
      AProcess.Parameters.Add(params);
      AProcess.Options:=AProcess.Options + [poWaitOnExit, poUsePipes];
      AProcess.Execute;
      AProcess.Free; //This is not reached until ppc386 stops running.
      end;
    else
      begin
      imageInd.Picture.Clear;
      if trim(TlavComm.Text)<>'' then begin
        s:='select immjpg as imm,immnom from dis where cod='+qs(TlavDis.Text);
        zgo(qImmLoc,s,'op');
        if qImmLoc.IsEmpty then
          exit;
        qImmLocImm.SaveToFile('img.jpg');
        imageInd.Picture.LoadFromFile('img.jpg');
        LimmDisInd.Caption:=TlavDis.Text;
      end;
      pImmInd.Show; //posizione iniziale in FormShow, poi tiene eventuale spostamento
    end;
  end;
end;

procedure chiudiRegistrazione();
var
  s:widestring;
begin
  with Fmain do begin

    if dbgInd.Color=clGray then begin //flag=inattivo=lavorazione/i in corso
      mess('impossibile eseguire operazione con lavorazione in corso',_info,_icons);
      exit;
    end;

    if TlavCod.Value<=0 then
      mess('non è possibile risalire a registrazione planner',_info,_icons)
    else
      begin
      //deb(TlavDes2.text+'/'+Tlavcod.Text);
      s:='select fatto from planner where cod='+TlavCod.Text;
      //deb(s);
      zgo(zq,s,'op');
      if zq.IsEmpty then begin
        mess('impossibile risalire a registrazione planner',_info,_icons);
        exit;
        end
      else
        if messSN('chiusura definitiva registrazione?','conferma')=idYes then begin
          s:='update planner set fatto=1 where cod='+TlavCod.Text;
          //deb(s);
          zgo(zq,s,'ex');
          mess('Ok!',_info,_icons);
          indice(attivo_);
        end;
    end;
  end;
end;

procedure TFmain.dbgIndEditButtonClick(Sender: TObject);
begin
  chiudiRegistrazione();
end;

procedure TFmain.dbgIndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dbgInd.Color=clGray then begin //flag=inattivo=lavorazione/i in corso
    mess('è possibile intervenire sull''indice solo quando è attivo',_info,_icons);
    exit;
  end;
  case key of
    VK_F5:dimensiona_indice(True); //mostra nr. reg. planner
    VK_F6:dimensiona_indice(False);
    VK_F7:mess(TlavNotes.AsString,_info,_icons);
    VK_F8:chiudiRegistrazione();
  end;
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

    //controlli da fare:
    if Column.Tag=77 then
      if TlavCtrlTodo.Value=0 then
        col(dbgInd.Color,clSilver)
      else
        col(dbgInd.Color,clBlue);
    //controlli fatti:
    if Column.Tag=88 then
      if TlavCtrlTodo.Value=0 then
        col(dbgInd.Color,clSilver)
      else
        if TlavCtrlTodo.Value<=TlavCtrlDone.Value then
          col(dbgInd.Color,clGreen)
        else
          col(dbgInd.Color,clRed);

    //lavorazione iniziata:
    if Column.Tag=98 then begin
      if TlavIniz.Value='no' then
        col(dbgInd.Color,clBlack)
      else
        col(dbgInd.Color,clRed);
    end;

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
    zq.Close;
    zq.SQL.Clear;
    zq.SQL.Add(s);
    zq.ExecSQL;
    //deb('del ok');
    //zgo(zq,s,'ex');
    s:='delete from tempi where cod='+TelfCod.Text;
    //zgo(zq,s,'ex');
    zq.Close;
    zq.SQL.Clear;
    zq.SQL.Add(s);
    zq.ExecSQL;
    //deb('del ok');
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
  h   :String;
  riga:byte;
  cod :double;
begin
  //if insEd(fd.Ttempi1) then deb('tempi1 ins ed');
  //deb('a');

  //...dà err. dopo qui...

  if not controlliReg(cbLav1,fd.TtempiTipo1,False,fd.TtempiDalle1.Value,fd.TtempiAlle1.Value,fd.TtempiLav.Text) then
    exit;

  //deb('ctrls ok');
  cod:=fd.TtempiCod1.Value;
  if insEd(fd.Ttempi1) then begin
    //toglie secondi:
    h:=formatDateTime('hh:mm',fd.TtempiDalle1.Value);
    h:=h+':00';
    fd.TtempiDalle1.Value:=strToTime(h);
    h:=formatDateTime('hh:mm',fd.TtempiAlle1.Value);
    h:=h+':00';
    fd.TtempiAlle1.Value:=strToTime(h);
    //

    //deb('bef post');

    //...se disab. controlliReg, dà err. dopo qui, v. come salva "conclusa" ...

  (*forse così?:
  zq.Close;
  zq.SQL.Clear;
  zq.SQL.Add(s);
  zq.ExecSQL;
  fd.PQConn.Transaction.Commit;*)



    fd.Ttempi1.Post;
    //deb('aft post');
  end;
  //cancella righe attuali per poi riscriverle (NB: comm. a video in TEdit, non TDBEdit):
  s:='delete from rtempi where cod='+fd.TtempiCod1.Text;
  zq.Close;
  zq.SQL.Clear;
  zq.SQL.Add(s);
  zq.ExecSQL;
  //deb('del ok');
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

procedure TFmain.BdisFinClick(Sender: TObject);
begin
  pag:=pagine(quanti);
  azzera_dis();
  elabora_dis(False);
end;

procedure TFmain.BdisIniClick(Sender: TObject);
begin
  pag:=1;
  azzera_dis();
  elabora_dis(False);
end;

procedure TFmain.BdisPrecClick(Sender: TObject);
begin
  if pag>1 then begin
    pag-=1;
    azzera_dis();
    elabora_dis(False);
    end
  else
    mess('raggiunto inizio',_info,_icons);
end;

procedure TFmain.BdisSuccClick(Sender: TObject);
begin
  if pag<pagine(quanti) then begin
    pag+=1;
    azzera_dis();
    elabora_dis(False);
    end
  else
    mess('raggiunta fine',_info,_icons);
end;

procedure TFmain.BfineClick(Sender: TObject);
var
  exe,params,ora,rl,cod_,rig_,codTempi:string;
  s:WideString;
  riga:byte;
  ok:boolean;
  AProcess : TProcess;
  //res      : TStringList;
  //OutputStr: string;
  f:textFile;
begin
  //deb('1');
  if not insEd(fd.Ttempi) then
    fd.Ttempi.Edit;
  //deb('edit');
  fd.TtempiPers.Value:=xUser; //per sicurezza
  ora:=formatDateTime('hh:mm',Now);
  fd.TtempiAlle.Value:=strToTime(ora); //else tiene secondi
  //deb('ctrls:');
  if not controlliReg(cbLav,fd.TtempiTipo,True,fd.TtempiDalle.Value,fd.TtempiAlle.Value,fd.TtempiLav.Text) then
    exit;

  //deb('fine ctrls');
  rl:=trim(LrigaLav1.Caption);
  //deb('rigalav:'+rl);

  if rl<>'' then begin
    s:='select cod,riga from rclav where rigalav='+rl;
    zgo(zq,s,op_);
    if zq.RecordCount>0 then begin
      cod_:=vts(zq['cod']);
      rig_:=vts(zq['riga']);
      ok:=true;
      repeat
        s:='select tipo,anno,cod,riga,rr,r,';
        agg(s,'nr,pz,posiz,quota,rich,valore,note');
        agg(s,'from quote');
        agg(s,'where tipo='+qs('q')); //q=cq intermedio
        agg(s,'and cod='+cod_);
        agg(s,'and riga='+rig_);
        agg(s,'and rr='+rl); //rr=riga lav.
        //deb(s);
        //zgo(zq,s,op_);
        zq.Close;
        zq.SQL.Clear;
        zq.SQL.Add(s);
        zq.Open;
        //deb('query ok');
        //if zq.RecordCount=0 then deb('nessun ctrl');

        if zq.RecordCount>0 then begin //se ci sono cq da fare, apri finestra quote
          AProcess:=TProcess.Create(nil);
          //res:=TStringList.Create;
          exe:='quote.exe'; //'c:\lazarus\prgs\quote\quote.exe';
          if not fileExists(exe) then begin
            mess(exe+' non trovato',_info,_icons);
            exit;
          end;
          AProcess.Executable:=exe; //'"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"'; //path necessario
          params:='daprodmacc rclrl='+rl+' rccod='+cod_+' rcriga='+rig_+' nrcert=-1 debug';
          //deb('parametri: '+params);
          AProcess.Parameters.Add(params);
          AProcess.Options:=AProcess.Options + [poWaitOnExit, poUsePipes];
          AProcess.Execute;
          //res.LoadFromStream(AProcess.Output);
          //OutputStr:=res.Text;
          AProcess.Free; //This is not reached until ppc386 stops running.
          //res.Free;

          (* ...messo ctrl in quote.pas...
          s:='select tipo,anno,cod,riga,rr,r,';
          agg(s,'nr,pz,posiz,quota,rich,valore,note');
          agg(s,'from quote');
          agg(s,'where tipo='+qs('q')); //q=cq intermedio
          agg(s,'and cod='+cod_);
          agg(s,'and riga='+rig_);
          agg(s,'and rr='+rl); //rr=riga lav.
          agg(s,'and (trim(valore)='''' or valore is null or valore=''0'')');
          //showmessage(s);
          //zgo(zq,s,op_);
          zq.Close;
          zq.SQL.Clear;
          zq.SQL.Add(s);
          zq.Open;
          if zq.RecordCount=0 then begin
            //showmessage('ctrl ok');
            ok:=true
          end
          else
            begin
            c:=zq.RecordCount;
            mess(i2s(c)
              +' controll'+plur(c,'o','i')
              +' non '+plur(c,'è','sono')
              +' stat'+plur(c,'o','i')
              +' indicat'+plur(c,'o','i'),_info,_icons);
            ok:=false;
          end; *)

        end;
      until ok;

      {$i-}
      assignFile(f,'quote_exit.inf');
      reset(f);
      {$i+}
      if IOResult=0 then begin //se file esiste = uscito da quote senza salvare
        mess('lavorazione non conclusa perché misurazioni non confermate',_info,_icons);
        ok:=false; //exit;
        {$i-}
        assignFile(f,'quote_exit.inf');
        erase(f);
        {$i+}
        if IOResult=0 then ;
      end;

    end;
  end;
  if not ok then
    exit;

  //deb('ok');
  pulsanti(True,False); //nasconde anche pReg
  //= a Bstop: unificare?

  codTempi:=fd.TtempiCod.Text;
  ora:=formatDateTime('hh:mm:ss',Now);
  s:='update tempi set pers='+qs(xUser)+',alle='+qs(ora)+' where cod='+codTempi;
  //deb(s);
  zq.Close;
  zq.SQL.Clear;
  zq.SQL.Add(s);
  zq.ExecSQL;
  fd.PQConn.Transaction.Commit;
  //deb('update ok');

  (* old:cod:=fd.TtempiCod.Value;
  if not insEd(fd.Ttempi) then
    fd.Ttempi.Edit;
  fd.TtempiPers.Value:=xUser; //per sicurezza
  ora:=formatDateTime('hh:mm',Now);
  fd.TtempiAlle.Value:=strToTime(ora); //else tiene secondi
  fd.Ttempi.Post; *)

  //cancella righe attuali per poi riscriverle (NB: comm. a video in TEdit, non TDBEdit):
  s:='delete from rtempi where cod='+codTempi;
  //deb(s);
  zq.Close;
  zq.SQL.Clear;
  zq.SQL.Add(s);
  zq.ExecSQL;
  //scrive righe:
  for riga:=1 to maxComm do begin
    case riga of
      1:scriviComm(Ec1.Text,codTempi,riga,
          trunc(vlr(LrigaLav1.Caption)),LcodPlann1.Caption);
      2:scriviComm(Ec2.Text,codTempi,riga,
          trunc(vlr(LrigaLav2.Caption)),LcodPlann2.Caption);
      3:scriviComm(Ec3.Text,codTempi,riga,
          trunc(vlr(LrigaLav3.Caption)),LcodPlann3.Caption);
      4:scriviComm(Ec4.Text,codTempi,riga,
          trunc(vlr(LrigaLav4.Caption)),LcodPlann4.Caption);
      5:scriviComm(Ec5.Text,codTempi,riga,
          trunc(vlr(LrigaLav5.Caption)),LcodPlann5.Caption);
      6:scriviComm(Ec6.Text,codTempi,riga,
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

procedure TFmain.BallLav1Click(Sender: TObject);
begin
  popolaLavorazioni(cbLav1,#0);
end;

procedure TFmain.BallLavClick(Sender: TObject);
begin
  popolaLavorazioni(cbLav,#0);
end;

procedure TFmain.Battese1Click(Sender: TObject);
begin
  popolaLavorazioni(cbLav1,'a');
end;

procedure TFmain.BatteseClick(Sender: TObject);
begin
  popolaLavorazioni(cbLav,'a');
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
    zq.Close;
    zq.SQL.Clear;
    zq.SQL.Add(s);
    zq.ExecSQL;
    //deb('del ok');
    //zgo(zq,s,'ex'); //cancella commesse da reg. tempi
  end;
  s:='delete from tempi where cod='+cod;
  //zgo(zq,s,'ex');
  zq.Close;
  zq.SQL.Clear;
  zq.SQL.Add(s);
  zq.ExecSQL;
  //deb('del ok');

  fd.Ttempi.Close; //all new 01/09/23
  fd.Ttempi.Open;
  fd.Trtem.Close;
  fd.Trtem.Open;

  indice(attivo_); //new 01/08/23

  pulsanti(True, False);
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

procedure TFmain.pCloseImmClick(Sender: TObject);
begin
  pImmInd.Hide;
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

procedure TFmain.rlMotClick(Sender: TObject);
var
  cod:longint;
  des,dat:string;
begin
  if rgAss.ItemIndex=-1 then begin
    mess('indicare motivo!',_info,_icons);
    exit;
  end;
  pAssenza.Hide;
  case rgAss.ItemIndex of
    0:des:='ferie';
    1:des:='festività';
    2:des:='malattia';
    3:des:='motivi personali';
  end;
  //deb(i2s(riga_corr));
  dat := sg.Cells[0, riga_corr];
  if messSN('conferma assenza il '+dat+' per '+des,'conferma')=idNo then
    exit;
  //deb('!');
  if fd.Ttempi.State=dsInactive then
    fd.Ttempi.Open;
  if fd.Trtem.State=dsInactive then
    fd.Trtem.Open;
  fd.Ttempi.Insert;
  cod:= maxCodNum('tempi','cod',fd.Ttempi);
  fd.TtempiCod.Value  :=cod;
  fd.TtempiData.Value :=strToDate(sg.Cells[6, riga_corr]); //sg.Cells[5,riga_corr]);
  fd.TtempiPers.Value :=xUser;
  fd.TtempiMacch.Value:='';
  fd.TtempiLav.Value  :='NP'; //"non presente", parametrizzare
  fd.TtempiDalle.Value:=0;
  fd.TtempiAlle.Value :=0;
  fd.TtempiTipo.Value :='A';
  fd.TtempiNote.Value :='Assente per '+des+'.'+cr+'Registrato da '+
    Ltit_ut.Caption+' il '+formatDateTime('dd/mm/yyyy hh:mm',Now);
  fd.Ttempi.Post;
  anomalie();
end;

procedure TFmain.sgButtonClick(Sender: TObject; aCol, aRow: Integer);
var
  comm, dis, cli, pz, cods, dat: string;
  s: WideString;
  riga: byte;
  cod: double;
begin
  if sg.Cells[aCol, aRow] = '' then //bott. disab. (es. assenza se ci sono ore segnate)
    exit;
  riga_corr := aRow;
  case aCol of
    2:begin
      if pReg1.Visible then
        mess('chiudere prima finestra registrazione', _info, _icons)
      else
        pAssenza.Show;
    end;
    3:begin //nuova registrazione
      if pAssenza.Visible then begin
        mess('chiudere prima finestra assenza', _info, _icons);
        exit;
      end;
      dat := sg.Cells[6, riga_corr]; //data //dat:=sg.Cells[5,riga_corr]; //data
      reg_rapida_attiva := True;
      //reg_altra_lavorazione(99,dat);

      (*Edata1.Visible := True;
      Edata1.Left := Battese1.Left + Battese1.Width + 10;
      Edata1.Top := Eini1.Top;*)

      pReg1.Left:=(screen.Width-pReg1.Width)   div 2;
      pReg1.Top :=(screen.Height-pReg1.Height) div 10 * 8;
      Ldurata1.Caption:='';
      azzeraCommesse(Ec1a, Ec2a, Ec3a, Ec4a, Ec5a, Ec6a,
        Ldis1a, Ldis2a, Ldis3a, Ldis4a, Ldis5a, Ldis6a,
        Lcli1a, Lcli2a, Lcli3a, Lcli4a, Lcli5a, Lcli6a,
        Lpz1a, Lpz2a, Lpz3a, Lpz4a, Lpz5a, Lpz6a,
        LrigaLav1a, LrigaLav2a, LrigaLav3a, LrigaLav4a, LrigaLav5a, LrigaLav6a,
        LcodPlann1a, LcodPlann2a, LcodPlann3a, LcodPlann4a, LcodPlann5a, LcodPlann6a);

      if fd.Ttempi1.State=dsInactive then
        fd.Ttempi1.Open;
      fd.Ttempi1.Insert;
      cod := maxCodNum('tempi','cod',fd.Ttempi1);
      fd.TtempiCod1.Value:=cod;
      fd.TtempiData1.Value:=strToDate(dat);
      fd.TtempiDalle1.Value:=strToTime('00:00:00'); //per evitare "dalle is null"
      fd.TtempiPers1.Value:=xUser;
      fd.TtempiMacch1.Value:=xMacch;
      //nb: forza su questa macchina anche se lav. prevista per altre

      pReg1.Show;
      reg_rapida_attiva:=False;
    end;
    4:begin //uscita/entrata antic.
      if pAssenza.Visible then begin
        mess('chiudere prima finestra assenza',_info,_icons);
        exit;
      end;
      if pReg1.Visible then begin
        mess('chiudere prima finestra registrazione',_info,_icons);
        exit;
      end;
      dat:=sg.Cells[0,riga_corr]; //data+gg.sett.
      if messSN('conferma uscita anticipata'+cr+'per giorno '+dat+'?','conferma')=idYes then begin
        dat:=sg.Cells[6, riga_corr]; //data //dat:=sg.Cells[5,riga_corr]; //data
        s:='update tempi set conf=1';
        agg(s,'where data=to_date('+qs(dat)+','+qs('dd/mm/yyyy')+')');
        agg(s,'and pers='+qs(xUser)); //setta tutti i gg., ok lo stesso
        zgo(zq,s,'ex');
        //indice(1); ...disab. 17/05/23
        anomalie();
      end;
    end;
    5:begin //correggi registraz.
      if pAssenza.Visible then begin
        mess('chiudere prima finestra assenza',_info,_icons);
        exit;
      end;
      cods:=sg.Cells[7,riga_corr];
      if trim(cods)='' then
        exit;
      Edata1.Hide;
      reg_rapida_attiva:=True;
      //reg_altra_lavorazione(99,dat);
      pReg1.Left:=(screen.Width-pReg1.Width)  div 2;
      pReg1.Top:=(screen.Height-pReg1.Height) div 10 * 8;

      Ldurata1.Caption:='';
      if (fd.TtempiDalle1.Value>0) and (fd.TtempiAlle1.Value>0) then
        Ldurata1.Caption:=formatDateTime('hh:mm',fd.TtempiAlle1.Value-fd.TtempiDalle1.Value);

      azzeraCommesse(Ec1a, Ec2a, Ec3a, Ec4a, Ec5a, Ec6a,
        Ldis1a, Ldis2a, Ldis3a, Ldis4a, Ldis5a, Ldis6a,
        Lcli1a, Lcli2a, Lcli3a, Lcli4a, Lcli5a, Lcli6a,
        Lpz1a, Lpz2a, Lpz3a, Lpz4a, Lpz5a, Lpz6a,
        LrigaLav1a, LrigaLav2a, LrigaLav3a, LrigaLav4a, LrigaLav5a, LrigaLav6a,
        LcodPlann1a, LcodPlann2a, LcodPlann3a, LcodPlann4a, LcodPlann5a, LcodPlann6a);

      s:='select '+campi_tempi;
      agg(s,'from tempi t where t.cod='+cods);
      zgo(fd.Ttempi1,s,'op');

      s:='select * from rtempi where cod='+cods+' order by riga';
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
        inc(riga);
        case riga of
          1:assComm(Ec1a,Ldis1a,Lcli1a,Lpz1a,LrigaLav1,LcodPlann1,
              comm,dis,cli,pz,fd.TrtemRigalav1.Text,fd.TrtemTmp1.Text);
          2:assComm(Ec2a,Ldis2a,Lcli2a,Lpz2a,LrigaLav2,LcodPlann2,
              comm,dis,cli, pz,fd.TrtemRigalav1.Text,fd.TrtemTmp1.Text);
          3:assComm(Ec3a,Ldis3a,Lcli3a,Lpz3a,LrigaLav3,LcodPlann3,
              comm,dis,cli, pz,fd.TrtemRigalav1.Text,fd.TrtemTmp1.Text);
          4:assComm(Ec4a,Ldis4a,Lcli4a,Lpz4a,LrigaLav4,LcodPlann4,
              comm,dis,cli, pz,fd.TrtemRigalav1.Text,fd.TrtemTmp1.Text);
          5:assComm(Ec5a,Ldis5a,Lcli5a,Lpz5a,LrigaLav5,LcodPlann5,
              comm,dis,cli,pz,fd.TrtemRigalav1.Text,fd.TrtemTmp1.Text);
          6:assComm(Ec6a,Ldis6a,Lcli6a,Lpz6a,LrigaLav6,LcodPlann6,
              comm,dis,cli,pz,fd.TrtemRigalav1.Text,fd.TrtemTmp1.Text);
        end;

        fd.Trtem1.Next;
      end; //while
      stop_timer:=False;
      mostraDis(imgDis1,Ldis1a.Caption);

      pReg1.Show;
      reg_rapida_attiva:=False;
    end;
  end; //case
  //non chiamare anomalie() qui perché deve aspettare che le azioni siano compiute
end;

procedure TFmain.TimerTimer(Sender: TObject);
var
  p:double;
  found:boolean;
begin
  LhelpIndice.Visible:=False;
  if pageControl.ActivePageIndex=0 then begin //solo se posizionati su "lavorazioni oggi"

    if dbgInd.Color<>clGray then begin //agg. indice solo se no lav. in corso; clGray=flag=inattivo=lavorazione/i in corso

      if Tlav.State<>dsInactive then begin;
        p:=TlavCod.Value; // dbgInd.SelectedIndex;
        found:=False;
        Tlav.First;
        while not Tlav.EOF do begin
          if TlavSel.Value=1 then
            found:=True;
          TLav.Next;
        end;
        //dbgInd.SelectedIndex:=p;
        Tlav.Locate('cod',p,[]);
        LhelpIndice.Visible:=found;
      end;

      if not found then
        indice(invariato_);
    end;

  if fd.Ttempi.State<>dsInactive then ;
    if fd.TtempiDalle.Value>0 then
      if pReg.Visible then begin
        Ldurata.Caption:=formatDateTime('hh:mm',Now-fd.TtempiDalle.Value);
        Ldurata.Repaint;
      end;

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

