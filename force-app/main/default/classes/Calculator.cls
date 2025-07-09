public class Calculator {
  /**
   * Returns the sum of two input arguments
   * @param a First number
   * @param b Second number
   * @return Sum of a and b
   */
  @AuraEnabled(cacheable=true)
  public static Decimal addNumbers(Decimal a, Decimal b) {
    return a + b;
  }

  /**
   * Returns the difference of two input arguments
   * @param a First number
   * @param b Second number
   * @return Difference of a and b (a - b)
   */
  @AuraEnabled(cacheable=true)
  public static Decimal subtractNumbers(Decimal a, Decimal b) {
    return a - b;
  }

  /**
   * Returns the product of two input arguments
   * @param a First number
   * @param b Second number
   * @return Product of a and b (a * b)
   */
  @AuraEnabled(cacheable=true)
  public static Decimal multiplyNumbers(Decimal a, Decimal b) {
    return a * b;
  }

  /**
   * Returns the quotient of two input arguments
   * @param a First number (dividend)
   * @param b Second number (divisor)
   * @return Quotient of a and b (a / b)
   */
  @AuraEnabled(cacheable=true)
  public static Decimal divideNumbers(Decimal a, Decimal b) {
    if (b == 0) {
      throw new Calculator.CalculatorException('Division by zero is not allowed');
    }
    return a / b;
  }

  /**
   * Custom exception class for Calculator errors
   */
  public class CalculatorException extends Exception {}
}
