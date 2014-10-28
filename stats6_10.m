clc; clear all;
data=[1.2, 3.5, 4.7, 7.3, 8.6, 12.4, 13.8, 18.1];%obtains the values of the artificial data set
B=[25, 100, 200, 500, 1000, 2000];%vector of the number of replications
n=length(data)
stat=zeros(1, 25);
sample=zeros(1, n);
for i=1:n
    choose=round(((n-1)*rand(1,n))+1)
    for j=1:n
    sample(j)=data(choose(j))
    end;
    stat(i)=mean(sample) %fill stat array with bootstrap estimations
end;


% reps=10;
% se=zeros(length(data), reps);
% thetahat=trimmean(data, 50);


%for i=1:B(1, :)
    %for j=1:reps
%         r=randsample(data, reps, true)
%         se(i,j)=trimmean(r, 50)
%     end
% end