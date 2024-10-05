List<int> sortRandomNumbers(List<int> numbers) {
  // input 10 random numbers n=10
  // iterate over numbers
  // set index to the number
  // add number in the corresponding index

  List<int> sortedNumbers = List.filled(numbers.length, 0);
  for (int i = 0; i < numbers.length; i++) {
    int index = numbers[i];
    sortedNumbers[index - 1] = index;
  }
  return sortedNumbers;
}
