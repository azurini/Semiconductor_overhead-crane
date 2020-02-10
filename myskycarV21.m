%天车运行 V2.1 
%矩阵化？数据化？

figure('numbertitle','off','name','天车路径规划','MenuBar','none')
%代码重构 v2.0
v=20; %运行速度
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

% 整体路径 storker为（0，0）
xway1=[x2 x3    x1+r/2     x1+r/2+L   x1+r/2+2*L  x2+3*L    -x1+3*L+r/2   -x1+r/2+2*L    -x1+r/2+L     x3         x1+r/2         x1+r/2+L       x1+r/2+2*L      x2+3*L        -x1+3*L+r/2     -x1+r/2+2*L      -x1+r/2+L       x3      x3      x3];
yway1=[y2 -y3-r y1-L-r-r/2 y1-L-r-r/2 y1-L-r-r/2  y2-L-r-r  y1-L-3*r-r/2  y1-L-3*r-r/2   y1-L-3*r-r/2  -y3-L-3*r  y1-2*L-3*r-r/2 y1-2*L-3*r-r/2 y1-2*L-3*r-r/2  y2-2*L-3*r-r  y1-2*L-5*r-r/2  y1-2*L-5*r-r/2   y1-2*L-5*r-r/2  -y3-3*L -y3-4*L -y3-5*L];
xway2=[x3-r   x3-r   x3-r   x3-r   x3-r   x3-r];
yway2=[y3-6*L y3-5*L y3-4*L y3-3*L y3-2*L y3-L];
xway3=[x3-2*r x3-2*r x3-2*r  x3-2*r  x3-2*r  x3-2*r];
yway3=[-y3    -y3-L  -y3-2*L -y3-3*L -y3-4*L -y3-5*L];
xway4=[x3-3*r x3-3*r x3-3*r x3-3*r x3-3*r x3-3*r];
yway4=[y3-6*L y3-5*L y3-4*L y3-3*L y3-2*L y3-L];
xway5=[x3-4*r     x3-4*r     -x1-L+r+r/2    -x1+r+r/2-2*L  -x1+r+r/2-3*L  -x2-3*r-3*L x1+r+r/2-4*L x1+r+r/2-3*L x1-2*L+r+r/2  x3-4*r x3-4*r x3-4*r -x1-L+r+r/2 -x1+r+r/2-2*L -x1+r+r/2-3*L -x2-3*r-3*L x1+r+r/2-4*L x1+r+r/2-3*L x1-2*L+r+r/2 x3-L+r    ];
yway5=[y3-6*L-2*r y3-5*L-2*r y1-4*L-2*r-r/2 y1-4*L-2*r-r/2 y1-4*L-2*r-r/2 -y2-4*L-r   y1-4*L-r/2   y1-r/2-4*L   y1-r/2-4*L    y3-4*L y3-3*L y3-2*L y1-L        y1-L          y1-L          -y2-L+r+r/2 y1-3*r       y1-3*r       y1-3*r       y3-3*r+r/2];


% 小车轨迹
xboll1=[x2 x3    x1+r/2     x1+r/2+L   x1+r/2+2*L  x2+3*L    -x1+3*L+r/2   -x1+r/2+2*L ];
yboll1=[y2 -y3-r y1-L-r-r/2 y1-L-r-r/2 y1-L-r-r/2  y2-L-r-r  y1-L-3*r-r/2  y1-L-3*r-r/2];
xboll2=[-x1+r/2+L     x3         x1+r/2         x1+r/2+L       x1+r/2+2*L      x2+3*L        -x1+3*L+r/2     -x1+r/2+2*L      -x1+r/2+L       x3     ];
yboll2=[y1-L-3*r-r/2  -y3-L-3*r  y1-2*L-3*r-r/2 y1-2*L-3*r-r/2 y1-2*L-3*r-r/2  y2-2*L-3*r-r  y1-2*L-5*r-r/2  y1-2*L-5*r-r/2   y1-2*L-5*r-r/2  -y3-3*L];
xboll=xway4;
yboll=yway4;

% 路径制作
plot(xway1,yway1);
hold on;
plot(xway2,yway2);
hold on;
plot(xway3,yway3);
hold on;
plot(xway4,yway4);
hold on;
plot(xway5,yway5);
%桥
hold on;
plot(x4-r/2,y4-2*L);
hold on;
plot(x4-r/2,y4-2*L-r);
hold on;
plot(x4-r-r/2,y4-L);


% 文字说明
%text(0,-2,['长度L=' num2str(L) ',半径r=' num2str(r) ',速度v=' num2str(v)]);
text(5,0,['storker']);
text(-40,-2,['DIFF']);
text(-40,-37,['WET']);
text(27,-23,['离子加工']);
text(27,-9,['离子加工']);

% 小车运行
axis equal
set(gca,'Visible','off')

% 工序一：由storker－>第一种加工工序 
hm1=line('color','red','marker','.','markersize',37);
    for i=1:length(xboll1)
        try
            set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
            pause(0.0003)
            drawnow
        catch
            return
        end
    end
    pause(1);
    set(hm1,'Visible','off');
    
    
% 工序二：由第一种加工工序－>第二种加工工序
hm2=line('color','blue','marker','.','markersize',37);
    for i=1:length(xboll2)
        try
            set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
            pause(0.0003)
            drawnow
        catch
            return
        end
    end