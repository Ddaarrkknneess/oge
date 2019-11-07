var
  amount, number, sum: integer;
  
begin
  amount := 0;
  sum := 0;
  read(number);
  while number <> 0 do
  begin
    sum += number;
    if (number mod 5 = 0) and (number mod 2 = 0) then amount += 1;
    read(number);
  end;
  writeln(sum);
  write(amount);
end.