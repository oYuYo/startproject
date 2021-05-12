using System;
using System.Linq;
class ABC
{
  static void Main()
  {
    var x = Console.ReadLine().Split(" ").Select(int.Parse).ToArray();
    var m = new int[x[1],2];
    for(var i=0; i<x[1]; i++)
    {
      var t = Console.ReadLine().Split(" ").Select(int.Parse).ToArray();
      m[i, 0] = t[0]; m[i, 1] = t[1];
    }
    var k = int.Parse(Console.ReadLine());
    var c = new int[k, 2];
    for(var i=0; i<k; i++)
    {
      var t = Console.ReadLine().Split(" ").Select(int.Parse).ToArray();
      c[i, 0] = t[0]; c[i, 1] = t[1];
    }
    int ans = 0;
    for(var i=0; i<1<<k; i++)
    {
      var d = new int[x[0]];
      var t = 0;
      for(var j=0; j<k; j++)
      {
        if((i>>j&1) == 1) d[c[j, 0]-1]++;
        else d[c[j, 1]-1]++;
      }
      for(var j=0; j<x[1]; j++)
      {
        if(d[m[j, 0]-1]>0 && d[m[j, 1]-1]>0) t++;
      }
      ans = Math.Max(ans, t);
    }
    Console.Write(ans);
  }
}