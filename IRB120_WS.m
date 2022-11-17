th1 = -165:165;
th2 = -110:110;
th3 = -90:70;

T = [];

%for i = 1:10:length(th1)
    for j = 1:10:length(th2)
        for k = 1:10:length(th3)
            [R, point] = IRB120(0, th2(j), 0, 0, 0, 0);
            T = [T point];
        end
    end
%end

plot3(T(1,:), T(2,:), T(3,:))
grid on