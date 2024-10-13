import 'data_structures/linked_list.dart';

void main() {
  LinkedList<int> numbersLinkedList = LinkedList<int>();

  final head = Node<int>(0);

  numbersLinkedList.addItem(head, 1);
  numbersLinkedList.addItem(head, 2);

  numbersLinkedList.printList(head);
}
