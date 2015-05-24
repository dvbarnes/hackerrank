/*
  Remove all duplicate elements from a sorted linked list
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* RemoveDuplicates(Node *head)
{
  Node *curr = head;
  while(curr && curr->next){
    Node *next = curr->next;
    while(next && next->data == curr->data){
      next = next->next;
    }
    curr->next = next;
    curr = curr->next;
  }

  return head;
}
