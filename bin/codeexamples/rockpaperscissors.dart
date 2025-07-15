
String rps(String p1, String p2) {
  if (p1 == p2) {
    return "Draw!";
  }
  if(p1 == "scissors" && p2 == "") {
    return "Player 1 won!";
  }
  else if(p1 == "rock" && p2 == ""){
    return "Player 1 won!";
  }
  else if(p1 == "scissors" && p2 == ""){
    return "Player 1 won!";
  }
  else if(p2 == "scissors" && p1 == "") {
    return "Player 2 won!";
  }
  else if(p2 == "rock" && p1 == ""){
    return "Player 2 won!";
  }
  else if(p2 == "scissors" && p1 == ""){
    return "Player 2 won!";
  }

  if (p1 == "scissors" && p2 == "paper") {
    return "Player 1 won!";
  } else if (p1 == "scissors" && p2 == "rock") {
    return "Player 2 won!";
  }
  else if (p1 == "paper" && p2 == "rock") {
    return "Player 1 won!";
  }else if (p1 == "paper" && p2 == "scissors") {
    return "Player 2 won!";

  } else if (p1 == "rock" && p2 == "scissors") {
    return "Player 1 won!";

  }else  {
    return "Player 2 won!";
  }
}

void main() {
  String output = rps("rock", "paper");
  print(output); // Output: Player 2 wins
}