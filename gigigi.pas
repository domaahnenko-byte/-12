program AvgMainDiagonal;

var
  A: array[1..10, 1..10] of integer;
  i, j, n: integer;
  sum: integer;
  avg: real;

begin
  write('Введіть розмір квадратного масиву n: ');
  readln(n);

  writeln('Введіть елементи масиву:');
  for i := 1 to n do
    for j := 1 to n do
      read(A[i, j]);

  sum := 0;

  { Сума елементів головної діагоналі }
  for i := 1 to n do
    sum := sum + A[i, i];

  avg := sum / n;

  writeln('Середнє арифметичне головної діагоналі = ', avg:0:2);
end.
