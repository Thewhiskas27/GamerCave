using GamerCaveLibrary.Classes;
using NUnit.Framework;

namespace GamerCave.Features;

public static class GameExt
{
    public static void MakeMoves(this Game game, params string[] moves)
    {
        foreach (var move in moves)
        {
            var player = move[..1];
            var square = move[1..];
            Assert.That(player, Is.EqualTo(game.CurrentPlayer));
            game.MakeMove(square);
        }
    }
}