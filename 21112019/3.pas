uses Arrays;

const
  n = 10;

var
  a: array[1..n] of integer;
  temp: integer;
  
begin
  for var i := 1 to n do
  begin
    a[i] := random(1, 100);
    write(a[i], ' ');
  end;
  for var prohod := 1 to n do
    for var i := 1 to n - 1 do
      if a[i] > a[i + 1] then
      begin
        temp := a[i];
        a[i] := a[i + 1];
        a[i + 1] := temp;
      end;
  writeln;
  for var i := 1 to n do
    write(a[i], ' ');
end.