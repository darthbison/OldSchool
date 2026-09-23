program SetsAndEnums;

type
  TDay     = (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
  TDaySet  = set of TDay;
  TSeason  = (Spring, Summer, Autumn, Winter);

const
  Weekdays : TDaySet = [Mon, Tue, Wed, Thu, Fri];
  Weekend  : TDaySet = [Sat, Sun];

function DayName(d: TDay): String;
begin
  case d of
    Mon: DayName := 'Monday';
    Tue: DayName := 'Tuesday';
    Wed: DayName := 'Wednesday';
    Thu: DayName := 'Thursday';
    Fri: DayName := 'Friday';
    Sat: DayName := 'Saturday';
    Sun: DayName := 'Sunday';
  end;
end;

function SeasonName(s: TSeason): String;
begin
  case s of
    Spring: SeasonName := 'Spring';
    Summer: SeasonName := 'Summer';
    Autumn: SeasonName := 'Autumn';
    Winter: SeasonName := 'Winter';
  end;
end;

var
  d         : TDay;
  myDays    : TDaySet;
  intersection: TDaySet;
  s         : TSeason;

begin
  { Enum iteration }
  WriteLn('All days:');
  for d := Mon to Sun do
  begin
    Write('  ', DayName(d));
    if d in Weekdays then Write(' [weekday]')
                     else Write(' [weekend]');
    WriteLn;
  end;

  { Set operations }
  WriteLn;
  myDays := [Mon, Wed, Fri, Sat];

  WriteLn('My days: Mon, Wed, Fri, Sat');
  Write('Weekdays in my set: ');
  intersection := myDays * Weekdays;   { set intersection }
  for d := Mon to Sun do
    if d in intersection then Write(DayName(d), ' ');
  WriteLn;

  Write('Union with Weekend: ');
  for d := Mon to Sun do
    if d in (myDays + Weekend) then Write(DayName(d), ' ');
  WriteLn;

  Write('My days minus weekends: ');
  for d := Mon to Sun do
    if d in (myDays - Weekend) then Write(DayName(d), ' ');
  WriteLn;

  { Enum as loop bound }
  WriteLn;
  WriteLn('Seasons:');
  for s := Spring to Winter do
    WriteLn('  ', SeasonName(s), ' (ord=', Ord(s), ')');
end.
