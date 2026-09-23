program ProceduresAndFunctions;

{ Function: returns a value }
function Factorial(n: Integer): Integer;
begin
  if n <= 1 then
    Factorial := 1
  else
    Factorial := n * Factorial(n - 1);
end;

{ Function: greatest common divisor }
function GCD(a, b: Integer): Integer;
begin
  while b <> 0 do
  begin
    a := a mod b;
    { swap a and b }
    b := a xor b;
    a := a xor b;
    b := a xor b;
  end;
  GCD := a;
end;

{ Procedure: no return value, uses var parameter to output }
procedure Swap(var x, y: Integer);
var
  temp: Integer;
begin
  temp := x;
  x    := y;
  y    := temp;
end;

{ Procedure: prints a separator line }
procedure PrintLine(ch: Char; len: Integer);
var
  i: Integer;
begin
  for i := 1 to len do
    Write(ch);
  WriteLn;
end;

var
  a, b: Integer;

begin
  PrintLine('-', 30);
  WriteLn('Factorials:');
  WriteLn('  5! = ', Factorial(5));
  WriteLn('  7! = ', Factorial(7));
  WriteLn('  10! = ', Factorial(10));

  PrintLine('-', 30);
  WriteLn('GCD examples:');
  WriteLn('  GCD(48, 18) = ', GCD(48, 18));
  WriteLn('  GCD(100, 75) = ', GCD(100, 75));

  PrintLine('-', 30);
  a := 42;
  b := 99;
  WriteLn('Before swap: a=', a, ' b=', b);
  Swap(a, b);
  WriteLn('After swap:  a=', a, ' b=', b);
  PrintLine('-', 30);
end.
