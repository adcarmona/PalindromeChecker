public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  word = word.toLowerCase();
  String tempString = "";
  for(int i = 0; i < word.length(); i++)
  {
  	if(word.charAt(i) != ' ' )
  	{
  		if(word.charAt(i) != '.' )
  		{
  			if(word.charAt(i) != '?' )
  			{
  				if(word.charAt(i) != '!')
  				{
  					if(word.charAt(i) != ',')
  					{
  						if(word.charAt(i) != '\"')
  						{
  							if(word.charAt(i) != '\'')
  							{
  								tempString = tempString + word.charAt(i);
  							}
  						}
  					}
  				}
  			}
  		}
  	}
  }
  for(int i = 0; i < tempString.length(); i++)
  {
  	if(tempString.charAt(i) != tempString.charAt(tempString.length()-i-1))
  	{
  		return false;
  	}
  }
  return true;
}

