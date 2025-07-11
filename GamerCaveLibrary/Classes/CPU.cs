namespace GamerCaveLibrary.Classes;

public class CPU : IPlayer
{
    private readonly Game game;

    public CPU(Game game) { this.game = game; }

    public virtual string GetNextMove()
    {
        var random = new Random();
        var moveIndex = random.Next(0, game.AvailableMoves.Length);
        return game.AvailableMoves[moveIndex];
    }
}