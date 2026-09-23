program VariablesAndTypes;

var
  age       : Integer;
  height    : Real;
  initial   : Char;
  name      : String;
  isStudent : Boolean;

begin
  age       := 25;
  height    := 5.9;
  initial   := 'J';
  name      := 'Alice';
  isStudent := True;

  WriteLn('Name:       ', name);
  WriteLn('Initial:    ', initial);
  WriteLn('Age:        ', age);
  WriteLn('Height:     ', height:4:1);
  WriteLn('Is student: ', isStudent);
end.
