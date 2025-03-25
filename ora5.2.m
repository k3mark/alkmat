function T = diff_table(x,f)
    n = length(x);
    T = zeros(n,n+1);
    T(:,1:2) = [x(:),f(:)];
    for k = 1:n-1
        T(k+1:n, k+2) = (T(k+1:n,k+1)-T(k:n-1 ,k+1))/(T(k+1:n,1)-T(1:(n-k),1));
    end
end