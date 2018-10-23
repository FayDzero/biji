%设计举例：通带频率wp=0.2pi 通带频率波动  Ap=0.25dB 阻带截止频率0.3pi,阻带衰减As=50dB
%设计思路：
wp=0.2*pi;
ws=0.3*pi;
%求出过渡带
tr_width=ws-wp;
%查表查出来的，冲激响应长度
M=ceil(8*pi/tr_width);
%通带的截止频率
wc=(ws+wp)/2;
%得到理想低通滤波器的单位冲激响应为
%-------------------------------
alpha=(M-1)/2;
n=[0:1:(M-1)];
m=n-alpha;
fc=wc/pi;
%hd=(sinc(wc*m))/(pi*m);
hd=fc*sinc(fc*m);
%理想的
%stem(hd);
%-------------------------------
w_ham=(hamming(M))';
%哈明
stem(w_ham)
h=hd.*w_ham;


%画图
[H,w]=freqz(h,[1],1000,'whole')
%

subplot(221)
stem(n,hd)

subplot(222)
stem(n,w_ham)
subplot(223)
stem(n,h)

subplot(224)
plot(wc/pi,h)