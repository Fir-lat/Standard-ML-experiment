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
val m = getInt();
val n = getInt();

fun list(m : int, n : int) = 
    if m = n then m :: nil
    else m :: list(m+1 , n);

fun list_to_str(a : string , []) = print(a)
    | list_to_str(a : string , x :: l) = list_to_str(a^Int.toString(x)^" ", l);

list_to_str("", list(m , n));
(*****End*****)
