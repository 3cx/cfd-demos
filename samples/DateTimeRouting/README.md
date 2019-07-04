# Time-based Routing Without Programming
## Summary
Routing calls depending on the date and time is a very common task, so we made it simpler than ever to do. Using the [3CX Call Flow Designer](https://www.3cx.com/phone-system/call-flow-designer/), is now possible to do this without creating a C# function, without any programming experience.

This guide describes how to use the new **“Date & Time condition”** component to route calls to different extensions depending on the time of the day, from a Call Flow app created with the [3CX Call Flow Designer](https://www.3cx.com/phone-system/call-flow-designer/). We apply this routing scheme:

* During out of office hours (including holidays): calls are routed to the **“business closed”** queue.
* During in-office hours, on Monday, Wednesday and Friday from 9 to 12 and from 14 to 17: calls are routed to the **“promotions”** queue.
* During in-office hours, the rest of the days and times: calls are routed to the **“standard”** queue.

[Read more](https://www.3cx.com/docs/cfd-time-based-routing/)
