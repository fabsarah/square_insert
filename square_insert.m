function outmat = square_insert(input,missing)
%% Step 1: Get an index!
target = length(input)+length(missing);
index = nan(target,1);%initialize an index vector the size we want
for i = 1:target
    if sum(i==missing)>0%if the index is one of the missing values...
        index(i) = nan;%nan it!
    else
    index(i) = i;%otherwise, add it to the index
    end
end
%% Step 2: Get the rows the right shape!
tempmat = nan(target,length(input));%initialize a matrix with the correct # of rows
counter = 0;%start a counter. This will help us when the index gets out of order
for i = 1:target
    if isnan(index(i))%if there's a nan in the index...
        tempmat(i,:) = 0;%put a 0 in the row (can change it to NAN or another value)
        counter = counter+1;%then add to our counter so that when we get to the next non-nan...
    else
        tempmat(i,:) = input(i-counter,:);%we can skip back!
    end
end
%% Step 3: Get the columns the right shape!
%Now do that all over again, but with the columns this time
tempmat2 = nan(target,target);
counter = 0;
for i = 1:target
    if isnan(index(i))
        tempmat2(:,i) = 0;
        counter = counter+1;
    else
        tempmat2(:,i) = tempmat(:,i-counter);
    end
end
outmat = tempmat2;
    