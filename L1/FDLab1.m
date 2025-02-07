load("data.mat")
SortareDate = sort(data)

w = SortareDate(40) - SortareDate(1);
m = floor(sqrt(length(SortareDate)));
omega = w/(m - 1);

u1 = SortareDate(1) - omega/2;
u2 = u1 + omega;
u3 = u2 + omega;
u4 = u3 + omega;
u5 = u4 + omega;
u6 = u5 + omega;
u7 = u6 + omega;
um = SortareDate(length(SortareDate))+omega/2;

xc = (SortareDate(1) + SortareDate(40))/2
xc1 = (u1+u2)/2;
xc2 = (u2+u3)/2;
xc3 = (u3+u4)/2;
xc4 = (u4+u5)/2;
xc5 = (u5+u6)/2;
xc6 = (u6+u7)/2;

a1 = sum(SortareDate >= u1 & SortareDate < u2);
a2 = sum(SortareDate >= u2 & SortareDate < u3);
a3 = sum(SortareDate >= u3 & SortareDate < u4);
a4 = sum(SortareDate >= u4 & SortareDate < u5);
a5 = sum(SortareDate >= u5 & SortareDate < u6);
a6 = sum(SortareDate >= u6 & SortareDate < u7);

f1 = a1/length(SortareDate);
f2 = a2/length(SortareDate);
f3 = a3/length(SortareDate);
f4 = a4/length(SortareDate);
f5 = a5/length(SortareDate);
f6 = a6/length(SortareDate);

A1 = a1;
A2 = a1 + a2;
A3 = a1 + a2 + a3;
A4 = a1 + a2 + a3 + a4;
A5 = a1 + a2 + a3 + a4 + a5;
A6 = a1 + a2 + a3 + a4 + a5 + a6;

F1 = f1;
F2 = f1 + f2;
F3 = f1 + f2 + f3;
F4 = f1 + f2 + f3 + f4;
F5 = f1 + f2 + f3 + f4 + f5;
F6 = f1 + f2 + f3 + f4 + f5 + f6;

f1xc1 = f1 * xc1;
f2xc2 = f2 * xc2;
f3xc3 = f3 * xc3;
f4xc4 = f4 * xc4;
f5xc5 = f5 * xc5;
f6xc6 = f6 * xc6;

ma = mean(SortareDate);
Mg = geomean(SortareDate);
norm(SortareDate);
Msq = norm(SortareDate)/sqrt(length(SortareDate));
Mh = harmmean(SortareDate);
Me = median(SortareDate);

s = std(SortareDate);
DispersiaEstimata = 1/length(SortareDate) * sum((SortareDate-ma).^2);
AbatereaStandard = sqrt(DispersiaEstimata);

Q1 = prctile(SortareDate,25);
Q2 = prctile(SortareDate,50);
Q3 = prctile(SortareDate,75);

Cv = s/ma;
AsimetrieAbsoluta = abs(ma-Msq);
AsimetrieRelativa = AsimetrieAbsoluta / s;
Asq = 1-2*((Q2-Q1)/(Q3-Q1));



