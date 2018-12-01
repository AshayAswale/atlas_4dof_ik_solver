# atlas_4dof_ik_solver

### CalculateInverseKinematics.m
Main class to run,  
change the init_guess values to the last final position for better efficiency
  
### EquetionVector.m
Supplies the vector for equetions to be solve.
  
### InverseKinematics.m
Formulates the equetion vector for fmincon  
takes the difference of current position matrix element and required matrix element and feeds to the fmincon  
  
### ForwardKinematics.m
Calculates the FK for each iteration values of the solver  
  
### GetTransformationMatrix.m
**TO BE CHANGED TO GIVE THE VALUES OF REQUIRED FINAL REQUIRED MATRIX**  
  creates the final required transformation matrix for the calculation
