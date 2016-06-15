##Pattern Building

***This is a group lab, so make sure you are working in a group of 2-4 students***

Patterns are all around us. From architecture to fashion, patterns can be seen everywhere and are pleasing to the eye. How can we use computers to generate patterns?

![patterns](https://s3.amazonaws.com/upperline/curriculum-assets/patterns-everywhere.png)

Your mission is to create a series of patterns using Ruby. 

### Part I: The Diamond
Create a program that will print the following diamond:

```
    *
   *** 
  *****
 *******
*********
 *******
  *****
   ***   
    *
```

(The height and the width of the half-diamonds pictured above are 4 with a gap of size 2 separating them.) 

### Part II: User Specified Height

Add a new feature to your program that asks a user how tall they would like to make the diamond. This should be a non-negative integer no greater than 23 (we don't want to make diamond too big).

### Part III: Chained Diamonds

Modify your code to prompt the user for the number of diamonds they want. Using this number, stack the diamonds on top of each other in a chain. This would be an example of a diamond with height of 4 and chain length of 3:

```
    *
   *** 
  *****
 *******
  *****
   ***   
    *
    *
   *** 
  *****
 *******
  *****
   ***   
    *
    *
   *** 
  *****
 *******
  *****
   ***   
    *
```
### Part IV: Side-by-Side
Modify your code to make the diamonds side-by-side. Example:

<img src="https://s3.amazonaws.com/upperline/curriculum-assets/patterns-model.jpg" width="150" style="float:left; margin-right:15px">

```
    *       *       *
   ***     ***     ***
  *****   *****   *****
 ******* ******* *******
  *****   *****   *****
   ***     ***     ***
    *       *       *
```
<br>


### Part V: Rainbow Magic

<img src="https://s3.amazonaws.com/upperline/curriculum-assets/patterns-colored-skirt.jpg" width="200" style="float:right; margin-right:15px">

Find a ruby gem that allows you to give your diamonds color. Print out a diamond that covers the colors of the rainbow.

*Inspiration for this lab comes from one of the labs in Harvard's CS50 class (Intro to Computer Science)


### Optional Practice with Git!
To make things a little more interesting, and give you some practice using Git and Github, you'll be working in a group of 3-4 students. 

Choose one representative from your group to fork this lab. Everyone in your group should clone from that fork. You'll be combining all of your code at the end and submitting a group pull request from this fork. 

Now break up your team in half. Half of you will work on creating the top side of the diamondid and half of you will work on creating the bottom side of the diamond. 

Everyone should write their code in the `pattern.rb` file, but each team should create their own git branch to work off of. To share your code you'll need to push up your branch to the shared repository (the one you forked from). Then nominate someone on the team to pull down the code and work together as a team to combine the code for left and right sides. You may want to do some refactoring and you will probably have [merge conflicts](https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/) that you will need to resolve. 

Use the `git pull` command to pull down the code from Github. You'll also need to use `git merge` to merge each branch into the master branch and combine your changes. 

Danny made a [cheat sheet](https://gist.github.com/dfenjves/6c3832ae7c9d1cf504f2) if you need some help remembering how to use git commands. 

