void main() {
  List<int> ages = [33, 15, 27, 40, 22];
  ages.sort();
  print('''
  Age lists: ${ages}
  Older Ages: ${higher(ages)}
  Younfer Ages: ${less(ages)}
  Avereg Ages: ${average(ages)}
  ''');
}

int higher(List<int> ages) {
  int age = ages[0];
  for (int index = 0; index < ages.length - 1; index++) {
    if (ages[index + 1] > age) {
      age = ages[index + 1];
    }
  }
  return age;
}

int less(List<int> ages) {
  int age = ages[0];
  for (int index = 0; index < ages.length - 1; index++) {
    if (ages[index + 1] < age) {
      age = ages[index + 1];
    }
  }
  return age;
}

double average(List<int> ages) {
  int sum = 0;
  for (int age in ages) {
    sum += age;
  }
  return sum / ages.length;
}
