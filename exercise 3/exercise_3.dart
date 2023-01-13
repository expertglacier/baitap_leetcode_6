class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    List<String> kList = k.toString().split("");
    // Nếu 2 phần tử của num và k cộng với nhau > 9,
    // temp sẽ được dùng để lưu số hàng chục.
    int temp = 0;
    List<int> result = [];

    // Thêm các số 0 vào để num và k có độ dài bằng nhau.
    if (num.length > kList.length) {
      List<String> tempZero = List.filled(num.length - kList.length, "0");
      kList.insertAll(0, tempZero);
    } else if (num.length < kList.length) {
      List<int> tempZero = List.filled(kList.length - num.length, 0);
      num.insertAll(0, tempZero);
    }

    // Cộng num và k.
    for (int i = num.length - 1; i >= 0; i--) {
      int elementNum = num[i] + temp;
      int elementKList = int.parse(kList[i]);

      int sumElement = elementNum + elementKList;

      if (sumElement > 9 && i == 0) {
        result.insert(0, sumElement % 10);
        temp = sumElement ~/ 10;
        result.insert(0, temp);
      } else if (sumElement > 9) {
        result.insert(0, sumElement % 10);
        temp = sumElement ~/ 10;
      } else if (sumElement <= 9) {
        result.insert(0, sumElement);
        temp = 0;
      }
    }

    return result;
  }
}