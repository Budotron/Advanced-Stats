coef=zeros(length(se), 6)
for i=1:6
    for j=1:length(B)
        coef(i, j)=std(se(:,1:j)/mean(se(:, 1:j)))
    end
end
    