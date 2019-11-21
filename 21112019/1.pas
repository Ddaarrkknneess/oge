const
  n = 10;

var
  a: array[1..n] of integer;
  min, max, minIndex, maxIndex: integer;

begin
  for var i := 1 to n do
  begin
    a[i] := random(1, 100);
    write(a[i], ' ');
  end;
  min := integer.MaxValue;
  max := integer.MinValue;
  for var i := 1 to n do
  begin
    if a[i] < min then min := a[i];
    if a[i] > max then max := a[i];
  end;
  for var i := 1 to n do
    if a[i] = min then
    begin
      minIndex := i;
      break;
    end;
  for var i := 1 to n do
    if a[i] = max then
    begin
      maxIndex := i;
      break;
    end;
  a[minIndex] := max;
  a[maxIndex] := min;
  writeln;
  for var i := 1 to n do
  begin
    write(a[i], ' ');
  end;
end.