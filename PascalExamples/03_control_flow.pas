program ControlFlow;

var
  score : Integer;
  grade : Char;
  i     : Integer;

begin
  score := 82;

  { if/else if/else }
  if score >= 90 then
    grade := 'A'
  else if score >= 80 then
    grade := 'B'
  else if score >= 70 then
    grade := 'C'
  else if score >= 60 then
    grade := 'D'
  else
    grade := 'F';

  WriteLn('Score: ', score, '  Grade: ', grade);

  { case statement }
  Write('Letter grade means: ');
  case grade of
    'A': WriteLn('Excellent');
    'B': WriteLn('Good');
    'C': WriteLn('Average');
    'D': WriteLn('Below average');
    'F': WriteLn('Failing');
  end;

  { for loop }
  Write('Counting 1-5: ');
  for i := 1 to 5 do
    Write(i, ' ');
  WriteLn;

  { while loop }
  i := 10;
  Write('Counting down: ');
  while i > 0 do
  begin
    Write(i, ' ');
    Dec(i, 2);
  end;
  WriteLn;

  { repeat..until loop }
  i := 1;
  Write('Squares: ');
  repeat
    Write(i * i, ' ');
    Inc(i);
  until i > 5;
  WriteLn;
end.
