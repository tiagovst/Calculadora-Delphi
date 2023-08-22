unit Divide;

interface

uses System.Generics.Collections, Model.Calc.Interfaces;

type
  TDivide = class
    private
      FList: TList<Double>;
      FTotal: Double;
    public
      constructor Create;
      function Execute: Double;
      property ValueList: TList<Double> read FList write Flist;
  end;

implementation


constructor TDivide.Create;
begin
  FList := TList<Double>.Create;
end;

function TDivide.Execute: Double;
var
  index: Integer;
begin
  if FList.Count = 0 then
  begin
    result := 0.0;
    Exit;
  end;

  FTotal := FList[0];
  for index := 1 to Pred(FList.Count) do
    FTotal := FTotal / FList[index];

  result := FTotal;
end;

end.
