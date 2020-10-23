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
val A = getIntInf();
val N = getIntInf();
val M = getIntInf();
fun modulus(A: IntInf.int, N: IntInf.int,x: IntInf.int , M: IntInf.int) : IntInf.int =
    if N=1 then (A * x) mod M 
    else if N mod 2 = 1 then modulus((A * A) mod M , (N-1) div 2 , (A * x) mod M , M)
    else modulus((A * A) mod M , N div 2 , x mod M , M);
printIntInf(modulus(A, N, 1 , M));
(*****End*****)

