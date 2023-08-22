unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Calc;

type
  TMain = class(TForm)
    btnSum: TButton;
    lblResult: TLabel;
    btnSubtraction: TButton;
    btnDivision: TButton;
    btnMultiplication: TButton;
    lblTitle: TLabel;
    btnSeven: TButton;
    btnEigth: TButton;
    btnNine: TButton;
    btnFour: TButton;
    btnFive: TButton;
    btnSix: TButton;
    btnOne: TButton;
    btnTwo: TButton;
    btnThree: TButton;
    btnCalc: TButton;
    btnZero: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure btnOneClick(Sender: TObject);
    procedure btnTwoClick(Sender: TObject);
    procedure btnThreeClick(Sender: TObject);
    procedure btnFourClick(Sender: TObject);
    procedure btnFiveClick(Sender: TObject);
    procedure btnSixClick(Sender: TObject);
    procedure btnSevenClick(Sender: TObject);
    procedure btnEigthClick(Sender: TObject);
    procedure btnNineClick(Sender: TObject);
    procedure btnSumClick(Sender: TObject);
    procedure btnSubtractionClick(Sender: TObject);
    procedure btnMultiplicationClick(Sender: TObject);
    procedure btnDivisionClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);

  private
    log: String;
    sign: String;
    procedure LoadValues;
    procedure ShowTotal;
    procedure CalculateValues;
    procedure ProcessTasks;
  public
    { Public declarations }
    calculator: TCalc;
    value1: String;
    value2: String;
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.FormCreate(Sender: TObject);
begin
  if calculator = nil then
    calculator := TCalc.Create;
end;

procedure TMain.ProcessTasks;
begin
  value1 := lblResult.Caption;
  log := '';
  lblResult.Caption := '0';
end;

procedure TMain.CalculateValues;
begin
  value2 := lblResult.Caption;

  LoadValues;

  if (sign.Equals('+')) then
  begin
    calculator.Sum;
  end
  else if (sign.Equals('-')) then
  begin
    calculator.Subtract;
  end
  else if (sign.Equals('/')) then
  begin
    calculator.Divide;
  end
  else if (sign.Equals('*')) then
  begin
    calculator.Multiply;
  end;

  ShowTotal;
end;

procedure TMain.btnCalcClick(Sender: TObject);
begin
  CalculateValues;
end;

procedure TMain.btnDivisionClick(Sender: TObject);
begin
  ProcessTasks;
  sign := '/';
end;

procedure TMain.btnEigthClick(Sender: TObject);
begin
  lblResult.Caption := log + '8';
  log := log + '8';
end;

procedure TMain.btnFiveClick(Sender: TObject);
begin
  lblResult.Caption := log + '5';
  log := log + '5';
end;

procedure TMain.btnFourClick(Sender: TObject);
begin
  lblResult.Caption := log + '4';
  log := log + '4';
end;

procedure TMain.btnMultiplicationClick(Sender: TObject);
begin
  ProcessTasks;
  sign := '*';
end;

procedure TMain.btnNineClick(Sender: TObject);
begin
  lblResult.Caption := log + '9';
  log := log + '9';
end;

procedure TMain.btnOneClick(Sender: TObject);
begin
  lblResult.Caption := log + '1';
  log := log + '1';
end;

procedure TMain.btnSevenClick(Sender: TObject);
begin
  lblResult.Caption := log + '7';
  log := log + '7';
end;

procedure TMain.btnSixClick(Sender: TObject);
begin
  lblResult.Caption := log + '6';
  log := log + '6';
end;

procedure TMain.btnSubtractionClick(Sender: TObject);
begin
  ProcessTasks;
  sign := '-';
end;

procedure TMain.btnSumClick(Sender: TObject);
begin
  ProcessTasks;
  sign := '+';
end;

procedure TMain.btnThreeClick(Sender: TObject);
begin
  lblResult.Caption := log + '3';
  log := log + '3';
end;

procedure TMain.btnTwoClick(Sender: TObject);
begin
  lblResult.Caption := log + '2';
  log := log + '2';
end;

procedure TMain.btnZeroClick(Sender: TObject);
begin
  lblResult.Caption := log + '0';
  log := log + '0';
end;

procedure TMain.LoadValues;
begin
  calculator.Clean;
  calculator.include(value1);
  calculator.include(value2);
end;

procedure TMain.ShowTotal;
begin
  lblResult.Caption := FormatFloat('#,####0.0000', calculator.Total);
end;

end.