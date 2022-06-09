program ProjetoPrevisaoTempo;

uses
  Vcl.Forms,
  uMain in '..\view\uMain.pas' {FrmMain},
  DataSetConverter4D.Helper in '..\Library\DataSetConverter4D.Helper.pas',
  DataSetConverter4D.Impl in '..\Library\DataSetConverter4D.Impl.pas',
  DataSetConverter4D in '..\Library\DataSetConverter4D.pas',
  DataSetConverter4D.Util in '..\Library\DataSetConverter4D.Util.pas',
  RestConsumeAPI in '..\Library\RestConsumeAPI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
