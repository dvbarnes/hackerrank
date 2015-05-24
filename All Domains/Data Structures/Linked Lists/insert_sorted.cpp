/*
    Insert Node in a doubly sorted linked list 
    After each insertion, the list should be sorted
   Node is defined as
   struct Node
   {
     int data;
     Node *next;
     Node *prev
   }
*/
Node* SortedInsert(Node *head,int data)
{
  Node *n = new Node();
  n->next = NULL;
  n->prev = NULL;
  n->data = data;
  if(!head)
    return n;

  Node *curr = head;
  if(!curr->next){
    curr->next = n;
    n->prev = curr;
  }
  while(curr->next && curr->data < data){
    curr= curr->next;
  }
  if(curr->next) {
    n->next = curr->next;
    curr->next->prev = n;
    curr->prev->next = n;
    curr->next = n;
    n->prev = curr;
  }
  
  return head;

}
