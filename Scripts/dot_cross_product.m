%main function
function []=dot_cross_product
    [A,B]=fillarrays;
    C=dotproduct(A,B);
    D=crossproduct(A,B);
    disp(C)
    disp(D)
end
%function to input data into their arrays
function [A,B]=fillarrays
n=input("Enter how many columns: ");
A=zeros(1,n);
B=zeros(1,n);
    for i=1:1:n
        a=input("input in values for first array in order: ");
        A(1,i)=a;

    end
    for i=1:1:n
        b=input("input in values for second array in order: ");
        B(1,i)=b;
    end


end 
function [C]=dotproduct(A,B)
  % This function finds the dot product of A . B
    C=dot(A,B);
end

function [D]=crossproduct(A,B)
  % This function finds the cross product of A x B
    D=cross(A,B);
end
