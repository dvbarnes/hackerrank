/*
  Delete Node at a given position in a linked list 
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* Delete(Node *head, int position)
{
  Node* curr = head;
  Node* prev = head;
  if(position == 0)
  {
  	curr = head->next;
  	delete head;
  	return curr;
  }
  while(position--){
  	prev = curr;
  	curr = curr->next;
  }
  if(!curr){
  	prev->next = NULL;
  }else{
  	prev->next = curr->next;
  }
  delete curr;
  return head;
}
