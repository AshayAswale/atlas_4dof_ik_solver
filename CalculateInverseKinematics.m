tic % to measure time of calculation

% defining the bounds for the actuator motors
lower_bound = [  -pi/2,  -pi/2,  0,  0   ]; 
upper_bound = [  0.78,    pi/2,  pi, 2.32];

rng default % reproducible initial point

initial_guess = [0 0 0 0];

% solve non-linear constrained equetion with the interior-point method
x = fmincon(@(x)0,initial_guess,[],[],[],[],lower_bound,upper_bound,@EquetionsVector)

timeElapsed = toc