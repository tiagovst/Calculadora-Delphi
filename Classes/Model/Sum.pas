unit Sum;

interface

uses System.Generics.Collections, Model.Calc.Interfaces, System.SysUtils;

type
  TSum = class
    private
      FList: TList<String>;
      FTotal: Double;
    public
      constructor Create;
      function Execute(index1: Integer; index2: Integer): Double;
      property ValueList: TList<String> read FList write Flist;
  end;

implementation


constructor TSum.Create;
begin
  FList := TList<String>.Create;
end;

function TSum.Execute(index1: Integer; index2: Integer): Double;
var
  index: Integer;
begin
  if FList.Count = 0 then
  begin
    result := 0.0;
    Exit;
  end;

  FTotal := StrToFloat(FList[index1]) + StrToFloat(FList[index2]);
  result := FTotal;
end;

end.
