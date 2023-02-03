class Solution {
  String removeDuplicates(String s) {
    List result = [];
    int index = 0;

    // Delete elements equal of variable s.
    while (index < s.length) {
      // Phải check result.isEmpty, nếu không sẽ bị lỗi. Vì
      // vế sau của if so sánh result.isEmpty (Dùng 
      // result[result.length - 1] cũng bị lỗi).
      if (result.isEmpty || s[index] != result.last) {
        result.add(s[index]);
        index++;
      } else {
        result.removeLast();
        index++;
      }
    }

    return result.join();
  }
}
