import 'dart:io';
import 'dart:math';

String all_hand = r"""
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)

    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)

    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)

""";

String sciss_x_paper = r"""
		    _
		_ /   \_
	      _/_ |   | _\
	     / |  |   |   |                                 ____________________
            |  |  |   |   |              _________________|   \ __________       \  
            |  |  |   |   |             (_______________  |   |\          \______ \_____ 
	    |             |  / \                         \|   |            
	    |             | / \/     ___________________ / \__|              
 	    |             |/  /     (_____________________________________________|
	    |             /  /                             (____________|__)      |________        
	    \                                                 (__________|__)    /        
	      |           |                                         \___________/
	      |
	      |
	    
	    
	    """;

String rock_x_paper = r"""
		        ______________          _______________
		       /  ___________|\\       {               \
		      /  / _______    \\\      |   /--\         \_______________
		____ /__/ /       |__ ///      |   |/|\\         |
	              |                        |     |/ \
		      |                        |_____/   |       /
		      \ ______________         /--------/     ()/_________________  
	       _______________________)       |________________/          
		                                 
		
		
""";

String sciss_x_rock = r"""                                     
                                                ______________ 
     -------------- \                         (              \
    /                \                        |   /--\       \
   /_____/-------\ |-|------------\           |   ||   \       |---------  
_/|               \|_/------------/           |   |/|\  \      |
  |    _______________|_______________        |     |/- |
  |   (_}_____________/_______________)       |_____/_/ |
__|    (_}__________/                          /--------/     /----------   
   \________________/                         |            ()/
                                               \____________/

""";

enum Move { rock, paper, scissors }
void main() {
  print(all_hand);
	final rng = Random();
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('You played: $playerMove');
      print('AI played: $aiMove');
      if (playerMove == aiMove) {
        print("It's a draw");
			} else if (playerMove == Move.rock && aiMove == Move.scissors) {
					print(sciss_x_rock);
					print("You win");
			} else if (playerMove == Move.paper && aiMove == Move.rock) {
					print(rock_x_paper);
					print("You win");
			} else if (playerMove == Move.scissors && aiMove == Move.paper) {
        	print(sciss_x_paper);
					print("You win");
      } else {
        print("You lose");
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
	
// while true
//   Show prompt
//   Read user input from console
//   If input is a valid move ("r", "p", "s")
//     Choose the AI move at random
//     Compare the player move with the AI move
//     Show the result
//   else if input is "q"
//     Quit the program
//   else
//     Invalid input
}
