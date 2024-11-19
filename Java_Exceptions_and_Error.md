### Responsibilities for throwing and catching exceptions

In **"Clean Code"** by Robert C. Martin, the responsibility for 
**handling (catching) an exception generally falls to the caller**, 
while the responsibility for 
**throwing an exception falls on the function that encounters the problem.**

The function should throw an exception when it encounters an error it cannot handle, 
and the caller should catch the exception to handle it appropriately or to propagate it further up the call stack.