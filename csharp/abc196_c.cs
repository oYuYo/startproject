using System;
using System.Linq;
class ABC
{
  static void Main()
  {
    string s = Console.ReadLine();
    long x = long.Parse(s);
    int l = s.Length;
    if(l%2!=0) l--;
    int ans = 0;
    for(int i=1; i<=10000000; i++){
      string t = i.ToString();
      t = t+t;
      if(long.Parse(t)<=x){
        ans++;
      }else{
        break;
      }
    }
    Console.WriteLine(ans);
  }
}