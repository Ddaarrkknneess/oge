var
  amount, sum, number: integer;
  
begin
  read(amount);
  sum := 0;
  for var i := 1 to amount do
  begin
    read(number);
    if number mod 6 = 0 then sum += number;
  end;
  write(sum);
end.
