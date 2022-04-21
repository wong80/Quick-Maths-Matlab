clear all;
close all;
n = input ("How many number of datas are present ? : ");
data=zeros(n,1);
frequency=zeros(n,1);
info=zeros(n,1);

flag=input("Input 1 for grouped data; 2 for ungrouped data");

if flag ==1


    
    
        for i=1:1:n   
            a=input("Enter the value: ");
            data(i)=a;
            b = input("Enter the frequency: ");
            frequency(i) = b;
        end
    
        freq_total=0;
            for i=1:1:n
                freq_total= freq_total+frequency(i,1);
            end
        
        
        x = zeros(freq_total,1);
        n_now = 1;
            for i=1:1:n
                value = data(i,1);
                for j=1:1:frequency(i,1)
                    x(n_now,1)=value;
                    n_now = n_now + 1;
        
                end
          
            end
            %Mean
Mean = mean(x);

%Mode
Mode = mode(x);

%Median
Median = median(x);

%Variance
Variance = var(x);

%Standard Deviation
Standard_deviation = sqrt(Variance);

%Lower Quartile
y = sort(x);
N = (freq_total+1)/4;
m2 = round(N);
if m2<N
    m2=m2+1;
end
m1 = m2-1;
Q1 = (y(m1,1)) .*(1/4) + (y(m2,1)).*(3/4);


%Upper quartile
N = 3*(freq_total+1)/4;
m2 = round(N);
if m2<=N
    m2=m2+1;
end
m1 = m2-1;
Q3 = (y(m1,1)).*(1/4) + (y(m2,1)).*(3/4);

%Interquartile range
Interquatile_range = Q3-Q1;
fprintf(" Mean:%f\n Mode: %f\n Median:%f\n Variance: %f\n Standard Deviation: %f\n Q1 :%f\n Q3: %f\n Interquartile range: %f\n",Mean,Mode,Median,Variance,Standard_deviation,Q1,Q3,Interquatile_range)

elseif flag == 2
     for i=1:1:n   
         a=input("Enter the value: ");
            info(i,1)=a;
    
     end
    %Mean
Mean = mean(info);

%Mode
Mode = mode(info);

%Median
Median = median(info);

%Variance
Variance = var(info);

%Standard Deviation
Standard_deviation = sqrt(Variance);

%Lower Quartile
y = sort(info);
N = (length(info)+1)/4;
m2 = round(N);
if m2<=N
    m2=m2+1;
end
m1 = m2-1;
Q1 = (y(m1,1)) .*(1/4) + (y(m2,1)).*(3/4);


%Upper quartile
N = 3*(length(info)+1)/4;
m2 = round(N);
if m2<N
    m2=m2+1;
end
m1 = m2-1;
Q3 = (y(m1,1)).*(1/4) + (y(m2,1)).*(3/4);

%Interquartile range5
Interquatile_range = Q3-Q1;
fprintf(" Mean:%f\n Mode: %f\n Median:%f\n Variance: %f\n Standard Deviation: %f\n Q1 :%f\n Q3: %f\n Interquartile range: %f\n",Mean,Mode,Median,Variance,Standard_deviation,Q1,Q3,Interquatile_range)

end

