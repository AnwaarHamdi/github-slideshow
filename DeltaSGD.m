%page52
function W = DeltaSGD(W, X, D)
alpha = 0.9;

N = 4;
for K = 1:N
    x = X(K, :)';
    d= D(K);
    
    v =W*x; 
    y=  Sigmoid(v);
    
    e =d-y;
    delta = y*(1-y)*e;
    
    dW = alpha*delta*x;   % delta rule 
    
    W(1) = W(1) + dW(1);
    W(2) = W(2) + dW(2);
    W(3) = W(3) + dW(3);
 end
end

