program FileIO;

{ Demonstrates writing and reading text files in Pascal }

const
  FILENAME = 'data.txt';

procedure WriteFile;
var
  f   : TextFile;
  i   : Integer;
begin
  AssignFile(f, FILENAME);
  Rewrite(f);
  try
    WriteLn(f, 'Pascal File I/O Demo');
    WriteLn(f, '--------------------');
    for i := 1 to 5 do
      WriteLn(f, 'Line ', i, ': value = ', i * i);
    WriteLn(f, 'Done.');
  finally
    CloseFile(f);
  end;
  WriteLn('Written to ', FILENAME);
end;

procedure ReadFile;
var
  f   : TextFile;
  line: String;
  n   : Integer;
begin
  AssignFile(f, FILENAME);
  Reset(f);
  try
    n := 0;
    WriteLn('Reading ', FILENAME, ':');
    while not EOF(f) do
    begin
      ReadLn(f, line);
      Inc(n);
      WriteLn('  [', n, '] ', line);
    end;
    WriteLn('Total lines: ', n);
  finally
    CloseFile(f);
  end;
end;

procedure AppendToFile;
var
  f: TextFile;
begin
  AssignFile(f, FILENAME);
  Append(f);
  try
    WriteLn(f, 'Appended line.');
  finally
    CloseFile(f);
  end;
  WriteLn('Appended one line.');
end;

begin
  WriteFile;
  WriteLn;
  ReadFile;
  WriteLn;
  AppendToFile;
  WriteLn;
  ReadFile;
end.
