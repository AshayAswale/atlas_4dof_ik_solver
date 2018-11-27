function Ai = TransformationMatrix(DH,i)
% Transformation matrix
   Ai= [cos(DH(i,1)) -sin(DH(i,1))*cos(DH(i,4))  sin(DH(i,1))*sin(DH(i,4)) (DH(i,3))*cos(DH(i,1)) 
        sin(DH(i,1))  cos(DH(i,1))*cos(DH(i,4)) -cos(DH(i,1))*sin(DH(i,4)) (DH(i,3))*sin(DH(i,1)) 
            0                 sin(DH(i,4))              cos(DH(i,4))            (DH(i,2))         
            0                     0                          0                      1            ];
end

