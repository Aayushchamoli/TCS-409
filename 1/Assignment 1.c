#include<iostream>
#include<cmath>

using namespace std;
int jumpSearch(int array[], int size, int key, int &comparisons) 
{
   int start = 0;
   int end = sqrt(size);

   while(array[end] <= key && end < size) 
   {
      start = end;
      end = end + sqrt(size);
      if(end > size - 1)
         end = size;
         comparisons++;
        
   }

   for(int i = start; i<end; i++) 
   { 
      comparisons++;
      if(array[i] == key)
         return i;
   }
   return -1;
}

int main() 
{
   int n, searchKey, loc,comparisons=0;
   cout << "Enter number of items: ";
   cin >> n;
   int arr[n]; 
   cout << "Enter items: " << endl;

   for(int i = 0; i< n; i++) 
   {
      cin >> arr[i];
   }

   cout << "Enter search key to search in the list: ";
   cin >> searchKey;
   if((loc = jumpSearch(arr, n, searchKey,comparisons)) >= 0)
   {
      cout << "Item found at location: " << loc << endl;
   }
   else
   {
      cout << "Item is not found in the list." << endl;
   }
   cout<<"no of comparisons="<<comparisons<<endl;
}
