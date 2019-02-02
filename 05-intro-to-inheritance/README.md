Inheritance - relationsip between classes that allows a child class to use/have access to the methods of a parent class

Advantages
- If you need to change functionality across multiple classes, you only need to change in one place
- Resuable code
- Abstraction
- Takes up less space/lines of code
- Make an alternative to a class without altering the original class
- Models real life life relationships

Method lookup
1. Is this thing a local variable?
2. Is there a method on this class with this name?
3. Looks up to the inherited class to see if a 
method is defined there, and so and so forth


Modules

- Including modules binds their methods to the class instances.
- Extending modules binds their methods to the class itself.
- You can nest a module inside another module! Just be sure to use _namespacing_!
- You can include a module in another module! Weird!!
