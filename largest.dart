import 'dart:io';

void main() {
  // Prompt user to enter numbers separated by spaces
  stdout.write('Enter numbers separated by spaces: ');

  // Read input from user
  String? input = stdin.readLineSync();

  // Check if input is null or empty
  if (input == null || input.trim().isEmpty) {
    print('Invalid input: Please enter at least one number separated by spaces.');
    return; // Exit program if input is empty or null
  }

  // Split input into List of Strings
  List<String> numberStrings = input.split(' ');

  // Convert List of Strings to List of Integers
  List<int> numbers = [];
  for (String numStr in numberStrings) {
    try {
      int number = int.parse(numStr);
      numbers.add(number);
    } catch (e) {
      print('Invalid input: "$numStr" is not a valid integer.');
      return; // Exit program if invalid input is detected
    }
  }

  // Find the largest number in the list
  int largestNumber = findLargestNumber(numbers);

  // Print the largest number
  print('The largest number is: $largestNumber');
}

// Function to find the largest number in a List of integers
int findLargestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List must not be empty');
  }

  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}
