program prod_macc2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, main, dm, helps, login, units, motivo
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(Tfd, fd);
  Application.CreateForm(TFel, Fel);
  Application.CreateForm(TFlog, Flog);
  Application.CreateForm(TFmot, Fmot);
  Application.Run;
end.

