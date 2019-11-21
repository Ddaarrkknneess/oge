function euclid(a, b: integer): integer;
var temp: integer;
begin
  while (b <> 0) do
  begin
    temp := a;
    a := b;
    b := temp mod b;
  end;
  result := a;
end;

function stupidGCD(a, b: integer): integer;
begin
  for var d := 1 to b do
  begin
    if (a mod d = 0) and (b mod d = 0) then result := d;
  end;
end;

begin
  for var i := 1 to 1000000 do
    stupidGCD(1071, 462);
  write('dsfdsfdsfdsf');
end.