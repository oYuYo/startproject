using System;
using System.Linq;
class ABC
{
  static void Main()
  {
    Console.ReadLine();
    var a = Console.ReadLine().Split(" ").Select(long.Parse).ToArray();
    var d = new long[201];
    long z = 0;
    foreach(var x in a) d[x%200]++;
    foreach(var x in d) z += x*(x-1)/2;
    Console.Write(z);
  }
}