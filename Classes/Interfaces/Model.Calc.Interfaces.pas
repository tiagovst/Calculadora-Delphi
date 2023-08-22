unit Model.Calc.Interfaces;

interface

type
  iModelCalc = Interface
    procedure Execute;
    procedure Clear;
    procedure Add(value: Variant);
    function Total : variant;
  End;

implementation

end.
