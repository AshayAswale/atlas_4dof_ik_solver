function transformationMatrix = GetTransformationMatrix ()
%  rotation of the end-effector
 quat             =  [  0.861  0.379 0.211   -0.266  ]; % w x y z
 rotationalMatrix = quat2rotm(quat);
 
%  translation of the end-effector
 position         =  [ 0.374  ;  0.802  ;  0.551     ]; % x Y z
 
%  last row of the transformation matrix
 constantRow      =  [ 0     0       0       1   ];
 
%  creating the transformation matrix with
 transformationMatrix = [ rotationalMatrix position  ; constantRow ];
end
