classdef Robot
    methods(Static)
        %**********************************************************
        function HR = HRx(theta)
            HR = round(vpa([1, 0,           0,          0;
                            0, cosd(theta), -sind(theta), 0;
                            0, sind(theta),  cosd(theta), 0;
                            0, 0,           0,          1]), 3);
        end
        %**********************************************************
        function HR = HRy(theta)
            HR = round(vpa([cosd(theta), 0, sind(theta), 0;
                             0,          1, 0,          0;
                           -sind(theta), 0, cosd(theta), 0;
                             0,          0, 0,          1]), 3);
        end
        %**********************************************************
        function HR = HRz(theta)
            HR = round(vpa([cosd(theta), -sind(theta), 0, 0;
                            sind(theta),  cosd(theta), 0, 0;
                                      0,            0,          1, 0;
                                      0,            0,          0, 1]), 3);
        end
        %**********************************************************
        function HT = HTx(d)
            HT = [1, 0, 0, d;
                  0, 1, 0, 0;
                  0, 0, 1, 0;
                  0, 0, 0, 1];
        end
        %**********************************************************
        function HT = HTy(d)
            HT = [1, 0, 0, 0;
                  0, 1, 0, d;
                  0, 0, 1, 0;
                  0, 0, 0, 1];
        end
        %**********************************************************
        function HT = HTz(d)
            HT = [1, 0, 0, 0;
                  0, 1, 0, 0;
                  0, 0, 1, d;
                  0, 0, 0, 1];
        end
        %**********************************************************
        function [R T] = H_DH(H)
            R = H(1:3,1:3);
            T = H(1:3,4);
        end
    end
end
