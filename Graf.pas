program Main;

var
 a, b, c, d, e, g, x, y, f, h, i, j, k, l, m, n :integer;
 s:string;
 cas:array[1..10000] of integer;
 tir:array[1..10000] of integer;


begin

	write('Čas Merjenja: ');
	readln(y);
	write('Dolžina tira: ');
	readln(x);
	
	s:=(' ');
	
	
	f:=1;
	
	while h = 0 do
		begin
		
			write(f, '. Del Tira: ');
			readln(tir[f]);
			i:=tir[f];
			
			if i >= x then
				h:=1;
				
			f:=f+1;
		
		end;
		
		
	for j:= 1 to f - 1 do
		begin
	
			write(j, '. Odmerjen Čas: ');
			readln(cas[j]);
	
		end;
	
	f:=f-1;
	h:=f;
	
	writeln;
	writeln;
	
	for a:= 1 to y do
	
		begin
			
			e:=y-a +1;
			
			write(e:3);
			
			k:=cas[f];
			l:=tir[f];
			
			for b:= 1 to x do
			
				begin
				
				if k = e then
					begin
						if l = b then
							begin
								s:=('*');
								g:=1;
								f:=f-1;
							end;
					end;
				
				write(s:3);
				s:=(' ');
				end;
				
				
				writeln;
				
		end;
	
	write('0':3);
	
	for b:=1 to x do
	write(b:3);
	
	writeln;
	writeln;
	writeln;
	
	f:=f+1;
	
	for c:= 1 to 13 + h * 4 do
		write('—');
		
	writeln;
		
	write('|Odmerjen cas|');
	
	
	for d:=1 to h do
		begin
			
			g:=cas[f];
			
			write(g:3, '|');
			
			f:=f+1;
		
		end; 
		
	writeln;
		
	f:=1;
	
	for c:= 1 to 14 + h * 4 do
		write('—');
	
	writeln;
	
	
	write('|Deli Tira   |');
	
	for d:=1 to h do
		begin
			
			g:=tir[f];
			
			write(g:3, '|');
			
			f:=f+1;
		
		end; 
		
	writeln;
		
	for c:= 1 to 14 + h * 4 do
		write('—');
	
	writeln;
	writeln;
	writeln;	
	
	
	writeln('BY:');
	writeln('AndroAmater');
	
	writeln;
	writeln;
	writeln;
	
end.