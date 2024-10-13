class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, [next]);
}

class LinkedList<T> {
  void addItem(Node<T> head, T item) {
    // set pointer to head
    // if pointer`s next is null set pointer`s next to given node.
    // otherwise move pointer to next node ,repeat

    Node<T> pointer = head;
    while (pointer.next != null) {
      pointer = pointer.next!;
    }
    pointer.next = Node<T>(item);
  }

  void printList(Node<T> head) {
    Node<T> pointer = head;
    while (pointer.next != null) {
      print(pointer.data);
      pointer = pointer.next!;
    }
    print(pointer.data);
  }
}
