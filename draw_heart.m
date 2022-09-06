clc %¸ü¶àÎÄÕÂ£¬https://zhuanlan.zhihu.com/p/345799328
clear all
close all
num = 100;
a = linspace(0, 2*pi, num);
b = linspace(-0.5*pi, 0.5*pi, num);
[a, b] = meshgrid(a, b);
r = 5;
c = sqrt(abs(a - pi))*1.5;
X = r*cos(b).*sin(a).*c;
Z = -r*cos(b).*cos(a).*c;
Y = r.*sin(b)*0.75;
for i = 1:num
    for j =1:num
        C(i,j,1) = Z(i, j)/(max(max(Z))-min(min(Z))) + abs(min(min(Z)))/(max(max(Z))-min(min(Z)));
        C(i,j,2) = 0;
        C(i,j,3) = 0;
    end
end
m = mesh(X, Y, Z, C);
axis('equal', 'tight')
m.FaceColor = 'flat';
m.FaceAlpha = 0.5;
m.EdgeColor = 'none';
