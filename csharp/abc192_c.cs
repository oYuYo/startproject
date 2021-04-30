using System;
using System.Linq;
class ABC
{
  static void Main()
  {

    string[] s = Console.ReadLine().Split(" ");
    int n = int.Parse(s[0]);
    int k = int.Parse(s[1]);
    while(k > 0){
      char[] t = n.ToString().ToCharArray();
      Array.Sort(t);
      int g2 = int.Parse(String.Join("", t));
      Array.Reverse(t);
      int g1 = int.Parse(String.Join("", t));
      n = g1 - g2;
      k--;
    }
    Console.WriteLine(n);
  }
}