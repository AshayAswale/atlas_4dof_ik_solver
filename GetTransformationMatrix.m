function transformationMatrix = GetTransformationMatrix ()
 quat             =  [  0.861  0.379 0.211   -0.266  ]; % w x y z
 rotationalMatrix = quat2rotm(quat);
 
 position         =  [ 0.374  ;  0.802  ;  0.551     ]; % x Y z
 constantRow      =  [ 0     0       0       1   ];
 
 transformationMatrix = [ rotationalMatrix position  ; constantRow ];

% angles = [0.2 -0.3 1 1];
% transformationMatrix = ForwardKinematics(angles);
end