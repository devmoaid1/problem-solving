import 'data_structures/linked_list.dart';

void main() {
  LinkedList<int> numbersLinkedList = LinkedList<int>();

  final thirdNum = Node<int>(2);
  final secondNum = Node<int>(1);
  final head = Node<int>(0);

  numbersLinkedList.addItem(head, secondNum);
  numbersLinkedList.addItem(head, thirdNum);

  print("head next is ${secondNum.next!.data} ");
}
