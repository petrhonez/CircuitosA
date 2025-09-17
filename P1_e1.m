% Dados
R1 = 49; 
R2 = 79; 
R3 = 16; 
R4 = 78;

G1 = 1/R1; G2 = 1/R2; G3 = 1/R3; G4 = 1/R4;

I = 3;

A = 10;

Gx = 1/(R3+R3);

% Divisor de corrente

Ix = I * (G2/(G1+G2+Gx));

% Mostrando cada corrente
fprintf('\n');
fprintf('Ix = %.2f A\n', Ix);

Vx = (Ix * A) * (R2/(R1+R2+R3+R4));

fprintf('\n');
fprintf('Vx = %.2f A\n', Vx);
