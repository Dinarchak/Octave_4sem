function kramer(A, B)

n = length(A)
sol = zeros(n, 1)
delta = det(A)

for i = 1:n
  C = A
  C(:, i) = B
  delta_i = det(C)
  sol(i) = delta_i / delta
endfor

printf('Решение:\nx = %d\ny = %d\nz = %d\n', sol)
end

