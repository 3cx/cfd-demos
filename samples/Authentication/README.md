# Using the Authentication Component to Validate Customers
## Summary 
Many times we need to authenticate callers, asking for an ID and PIN, and then validating them against different data sources. Usually we also need to iterate this procedure, and ask for the ID and PIN again in case of validation failure, until the validation succeeds or we reach a number of retry attempts. We have simplified this procedure to perform all these tasks in a single component. Now the [3CX Call Flow Designer](https://www.3cx.com/phone-system/call-flow-designer/) includes the Authentication component for this!

This guide describes how to use the new **“Authentication”** component to ask for an ID and PIN, and perform the validation using a web service. It also includes info on how to use the “Web Service REST” component for the validation.

[Read more](https://www.3cx.com/docs/cfd-validate-customers/)
