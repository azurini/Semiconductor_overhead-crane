figure('numbertitle','off','name','�쳵·���滮','MenuBar','none')
%�����ع� v2.0
v=30; %�����ٶ�
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

x5=0:0.015*v:2*r;   %�� �£�>�� Ϊ��
y5=ones(size(x5));

 
% ����·�� storkerΪ��0��0��
xway1=[x2 x3    x1+r/2     x1+r/2+L   x1+r/2+2*L  x2+3*L    -x1+3*L+r/2   -x1+r/2+2*L    -x1+r/2+L     x3         x1+r/2         x1+r/2+L       x1+r/2+2*L      x2+3*L        -x1+3*L+r/2     -x1+r/2+2*L      -x1+r/2+L       x3      x3      x3      x3      x3      x3      x3      x3       x2          x3];
yway1=[y2 -y3-r y1-L-r-r/2 y1-L-r-r/2 y1-L-r-r/2  y2-L-r-r  y1-L-3*r-r/2  y1-L-3*r-r/2   y1-L-3*r-r/2  -y3-L-3*r  y1-2*L-3*r-r/2 y1-2*L-3*r-r/2 y1-2*L-3*r-r/2  y2-2*L-3*r-r  y1-2*L-5*r-r/2  y1-2*L-5*r-r/2   y1-2*L-5*r-r/2  -y3-3*L -y3-4*L -y3-5*L -y3-6*L -y3-7*L -y3-8*L -y3-9*L -y3-10*L y2-11*L-2*r -y3-11*L-3*r];
xway2=[x3-r    x3-r    x3-r    x3-r    x3-r    x3-r   x3-r   x3-r   x3-r   x3-r   x3-r   x3-r   x3-r   x3-r];
yway2=[y3-14*L y3-13*L y3-12*L y3-11*L y3-10*L y3-9*L y3-8*L y3-7*L y3-6*L y3-5*L y3-4*L y3-3*L y3-2*L y3-L];
xway3=[x3-2*r x3-2*r x3-2*r  x3-2*r  x3-2*r  x3-2*r  x3-2*r  x3-2*r  x3-2*r  x3-2*r  x3-2*r   x3-2*r   x3-2*r   x3-2*r  ];
yway3=[-y3    -y3-L  -y3-2*L -y3-3*L -y3-4*L -y3-5*L -y3-6*L -y3-7*L -y3-8*L -y3-9*L -y3-10*L -y3-11*L -y3-12*L -y3-13*L];
xway4=[x3-3*r  x3-3*r  x3-3*r  x3-3*r  x3-3*r  x3-3*r x3-3*r x3-3*r x3-3*r x3-3*r x3-3*r x3-3*r x3-3*r x3-3*r];
yway4=[y3-14*L y3-13*L y3-12*L y3-11*L y3-10*L y3-9*L y3-8*L y3-7*L y3-6*L y3-5*L y3-4*L y3-3*L y3-2*L y3-L  ];
xway5=[x3-4*r      x3-4*r      x3-4*r      x3-4*r      x3-4*r      x3-4*r     x3-4*r     x3-4*r     x3-4*r     x3-4*r     -x1-L+r+r/2    -x1+r+r/2-2*L  -x1+r+r/2-3*L  -x2-3*r-3*L x1+r+r/2-4*L x1+r+r/2-3*L x1-2*L+r+r/2  x3-4*r x3-4*r x3-4*r -x1-L+r+r/2 -x1+r+r/2-2*L -x1+r+r/2-3*L -x2-3*r-3*L x1+r+r/2-4*L x1+r+r/2-3*L x1-2*L+r+r/2 x3-L+r    ];
yway5=[y3-14*L-2*r y3-13*L-2*r y3-12*L-2*r y3-11*L-2*r y3-10*L-2*r y3-9*L-2*r y3-8*L-2*r y3-7*L-2*r y3-6*L-2*r y3-5*L-2*r y1-4*L-2*r-r/2 y1-4*L-2*r-r/2 y1-4*L-2*r-r/2 -y2-4*L-r   y1-4*L-r/2   y1-r/2-4*L   y1-r/2-4*L    y3-4*L y3-3*L y3-2*L y1-L        y1-L          y1-L          -y2-L+r+r/2 y1-3*r       y1-3*r       y1-3*r       y3-3*r+r/2];
xway6=[x3-r    x3-r    x3-r    x3-r    x3-r   x3-r   x3-r   x3-r   x3-r   x3      x4-r/2   x3         x1+r/2         x1+r/2+L       x1+r/2+2*L      x2+3*L        -x1+3*L+r/2     -x1+r/2+2*L      -x1+r/2+L       x3      x3      x3      x3      x3      x3      x3      x3       x2          x3];
yway6=[y3-13*L y3-12*L y3-11*L y3-10*L y3-9*L y3-8*L y3-7*L y3-6*L y3-5*L y3-4*L  y4-2*L-r -y3-L-3*r  y1-2*L-3*r-r/2 y1-2*L-3*r-r/2 y1-2*L-3*r-r/2  y2-2*L-3*r-r  y1-2*L-5*r-r/2  y1-2*L-5*r-r/2   y1-2*L-5*r-r/2  -y3-3*L -y3-4*L -y3-5*L -y3-6*L -y3-7*L -y3-8*L -y3-9*L -y3-10*L y2-11*L-2*r -y3-11*L-3*r];


