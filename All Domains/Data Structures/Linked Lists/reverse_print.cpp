
/*
  Reverse a linked list and return pointer to the head
  The input list will have at least one element  
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
void ReversePrint(Node *head)
{
  Node *curr = head;
  Node *newHead = NULL;
  while(curr){
    Node *temp = curr;
    curr = curr->next;
    temp->next = newHead;
    newHead = temp;
  }

  while(newHead){
    cout << newHead->data << "\n";
    newHead= newHead->next;
  }
}
