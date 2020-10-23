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

(*****Begin*****)
val N = getIntInf();
val M = getIntInf();
fun fibonacci(N : IntInf.int , M : IntInf.int , pre : IntInf.int , cur :IntInf.int)=
    if N = 0 then pre mod M
    else fibonacci(N-1 , M , cur mod M, (pre + cur) mod M );
printIntInf(fibonacci(N , M , 0 , 1));
(*****End*****)
