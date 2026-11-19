defmodule Game do
  def winner("rock", "scissors"), do: "You win!"
  def winner("paper", "rock"), do: "You win!"
  def winner("scissors", "paper"), do: "You win!"
  def winner(a, a), do: "It's a tie!"
  def winner(_, _), do: "Computer wins!"
end

choices = ["rock", "paper", "scissors"]

player = IO.gets("Choose rock, paper or scissors: ")
         |> String.trim()
         |> String.downcase()

if player in choices do
  computer = Enum.random(choices)

  IO.puts("You chose: #{player}")
  IO.puts("Computer chose: #{computer}")
  IO.puts(Game.winner(player, computer))
else
  IO.puts("Invalid choice!")
end
