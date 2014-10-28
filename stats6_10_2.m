clc; 
data=[1.2, 3.5, 4.7, 7.3, 8.6, 12.4, 13.8, 18.1];%dataset
B=[25, 100, 200, 500, 1000, 2000];%vector of the number of replications
n=length(data);
rep=10;
se=zeros(rep, length(B)); %initialize the matrix of standard errors
for i=1:rep 
    for j=1:length(B)
        X=zeros(n, B(j)); %initialize the matrix X=(x*^B)
        stat=zeros(1,B(j));
        for k=1:B(j)
            X(:, k)=randsample(data, n, true); %populate X with a random sample from data
            stat(1, k)=trimmean(X(:,k), 50);  %obtain the 25% trimmed mean on each column of X
        end
        se(i, j)=std(stat);%populates the matrix of standard errors
    end
end
se