using System;
using System.Collections.Generic;
class ABC
{
  static void Main()
  {
    var d = new Dictionary<long, int>();
    long n = long.Parse(Console.ReadLine());
    for(long i=2; i<=Math.Sqrt(n); i++)
    {
      long j = i*i;
      while(j<=n)
      {
        d[j] = 1;
        j *= i;
      }
    }
    Console.WriteLine(n-d.Count);
  }
}
