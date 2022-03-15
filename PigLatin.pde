public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
  //not used
}
public int findFirstVowel(String sWord) {
  int index = -1;
  for (int i=0; i<sWord.length(); i++) {
    String letter = sWord.substring(i, i+1);
    if (letter.contains("o")||letter.contains("e")||letter.contains("a")||letter.contains("i")||letter.contains("u")) {
      index=i;
      break;
    }
  }
  return index;
}

public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
  if (sWord.length()<=0) {
    return "ERROR!";
  }
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if (findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  } else if (sWord.substring(0, 2).equals( "qu")) {
    return sWord.substring(2) +"quay";
  }
  else{
    return sWord.substring(findFirstVowel(sWord)) +sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
}
