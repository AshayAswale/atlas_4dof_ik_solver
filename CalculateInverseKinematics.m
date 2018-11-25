tic

lower_bound = [  -pi/2,  -pi/2,  0,  0   ]; % lower bound constraint
upper_boubd = [  0.78,    pi/2,  pi, 2.32];
rng default % reproducible initial point
initial_guess = [0 0 0 0];
opts = optimoptions(@fmincon,'Algorithm','interior-point','Display','off');
x = fmincon(@(x)0,initial_guess,[],[],[],[],lower_bound,upper_boubd,@fminconstr,opts)

timeElapsed = toc