unit Divide;

interface

uses System.Generics.Collections, Model.Calc.Interfaces;

type
  TDivide = class
    private
      FList: TList<Variant>;
      FTotal: Variant;
    public
      constructor Create;
      function Execute: Variant;
      property ValueList: TList<Variant> read FList write Flist;
  end;

implementation


constructor TDivide.Create;
begin
  FList := TList<Variant>.Create;
end;

function TDivide.Execute: Variant;
var
  index: Integer;
begin
  FTotal := 0;
  for index := 0 to Pred(FList.Count) do
    FTotal := FTotal / FList[index];

  result := FTotal;
end;

end.