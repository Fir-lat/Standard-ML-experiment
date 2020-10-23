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
fun GCD(m : IntInf.int, n : IntInf.int) = 
    if m = n then m
    else if m mod 2 = 0 andalso n mod 2 = 0 then 2*GCD(m div 2 , n div 2)
    else if m mod 2 = 1 andalso n mod 2 = 1 then 
        if n>m then GCD((n-m) div 2 , m)
        else GCD((m-n) div 2 , n)
    else 
        if n mod 2 = 1 then GCD(m div 2 , n)
        else GCD(n div 2 , m);

fun reduction_fraction(m : IntInf.int , n : IntInf.int)=
    let
        val x = GCD(m , n)
    in
        (m div x , n div x)
    end;

type vec  = IntInf.int*IntInf.int;
fun add((a1 , b1) : vec, (a2 , b2) : vec) = 
    let
      val x = (b1 * b2) div GCD(b1 , b2)
    in
      reduction_fraction(a1*x div b1 + a2*x div b2 , x)
    end;
    
fun print_fraction(a:IntInf.int , b : IntInf.int) =
    print(IntInf.toString(a)^" "^IntInf.toString(b)^" ");

print_fraction(add(reduction_fraction(getIntInf() , getIntInf()) , reduction_fraction(getIntInf() , getIntInf())));
(*****End*****)