% С���켣
xboll1=xway1;
yboll1=yway1;
xboll2=xway2;
yboll2=yway2;
xboll3=xway3;
yboll3=yway3;
xboll4=xway4;
yboll4=yway4;
xboll5=xway5;
yboll5=yway5;
xboll6=xway6;
yboll6=yway6;

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
text(5,0,['WFS storker']);
text(-40,-2,['DIFF']);
text(-40,-37,['WET']);
text(27,-23,['���Ӽӹ�']);
text(27,-9,['���Ӽӹ�']);
text(5,-114,['storker']);
text(-105,-114,['˵������ɫ���ʾ�쳵����δ���빤���У�']);
text(-105,-124,['��ɫ���ʾ�쳵������빤����;']);
text(-105,-134,['��ɫ���ʾ�쳵������������й���']);

% С������
axis equal
set(gca,'Visible','off')

% �쳵���� ����������
hm1=line('color','red','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','red','marker','.','markersize',28);

% �׶��Ա��� 
    for i=1:10
        try
            set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
            set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
            set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
            set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
            set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
            set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
            pause(0.0001)
            drawnow
        catch
            return
        end
    end
    set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');
    
    
% ʱ���
hm1=line('color','red','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','red','marker','.','markersize',28);

    for i=10:80
        try
            set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
            set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
            set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
            set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
            set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
            set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
            pause(0.0001)
            drawnow
        catch
            return
        end
    end
        set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');

    
    % ʱ����
hm1=line('color','red','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','red','marker','.','markersize',28);

    for i=80:100
        try
            set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
            set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
            set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
            set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
            set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
            set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
            pause(0.0001)
            drawnow
        catch
            return
        end
    end
          set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');
  
    
        % ʱ����
hm1=line('color','blue','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','red','marker','.','markersize',28);

    for i=100:140
        try
            set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
            set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
            set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
            set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
            set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
            set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
            pause(0.0001)
            drawnow
        catch
            return
        end
    end
            set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');

    
        % ʱ����
hm1=line('color','blue','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','red','marker','.','markersize',28);

    for i=140:200
        try
            set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
            set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
            set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
            set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
            set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
            set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
            pause(0.0001)
            drawnow
        catch
            return
        end
    end
            set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');

    
        % ʱ����
hm1=line('color','blue','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','blue','marker','.','markersize',28);
hm6=line('color','red','marker','.','markersize',28);

    for i=200:275
        try
            set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
            set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
            set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
            set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
            set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
            set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
            pause(0.0001)
            drawnow
        catch
            return
        end
    end
    set(hm1,'Visible','off');set(hm2,'Visible','off');set(hm3,'Visible','off');set(hm4,'Visible','off');set(hm5,'Visible','off');set(hm6,'Visible','off');

    
        % ʱ����
hm1=line('color','blue','marker','.','markersize',28);
hm2=line('color','red','marker','.','markersize',28);
hm3=line('color','red','marker','.','markersize',28);
hm4=line('color','red','marker','.','markersize',28);
hm5=line('color','black','marker','.','markersize',28);
hm6=line('color','red','marker','.','markersize',28);

    for i=275:400
        try
            set(hm1,'xdata',xboll1(i),'ydata',yboll1(i));
            set(hm2,'xdata',xboll2(i),'ydata',yboll2(i));
            set(hm3,'xdata',xboll3(i),'ydata',yboll3(i));
            set(hm4,'xdata',xboll4(i),'ydata',yboll4(i));
            set(hm5,'xdata',xboll5(i),'ydata',yboll5(i));
            set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
            %set(hm6,'xdata',xboll6(i),'ydata',yboll6(i));
            pause(0.0001)
            drawnow
        catch
            return
        end
    end