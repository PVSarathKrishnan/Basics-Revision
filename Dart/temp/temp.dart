void main() {
  List<int> lst = [1, 2, 3];
  SLList l = SLList();
  for (var element in lst) {
    l.insert(element);
  }
  l.display();
}

class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class SLList {
  Node? Head;

  //insert function
  void insert(int data) {
    Node newNode = Node(data);
    Node? current = Head;
    if (Head == null) {
      Head = newNode;
    } else {
      while (current != null) {
        current = current.next;
      }
      current!.data = newNode.data;
    }
  }

  //display
  void display() {
    Node? temp = Head;
    if (temp == null) {
      print("no");
    } else {
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
}
