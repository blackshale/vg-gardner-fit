function [ag,theta,kr,kr_vg] = fun_vg2gd(av,n,theta_s,theta_r,psi)


% ----linear descrete GD model
m = 1 - 1/n;
THET = (1 + (av*(abs(psi))).^n).^(-m);
kr_vg = THET.^0.5.*(1 - (1 - THET.^(1/m)).^m).^2;
theta = theta_r + THET*(theta_s - theta_r);


ag = log(kr_vg)./psi;
kr = exp(ag*psi);

end

