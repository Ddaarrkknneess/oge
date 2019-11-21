const
  n = 5;
  
var
  a: array[1..n, 1..n] of integer;
  minRowSum, maxRowSum: integer;
  minColSum, maxColSum: integer;
  maxRowIndex, minRowIndex: integer;
  maxColIndex, minColIndex: integer;
  s, temp: integer;

begin
  for var i := 1 to n do
  begin
    for var j := 1 to n do
    begin
      a[i, j] := random(10, 100);
      write(a[i, j], ' ');
    end;
    writeln;
  end;
  minRowSum:= integer.MaxValue;
  maxRowSum:= integer.MinValue;
  minColSum:= integer.MaxValue;
  maxColSum:= integer.MinValue;
  for var i := 1 to n do
  begin
    s := 0;
    for var j := 1 to n do
      s += a[i, j];
    if s > maxRowSum then 
    begin  
      maxRowSum := s;
      maxRowIndex := i;
    end;
    if s < minRowSum then 
    begin  
      minRowSum := s;
      minRowIndex := i;
    end;
  end;
  for var i := 1 to n do
  begin
    s := 0;
    for var j := 1 to n do
      s += a[j, i];
    if s > maxColSum then 
    begin  
      maxColSum := s;
      maxColIndex := i;
    end;
    if s < minColSum then 
    begin  
      minColSum := s;
      minColIndex := i;
    end;
  end;
  for var i := 1 to n do
  begin
    temp := a[minRowIndex, i];
    a[minRowIndex, i] := a[maxRowIndex, i];
    a[maxRowIndex, i] := temp;
  end;
  for var i := 1 to n do
  begin
    temp := a[i, minColIndex];
    a[i, minColIndex] := a[i, maxColIndex];
    a[i, maxColIndex] := temp;
  end;
  writeln();
  for var i := 1 to n do
  begin
    for var j := 1 to n do
      write(a[i, j], ' ');
    writeln;
  end;
end.