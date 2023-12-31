void main() {
  //list of some numbers
  print('19.1, 28.9, 11.1, 15.7, 24.0, 17.5, 16.8, 29.9, 27.6');

  //From the given numbers find the required
  List<double> numbers = [19.1, 28.9, 11.1, 15.7, 24.0, 17.5, 16.8, 29.9, 27.6];
  // Function to find the maximum number in the list
  double findMaximum(List<double> numbers) {
    double maximum = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > maximum) {
        maximum = numbers[i];
      }
    }
    return maximum;
  }

  // Function to find the minimum number in the list
  double findMinimum(List<double> numbers) {
    double minNum = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] < minNum) {
        minNum = numbers[i];
      }
    }
    return minNum;
  }

  // Function to calculate the sum of all numbers in the list
  double calculateSum(List<double> numbers) {
    double sum = 0;
    for (int i = 0; i < numbers.length; i++) {
      sum += numbers[i];
    }
    return sum;
  }

  // Function to calculate the average of all numbers in the list
  double calculateAverage(List<double> numbers) {
    double sum = calculateSum(numbers);
    double average = sum / numbers.length;
    return average;
  }

  // Output the results
  print('Maximum number: ${findMaximum(numbers)}');
  print('Minimum number: ${findMinimum(numbers)}');
  print('Sum of all numbers: ${calculateSum(numbers)}');
  print('Average of all numbers: ${calculateAverage(numbers)}');
}
