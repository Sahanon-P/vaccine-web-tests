# End to end testing
## Installation
**Prerequisties**    
Make sure you has a chromedriver in your environment path or you can include in this project.    
Feel free to download it from here -> https://chromedriver.chromium.org/downloads    

Install all the python modules that use in this project.    
- robotframework    
`pip install robotframework`    
- robotframework seleniumlibrary     
`pip install robotframework-seleniumlibrary`

**Guide**    
- Clone this project    
`git clone <this-project-url>`    
- In the project directory run this command    
`robot test_appointment.robot`

## Review    
Robot framework is very convenience in searching the hidden elements that are in the nested `div` or `class` which I think it absolutely great!
What I think it annoying me the most is the way it use the indentation. You need to use more than 2 indentation to separate the command in each line and sometimes it confusing me a lots.

For end to end testing if you are the beginner this tools is very useful and easy to learn but if you can write a javascript I think cypress is way more better. 

## Useful Resources    
This one using tools call `wxpython` for testing the robot framework. Not have any code tutorials but good for getting the concept of what we are going to do in robot framework.
https://www.tutorialspoint.com/robot_framework/robot_framework_working_with_dropdown.htm


