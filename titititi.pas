program AvgMainDiagonalRandom;

uses crt, sysutils;  { Використовуємо модулі для роботи з випадковими числами }

var
  A: array[1..10, 1..10] of integer;  { Квадратний масив 10x10 }
  i, j, n: integer;                    { Змінні для циклів та розміру масиву }
  sum: integer;                         { Сума елементів головної діагоналі }
  avg: real;                            { Середнє арифметичне }

begin
  randomize;  { Ініціалізація генератора випадкових чисел }

  write('Введіть розмір квадратного масиву n (1..10): ');
  readln(n);

  if (n < 1) or (n > 10) then
  begin
    writeln('Помилка: розмір масиву має бути від 1 до 10.');
    exit;
  end;

  writeln('Згенерований масив:');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      A[i, j] := random(201) - 100;  { Випадкове число від -100 до 100 }
      write(A[i, j]:6);               { Вивід елементу з відступом для гарного форматування }
    end;
    writeln;
  end;

  sum := 0;

  { Обчислення суми елементів головної діагоналі }
  for i := 1 to n do
    sum := sum + A[i, i];

  avg := sum / n;

  writeln('Середнє арифметичне головної діагоналі = ', avg:0:2);
end.
