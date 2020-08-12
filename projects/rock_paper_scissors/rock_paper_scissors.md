## Project: Rock, Paper & Scissors

Build a command line tool that can play rock, paper and scissors.

When started, the program should show this prompt:

```
Rock, paper or scissors? (r/p/s)
```

It should then read the user input and use it as follows:

- If the user enters "r", "p", or "s", treat this as a valid move.
- If the user enters "q", quit the program.
- If the user enters anything else, show "Invalid input", and prompt again.

After the user has entered a valid move, generate another move at random, then compare the two moves according to the rules of the game.

For example, if you played "rock", and the program played "paper", the output should be:

```
You played: rock
AI played: paper
You lose
```

The game should repeat until the player quits by pressing "q".
