var
  number, sum, pos, neg: integer;
  
begin
  sum := 0;
  pos := 0;
  neg := 0;
  read(number);
  while number <> 0 do
  begin
    sum += number;
    if (number > 0) then pos += 1;
    if (number < 0) then neg += 1;
  
    read(number);
  end;
  writeln(sum);
  write(pos - neg);
end.