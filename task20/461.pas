var
  oddAmount, number, length: integer;
  
begin
  oddAmount := 0;
  length := 0;
  read(number);
  while number <> 0 do
  begin
    if (number mod 3 = 0) and (number mod 2 = 1) then oddAmount += 1;
    read(number);
    length += 1;
  end;
  writeln(length);
  write(oddAmount);
end.