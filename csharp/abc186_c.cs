using System;
using System.Linq;
using System.Collections.Generic;
class ABC
{
  static void Main()
  {
    var x = int.Parse(Console.ReadLine());
    int ans = 0;
    for(var i=1; i<=x; i++)
      if(!i.ToString().Contains("7") && !Convert.ToString(i, 8).Contains("7"))
        ans++;
    Console.Write(ans);
  }
}