function [c,ceq] = EquetionsVector(x)

c = []; % no nonlinear inequality
ceq = InverseKinematics(x); % the fsolve objective is fmincon constraints
end