%% DH Parameter Table Definition

function Tfinal = ForwardKinematics(theta)
% Defining the variable names for future use.
% syms theta_1a = fsolve(@inverse_calculation, theta_2 theta_3 theta_4

    theta_1 = theta(1);
    theta_2 = theta(2);
    theta_3 = theta(3);
    theta_4 = theta(4);
    
% Defining the DH parameter table, with values.
%       theta       d       a       alpha
DH = [    0       0.690   0.126    -pi/2
          0       0.226     0       pi/2
        theta_1  -0.245     0       pi/2
         pi/2    -0.110     0       pi/2
        theta_2     0    -0.016     pi/2
        theta_3   0.306   0.009    -pi/2
%         theta_4     0    -0.009     pi/2
%         0         0.300     0         0 
     theta_4-pi/2   0     0.300    -pi/2
         -pi/2    0.009     0         0  ];
    
 
 %% Homogeneous Transformation Matrix Calculation


A=cell(4,1);

% For all the 6 axes of the robot.
for i=1:8
   Ai= [cos(DH(i,1)) -sin(DH(i,1))*cos(DH(i,4))  sin(DH(i,1))*sin(DH(i,4)) (DH(i,3))*cos(DH(i,1)) 
        sin(DH(i,1))  cos(DH(i,1))*cos(DH(i,4)) -cos(DH(i,1))*sin(DH(i,4)) (DH(i,3))*sin(DH(i,1)) 
            0                 sin(DH(i,4))              cos(DH(i,4))            (DH(i,2))         
            0                     0                          0                      1            ];
        
%   Storing each matrix of A into the cell.
    A{i} = Ai; 
end

%% Composite Transformation Matrix Calculation
global Tindi;
% Creating an identity matrix Tfinal for calculation.
Tfinal = eye([4,4]);
Tindi = cell(4,1);

 for i=1:8
%      Multiplying all 'A' matrix.
     Tfinal = Tfinal*A{i};
%      Tindi{i} = simplify(Tfinal);
     Tindi{i} = (Tfinal);
     
 end;
 
%%  Tfinal
% Tfinal = simplify(Tfinal);
end