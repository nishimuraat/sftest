import { LightningElement, track } from "lwc";
import addNumbers from "@salesforce/apex/Calculator.addNumbers";
import subtractNumbers from "@salesforce/apex/Calculator.subtractNumbers";
import multiplyNumbers from "@salesforce/apex/Calculator.multiplyNumbers";
import divideNumbers from "@salesforce/apex/Calculator.divideNumbers";

export default class CalculatorComponent extends LightningElement {
  @track firstNumber = "";
  @track secondNumber = "";
  @track result = null;
  @track error = null;

  handleFirstNumberChange(event) {
    this.firstNumber = event.target.value;
    this.clearResults();
  }

  handleSecondNumberChange(event) {
    this.secondNumber = event.target.value;
    this.clearResults();
  }

  clearResults() {
    this.result = null;
    this.error = null;
  }

  validateInputs() {
    if (!this.firstNumber || !this.secondNumber) {
      this.error = "Please enter both numbers";
      return false;
    }
    return true;
  }

  async performAddition() {
    this.clearResults();

    if (!this.validateInputs()) {
      return;
    }

    try {
      const result = await addNumbers({
        a: parseFloat(this.firstNumber),
        b: parseFloat(this.secondNumber)
      });
      this.result = result;
    } catch (error) {
      this.error = "Error performing addition: " + error.body.message;
    }
  }

  async performSubtraction() {
    this.clearResults();

    if (!this.validateInputs()) {
      return;
    }

    try {
      const result = await subtractNumbers({
        a: parseFloat(this.firstNumber),
        b: parseFloat(this.secondNumber)
      });
      this.result = result;
    } catch (error) {
      this.error = "Error performing subtraction: " + error.body.message;
    }
  }

  async performMultiplication() {
    this.clearResults();

    if (!this.validateInputs()) {
      return;
    }

    try {
      const result = await multiplyNumbers({
        a: parseFloat(this.firstNumber),
        b: parseFloat(this.secondNumber)
      });
      this.result = result;
    } catch (error) {
      this.error = "Error performing multiplication: " + error.body.message;
    }
  }

  async performDivision() {
    this.clearResults();

    if (!this.validateInputs()) {
      return;
    }

    try {
      const result = await divideNumbers({
        a: parseFloat(this.firstNumber),
        b: parseFloat(this.secondNumber)
      });
      this.result = result;
    } catch (error) {
      this.error = "Error performing division: " + error.body.message;
    }
  }

  get resultText() {
    return `Result: ${this.result}`;
  }
}
