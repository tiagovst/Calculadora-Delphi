program Project1;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Main},
  Calc in 'Classes\Calc.pas',
  Sum in 'Classes\Model\Sum.pas',
  Divide in 'Classes\Model\Divide.pas',
  Multiply in 'Classes\Model\Multiply.pas',
  Subtract in 'Classes\Model\Subtract.pas',
  Model.Calc.Interfaces in 'Classes\Interfaces\Model.Calc.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
