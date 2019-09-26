var
  amount, max, number: integer;
  
begin
  read(amount);
  max := 0;
  for var i := 1 to amount do
  begin
    read(number);
    if (number mod 5 = 0) and (number > max) then max := number;
  end;
  write(max);
end.