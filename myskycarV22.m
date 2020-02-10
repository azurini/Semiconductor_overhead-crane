figure('numbertitle','off','name','�쳵·���滮','MenuBar','none')

v=20;L=20;r=2;
% axis([0,2*r+L,0,2*r])
ox1=r;
oy1=r;
ox2=r+L;
oy2=r;

% ·������
x1=r:0.015*v:r+L;   %�� ��>�� Ϊ��
y1=2*r*ones(size(x1));

thita=0:0.015*v/r:pi;

x2=sin(thita)*r+ox2;  %�һ�
y2=cos(thita)*r+oy2;

x3=r+L:-0.015*v:r;   %�� �ң�>��
y3=zeros(size(x3));

x4=-sin(thita)*r+ox1;  %��
y4=-cos(thita)*r+oy1;

y5=2*r:0.015*v:L+2*r;
x5=(L+r)*ones(size(y5));  %�� �£�>�� Ϊ��


% ·���ṹ
xway1=[x3 x4 x1 x5 x5];
yway1=[y3 y4 y1 y5/2+r -y5];

xway2=[x5+r x5+r];

yway2=[y5 -y5];

xway3=[x5+2*r x5+2*r];
yway3=[y5 -y5];

xway4=[x5+3*r x5+3*r];
yway4=[y5 -y5];

xway5=[x5+4*r x5+4*r x2+4*r x1+4*r+L x2+4*r+L x3+4*r+L x1+4*r+L x2+4*r+L x3+4*r+L];
yway5=[y5 -y5 y2+12*r y1 y2 y3 y1-4*r y2-4*r y3-4*r];

% С���켣
xboll=[x2+4*r x5+4*r x1+4*r+L x2+4*r+L x3+4*r+L x5+4*r x5 x3 x4 x1 x5 x5+r];
yboll=[y2+12*r -y5+L+4*r y1 y2 y3 -y5+2*r y5-L-2*r y3 y4 y1 y5 y5];

% ·������
plot(xway1,yway1);
hold on
plot(xway2,yway2);
hold on
plot(xway3,yway3);
hold on
plot(xway4,yway4);
hold on
plot(xway5,yway5);

% ����˵��
%text(0,-2,['����L=' num2str(L) ',�뾶r=' num2str(r) ',�ٶ�v=' num2str(v)]);
text(0,-2,['DIFF']);
text(50,-2,['���Ӽӹ�']);
text(50,-10,['���Ӽӹ�']);

% С������
axis equal
set(gca,'Visible','off')
hm=line('color','red','marker','.','markersize',37);
hm1=line('color','black','marker','.','markersize',37);
%hm=line(r,2*r,'color','red','marker','.','markersize',37,'erasemode','xor');
while 1
    for i=1:length(xboll)
        try
            set(hm,'xdata',xboll(i),'ydata',yboll(i));
            set(hm1,'xdata',xway4(i),'ydata',yway4(i));
            pause(0.0003)
            drawnow
        catch
            return
        end
    end
end