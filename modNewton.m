function [B,flag]=modNewton(H,beta)
 [V,D] = eig(H);
 flag=1;
 if  norm(H)==0
     e=1;
 else
     e=norm(H)/beta;
 end
  for i=1:size(H,1)
      if abs(D(i,i))>=e
          X(i,i)=abs(D(i,i));
      else
          X(i,i)=e;
      end
  end
  if X==D
      flag=0;
  end
  B=V*X*V';
end
          