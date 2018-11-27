function eqns = InverseKinematics(theta)
%   Get the forward Kinematics matrix for the thetas
    inv_eqns = ForwardKinematics(theta);
   
%   Get the actual end-effector position and orientation
    transformationMatrix = GetTransformationMatrix();
    
%   cutting down the last row of the transformation matrix, (0 0 0 1)
    inv_eqns = inv_eqns(1:3,:);
    transformationMatrix = transformationMatrix(1:3,:);
    
%   creating the equeation vector of all the possible equetions.
    eqns = double( inv_eqns(:) - transformationMatrix(:));
end