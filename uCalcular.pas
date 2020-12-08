unit uCalcular;

interface
uses Dialogs;
type
 TCalcular = Class
   public
    function Multiplicacao(num1, num2 :Integer): Integer;
    function Somar(num1, num2 :Integer): Integer;
    function Dividir(num1, num2 :Double): Double;
    function Subtrair(num1, num2 :Integer): Integer;

    constructor Create;
    destructor Destroy; Override;
 end;


implementation
{ TCalcular }

constructor TCalcular.Create;
begin
  inherited Create;
end;

destructor TCalcular.Destroy;
begin

  inherited;
end;

function TCalcular.Dividir(num1, num2: Double): Double;
begin
 Result := num1 / num2;
end;

function TCalcular.Multiplicacao(num1, num2: Integer): Integer;
begin
 Result := num1 * num2;
end;

function TCalcular.Somar(num1, num2: Integer): Integer;
begin
  Result := num1 + num2;
end;

function TCalcular.Subtrair(num1, num2: Integer): Integer;
begin
 Result := num1 - num2;
end;

end.
