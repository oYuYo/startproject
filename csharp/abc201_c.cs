using System;
using System.Linq;
using System.Collections.Generic;
class ABC
{
  static void Main()
  {
    var ans = 0;
    var s = Console.ReadLine();
    var b = new int[10];
    for(var i=0; i<10; i++)
      if(s[i] == 'o')
        b[i] = 1;
    for(var i=0; i<10000; i++)
    {
      var c = 1;
      var x = i.ToString().PadLeft(4, '0');
      var d = (int[])b.Clone();
      foreach(var y in x)
      {
        if(s[y-'0'] == 'x') c = 0;
        d[y-'0'] = 0;
      }
      if(d.Sum() == 0)
        ans += c;
    }
    Console.Write(ans);
  }
}