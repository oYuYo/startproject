using System;
using System.Linq;
class ABC
{
  static void Main()
  {
    long ans = 0;
    Console.ReadLine();
    var x = Console.ReadLine().Split(" ").Select(int.Parse).ToArray();
    var a = new long[401];
    for(var i=0; i<x.Length; i++) a[x[i]+200]++;
    for(var i=0; i<400; i++)
    {
      for(var j=i+1; j<401; j++)
      {
        ans += (long)(a[i]*a[j]*(i-j)*(i-j));
      }
    }
    Console.WriteLine(ans);
  }
}