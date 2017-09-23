function [output, A1, A2, A3, A4, A5, A6] = modify(A)

% 1. Extract the entry in the 3rd row, 4th column using linear indexing. Label this variable as y1.
y1 = A(12);
% 2. Extract the entry in the 2nd row, 3rd column using (row,column) indexing. Label this variable as y2.
y2 = A(2,3);
% 3. Extract [f g; j k] from A using (row, column) indexing. Label this variable as A1.
A1 = A(2:3,2:3);
% 4. Extract the values [f j c] from A using linear indexing. Save this variable as A2.
A2 = A(5:7);
% 5. Create a new array A3 with values from array A. Assign the value 6 to the 3rd row, 2nd column of A3
% using (row, column) indexing.
A3 = A;
A3(3,2) = 6;
% 6. Add a new row to the end of array A3, and assign all the elements to zero.
A3 = [A3; zeros(1,4)];
% 7. Create a new array A4 which doubles every element of A.
A4 = 2*A;
% 8. Create a new array A5 which is the transpose of A.
A5 = transpose(A);
% 9. Create a new 4-by-3 array A6 concatenating a row array [4 0 3] with [3 3 3; 1 0 0; 2 5 1].
A6 = [[4 0 3]; [3 3 3; 1 0 0; 2 5 1]];
% 10. Multiply the arrays A5 and A6 element by element, and save the result as A6.
A6 = A5.*A6;
% 11. Remove the first row of A6.
A6(1,:) = [];
% 12. Find the number of rows in A6. Store the result in a variable called y3.
y3 = size(A6,1);
% 13. Find the number of elements greater than 10 in array A6. Store the result in a variable called y4.
y4 = size(find(A6 > 10),1);

output = [y1 y2 y3 y4];

end