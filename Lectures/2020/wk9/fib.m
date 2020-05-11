clear all
N = 10;
seq = [1 1];

% for n = 3:N
%     seq = [seq (seq(n-1)+seq(n-2))];
% end

for n = 3:N
    seq(n) = seq(n-1)+seq(n-2);
end
