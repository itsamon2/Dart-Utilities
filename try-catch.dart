void main() {
  try {
    // Potential code that might throw an exception
    int result = 12 ~/ 0; // Division by zero exception
    
    // This line won't be executed if an exception occurs above
    print('Result of division: $result');
  } catch (e) {
    // Catch block to handle the exception
    print('Error occurred: $e');
  }
}
