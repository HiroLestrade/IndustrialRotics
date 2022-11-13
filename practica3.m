d1 = 290;
a2 = 270;
a3 = 70;
d4 = 302;
d6 = 72;

syms th1 th2 th3 th4 th5 th6
th =    [th1 + 0,   th2 - 90, th3 + 0, th4 + 0, th5 + 0, th6 + 0];
d =     [ d1    0    0   d4    0   d6];
a =     [  0   a2   a3    0    0    0];
alpha = [-90 0 90 90 90 0];

H01 = robot.HRz(th(1))*robot.HTz(d(1))*robot.HTx(a(1))*robot.HRx(alpha(1));
H12 = robot.HRz(th(2))*robot.HTz(d(2))*robot.HTx(a(2))*robot.HRx(alpha(2));
H23 = robot.HRz(th(3))*robot.HTz(d(3))*robot.HTx(a(3))*robot.HRx(alpha(3));
H34 = robot.HRz(th(4))*robot.HTz(d(4))*robot.HTx(a(4))*robot.HRx(alpha(4));
H45 = robot.HRz(th(5))*robot.HTz(d(5))*robot.HTx(a(5))*robot.HRx(alpha(5));
H56 = robot.HRz(th(6))*robot.HTz(d(6))*robot.HTx(a(6))*robot.HRx(alpha(6));

H06 = H01*H12*H23*H34*H45*H56;

[R, T] = robot.H_DH(H06);

vpa(subs(T, {th1, th2, th3, th4, th5, th6}, {0, -90, 180, 0, 180, -180}));