using System;
using System.Linq;
class ABC
{
  static void Main()
  {
    double[] x = Console.ReadLine().Split(" ").Select(double.Parse).ToArray();
    double r = x[0];
    double d = Math.Sqrt(x[1]*x[1] + x[2]*x[2]);
    int ans = (int)Math.Ceiling(d/r);
    if(d < r){
      ans += 1;
    }
    Console.WriteLine(ans);
  }
}