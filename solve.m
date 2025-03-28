function solve(A, B)

if rank(A) == rank(cat(2, A, B))
  if det(A) != 0
    disp('Система имеет единственное решение')
    kramer(A, B)
  else
    disp('Система имеет бесконечно много решений')
    gaus(A, B)
  endif
else
  disp('Система не имеет решений')
endif

end
