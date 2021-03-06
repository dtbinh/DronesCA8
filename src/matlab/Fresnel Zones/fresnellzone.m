%% Fresnel zone calculations
% Without curvature of the earth

D = 10; f = 2.4;
r1 = 8.657*sqrt(D/f)
r1 = 17.31*sqrt(5*5/(f*10))
%%

D = 20; f = 2.4;
r2 = 8.657*sqrt(D/f)

D = 50; f = 2.4;
r3 = 8.657*sqrt(D/f)

disp(['Radius of first fresnel zone'])
disp(['r1 = ',num2str(r1),' m',' @10km'])
disp(['r2 = ',num2str(r2),'m',' @20km'])
disp(['r3 = ',num2str(r3),'m',' @50km'])
%% %Maximum obstruction height

D = 10; f = 2.4;
r = 8.657*sqrt(0.6*D/f)
max_obstruction = 20 - r
%% Fresnel zone calculations
% With curvature of the earth
D = 50; f = 2.4;
H = (1000* D^2)/(8*8504)

r = 8.657*sqrt(D/f)
r60 = 8.657*sqrt(0.6*D/f)
maximum = 77-r60
max_with_curv = maximum - 37
%%

D = 1:1:50
r = 8.657*sqrt(D/f)'

figure(1)
plot(D,r)
grid
xlabel('Distance (km)'); ylabel('Radius of fresnel zone (m)')
title('Title')