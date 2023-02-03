class Solution {
  List<List<int>> largeGroupPositions(String s) {
    List<List<int>> result = [];
    int flag = 0;
    int checkResult = 1;

    // Tìm index bắt đầu - kết thúc của các số giống nhau
    // (từ 3 số trở lên).
    for (int i = 0; i < s.length; i++) {
      if (i + 1 != s.length && s[i] == s[i + 1]) {
        checkResult += 1;
      } else {
        if (checkResult >= 3) {
          result.add([flag, i]);
        }

        flag = i + 1;
        checkResult = 1;
      }
    }

    return result;
  }
}