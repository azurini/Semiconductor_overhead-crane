figure('numbertitle','off','name','天车路径规划','MenuBar','none')
%%代码重构 v3.1
v=30; %运行速度
L=10;
r=2;

% axis([0,2*r+L,0,2*r])
ox1=r;
oy1=r;
ox2=r+L;
oy2=r;

% 路径元素
x1=0:0.015*v:L;   %横 左－>右 为正
y1=ones(size(x1));

thita=0:0.015*v/r:pi;   %半环 顺时针 为正
x2=sin(thita)*r+r/2;
y2=cos(thita)*r;

y3=0:0.015*v:L;
x3=ones(size(y3));  %竖 下－>上 为正

x4=0:0.015*v:r;   %桥 左－>右 为正
y4=ones(size(x4));

x5=0:0.015*v:2*r;   %桥 下－>上 为正
y5=ones(size(x5));

x6=0:0.015*v:r;   %桥（斜） 左－>右 为正
y6=0:0.015*v:r;


%% 整体路径 storker为（1，8）
xway0=sin(thita)*3+1;
yway0=cos(thita)*3+8;
yway1=21:-0.015*v:-230;
xway1=ones(size(21:-0.015*v:-230));
yway2=23:-0.015*v:-230;
xway2=ones(size(23:-0.015*v:-230))-2;
yway3=20:-0.015*v:-210;
xway3=ones(size(20:-0.015*v:-210))-14;
yway4=20:-0.015*v:-210;
xway4=ones(size(20:-0.015*v:-210))-16;
yway5=23:-0.015*v:-213;
xway5=ones(size(23:-0.015*v:-213))-18;
xway6=[1:0.015*v:40                sin(thita)*2+40  40:-0.015*v:1];
yway6=[ones(size(1:0.015*v:40))-10 cos(thita)*2-11  ones(size(40:-0.015*v:1))-14];
xway7=[1:0.015*v:40                sin(thita)*2+40  40:-0.015*v:1];
yway7=[ones(size(1:0.015*v:40))-40 cos(thita)*2-41  ones(size(40:-0.015*v:1))-44];
xway8=[-17:-0.015*v:-60                -sin(thita)*2-60  -60:0.015*v:-17];
yway8=[ones(size(-17:-0.015*v:-60))-8  -cos(thita)*2-5  ones(size(-60:0.015*v:-17))-4];
xway9=[-17:-0.015*v:-60                -sin(thita)*2-60  -60:0.015*v:-17];
yway9=[ones(size(-17:-0.015*v:-60))-52 -cos(thita)*2-49  ones(size(-60:0.015*v:-17))-48];
yway10=-9:-0.015*v:-13;
xway10=ones(size(-9:-0.015*v:-13))+3;
yway11=-39:-0.015*v:-43;
xway11=ones(size(-39:-0.015*v:-43))+3;
yway12=-3:-0.015*v:-7;
xway12=ones(size(-3:-0.015*v:-7))-21;
yway13=-47:-0.015*v:-51;
xway13=ones(size(-47:-0.015*v:-51))-21;
xway14=-17:0.015*v:10;
yway14=ones(size(-17:0.015*v:10))+22;
xway15=1:0.015*v:10;
yway15=ones(size(1:0.015*v:10))+20;
xway16=-15:0.015*v:-13;
yway16=ones(size(-15:0.015*v:-13))+19;
xway17=-13:0.015*v:-1;
yway17=ones(size(-13:0.015*v:-1))-6;
yway18=21:0.015*v:23;
xway18=ones(size(21:0.015*v:23))+9;
xway19=-13:0.015*v:-1;
yway19=ones(size(-13:0.015*v:-1))-106;
xway20=-13:0.015*v:-1;
yway20=ones(size(-13:0.015*v:-1))-110;
xway21=-13:0.015*v:-1;
yway21=ones(size(-13:0.015*v:-1))-164;
xway22=sin(thita)*5+1;
yway22=cos(thita)*5-145;
xway23=-17:0.015*v:-1;
yway23=ones(size(-17:0.015*v:-1))-214;
xway24=-15:0.015*v:-13;
yway24=ones(size(-17:0.015*v:-15))-211;
%桥 29个
xway25=-13:0.015*v:-1;
yway25=ones(size(-13:0.015*v:-1))-6;
yway26=21:-0.015*v:-230;
xway26=ones(size(21:-0.015*v:-230));

