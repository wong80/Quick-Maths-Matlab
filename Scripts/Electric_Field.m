%MATLAB Program to calculate Electric Field Strength for multiple charges
%to a relative position
close all;
clear all;
%constant declarations
k=9e9; %Columb's Law
total_field=0;
n =input("How many electric charges are there?: ");
%declaration of arrays
Q=zeros(1,n); %Value of charge
r=zeros(1,n); %distance between charge and position
vector=zeros(n,3); %relative vector position
target=zeros(1,n);%target position
magnitude=zeros(1,n); %Magnitude
unit_vector=zeros(1,n); %Unit vectors
corrected_vector=zeros(n,3);


%filling arrays
for i=1:1:3
    x=input("Enter the target vector in the order of x,y and z: ");
    target(i)=x;
end
for i=1:1:n
    fprintf("What is the of charge %d? in nano Columb: ",i);
    charge=input("");
    Q(i)=charge*10.^-9;
    for j=1:1:3
        position=input("Please input the vector in the order of x,y and z: ");
        vector(i,j)=position;
        
    end
end

%Find the corrected vector
for i=1:1:n
    for j=1:1:3
        corrected_vector(i,j)=vector(i,j)-target(1,j);
    end
end
%Calculating the magnitude
for i=1:1:n
    total=0;
    for j=1:1:3
        square=(corrected_vector(i,j))^2;
        total=total+square;
    end
    magnitude=sqrt(total);
    magnitude(i)=magnitude;
    r(i)=magnitude;
end

%Calculating the unit vector
for i=1:1:n
    for j=1:1:3
        unit_vector(i)=vector(i,j)./magnitude(i);
    end
end

%Calculating the electric field
for i=1:1:n
    electric_field= k*Q(i)/((r(i).^2)*unit_vector(1,n));
    total_field=total_field+electric_field;
end

disp(total_field)