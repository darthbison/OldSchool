program Arrays;

const
  SIZE = 8;

type
  IntArray = array[1..SIZE] of Integer;

procedure BubbleSort(var arr: IntArray; n: Integer);
var
  i, j, temp: Integer;
begin
  for i := 1 to n - 1 do
    for j := 1 to n - i do
      if arr[j] > arr[j + 1] then
      begin
        temp       := arr[j];
        arr[j]     := arr[j + 1];
        arr[j + 1] := temp;
      end;
end;

procedure PrintArray(const arr: IntArray; n: Integer);
var
  i: Integer;
begin
  for i := 1 to n do
    Write(arr[i]:4);
  WriteLn;
end;

var
  numbers  : IntArray;
  matrix   : array[1..3, 1..3] of Integer;
  i, j, sum: Integer;

begin
  { 1-D array }
  numbers[1] := 64;
  numbers[2] := 34;
  numbers[3] := 25;
  numbers[4] := 12;
  numbers[5] := 22;
  numbers[6] := 11;
  numbers[7] := 90;
  numbers[8] := 45;

  Write('Unsorted: ');
  PrintArray(numbers, SIZE);

  BubbleSort(numbers, SIZE);

  Write('Sorted:   ');
  PrintArray(numbers, SIZE);

  sum := 0;
  for i := 1 to SIZE do
    sum := sum + numbers[i];
  WriteLn('Sum: ', sum, '  Average: ', sum / SIZE:5:2);

  { 2-D array (multiplication table) }
  WriteLn;
  WriteLn('3x3 Multiplication Table:');
  for i := 1 to 3 do
  begin
    for j := 1 to 3 do
    begin
      matrix[i][j] := i * j;
      Write(matrix[i][j]:4);
    end;
    WriteLn;
  end;
end.
