program Records;

type
  TDate = record
    Day   : Integer;
    Month : Integer;
    Year  : Integer;
  end;

  TStudent = record
    ID      : Integer;
    Name    : String[50];
    GPA     : Real;
    Enrolled: TDate;
  end;

procedure PrintDate(const d: TDate);
begin
  Write(d.Year, '-');
  if d.Month < 10 then Write('0');
  Write(d.Month, '-');
  if d.Day < 10 then Write('0');
  Write(d.Day);
end;

procedure PrintStudent(const s: TStudent);
begin
  WriteLn('ID:       ', s.ID);
  WriteLn('Name:     ', s.Name);
  WriteLn('GPA:      ', s.GPA:4:2);
  Write(  'Enrolled: ');
  PrintDate(s.Enrolled);
  WriteLn;
end;

function LetterGrade(gpa: Real): Char;
begin
  if gpa >= 3.7 then LetterGrade := 'A'
  else if gpa >= 3.0 then LetterGrade := 'B'
  else if gpa >= 2.0 then LetterGrade := 'C'
  else LetterGrade := 'D';
end;

const
  COUNT = 3;

var
  students : array[1..COUNT] of TStudent;
  i        : Integer;
  best     : Integer;

begin
  students[1].ID            := 1001;
  students[1].Name          := 'Alice Martin';
  students[1].GPA           := 3.85;
  students[1].Enrolled.Day  := 15;
  students[1].Enrolled.Month:= 9;
  students[1].Enrolled.Year := 2023;

  students[2].ID            := 1002;
  students[2].Name          := 'Bob Chen';
  students[2].GPA           := 3.20;
  students[2].Enrolled.Day  := 20;
  students[2].Enrolled.Month:= 9;
  students[2].Enrolled.Year := 2023;

  students[3].ID            := 1003;
  students[3].Name          := 'Carol Smith';
  students[3].GPA           := 3.95;
  students[3].Enrolled.Day  := 10;
  students[3].Enrolled.Month:= 9;
  students[3].Enrolled.Year := 2022;

  for i := 1 to COUNT do
  begin
    WriteLn('--- Student ', i, ' ---');
    PrintStudent(students[i]);
    WriteLn('Grade: ', LetterGrade(students[i].GPA));
    WriteLn;
  end;

  { Find best GPA }
  best := 1;
  for i := 2 to COUNT do
    if students[i].GPA > students[best].GPA then
      best := i;
  WriteLn('Top student: ', students[best].Name,
          ' (GPA: ', students[best].GPA:4:2, ')');
end.
