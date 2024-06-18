import 'dart:io';

int sum(int a, int b) {
  return a + b;
}

void main() {
  // Prompt the user to enter two numbers
  print('Enter the first number:');
  int num1 = int.parse(stdin.readLineSync()!); // Read and parse user input for num1
  
  print('Enter the second number:');
  int num2 = int.parse(stdin.readLineSync()!); // Read and parse user input for num2
  
  // Calculate the sum using the sum function
  int result = sum(num1, num2);
  
  // Output the result
  print('The sum of $num1 and $num2 is $result');
}
 