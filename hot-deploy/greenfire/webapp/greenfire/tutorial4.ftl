<!DOCTYPE html>
<html lang="en-US">





<main id="main">
  <section >
      As you have already seen, in Merscythe's new world objects are controlled using methods. For example, doors are opened and closed using the methods open and close of the Door class, alarms are enabled and disabled through the methods enable and disable of the Alarm class. In this part of the story, Merscythe has to program an elevator. The class GlassElevator, which is one word, contains several methods, including the go_to_floor method that dispatches the elevator to the desired floor. However, Merscythe encounters a problem when  he uses this method:
glass_elevator = GlassElevator()
glass_elevator.go_to_floor()
The problem is method go_to_floor has not been provided the number of the destination floor, and so the elevator does not know which floor to go to. Luckily, this problem can be resolved easily by specifying the floor number within the parentheses. For example, this statement sends the elevator to floor 5:
glass_elevator.go_to_floor(5)
The value 5 is called an argument to the method. Arguments are values that are given to methods and used within the method to perform the desired action. To go to a different floor, Merscythe would need to change this argument to the target floor number. Note that you can only give arguments to methods that are defined with parameters. The method go_to_floor is defined in the following manner in the class GlassElevator:
def go_to_floor(target_floor)
The keyword def, spelled d-e-f, tells us that this is the definition of the method go_to_floor. This method takes one parameter called target_floor, which is the number of the destination floor. The argument 5 gets copied into this parameter target_floor in the method's definition when the program is run. The method contains programming statements that tell the elevator how to move to the target floor. To keep things simple, we will not discuss any of the code within this method for now.
Unlike method go_to_floor, the method open in class Door does not take any parameters, and is defined as follows:
def open()
This is not entirely true, because all methods have at least one parameter called self. However, you don't need to understand why this parameter is needed until you are ready to start writing classes on your own, so we will ignore this parameter for now.
To summarize what we have discussed so far, when the definition of a method in a class contains one parameter, you will invoke that method with one argument in your program. Methods can be defined with more than one parameter, and we discuss these next.
Suppose that the method go_to_floor in the GlassElevator class had been defined with two parameters to allow the programmer to control the speed of the elevator:
def go_to_floor(target_floor, speed)
The first parameter in this method's definition is the target floor and the second parameter is the elevator's speed in miles/hour. The order of arguments given to the method in the program must correspond to the order of the parameters in the method's definition. The glass elevator can be programmed to move to the negative 10th floor at a whopping speed of 100 miles per hour as follows: 
glass_elevator.go_to_floor(-10, 100)
 The first number, negative 10, corresponds the first parameter, target_floor, and the second argument of 100 corresponds to the second parameter called speed. What would happen if the order of the arguments was reversed accidentally? The target floor would be set to 100 and the speed to -10. The results could be disastrous! So make sure that you give the arguments in the correct order to any method. To avoid making mistakes, you can also specify the name of each parameter explicitly when you use the method in the program. For example,
glass_elevator.go_to_floor(target_floor=-10, speed=100)
Now, when you give the name of the parameter, you can change the order of the arguments and there will not be any ill-effects. Therefore, the following is correct as well:
glass_elevator.go_to_floor(speed=100, target_floor=-10)
You've seen that classes contain methods and have also learnt about functions such as input and print that can perform other types of operations. What is the difference between a function and a method? A method is associated with a class, so it is used to control an object. On the other hand, a function is not associated with any specific object and is more general. Any method can be written as a function, but it is less intuitive to do so. After all, we don't want a door to move like an elevator or sound an alarm. So it's a good idea to make go_to_floor a method in the GlassElevator class and enable a method in the Alarm class. On the other hand, input and print are not associated with specific classes because all programs may need to use them; therefore, these are functions. This concludes the tutorial. 

    </section>
</main>