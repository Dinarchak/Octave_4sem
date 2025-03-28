A = [
1, 3, -2, 4;
6, 19, -12, 24;
4, 12, -9, 16;
1, 3, -2, 5
]

printf('Определитель:%d\nРанг:%d\nСлед:%d\n', det(A), rank(A), trace(A))
disp('Транспонированная матрица А')
disp(A')
B = rand(4, 4)
alpha = rand(1, 1)
disp(isequal((A + B)', A' + B'))
disp(isequal((A * B)', B' * A'))
transpose(inv(A)) - inv(transpose(A))
disp(isequal(alpha * (A'), (alpha * A)'))
