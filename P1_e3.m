% Dados
R1 = 5; 
R2 = 9; 
R3 = 2; 
R4 = 2;

G1 = 1/R1; G2 = 1/R2; G3 = 1/R3; G4 = 1/R4;

V = 9;

% A = 5V/A;

% Matriz dos nós com G

N = [(G3+G1)  (-G1-G2)  (G2+G4); % SN
                                1  0  -1; % RF
                                              (-G1+1)  (G1+G2-1)  (-G2)];% N2

Nequal = [0;
            V;
            0];

% Resolvendo o sistema de equações
Y = N \ Nequal;

% Extraindo as correntes e tensões da solução
Va = Y(1); Vb = Y(2); Vc = Y(3);

%PARA EQ

a = (G3+G1);
b = (-G1-G2);
c = (G2+G4);

fprintf('\n');
fprintf('SN = %.2f V1 + %.2f V2 + %.2f V3\n', a, b, c);

d = (-G1+1);
e = (G1+G2-1);
f = (-G2);

fprintf('\n');
fprintf('N2 = %.2f V1 + %.2f V2 + %.2f V3\n', d, e, f);

fprintf('------------------\n');

% Mostrando cada corrente
fprintf('\n');
fprintf('V1 = %.2f V\n', Va);
fprintf('V2 = %.2f V\n', Vb);
fprintf('V3 = %.2f V\n', Vc);
fprintf('------------------\n');

