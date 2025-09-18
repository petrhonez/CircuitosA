% Dados
R1 = 39; 
R2 = 71; 
R3 = 92; 
R4 = 22;

G1 = 1/R1; G2 = 1/R2; G3 = 1/R3; G4 = 1/R4;

V =2;

% G = 9A/V;

% Matriz da malha de equações

M = [(R1+R2)  (-R4-R2)  (R3+R4); % SM
                                -10  9  1; % RF
                                                  -R2  (R2+R4)  (-R4)]; % M2


Mequal = [0;
             0;
                -2];

% Resolvendo o sistema de equações com 4 elementos

X = M \ Mequal;

% Extraindo as correntes e tensões da solução
I1 = X(1); I2 = X(2); I3 = X(3);

% Mostrando cada corrente
fprintf('\n');
fprintf('I1 = %.2f A\n', I1);
fprintf('I2 = %.2f A\n', I2);
fprintf('I3 = %.2f A\n', I3);
fprintf('\n');

%fprintf('Ix = %.2f A\n', Ix);


% Calcular tensão de cada resistor
V_R1 = I1 * R1;
V_R2 = R2 * (I2-I1);
V_R3 = I3 * R3;

% Mostrando a tensão em cada resistor
fprintf('V_R1 = %.2f V\n', V_R1);
fprintf('V_R2 = %.2f V\n', V_R2);
fprintf('V_R3 = %.2f V\n', V_R3);
fprintf('\n');
fprintf('------------------\n');
