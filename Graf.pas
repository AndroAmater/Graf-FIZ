program Main;
Uses crt;
var
 a, a1, b, c, d, e, g, x, y, f, f1, h, i, j, k, l, m, n, o, ty, tx, cy, cx:integer;
 s:string;
 cas:array[1..10000] of integer;
 tir:array[1..10000] of integer;
begin
	readln;
	ClrScr;
	write('Čas: ');
	cy:=WhereY;
	cx:=WhereX;
	readln(y);
	writeln;
	write('Tir: ');
	ty:=WhereY;
	tx:=WhereX;
	readln(x);
	f:=1;
	gotoxy(cx - 3, cy);
	write('|   ');
	gotoxy(cx - 2, cy);
	a1:=0;
	while a1 = 0 do
	begin
		readln(cas[f]);
		gotoxy(cx - 2, cy);
		write('   |');
		gotoxy(cx - 2, cy);
		b:=cas[f];
		write(b:3, '|');
		cx:=cx + 4;
		gotoxy(cx, cy);
		f:=f + 1;
		if b = y then
		begin
			a1:= 1;
			writeln;
			writeln;
		end;
	end;
	a1:=0;
	f1:=f - 1;
	f:=1;
	gotoxy(tx - 2, ty);
	write('|   ');
	gotoxy(tx + 1, ty);
	for a1 := 1 to f1  do
	begin
		readln(tir[f]);
		gotoxy(tx - 1, ty);
		write('   |');
		gotoxy(tx - 1, ty);
		b:=tir[f];
		write(b:3, '|');
		tx:=tx + 4;
		gotoxy(tx, ty);
		f:=f + 1;
	end;
	gotoxy(cx, cy);
	writeln;
	for c:= 1 to 4 * f do
		write('—');
	writeln;
	s:=(' ');
	b:=0;
	h:=0;
	f:=f-1;
	h:=f;
	writeln;
	writeln;
	for a:= 1 to y do
		begin
			e:=y + 1 -a;
			write(e:3);
			k:=cas[f];
			l:=tir[f];
			for b:= 1 to x do
				begin
				for o:= 1 to x do
				begin
					m := tir[o];
					n := cas[o];
					if m = b then
						begin
						if e < n then
						s:=('.');
						end;	
				end;
				if k = e then
					begin	
						if l > b then
							begin
							s:=('.')
							end;
					end;
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
	writeln('BY:');
	writeln('AndroAmater');
	readln;
end.