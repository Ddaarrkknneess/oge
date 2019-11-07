var
  amount, speed, minSpeed, countAbove80: integer;
  velocity: real;

begin
  read(amount);
  countAbove80:= 0;
  minSpeed:= integer.MaxValue;
  for var i := 1 to amount do
  begin
    read(velocity);
    speed := round(velocity);
    if speed < minSpeed then minSpeed := speed;
    if speed > 80 then countAbove80 += 1;
  end;
  writeln(minSpeed);
  if countAbove80 > 0 then write('YES') else write('NO');
end.