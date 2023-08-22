unit Calc;

interface

uses Model.Calc.Interfaces, System.Generics.Collections, Sum, Divide, Multiply,
Subtract;

type
  TCalc = class
    private
      FLista: TList<Double>;
      FTotal: Double;
      FSum: TSum;
      FDiv: TDivide;
      FSub: TSubtract;
      FMulti: TMultiply;
    public
      constructor Create;
      destructor Destroy; override;

      procedure Clean;
      procedure include(Value: Double);
      function Total: Double;
      procedure Sum;
      procedure Multiply;
      procedure Divide;
      procedure Subtract;
  end;

implementation

constructor TCalc.Create;
begin
  FSum := TSum.Create;
  FDiv := TDivide.Create;
  FSub := TSubtract.Create;
  FMulti := TMultiply.Create;
  FLista := TList<Double>.Create;
end;

destructor TCalc.Destroy;
begin
  FSum.Free;
  FMulti.Free;
  FSub.Free;
  FDiv.Free;
  FLista.Free;
  inherited Destroy;
end;

procedure TCalc.Clean;
begin
  FLista.Clear;
end;

procedure TCalc.include(Value: Double);
begin
  FLista.Add(Value);
end;

procedure TCalc.Sum;
begin
  FSum.ValueList := FLista;
  FTotal := FSum.Execute;
end;

procedure TCalc.Subtract;
begin
  FSub.ValueList := FLista;
  FTotal := FSub.Execute;
end;

procedure TCalc.Multiply;
begin
  FMulti.ValueList := FLista;
  FTotal := FMulti.Execute;
end;

procedure TCalc.Divide;
begin
  FDiv.ValueList := FLista;
  FTotal := FDiv.Execute;
end;

function TCalc.Total: Double;
begin
  result := FTotal;
end;

end.
