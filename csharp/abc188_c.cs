using System;
using System.Linq;
class ABC
{
  static void Main()
  {
    Console.ReadLine();
    var a = Console.ReadLine().Split(" ").Select(int.Parse).ToArray();
    int m1 = 0, m2 = 0;
    for(var i=0; i<a.Length/2; i++)
      m1 = Math.Max(m1, a[i]);
    for(var i=a.Length/2; i<a.Length; i++)
      m2 = Math.Max(m2, a[i]);
    var y = m1 < m2 ? m1 : m2;
    Console.Write(Array.IndexOf(a, y)+1);
  }
}