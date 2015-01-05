function E=monod20e(I)
alpha=I(1);
%Tm=[200,220,240,260,280,300,320,340,360,380,400,420,440,460,480,500];
%ydata=[10,10.4,10.8,11.1,11.3,11.6,11.9,12.1,12.3,12.6,12.8,13,13.1...
%13.3,13.5,13.6];

Tmi=200;
ydata=[10,10.4,10.8,11.1,11.3,11.6,11.9,12.1,12.3,12.6,12.8,13,13.1...
13.3,13.5,13.6];

%--switch:--
AI=20;
%{AI is the additive interval (e.g. +20 in "200+20=220; 220+20=240...)}

%N is the number of data points
%[M,N]=size(Tm);
[M,N]=size(ydata);
Nloop=N-1;

for k=0:AI:Nloop*AI
    Tm(1,(k/20)+1)=Tmi+k;
end


E=0;
for i=1:N
    y=monod20([alpha,Tm(i)]);
    E=E+(y-ydata(i))^2;
end

