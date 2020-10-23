fun printInt (a:int) =
    print(Int.toString(a)^" ");

fun printIntInf (a:IntInf.int) =
    print(IntInf.toString(a)^" ");

fun printReal (a:real) =
    print(Real.toString(a)^" ");

fun printString (a:string) =
    print(a^" ");

fun getInt () =
    Option.valOf (TextIO.scanStream (Int.scan StringCvt.DEC) TextIO.stdIn);

fun getIntInf () =
    Option.valOf (TextIO.scanStream (IntInf.scan StringCvt.DEC) TextIO.stdIn);

fun getReal () =
    Option.valOf (TextIO.scanStream (Real.scan) TextIO.stdIn);

type matrix = IntInf.int*IntInf.int*IntInf.int*IntInf.int;
fun f((a,b,c,d) :matrix,(e,f,g,h) : matrix)=
(a*e+b*g,a*f+b*h,c*e+d*g,c*f+d*h);
fun F((a,b,c,d) :matrix,N:IntInf.int)=
 if N=1  then (a,b,c,d)
 else  if N mod 2=0  
       then F(f((a,b,c,d),(a,b,c,d)),N div 2) 
       else f(F(f((a,b,c,d),(a,b,c,d)),(N-1) div 2),(a,b,c,d));
val n=getIntInf();
val m=getIntInf();
if n>=4
then
   let  
     val (x,y,z,w)= (F((1,1,1,0),n-3))
     
    in printIntInf((x+y+z+w) mod m) end
else
    if n=1 orelse n=2
    then  printIntInf(1 mod m)
    else  printIntInf(2 mod m);