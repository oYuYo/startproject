using System;
using System.Linq;
using System.Collections.Generic;
class ABC
{
  static void Main()
  {
    var n = int.Parse(Console.ReadLine());
    var x = new string[n];
    for(var i=0; i<n; i++) x[i] = Console.ReadLine();
    var s = new HashSet<string>(x);
    for(var i=0; i<n; i++){
      if(s.Contains(x[i]) && s.Contains("!"+x[i])){
        Console.Write(x[i]);
        return;
      }
    }
    Console.Write("satisfiable");
  }
}