#! /bin/bash
add_book()
{
read -p "Ener Name of the books to add:" newbook
books[$[i++]] =$newbook
#len=${#books[@]}
#books[$len]=$newbook

echo "$newbook added successfully"
echo "all available books:${books[@]}"
}
delete_book()
{
read -p "enter the name of the book to delete:" book_to_delete
available="no"
for index in ${!books[@]}
do
   if [ ${books[$index]} = $book_to_delete ] then
available="yes"
unset books[$index]
echo "$book_to_delete Book Deleted Successfully"
   echo
   break
   fi
done
if [$available ="no"]; then
echo " $book_to_delete Book  is not available,cannot be deleted"
echo
fi
}

list_book()
{
  if [ ${#books[@]} -eq 0 ]; then
 echo "No Books are Availbale"
echo
return 1
fi
echo "List of available books:"
echo"-------------------------"
      for book in ${book[@]}
do  
echo $book
done
echo
}
echo"Welcome to book management applicaion"
echo"*************************************"
decalre -a books
i=0
while [true]
do
read -p "which operation do you want to perform [add\delete\list\exit" option
case $option in
add)
add_book
;;
delete)
delete_book
;;
list)
list_books;;
exit)
echo "thanks for using our application"
exit0
;;
*)
echo "Wrong option,Try Again"

esac
done