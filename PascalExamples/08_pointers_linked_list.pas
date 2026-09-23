program PointersLinkedList;

type
  PNode = ^TNode;
  TNode = record
    Value : Integer;
    Next  : PNode;
  end;

{ Insert at front of list }
procedure PushFront(var head: PNode; val: Integer);
var
  node: PNode;
begin
  New(node);
  node^.Value := val;
  node^.Next  := head;
  head        := node;
end;

{ Append to end of list }
procedure PushBack(var head: PNode; val: Integer);
var
  node, curr: PNode;
begin
  New(node);
  node^.Value := val;
  node^.Next  := nil;
  if head = nil then
    head := node
  else
  begin
    curr := head;
    while curr^.Next <> nil do
      curr := curr^.Next;
    curr^.Next := node;
  end;
end;

{ Remove and return front value }
function PopFront(var head: PNode): Integer;
var
  old: PNode;
begin
  old      := head;
  PopFront := head^.Value;
  head     := head^.Next;
  Dispose(old);
end;

{ Print all nodes }
procedure PrintList(head: PNode);
begin
  while head <> nil do
  begin
    Write(head^.Value);
    if head^.Next <> nil then Write(' -> ');
    head := head^.Next;
  end;
  WriteLn;
end;

{ Count nodes }
function ListLength(head: PNode): Integer;
var
  count: Integer;
begin
  count := 0;
  while head <> nil do
  begin
    Inc(count);
    head := head^.Next;
  end;
  ListLength := count;
end;

{ Free all nodes }
procedure FreeList(var head: PNode);
var
  temp: PNode;
begin
  while head <> nil do
  begin
    temp := head;
    head := head^.Next;
    Dispose(temp);
  end;
end;

var
  list: PNode;
  i   : Integer;

begin
  list := nil;

  WriteLn('Building list with PushBack:');
  for i := 1 to 5 do
    PushBack(list, i * 10);
  PrintList(list);

  WriteLn('PushFront(5):');
  PushFront(list, 5);
  PrintList(list);

  WriteLn('Length: ', ListLength(list));

  WriteLn('PopFront: ', PopFront(list));
  Write('After pop: ');
  PrintList(list);

  FreeList(list);
  WriteLn('List freed. Nil: ', list = nil);
end.
