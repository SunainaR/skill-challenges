# Golden Square - skill challenges

## RSpec further notes
> Using context in rspec. Seems to be a logical grouping of it statements. Generally, good to use this context statement when you have multiple "its" which are linked e.g. "with multiple input string". Makes sense to use the context statement for a single case when it's already been used in the script.

<code>bundle exec rspec</code> run in the terminal will use the rspec version specified in gemfile. This is why good practice is to ensure gemfile is included within the respository.

> RSpec expects to test classes, so we don't have to put the class name as a string following the descibe method.

## Single Method Program Design

1. Desribe the problem, clarifying aspects of the user story if provided.

2. Design the Method Signature:
*  The name of the method
*  What parameters it takes
* What is returns and the data type of that value
* Any side effects it might have

> Side effects could be a method that updates an instance variable for the class or changes it state, sends http request, logs something to console, reading from a database e.g. if database is off but can't read so raises error or writing to a database.
A pure function has no side effects and just returns something e.g. check_postcode(postcode : string) -> boolean

3. Create Examples as tests

These are examples of the method being called with particular argument and what the method should return in each situation.

For complex challenges, come up with list of examples first and then test-drive them one-by-one.
For simpler ones, could dive straight into writing test for the first example to address.

4. Implement the behaviour

For each example created as a test, implelement the method to retur the right value for the given arguments. 

Return to step 3 and revise design as necessary.