%% 小车轨迹
xboll1=[sin(thita)*3+1 ones(size(6:-0.015*v:-40)) xway7 ones(size(-44:-0.015*v:-140))];
yboll1=[cos(thita)*3+8 6:-0.015*v:-40             yway7 -44:-0.015*v:-140];
xboll2=[ones(size(-230:0.015*v:22))-2  -2:0.015*v:10];
yboll2=[-230:0.015*v:22                ones(size(-2:0.015*v:10))+22];
xboll3=[ones(size(-220:0.015*v:22))-2  -2:0.015*v:10];
yboll3=[-220:0.015*v:22                ones(size(-2:0.015*v:10))+22];
xboll4=[ones(size(-213:0.015*v:-52))-18 xway9  ones(size(-52:0.015*v:23))+23  -17:-0.015*v:10 ];
yboll4=[-213:0.015*v:-52                yway9  -52:0.015*v:23                 ones(size(-17:-0.015*v:10))+23];
xboll5=[ones(size(-210:0.015*v:-16))-16 -x6-16 ones(size(-16:0.015*v:-8))-18  xway8];
yboll5=[-210:0.015*v:-16                y6-17  -16:0.015*v:-8                 yway8];
xboll6=[xway6 ones(size(-13:-0.015*v:-230))];
yboll6=[yway6 -13:-0.015*v:-230];
xboll=[xway9 ones(size(-48:0.015*v:23))-18 -17:0.015*v:10                ones(size(23:-0.015*v:21))+9 10:-0.015*v:1                xway1];
yboll=[yway9 -48:0.015*v:23                ones(size(-17:0.015*v:10))+22 23:-0.015*v:21               ones(size(10:-0.015*v:1))+20 yway1];

%% 路径制作
plot(xway0,yway0);hold on;
plot(xway1,yway1);hold on;
plot(xway2,yway2);hold on;
plot(xway3,yway3);hold on;
plot(xway4,yway4);hold on;
plot(xway5,yway5);hold on;
plot(xway6,yway6);hold on;
plot(xway7,yway7);hold on;
plot(xway8,yway8);hold on;
plot(xway9,yway9);hold on;
plot(xway10,yway10);hold on;
plot(xway11,yway11);hold on;
plot(xway12,yway12);hold on;
plot(xway13,yway13);hold on;
plot(xway14,yway14);hold on;
plot(xway15,yway15);hold on;
plot(xway16,yway16);hold on;
plot(xway17,yway17);hold on;
plot(xway18,yway18);hold on;
plot(xway19,yway19);hold on;
plot(xway20,yway20);hold on;
plot(xway21,yway21);hold on;
plot(xway22,yway22);hold on;
plot(xway23,yway23);hold on;
plot(xway24,yway24);
%桥 29个
hold on;
plot(xway25,yway25);hold on;
plot(x4-1,y4-30);hold on;
plot(x4-1,y4-32);hold on;
plot(x4-1,y4-100);hold on;
plot(x4-1,y4-102);hold on;
plot(x4-1,y4-130);hold on;
plot(x4-1,y4-170);hold on;
plot(x4-1,y4-172);
hold on;
plot(x4-15,y4-26);hold on;
plot(x4-15,y4-24);hold on;
plot(x4-15,y4-90);hold on;
plot(x4-15,y4-88);hold on;
plot(x4-15,y4-150);hold on;
plot(x4-15,y4-148);

