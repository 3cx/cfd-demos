# How to Play a Digit Sequence from a Call Flow
## Summary
This sample project reads a sequence of numbers that have been pressed by the caller. Many times we face the need to read out a sequence of numbers. For example, we need to request a number using DTMF and ask the user to confirm whether the number that has been entered is valid, by reading the number back to them. We use this example to illustrate how to create an application using the [3CX Call Flow Designer](https://www.3cx.com/phone-system/call-flow-designer/) to do this:

3CX CFD: **“Please, enter your customer code”**.
The user enters *1234* using the keypad.
3CX CFD: **“The customer code entered is 1234”**.
Since the reproduction of digits may be something that is required in different parts of the application, that functionality should be encapsulated in a custom component. The CFD can create custom components that can then be reused in different parts of the application.

[Read more](https://www.3cx.com/docs/cfd-digit-sequence/)
