with Ada.Text_IO; use Ada.Text_IO;


procedure Main is

   palipro : Long_Integer := 0;
   trial : Long_Integer;
   rvrs : Long_Integer :=0;
   tempT : Long_Integer;
   tempR: Long_Integer;
   l: Integer;


begin

   for i in reverse 100..999 loop
      for j in reverse 100..999 loop
         trial := Long_Integer(i * j);
         if trial > palipro  then
           -- Put_Line(Long_Integer'Image(trial));
            tempT := trial;
            tempR := 0;
            rvrs := 0;
            l :=5;
            while tempT > 0 loop
               --Put_Line(Long_Integer'Image(tempT));
               --Put_Line(Integer'Image(l));
               tempR := tempT mod 10;
               rvrs := rvrs + tempR*(10**l) ;
               tempT := tempT / 10;
               --Put_Line(Long_Integer'Image(rvrs));
               l := l - 1;
            end loop;

            --Put_Line(Long_Integer'Image(rvrs));
            --Put_Line(Long_Integer'Image(trial));

            if rvrs = trial then

               palipro := trial;
               Put_Line(Long_Integer'Image(palipro));

            end if;


         end if;

      end loop;
   end loop;

   Put_Line(Long_Integer'Image(palipro));


end Main;
