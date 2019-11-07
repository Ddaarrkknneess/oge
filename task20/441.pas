var
  amount, speed, maxSpeed, countAbove30, minSpeed: integer;
  velocity: real;

begin
  read(amount);
  countAbove30:= 0;
  maxSpeed := integer.MinValue;
  minSpeed:= integer.MaxValue;
  for var i := 1 to amount do
  begin
    read(velocity);
    speed := round(velocity);
    if speed > maxSpeed then maxSpeed := speed;
    if speed < minSpeed then minSpeed := speed;
    if speed <= 30 then countAbove30 += 1;
  end;
  writeln(maxSpeed - minSpeed);
  write(countAbove30);
end.