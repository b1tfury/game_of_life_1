# Game Of Life v0.1


## Problem Description
This is a zero player game. The rules of this game are :

Any live cell with fewer than two live neighbours dies, as if caused by under-population.

Any live cell with two or three live neighbours lives on to the next generation.

Any live cell with more than three live neighbours dies, as if by over-population.

Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

Also for more details please refer to this [wiki](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life).
 

## Dev Environment Setup

You need ruby installed with bundle and rake tool in your machine , thia code is build and run on OS X El Capitan.


## Build Instructions

To install the required gems for the project run: 
 
 ```ruby 
 bundle install
 ```
 
##Run Application 

To run all test run  

```ruby
rake
```


Flow of the game :-

1. Seed the first generation
2. Calculate the next generation
3. current generation == next generation
4. print the current generation
5. Go to Step 2
