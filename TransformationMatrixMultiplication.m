function Tfinal = TransformationMatrixMultiplication(DH)

Tfinal = eye([4,4]); %Defining the unit matrix Tfinal

for i=1:length(DH)
   Ai= TransformationMatrix(DH,i); % Getting each 'A' matrix 
   Tfinal = Tfinal*Ai;             % Multiplying each 'A' matrices
end

end

