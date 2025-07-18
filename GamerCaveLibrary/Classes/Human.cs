﻿namespace GamerCaveLibrary.Classes;

public class Human : IPlayer
{
    private readonly Game game;
    private readonly TextReader input;
    private readonly TextWriter output;

    public Human(Game game, TextReader input, TextWriter output)
    {
        this.game = game;
        this.input = input;
        this.output = output;
    }

    public virtual string GetNextMove()
    {
        output.WriteLine(GetCurrentBoard());
        return GetMove();
    }

    private string GetCurrentBoard()
    {
        var board = @"
| 1 | 2 | 3 |
| 4 | 5 | 6 |
| 7 | 8 | 9 |".Trim();
        board = game.MovesFor("X").Aggregate(board, (current, move) => current.Replace(move, "X"));
        board = game.MovesFor("O").Aggregate(board, (current, move) => current.Replace(move, "O"));
        return board;
    }

    private string GetMove()
    {
        string result;
        do
        {
            output.Write(MovePrompt());
            result = input.ReadLine()!;
            output.WriteLine();
        } while (!game.IsAllowedMove(result));
        return result;
    }

    private string MovePrompt() { return $"Select your move ({string.Join(", ", game.AvailableMoves)}): "; }
}