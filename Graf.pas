program Main;

Uses crt;

var
 a, a1, b, c, d, e, g, x, y, f, f1, h, i, j, k, l, m, n, o, ty, tx, cy, cx:integer;
 s:string;
 cas:array[1..10000] of integer;
 tir:array[1..10000] of integer;


begin


(*
	
	Variables:

	a = Točka na stranici y
	b = Točka na stranici x
	c = Uporabljen pri for loop-u da v tabeli izpiše "—"
	d = Uporabljen pri for loop-u da v tabeli izpiše "cas/tir|"
	e = Ln 83 - 85 Izpiše številke na stranici y
		Ln 97 - 125 Potreben za izpis "."
		Ln 130 -138 Potreben za izpis "*"
	f = 
	g =
	h =
	i =
	j =
	k =
	l =
	m =
	n =
	x =
	y =
	s =
	cas =
	tir = 
	o =

*)

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
	write('|');
	gotoxy(cx - 2, cy);

	while a1 = 0 do
	begin
		readln(cas[f]);
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
	f:=f - 1;
	f1:=f;
	f:=1;

	gotoxy(tx - 2, ty);
	write('|');
	gotoxy(tx + 1, ty);

	for a1 := 1 to f1  do
	begin
		readln(tir[f]);
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
			
			e:=y-a +1;
			
			write(e:3);
			
			k:=cas[f];
			l:=tir[f];

			for b:= 1 to x do
			
				begin
				
				n:=1;

				for o:= 1 to x do
				begin
					
					m := tir[n];
					n := n+1;

					if e < m then
						begin
							
						if m = b then
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
	
	writeln;
	writeln;
	writeln;
	
end.