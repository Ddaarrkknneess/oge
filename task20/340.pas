var
  sum, number: integer;
  
begin
  sum := 0;
  read(number);
  while number <> 0 do
  begin
    if (number mod 6 = 0) and (number mod 10 = 4) then sum += number;
    read(number);
  end;
  write(sum);
end.
