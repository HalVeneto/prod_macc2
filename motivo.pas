unit motivo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  BCPanel, BCButton;

type

  { TFmot }

  TFmot = class(TForm)
    Bok: TBCButton;
    Bann: TBCButton;
    Label1: TLabel;
    Ltit_ut: TLabel;
    Ltit_ut_: TLabel;
    Mnote: TMemo;
    pTit: TBCPanel;
    rgMot: TRadioGroup;
    procedure BannClick(Sender: TObject);
    procedure BokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

const
  motivo_salto_prima_lavorazione_='motivo per cui ho saltato la prima lavorazione:';
var
  Fmot: TFmot;
  mot:String;
  flag_mot:Boolean;

implementation

uses
  units;

{$R *.lfm}

{ TFmot }

procedure TFmot.FormShow(Sender: TObject);
begin
  rgMot.Caption:=motivo_salto_prima_lavorazione_;
end;

function ctrl():boolean;
var
  ok:boolean;
begin
  ok:=Fmot.rgMot.ItemIndex>-1;
  if not ok then
    mess('indicare un motivo',_info,_icons);
  result:=ok;
end;

procedure TFmot.BokClick(Sender: TObject);
begin
  if not ctrl() then
    exit;
  flag_mot:=True;
  mot:=Mnote.Text;
  close;
end;

procedure TFmot.BannClick(Sender: TObject);
begin
  if not ctrl() then
    exit;
  mot:='çaplanexmoi';
  flag_mot:=False;
  close;
end;

end.

