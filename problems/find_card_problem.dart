// Linear Search
int findNumberInCards(List<int> cards, int number) {
  if (cards.isEmpty) return -1;
  for (int i = 0; i < cards.length; i++) {
    if (number == cards[i]) return i;
  }

  return -1;
}
// Binary Search

int findNumbersInCardsBinary(List<int> cards, int number) {
  /* 
  1- determine low and high 
  2- determine middle (middle = high+low/2)
  3- if middle card = number return index of middle 
  4- if number < middle card low=middle+1 repeat from 2 
  5- if number > middle card high=middle-1 repeat from 2
  6- if low>high return -1
  */
  if (cards.isEmpty) return -1;

  int low = 0;
  int high = cards.length - 1;
  while (low <= high) {
    int middle = (high + low) ~/ 2;
    if (number == cards[middle]) {
      return middle;
    }
    if (number < cards[middle]) {
      low = middle + 1;
    } else {
      high = middle - 1;
    }
  }
  return -1;
}
