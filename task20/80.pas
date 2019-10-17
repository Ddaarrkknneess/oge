var
  amount, min, number: integer;
  
begin
  read(amount);
  min := integer.MaxValue;
  for var i := 1 to amount do
  begin
    read(number);
    if (number mod 3 = 0) and (number < min) then min := number;
  end;
  write(min);
end.