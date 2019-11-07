var
  amount, sum, speed, countAbove60: integer;
  velocity: real;

begin
  read(amount);
  countAbove60:= 0;
  sum:=0;
  for var i := 1 to amount do
  begin
    read(velocity);
    speed := round(velocity);
    sum += speed;
    if speed >= 60 then countAbove60 += 1;
  end;
  writeln(sum / amount);
  if countAbove60 > 0 then write('YES') else write('NO');
end.