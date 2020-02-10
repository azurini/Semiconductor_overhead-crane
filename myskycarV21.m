%�쳵���� V2.1 
%���󻯣����ݻ���

figure('numbertitle','off','name','�쳵·���滮','MenuBar','none')
%�����ع� v2.0
v=20; %�����ٶ�
L=10;
r=2;

% axis([0,2*r+L,0,2*r])
ox1=r;
oy1=r;
ox2=r+L;
oy2=r;

% ·��Ԫ��
x1=0:0.015*v:L;   %�� ��>�� Ϊ��
y1=ones(size(x1));

thita=0:0.015*v/r:pi;   %�뻷 ˳ʱ�� Ϊ��
x2=sin(thita)*r+r/2;
y2=cos(thita)*r;

y3=0:0.015*v:L;
x3=ones(size(y3));  %�� �£�>�� Ϊ��

x4=0:0.015*v:r;   %�� ��>�� Ϊ��
y4=ones(size(x4));

% ����·�� storkerΪ��0��0��
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


% С���켣
xboll1=[x2 x3    x1+r/2     x1+r/2+L   x1+r/2+2*L  x2+3*L    -x1+3*L+r/2   -x1+r/2+2*L ];
yboll1=[y2 -y3-r y1-L-r-r/2 y1-L-r-r/2 y1-L-r-r/2  y2-L-r-r  y1-L-3*r-r/2  y1-L-3*r-r/2];
xboll2=[-x1+r/2+L     x3         x1+r/2         x1+r/2+L       x1+r/2+2*L      x2+3*L        -x1+3*L+r/2     -x1+r/2+2*L      -x1+r/2+L       x3     ];
yboll2=[y1-L-3*r-r/2  -y3-L-3*r  y1-2*L-3*r-r/2 y1-2*L-3*r-r/2 y1-2*L-3*r-r/2  y2-2*L-3*r-r  y1-2*L-5*r-r/2  y1-2*L-5*r-r/2   y1-2*L-5*r-r/2  -y3-3*L];
xboll=xway4;
yboll=yway4;

% ·������
plot(xway1,yway1);
hold on;
plot(xway2,yway2);
hold on;
plot(xway3,yway3);
hold on;
plot(xway4,yway4);
hold on;
plot(xway5,yway5);
%��
hold on;
plot(x4-r/2,y4-2*L);
hold on;
plot(x4-r/2,y4-2*L-r);
hold on;
plot(x4-r-r/2,y4-L);


% ����˵��
%text(0,-2,['����L=' num2str(L) ',�뾶r=' num2str(r) ',�ٶ�v=' num2str(v)]);
text(5,0,['storker']);
text(-40,-2,['DIFF']);
text(-40,-37,['WET']);
text(27,-23,['���Ӽӹ�']);
text(27,-9,['���Ӽӹ�']);

% С������
axis equal
set(gca,'Visible','off')

% ����һ����storker��>��һ�ּӹ����� 
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
    
    
% ��������ɵ�һ�ּӹ�����>�ڶ��ּӹ�����
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