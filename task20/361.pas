var
  amount, speed, maxSpeed, countAbove30: integer;
  velocity: real;

begin
  read(amount);
  for var i := 1 to amount do
  begin
    read(velocity);
    speed := round(velocity);
    if speed > maxSpeed then maxSpeed := speed;
    if speed < 30 then countAbove30 += 1;
  end;
  writeln(maxSpeed);
  if countAbove30 > 0 then write('YES') else write('NO');
end.