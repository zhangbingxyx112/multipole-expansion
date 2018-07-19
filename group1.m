element = {'E','2C3','3sigmav'};
element1 = {'E','C3','sigmav',};
n=10;
a={'e'};
R=cell(n+1,length(element)+1);
for i=1:n
    R{1,1}=0;
    R{i+1,1}=['R',num2str(i)];
end
for j=1:length(element)
    R{1,j+1}=element{j};
end
for i=2:n+1
    for j=2:length(element)+1
     R{i,2}='E';
     if j==3
         if mod(i-1,3)==0
          R{i,j}='E';
         else
            R{i,j}='C3' ;
         end
     end
     if j==4
         if mod(i-1,2)==0
          R{i,j}='E';
         else
            R{i,j}='sigmav' ;
         end
     end
    end
end

T=cell(n+2,length(element)+1);
 T{1,1}=0;
for i=1:n+1
    T{i+1,1}=['T',num2str(i-1)];
end
for j=1:length(element)
    T{1,j+1}=element1{j};
end
 T{2,2}=1;
 T{2,3}=1;
 T{2,4}=1;
 T{3,2}=3;
 T{3,3}=0;
 T{3,4}=1;
 %µÝÍÆ¹«Ê½
 for i=4:n+2
     for  j=2:length(element)+1
         x1=T{3,j};
         x2=T{i-1,j};
         x3=T{i-2,j};
         z1=R{3,j};
         id1=ismember(element1,z1);   
         c1=find(id1==1);
         y1=T{3,c1+1};
         z2=R{i-1,j};
         id2=ismember(element1,z2);   
         c2=find(id2==1);
         y2=T{3,c2+1};
          T{i,j}=(1/3)*(2*x1*x2+(1/2)*(y1-x1*x1)*x3+y2);
     end
 end
 
         
         