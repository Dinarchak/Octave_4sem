function res = get_non_zero_row(row, col, A, B)
  it = row
  while it <= size(A)(1) && A(it, col) == 0
    it = it + 1
  endwhile
  if it == size(A)(1) + 1
    res = false
  else
    a1 = A(row, :)
    b1 = B(row, 1)
    A(row, :) = A(it, :)
    A(it, :) = a1
    B(row, 1) = B(it, 1)
    B(it, 1) = b1
    res = true
  endif
end

