unit Multiply;

interface

uses System.Generics.Collections, Model.Calc.Interfaces;

type
  TMultiply = class
    private
      FList: TList<Double>;
      FTotal: Double;
    public
      constructor Create;
      function Execute: Double;
      property ValueList: TList<Double> read FList write Flist;
  end;

implementation


constructor TMultiply.Create;
begin
  FList := TList<Double>.Create;
end;

function TMultiply.Execute: Double;
var
  index: Integer;
begin
  FTotal := 1;
  for index := 0 to Pred(FList.Count) do
    FTotal := FTotal * FList[index];

  result := FTotal;
end;

end.
