%verifica se há sujeira na sala 
%retorna 1 se tem sujeira, caso contrário retorna 0
function objObtido = checkObj(sala)
  objObtido = 0;
  for i = 2:length(sala(:,1))-1
      pos1 = sala(i, 2:5)(1);
      pos2 = sala(i, 2:5)(2);
      pos3 = sala(i, 2:5)(3);
      pos4 = sala(i, 2:5)(4);
      if pos1 == 2 || pos2 == 2 || pos3 == 2 || pos4 == 2,
        objObtido = 1
      endif  
  endfor    
end