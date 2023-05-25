%{
% Sistema 1
%Limpieza de pantalla
clear all
close all
clc 

%Calculamos las matrices de transformación homogénea
%Origen de la base
H0=SE3;
%Rotación de -90° en "z" sin translación
H1=SE3(rotz(-pi/2), [0 0 0]);
%Rotación de 90° en "x" con translación de 1 unidad en "z"
H2=SE3(rotx(pi/2), [0 0 1]);
%No hay rotación, pero con translación de 1 unidad en "x"
H3=SE3(rotx(0), [1 0 0]);
%No hay rotación, pero con translación de 1 unidad en "x"
H4=SE3(rotx(0), [1 0 0]);
%No hay rotación, pero con translación de 1 unidad en "x"
H5=SE3(rotx(0), [1 0 0]);

%Multiplicacion de las matrices
H20= H1*H2;
H30= H20*H3;
H40= H30*H4;
H50= H40*H5;

%Se define la matriz de la forma geométrica que se recorre
x=[0 0 0 0 0 ];
y=[0 0 -1 -2 -3 ];
z=[0 1 1 1 1 ];
plot3(x, y, z,'LineWidth', 1.5); axis([-1 1 -4 1 -1 2]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-1 1 -4 1 -1 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-1 1 -4 1 -1 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H1, H20,'rgb','axis', [-1 1 -4 1 -1 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H20, H30,'rgb','axis', [-1 1 -4 1 -1 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H30, H40,'rgb','axis', [-1 1 -4 1 -1 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H40, H50,'rgb','axis', [-1 1 -4 1 -1 2])

%Se despliega la matriz de transformación homogénea T
disp(H50)
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{%
% Sistema 2
%Limpieza de pantalla
clear all
close all
clc 

%Calculamos las matrices de transformación homogénea
%Origen de la base
H0=SE3;
%Rotación de -90° en "z" sin translación
H1=SE3(rotz(-pi/2), [0 0 0]);
%Rotación de 90° en "x" con translación de 2 unidades en "z"
H2=SE3(rotx(pi/2),  [0 0 2]);
%Rotación de 90° en "z" con translación de 2 unidades en "y"
H3=SE3(rotz(pi/2),  [0 2 0]);
%Rotación de -90° en "z" con translación de -2 unidades en "y"
H4=SE3(rotz(-pi/2), [0 -2 0]);
%Rotación de 90° en "z" y rotación de 90° en "x" con translación 
% de -1 unidad en"y"
H5=SE3(rotz(pi/2) * rotx(pi/2),  [1 0 0]);
%No hay rotación, con translación de 1 unidad en "z"
H6=SE3(rotx(0),     [0 0 1]);

%Multiplicación de las matrices
H20= H1*H2;
H30= H20*H3;
H40= H30*H4;
H50= H40*H5;
H60= H50*H6;

%Se define la matriz de la forma geométrica que se recorre
x=[0 0 0  0  0  0];
y=[0 0 0 -2 -3 -4];
z=[0 2 4  4  4  4];
plot3(x, y, z,'LineWidth', 1.5); axis([-1 1 -5 1 0 6]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-1 1 -5 1 0 6])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-1 1 -5 1 0 6])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H1, H20,'rgb','axis', [-1 1 -5 1 0 6])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H20, H30,'rgb','axis', [-1 1 -5 1 0 6])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H30, H40,'rgb','axis', [-1 1 -5 1 0 6])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H40, H50,'rgb','axis', [-1 1 -5 1 0 6])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H50, H60,'rgb','axis', [-1 1 -5 1 0 6])

%Se despliega la matriz de transformación homogénea T
disp(H60)
%}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{
% Sistema 3
%Limpieza de pantalla
clear all
close all
clc 

%Calculamos las matrices de transformación homogénea
%Origen de la base
H0=SE3;
%Rotación de -180° en "z" sin translación
H1=SE3(rotz(-pi), [0 0 0]);
%No hay rotación, pero con translación de -1 unidades en "y"
H2=SE3(rotz(0),  [0 -1 0]);
%No hay rotación, pero con translación de -2 unidades en "y"
H3=SE3(rotz(0),  [0 -2 0]);
%No hay rotación, pero con translación de 3 unidades en "z"
H4=SE3(rotz(0), [0 0 3]);
%No hay rotación, pero con translación de -1 unidades en "x"
H5=SE3(rotz(0),  [-1 0 0]);

%Multiplicación de las matrices
H20= H1*H2;
H30= H20*H3;
H40= H30*H4;
H50= H40*H5;

%Se define la matriz de la forma geométrica que se recorre
x=[0 0 0  0  1  ];
y=[0 1 3  3  3  ];
z=[0 0 0  3  3  ];
plot3(x, y, z,'LineWidth', 1.5); axis([-2 2 -2 5 0 5]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-2 2 -2 5 0 5])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-2 2 -2 5 0 5])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H1, H20,'rgb','axis', [-2 2 -2 5 0 5])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H20, H30,'rgb','axis', [-2 2 -2 5 0 5])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H30, H40,'rgb','axis', [-2 2 -2 5 0 5])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H40, H50,'rgb','axis', [-2 2 -2 5 0 5])

%Se despliega la matriz de transformación homogénea T
disp(H50)
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{
% Sistema 4
%Limpieza de pantalla
clear all
close all
clc 

%Calculamos las matrices de transformación homogénea
%Origen de la base
H0=SE3;
%Rotación de 180° en "y" y de -90° en "z" sin translación
H1=SE3(roty(pi)*rotz(-pi/2), [0 0 0]);
%No hay rotación, pero con translación de 2 unidades en "z" y 0.5 unidades
%en "x"
H2=SE3(rotz(0),  [0.5 0 2]);
%Rotación de -90° en "x" y 90° en "y" sin translación
H3=SE3(rotx(-pi/2)*roty(pi/2),  [0 0 0]);
%Rotación de -90° en "z" y de 90° en "x" con translación de -3 unidades en
%"y" y -0.75 unidades en "z"
H4=SE3(rotz(-pi/2)*rotx(pi/2), [0 -3 -0.75]);
%Rotación de 180° en "z" y rotación de 90° en "x" con translación 
% de 1 unidad en"x" y -0.25 unidedes en "y"
H5=SE3(rotz(pi)*rotx(pi/2),  [1 -0.25 0]);
%No hay rotación, con translación de -1 unidad en "x" y 0.5 en "z"
H6=SE3(rotz(0),     [-1 0 0.5]);

%Multiplicación de las matrices
H20= H1*H2;
H30= H20*H3;
H40= H30*H4;
H50= H40*H5;
H60= H50*H6;

%Se define la matriz de la forma geométrica que se recorre
x=[0  0    0    0];
y=[0 -0.5  0.5  0];
z=[0 -2   -6   -7];
plot3(x, y, z,'LineWidth', 1.5); axis([-1 1 -2 2 -9 2]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-1 1 -2 2 -9 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-1 1 -2 2 -9 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H1, H20,'rgb','axis', [-1 1 -2 2 -9 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H20, H30,'rgb','axis', [-1 1 -2 2 -9 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H30, H40,'rgb','axis', [-1 1 -2 2 -9 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H40, H50,'rgb','axis', [-1 1 -2 2 -9 2])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H50, H60,'rgb','axis', [-1 1 -2 2 -9 2])

%Se despliega la matriz de transformación homogénea T
disp(H60)
%}