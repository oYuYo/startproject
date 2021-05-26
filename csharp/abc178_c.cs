using System;
using System.Numerics;
class ABC
{
  static void Main()
  {
    var m = 1000000007;
    var n = int.Parse(Console.ReadLine());
    var x = BigInteger.ModPow(10, n, m);
    var y = BigInteger.ModPow(9, n, m);
    var z = BigInteger.ModPow(8, n, m);
    var ans = x - y - y + z;
    Console.Write((ans%m + m) % m);
  }
}