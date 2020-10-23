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

type vector = int * int;

fun det(v1:vector, v2:vector):int =
    (#1 v1 * #2 v2 - #1 v2 * #2 v1);


(*****Begin*****)
val a = getInt();
val b = getInt();
val k1 = getInt();
val c = getInt();
val d = getInt();
val k2 = getInt();
val m =det((a,c),(b,d));
val n =det((k1,k2),(b,d));
if m=0 then printString("No Solution")
else printReal(real(n) / real(m));
(*****End*****)