hold on;
plot(x6-17,y6+13);hold on;
plot(x6-17,-y6+6);hold on;
plot(x6-17,y6-33);hold on;
plot(x6-17,-y6-16);hold on;
plot(x6-17,y6-70);hold on;
plot(x6-17,-y6-62);hold on;
plot(x6-17,y6-94);hold on;
plot(x6-17,-y6-82);hold on;
plot(x6-17,y6-130);hold on;
plot(x6-17,-y6-122);hold on;
plot(x6-17,y6-154);hold on;
plot(x6-17,-y6-142);hold on;
plot(x6-17,y6-180);hold on;
plot(x6-17,-y6-172);hold on;
plot(x6-17,-y6-202);



%% 文字说明
%text(0,-2,['长度L=' num2str(L) ',半径r=' num2str(r) ',速度v=' num2str(v)]);
text(15,7,['WFS storker']);
text(-90,-6,['DIFF']);
text(-90,-50,['WET']);
text(57,-43,['离子加工']);
text(57,-12,['离子加工']);
text(15,-144,['storker']);
text(85,-144,['说明：红色点表示天车载物未进入工序中；']);
text(85,-154,['蓝色点表示天车载物进入工序中;']);
text(85,-164,['黑色点表示天车载物已完成所有工序。']);

%% 小车运行
axis equal
set(gca,'Visible','off')

% 天车个数 及参数设置
hm1=line('color','red','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','red','marker','.','markersize',28);
hm=line('color','red','marker','.','markersize',28);

% 阶段性表述
for i=1:100
    try
        set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
        set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
        set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
        set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
        set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
        set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
        set(hm,'xdata',xboll(i),'ydata',yboll(i));
        pause(0.0001)
        drawnow
    catch
        return
    end
end
set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');set(hm,'Visible','off');

%时序二
hm1=line('color','red','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','blue','marker','.','markersize',28);
hm=line('color','red','marker','.','markersize',28);
for i=100:200
    try
        set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
        set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
        set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
        set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
        set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
        set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
        set(hm,'xdata',xboll(i),'ydata',yboll(i));
        pause(0.0001)
        drawnow
    catch
        return
    end
end
set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');set(hm,'Visible','off');

%时序三
hm1=line('color','blue','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','blue','marker','.','markersize',28);
hm=line('color','red','marker','.','markersize',28);
for i=200:300
    try
        set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
        set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
        set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
        set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
        set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
        set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
        set(hm,'xdata',xboll(i),'ydata',yboll(i));
        pause(0.0001)
        drawnow
    catch
        return
    end
end
set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');set(hm,'Visible','off');

%时序四
hm1=line('color','blue','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','blue','marker','.','markersize',28);
hm=line('color','red','marker','.','markersize',28);
for i=300:400
    try
        set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
        set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
        set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
        set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
        set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
        set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
        set(hm,'xdata',xboll(i),'ydata',yboll(i));
        pause(0.0001)
        drawnow
    catch
        return
    end
end
set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');set(hm,'Visible','off');

%时序五
hm1=line('color','blue','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','blue','marker','.','markersize',28);
hm=line('color','red','marker','.','markersize',28);
for i=400:500
    try
        set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
        set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
        set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
        set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
        set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
        set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
        set(hm,'xdata',xboll(i),'ydata',yboll(i));
        pause(0.0001)
        drawnow
    catch
        return
    end
end
set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');set(hm,'Visible','off');

%时序六
hm1=line('color','blue','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','black','marker','.','markersize',28);
hm6=line('color','blue','marker','.','markersize',28);
hm=line('color','red','marker','.','markersize',28);
for i=500:600
    try
        set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
        set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
        set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
        set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
        set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
        set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
        set(hm,'xdata',xboll(i),'ydata',yboll(i));
        pause(0.0001)
        drawnow
    catch
        return
    end
end