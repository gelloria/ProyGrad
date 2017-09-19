function bin_str= hexa2bin(hex_str)

n = length(hex_str); 

bin_str = '';
for h = 1 : n
    bin_str = [bin_str h2b(hex_str(h))];
end


end