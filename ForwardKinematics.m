%% DH Parameter Table Definition

function Tfinal = ForwardKinematics(theta)

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
    
% Homogeneous Transformation Matrix Calculation
Tfinal = TransformationMatrixMultiplication(DH);
end
