<!DOCTYPE html>
<html lang="en-US">





  <section id="main">
      <p>Merscythe sees the words “IDENTIFY YOURSELF” on the screen in the lab. He types in his <kbd>name</kbd> and this information is read by the program; this is known as giving input to a program. The program then displays <samp>“Hello, Merscythe”</samp> on the screen- this is called program output. In this tutorial, you will learn how to make a program interactive through input and output so that it can read the data the user types in and display information to the user. To do so, two functions that are built into the language called input and print are used. Functions are similar to methods in that they also used to perform tasks. However, there are differences between the two and we will discuss these later.</p>
<p>The function print is used to display information on the screen when the program runs. For example, to display Merscythe’s name, you will write the following statement in the editor and run the program:</br>
<code>print ‘Merscythe’</code></br>
To print other information, such as the statement <samp>“I am learning Python”</samp>, you can write this line of code:
<code>print ‘I am learning Python’</code></br>
Using the print function, try writing other statements in the editor. Compile and run each program and check that the output is correct. If you forget to enclose the text you are printing on the screen within quotes, it will result in an error.
Variables are another important part of Python programs and are used to store data, such as text or a number, that is needed in the program. Any name can be chosen for a variable, but it cannot start with a digit.  For example, in this next line we create a variable called num and store the number 10 in it:
<code>num = 10</code></br>
The name of the variable must be placed to the left of the equals sign. It would be incorrect to write:</br>
<code>10 = num</code></br>
You can also store text data in a variable, but will need to enclose the text within quotes. As an exercise, type out the next two lines in the editor. They are spelled out for you. When you hear the word space, press the space bar, and when you hear the word new line, press the enter key on the keyboard to start the next line.
<pre>user = ‘Ginger’ (new line)
print space user</pre>
In the first line, the text "Ginger" is stored in the variable user. In the second line, the value stored in the variable user is printed on the screen using the print function. Note that the variable name is not enclosed within quotes when it is used with print because we would like to display the data that is stored in this variable and not the name of the variable. Copy the program into the editor and run it. Check that when the program is run, the name <samp>"Ginger"</samp> is displayed on the screen. 
Suppose you wanted to append the text "My name is" before printing out the value of the variable <var>user</var>. All you need to do is include the desired text within quotes and prefix a plus sign before the variable name. You can do this with the following statement:
<code>print (space) ' My space name space is ' space +user</code></br></p>
<p>Now that you have this background, let's get back to the program that Merscythe sees in the lab. When Merscythe types in his name, it is read by the program. This is called giving input to a program. A function called “input” reads data that the user of the program (in this case, Merscythe) types in at the console. The input function is useful because it allows the user to interact with the program. For example, the following statement asks for identification and prompts the user to enter text.</p>
<code> user = input(‘Identify yourself’) </code></br>
This displays the two words <samp>‘Identify yourself’</samp> on the screen. The name that Merscythe then types in using his keyboard is stored in the variable called user.
The following statement prints out the value stored in the user variable:</p>
 <code>print user</code>
Let’s take another example. This program reads your favorite day of the week and prints it out. Type this program in the editor and run it:</br>
<pre>day_of_week = input(‘Enter your favorite day of the week’)
print day_of_week</pre></p>
<p>When you run this program, it will prompt you to enter your favorite day of week. You will type in your choice on the keyboard (say, Tuesday) and press the Enter key. Then, this text you have typed in will be read by the program and stored in the variable day_of_week. Finally, the print statement will display the value of the variable on the screen. </br> 
This concludes the tutorial. </p>
    </section>
