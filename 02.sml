
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
    
(*****Begin*****)
val a = getInt();
val b = getInt();
fun gcd(a:int,b:int)=
    if b=0 then a
    else gcd(b, a mod b);
printInt(gcd(a, b));
(*****End*****)