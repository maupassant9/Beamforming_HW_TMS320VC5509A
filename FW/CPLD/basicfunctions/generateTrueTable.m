valueinit = [2 3 4 5];
steps = 52;
numseq = 16;

for i = 1:numseq-1
value2convert = [value2convert valueinit+steps*i];
end

noOfBits = 10;
fid = fopen("C:\\Users\\dong.x\\Documents\\truetable.txt","w");
i = 1;
fprintf(fid, "\n    ");
for val = 0: 2^noOfBits-1
  a = de2bi(val,noOfBits);
  fprintf(fid, "  ");
  for j = length(a):-1:1
    fprintf(fid, "%d  ",a(j));  
  endfor
  if(val == value2convert(i))
    output = 1;
    if( i < length(value2convert)) i = i + 1; end;
  else 
    output = 0;
  end
  fprintf(fid, ": %d ;\n", output);
  
end

fclose(fid)