%valueinit = [5 6 7 8]; rd_bar
%valueinit = 10:10+48; % enspi
%valueinit = 7:8;  %dbsample
valueinit = 10:8;  %spi_cs
steps = 52;
numseq = 16;
value2convert = [];

for i = 0:numseq-1
value2convert = [value2convert valueinit+steps*i];
end

noOfBits = 10;
fid = fopen("D:\\truetable.txt","w");
i = 1;
fprintf(fid, "\n    ");
for val = 0: 2^noOfBits-1
  a = de2bi(val,noOfBits);
  fprintf(fid, "  ");
  for j = length(a):-1:1
    fprintf(fid, "%d  ",a(j));  
  end
  if(val == value2convert(i))
    output = 1;
    if( i < length(value2convert)) i = i + 1; end
  else 
    output = 0;
  end
  fprintf(fid, ": %d ;\n", output);
  
end

fclose(fid);