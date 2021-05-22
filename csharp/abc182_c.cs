using System;
using System.Linq;
class ABC
{
  static void Main()
  {
    var s = Console.ReadLine();
    var l = s.Length;
    var min = long.Parse(s)%3==0 ? 0 : Int64.MaxValue;
    for(var i=0; i<1<<l; i++)
    {
      var a = "";
      var c = 0;
      for(var j=0; j<l; j++)
        if((i>>j&1) == 1)
        {
          a += s[j];
          c++;
        }
      long num = 0;
      if(long.TryParse(a, out num) && num%3 == 0) min = Math.Min(min, l-c);
    }
    Console.Write(min==Int64.MaxValue ? -1 : min);
  }
}