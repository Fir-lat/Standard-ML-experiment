fun printInt (a:int) =
    print(Int.toString(a)^" ");

fun printReal (a:real) =
    print(Real.toString(a)^" ");

fun printString (a:string) =
    print(a^" ");

fun getInt () =
    Option.valOf (TextIO.scanStream (Int.scan StringCvt.DEC) TextIO.stdIn);
    
fun getReal () =
    Option.valOf (TextIO.scanStream (Real.scan) TextIO.stdIn);

val m = getInt();
val n = getInt();
fun GCD(m , n) = 
    if m = n then m
    else if m mod 2 = 0 andalso n mod 2 = 0 then 2*GCD(m div 2 , n div 2)
    else if m mod 2 = 1 andalso n mod 2 = 1 then 
        if n>m then GCD((n-m) div 2 , m)
        else GCD((m-n) div 2 , n)
    else 
        if n mod 2 = 1 then GCD(m div 2 , n)
        else GCD(n div 2 , m);
printInt(GCD(m , n));