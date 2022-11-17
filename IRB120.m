function [R, T] = IRB120(th1, th2, th3, th4, th5, th6)

    %d1 = 290;
    %a2 = 270;
    %a3 = 70;
    %d4 = 302;
    %d6 = 72;

    th =    [     th1, -th2-270,    -th3,     th4,    -th5,th6 + 180];
    d =     [     290         0        0      302        0        72];
    a =     [       0       270       70        0        0         0];
    alpha = [      90         0       90      -90       90         0];

    H01 = Robot.HRz(th(1))*Robot.HTz(d(1))*Robot.HTx(a(1))*Robot.HRx(alpha(1));
    H12 = Robot.HRz(th(2))*Robot.HTz(d(2))*Robot.HTx(a(2))*Robot.HRx(alpha(2));
    H23 = Robot.HRz(th(3))*Robot.HTz(d(3))*Robot.HTx(a(3))*Robot.HRx(alpha(3));
    H34 = Robot.HRz(th(4))*Robot.HTz(d(4))*Robot.HTx(a(4))*Robot.HRx(alpha(4));
    H45 = Robot.HRz(th(5))*Robot.HTz(d(5))*Robot.HTx(a(5))*Robot.HRx(alpha(5));
    H56 = Robot.HRz(th(6))*Robot.HTz(d(6))*Robot.HTx(a(6))*Robot.HRx(alpha(6));

    H06 = H01*H12*H23*H34*H45*H56

    [R, T] = Robot.H_DH(H06);
end

