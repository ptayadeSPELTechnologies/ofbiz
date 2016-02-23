<!DOCTYPE html>
<html lang="en-US">




<main id="main">
  <section >
   In this tutorial, you are going to learn about conditions. We use conditions to decide what to do in our daily lives. Let's say Eric enjoys pasta and never misses an opportunity to eat it at a restaurant.
if restaurant has pasta :
Eric will eat it
A condition can only be true or false. The condition in this example is “restaurant has pasta”. If this condition is true, the action performed is for Eric to eat it. But this example does not tell us what action to take if the restaurant does not have Eric's pasta. Suppose that Eric would like to try another dish if his favorite one is not available. This can be written as follows:
if restaurant has pasta :
Eric will eat it
else :
Eric will try another dish
Note that we are using the “if” and “else” words here. If the condition is true, the action for the if clause, which is “Eric will eat it” gets executed. Otherwise, if the condition is false, the action for the “if” clause is skipped and only the action for the “else” clause, which is “Eric will try another dish” gets executed. A condition is followed by one or more actions.
Let’s take another example. Lisa can program a robot to do useful work. Luckily, she is also an expert at fixing the robot if it's broken. The condition is “Lisa’s robot is broken”.  We can write this as follows:
if  Lisa’s robot is broken :
                        Lisa fixes the robot
else :
Lisa programs the robot to do useful work 
Python uses these two words if and else similarly with conditions. In a program, a condition is evaluated to determine which action or actions to perform. In fact, if and else are reserved words in Python and you cannot use them as variables. Reserved words are also called keywords. In a program, we can use conditions to check the values of variables. For example, suppose that a program has a variable called user that stores the name of a person. We can write some code that checks if variable user stores the name Merscythe as shown in this if clause:
if user == ‘Merscythe’:
Note how the if clause is created. The condition is:
user == 'Merscythe'
This condition will be true if the values on either sides of the equals signs are equal. Two equals signs must be used in the condition, not one; otherwise, the condition will be formed incorrectly. Recall that a single equals sign is used when you are storing a value in a variable. 
Let’s turn our attention back to the program Merscythe ran in the lab to see why it set off the alarm. The first two lines of code are import statements that reference two existing classes Door and Alarm that are used in this program. The next two lines of code are:
user = input('IDENTIFY YOURSELF') print 'Hello, ' +user
 When you hear the word new line, press the enter key on the keyboard to start the next line.
user =  input ( ‘ IDENTIFY YOURSELF  ' )   (new line) 
print  ' Hello , '  space +user
If you have completed the previous tutorial on input and output, you will recognize the that the first line prompts Merscythe to enter his name and stores it in the variable called user. The second line uses the print function to print out the greeting “Hello, Merscythe” on the screen. The next line in this program is:
exit = Door()
This statement means that the object exit is a type of Door.  Recall that Door is a class with methods open and close. So, the object exit can use the open and close methods of this class. 
The following line of code is
siren = Alarm()
The object siren is a type of Alarm. Alarm is a new class that you have not seen as yet. The Alarm class has two methods called enable and disable. So, to sound an alarm, you can use this line of code:
siren.enable()
We are, however, more interested in the more critical part of the program that sets off the alarm. This contains a conditional if/else statement  and the lines of code follow:
if user == 'Ari':     print ‘Access granted’ else:     print 'Access denied'     exit.close()     siren.enable()

Let's review the if clause and its action again:
if user ==  ‘ Ari ’ :  (new line)
(4 spaces) print  ' Access  space granted '
This statement checks if the variable user stores the text Ari. If this condition is true,  the action taken is to display the text ‘Access granted’ on the screen. What this means is that if the user enters the name “Ari’ as input, the program will display “Access granted”.  Another important point to remember is that the action must be placed on the next line after the condition and it must have a few spaces (usually 4) before it. If you hear the words "4 spaces" when the program is being read, press the space bar four times when you are writing out the program in the editor. It is important to use a consistent number of spaces before each action in a program; otherwise, it will result in an error and the program will not run. Note that there is a colon at the end of the if statement. Also, remember that to check for equality, two equals signs must be used in the condition. 
What happened when Merscythe typed in his name as input to the program? The condition user equal to Ari became false, so the program did not execute the action in the if clause. Instead, it executed the actions for the else clause. The actions for else are given by the three statements that follow the “else” Python word. Let us examine these statements in the program:
(4 spaces) print 'Access denied’ (new line) (4 spaces) exit.close()  (new line) (4 spaces) siren.enable()  
As a result, the words “Access denied” were printed on the screen, the exit was closed and the siren was sounded. 
With this information, Merscythe is getting smarter. He changes the name from Ari to Merscythe in the program. The code looks like this:
if user == ‘Merscythe': (new line) (4 spaces)   print ‘Access granted’ (new line) else: (new line) (4 spaces) print 'Access denied’ (new line) (4 spaces) exit.close() (new line) (4 spaces) siren.enable() 
Now, if Merscythe ran this modified program and typed in his own name, “Access granted” would be displayed on the screen. With any other name, the screen would display “Access denied”, the exit would close and the siren would sound. This concludes the tutorial. 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </section>
</main>