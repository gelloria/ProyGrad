function s = num2bin(x)
% s = num2bin(x)
%       for double precision number x, gives IEEE binary representation 
%       as string of 64 characters (each is 0 or 1)
s = sprintf('%bx',x);
t = sprintf('%bx',2);
% [n,p,f] = fopen(1);  % check for little or big-endian
% if f(1:7)=='ieee-le'
if t(1)==0
  s = reshape(fliplr(reshape(s,2,8)),1,16); 
end
s = reshape(dec2bin(hex2dec(s'),4)',1,4*16);
