function eqns = InverseKinematics(theta)
    inv_eqns = ForwardKinematics(theta);
    
    transformationMatrix = GetTransformationMatrix();
    
    inv_eqns = inv_eqns(1:3,:);
    transformationMatrix = transformationMatrix(1:3,:);

    eqns = double( inv_eqns(:) - transformationMatrix(:));
end