class Solution {
  int romanToInt(String s) {
    int result = 0;

    // Calculator roman.
    for (int i = 0; i < s.length; i++) {
      if (s[i] == "M")
        result += 1000;
      else if (s[i] == "D")
        result += 500;
      else if (s[i] == "L")
        result += 50;
      else if (s[i] == "V")
        result += 5;

      if (s[i] == "C") {
        result += 100;

        if (i + 1 != s.length) {
          if (s[i + 1] == "D") {
            result += 300;
            i++;
          } else if (s[i + 1] == "M") {
            result += 800;
            i++;
          }
        }
      }

      if (s[i] == "X") {
        result += 10;

        if (i + 1 != s.length) {
          if (s[i + 1] == "L") {
            result += 30;
            i++;
          } else if (s[i + 1] == "C") {
            result += 80;
            i++;
          }
        }
      }

      if (s[i] == "I") {
        result += 1;

        if (i + 1 != s.length) {
          if (s[i + 1] == "V") {
            result += 3;
            i++;
          } else if (s[i + 1] == "X") {
            result += 8;
            i++;
          }
        }
      }
    }

    return result;
  }
}