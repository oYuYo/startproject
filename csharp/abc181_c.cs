using System;
using System.Linq;
class ABC
{
  static void Main()
  {
    var ans = "No";
    var n = int.Parse(Console.ReadLine());
    var x = new double[n, 2];
    for(var i=0; i<n; i++)
    {
      var t = Console.ReadLine().Split().Select(double.Parse).ToArray();
      x[i, 0] = t[0]; x[i, 1] = t[1];
    }
    for(var i=0; i<n-2; i++)
      for(var j=i+1; j<n-1; j++)
        for(var k=j+1; k<n; k++)
        {
          var x1 = x[i, 0] - x[j, 0];
          var y1 = x[i, 1] - x[j, 1];
          var x2 = x[i, 0] - x[k, 0];
          var y2 = x[i, 1] - x[k, 1];
          if(y1*x2 == y2*x1) ans = "Yes";
        }
    Console.Write(ans);
  }
}