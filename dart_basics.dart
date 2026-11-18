// Student: Moumen
// Reg no: 24429
const String regNo = '24429';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// B2: Count vowels
int countVowels(String text) {
  // by M
  String lowerText = text.toLowerCase();
  int count = 0;
  for (int i = 0; i < lowerText.length; i++) {
    String ch = lowerText[i];
    if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
      count++;
    }
  }
  return count;
}

// B3: Initials
String initials(String fullName) {
  // by M
  String trimmed = fullName.trim();
  if (trimmed.isEmpty) {
    return '';
  }
  List<String> parts = trimmed.split(' ');
  String result = '';
  for (int i = 0; i < parts.length; i++) {
    if (parts[i].isNotEmpty) {
      result += '${parts[i][0].toUpperCase()}.';
    }
  }
  return result;
}

// C5: Right-aligned triangle (using while loops)
void drawTriangle(int height) {
  // by M
  if (height <= 0) {
    return;
  }
  int row = 1;
  while (row <= height) {
    String line = '';
    int spaces = height - row;
    int s = 0;
    while (s < spaces) {
      line += ' ';
      s++;
    }
    String charToUse = (row % 2 == 1) ? '*' : '#';
    int c = 0;
    while (c < row) {
      line += charToUse;
      c++;
    }
    print(line);
    row++;
  }
}

// D2: MoMo receipt printer (using while loops)
int momoFee(int amount) {
  // by M
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}

String maskPhone(String phone) {
  // by M
  if (phone.length != 10) {
    return 'INVALID';
  }
  String prefix = phone.substring(0, 3);
  String suffix = phone.substring(8, 10);
  return '$prefix*****$suffix';
}

void main() {
  // by M
  print('Reg no: $regNo | D=$d | T=$t');

  // Test B2
  String myName = 'Moumen';
  int vowelCount = countVowels(myName);
  print('$myName has $vowelCount vowels');

  // Test B3
  print(initials(myName));
  print(initials('  ana   uwase  '));
  print(initials('   '));

  // Test C5
  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2);

  // Test D2
  int i = 1;
  int totalFees = 0;
  String phone = '0788123456';
  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    totalFees += fee;
    print('Receipt $i: $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');
    i++;
  }
  print('Total fees: $totalFees RWF');
}