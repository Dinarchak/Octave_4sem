function gaus(A, B)
  n = length(A)

for i = 1 : n - 1
  for j = i + 1:n
    if get_non_zero_row(i, i, A, B)
      c = A(j, i) / A(i, i)
      A(j, :) = A(j, :) - c * A(i, :)
      B(j, 1) = B(j, 1) - c * B(i, 1)
    endif
  endfor
endfor



disp(A)
ind_count = 0
while all(A(n - ind_count, :) == 0)
  ind_count = ind_count + 1
endwhile

ans = zeros(n, ind_count)
for i = 1:ind_count
  ans(n + 1 - i, i) = 1
endfor

for i = 1 : ind_count
  for j = n - ind_count:-1:1
      ans(j, i) = -dot(A(j, :)(j + 1:end), (ans')(i, :)(j + 1:end)) / A(j, j)
  endfor
endfor
disp('Фундаментальная система решений:')
ans
end
