@IsTest
public class SumCalculatorTest {
  @IsTest
  static void testAddNumbers() {
    // Test positive numbers
    Decimal result1 = SumCalculator.addNumbers(5, 3);
    System.assertEquals(8, result1, 'Should return sum of positive numbers');

    // Test negative numbers
    Decimal result2 = SumCalculator.addNumbers(-5, -3);
    System.assertEquals(-8, result2, 'Should return sum of negative numbers');

    // Test mixed numbers
    Decimal result3 = SumCalculator.addNumbers(10, -3);
    System.assertEquals(7, result3, 'Should return sum of mixed numbers');

    // Test with zero
    Decimal result4 = SumCalculator.addNumbers(0, 5);
    System.assertEquals(5, result4, 'Should handle zero correctly');

    // Test decimal numbers
    Decimal result5 = SumCalculator.addNumbers(2.5, 3.7);
    System.assertEquals(6.2, result5, 'Should handle decimal numbers');
  }
}
