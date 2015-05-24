/*
  Insert Node at a given position in a linked list 
  The linked list will not be empty and position will always be valid
  First element in the linked list is at position 0
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* InsertNth(Node *head, int data, int position)
{
  Node *n = new Node();
  n->data = data;
  n->next = NULL;
  if(!head){
    return n;
  }
  if(position == 0)
  {
    n->next = head;
    return n;
  }
  Node *curr = head;
  Node *prev = head;
  while(position--){
    prev = curr;
    curr= curr->next;
  }
  if(curr == prev){
    head->next = n;
    return head;
  }
  n->next = curr;
  prev->next = n;
  return head;
}
