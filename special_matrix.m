%% MAL 111 MATLAB
% 13 Aug, 2015

%% starting process
% clear the screen
clr
% define n, the edge
n=5;
% define A, the matrix
A=ones(n,n);

%% looping process
for i=1:n
    for j=1:n
        %% assignment of elements
        % lower triangular section
        if i>j
            A(i,j)=-5;
            % main diagonal
        elseif i==j
            A(i,j)=2;
            % upper triangular section
        else
            A(i,j)=3;
        end
    end
end

%% displaying process
disp(A);