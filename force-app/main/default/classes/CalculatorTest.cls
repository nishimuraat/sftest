@IsTest
public class CalculatorTest {
  @IsTest
  static void testAddNumbers() {
    // Test positive numbers
    Decimal result1 = Calculator.addNumbers(5, 3);
    System.assertEquals(8, result1, 'Should return sum of positive numbers');

    // Test negative numbers
    Decimal result2 = Calculator.addNumbers(-5, -3);
    System.assertEquals(-8, result2, 'Should return sum of negative numbers');

    // Test mixed numbers
    Decimal result3 = Calculator.addNumbers(10, -3);
    System.assertEquals(7, result3, 'Should return sum of mixed numbers');

    // Test with zero
    Decimal result4 = Calculator.addNumbers(0, 5);
    System.assertEquals(5, result4, 'Should handle zero correctly');

    // Test decimal numbers
    Decimal result5 = Calculator.addNumbers(2.5, 3.7);
    System.assertEquals(6.2, result5, 'Should handle decimal numbers');
  }

  @IsTest
  static void testSubtractNumbers() {
    // Test positive numbers
    Decimal result1 = Calculator.subtractNumbers(5, 3);
    System.assertEquals(
      2,
      result1,
      'Should return difference of positive numbers'
    );

    // Test negative numbers
    Decimal result2 = Calculator.subtractNumbers(-5, -3);
    System.assertEquals(
      -2,
      result2,
      'Should return difference of negative numbers'
    );

    // Test mixed numbers
    Decimal result3 = Calculator.subtractNumbers(10, -3);
    System.assertEquals(
      13,
      result3,
      'Should return difference of mixed numbers'
    );

    // Test with zero
    Decimal result4 = Calculator.subtractNumbers(5, 0);
    System.assertEquals(5, result4, 'Should handle zero correctly');

    // Test decimal numbers
    Decimal result5 = Calculator.subtractNumbers(5.7, 2.5);
    System.assertEquals(3.2, result5, 'Should handle decimal numbers');
  }
}
