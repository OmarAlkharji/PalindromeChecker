public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}


public boolean palindrome(String sWord)
{
  //your code hereString backwards = reverse(sWord);
  String backwards = reverse(sWord);
  if(noStuff(sWord).equals(noStuff(backwards)))
  return true;
  else 
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here  String s = "";
  int last = str.length()-1;
  for(int i =last; i >= 0; i--){
    sNew = sNew + str.substring(i,i+1) ;
  }
    return sNew;
}

public String noStuff(String str){
  String sNew = new String();
  for(int i = 0;i < str.length(); i++)
    if (Character.isLetter(str.charAt(i)))
      sNew += str.substring(i,i+1);
     return sNew.toLowerCase();
  }
