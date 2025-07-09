import { createElement } from "lwc";
import CalculatorComponent from "c/calculatorComponent";

describe("c-calculator-component", () => {
  afterEach(() => {
    // The jsdom instance is shared across test cases in a single file so reset the DOM
    while (document.body.firstChild) {
      document.body.removeChild(document.body.firstChild);
    }
  });

  it("renders correctly", () => {
    // Create element
    const element = createElement("c-calculator-component", {
      is: CalculatorComponent
    });
    document.body.appendChild(element);

    // Verify the component renders
    expect(element).toBeTruthy();

    // Check that lightning-card is present
    const card = element.shadowRoot.querySelector("lightning-card");
    expect(card).toBeTruthy();
    expect(card.title).toBe("Calculator");
  });

  it("has input fields for numbers", () => {
    const element = createElement("c-calculator-component", {
      is: CalculatorComponent
    });
    document.body.appendChild(element);

    // Check for input fields
    const inputs = element.shadowRoot.querySelectorAll("lightning-input");
    expect(inputs.length).toBe(2);
    expect(inputs[0].label).toBe("First Number");
    expect(inputs[1].label).toBe("Second Number");
  });

  it("has add and multiply buttons", () => {
    const element = createElement("c-calculator-component", {
      is: CalculatorComponent
    });
    document.body.appendChild(element);

    // Check for buttons
    const buttons = element.shadowRoot.querySelectorAll("lightning-button");
    expect(buttons.length).toBe(2);
    expect(buttons[0].label).toBe("Add");
    expect(buttons[1].label).toBe("Multiply");
  });
});
