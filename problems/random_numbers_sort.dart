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

List<int> twoSum(List<int> nums, int target) {
  List<int> result = List.empty(growable: true);
  if (nums.isEmpty) return result;

  Map<List<int>, int> hash = {};

  for (int i = 0; i < nums.length - 1; i++) {
    hash[[i, i + 1]] = nums[i] + nums[i + 1];
  }
  if (hash.containsValue(target)) {
    final entry = hash.entries.firstWhere(
      (element) => element.value == target,
    );
    result = entry.key;
  }
  return result;
}
