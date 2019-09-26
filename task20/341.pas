var
  number, n1, n2, max1, max2, min1, min2: integer;
  
begin
  read(n1);
  read(n2);
  if n1 > n2
    then
    begin
      max1 := n1;
      max2 := n2;
      min1 := n2;
      min2 := n1;
    end
    else
    begin
      max1 := n2;
      max2 := n1;
      min1 := n1;
      min2 := n2;
    end;
  read(number);
  while number <> 0 do
  begin
    if number > max1 
    then
      begin
        max2 := max1;
        max1 := number;
      end;
    if (number > max2) and (number < max1) then max2 := number;
    if number < min1
    then
      begin
        min2 := min1;
        min1 := number;
      end;
    if (number > min1) and (number < min2) then min2 := number;
    read(number);
  end;
  write(max1 + max2, ' ', min1 + min2);
end.
