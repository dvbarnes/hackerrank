/*
  Get Nth element from the end in a linked list of integers
  Number of elements in the list will always be greater than N.
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
int GetNode(Node *head,int positionFromTail)
{
  Node *curr = head;
  int len = 0;
  while(curr->next){
    curr = curr->next;
    len++;
  }
  int pos = len - positionFromTail;
  curr = head;
  while(pos--){
    curr = curr->next;
  }
  return curr->data;
}
