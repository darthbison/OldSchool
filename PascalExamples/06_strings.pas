program StringExamples;

{ Reverse a string }
function ReverseStr(const s: String): String;
var
  i      : Integer;
  result : String;
begin
  result := '';
  for i := Length(s) downto 1 do
    result := result + s[i];
  ReverseStr := result;
end;

{ Count occurrences of a character }
function CountChar(const s: String; ch: Char): Integer;
var
  i, count: Integer;
begin
  count := 0;
  for i := 1 to Length(s) do
    if s[i] = ch then
      Inc(count);
  CountChar := count;
end;

{ Check if a string is a palindrome }
function IsPalindrome(const s: String): Boolean;
begin
  IsPalindrome := (s = ReverseStr(s));
end;

var
  s1, s2, combined: String;
  pos_result       : Integer;

begin
  s1 := 'Hello';
  s2 := 'World';

  { Concatenation }
  combined := s1 + ', ' + s2 + '!';
  WriteLn('Combined:    ', combined);
  WriteLn('Length:      ', Length(combined));
  WriteLn('Uppercase:   ', UpperCase(combined));
  WriteLn('Lowercase:   ', LowerCase(combined));

  { Substrings }
  WriteLn('Copy(1,5):   ', Copy(combined, 1, 5));
  WriteLn('Copy(8,5):   ', Copy(combined, 8, 5));

  { Search }
  pos_result := Pos('World', combined);
  WriteLn('Pos(World):  ', pos_result);

  { Reverse }
  WriteLn('Reversed:    ', ReverseStr(combined));

  { Count }
  WriteLn('Count ''l'':   ', CountChar(combined, 'l'));

  { Palindrome check }
  WriteLn;
  WriteLn('Palindrome tests:');
  WriteLn('  "racecar" -> ', IsPalindrome('racecar'));
  WriteLn('  "hello"   -> ', IsPalindrome('hello'));
  WriteLn('  "level"   -> ', IsPalindrome('level'));
end.
