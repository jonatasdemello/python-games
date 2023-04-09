using Microsoft.VisualStudio.TestTools.UnitTesting;
using UncleTayHouse;

namespace TestProject
{
	[TestClass]
	public class UnitTests
	{
		[TestMethod]
		[DataRow("")]
		[DataRow("xxxxx")]
		[DataRow("xxxxx yyy")]
		public void Input_Bad_Word(string prompt)
		{
			var game = new Game();

			game.ProcessInput(prompt);

			Assert.IsFalse(Array.Exists(game.InputWords_INWS, item => item != ""));
			Assert.IsFalse(Array.Exists(game.InputWordNum_INPTK, item => item > 0));
		}

		[TestMethod]
		[DataRow("NORTH")]
		[DataRow("north")]
		public void Input_Direction_Ok(string prompt)
		{
			var game = new Game();

			game.ProcessInput(prompt);

			Assert.AreEqual(game.InputWords_INWS[1], "NORTH");
			Assert.AreEqual(game.InputWordNum_INPTK[1], 1); // "NORTH"
		}

		[TestMethod]
		[DataRow("TAKE NEWSPAPER")]
		[DataRow("TAKE THE NEWSPAPER")]
		[DataRow("TAKE THIS NEWSPAPER")]
		[DataRow("TAKE XYZ NEWSPAPER WWYA")]
		public void Input_Multi_Word(string prompt)
		{
			var game = new Game();

			game.ProcessInput(prompt);

			Assert.AreEqual(game.InputWords_INWS[1], "TAKE");
			Assert.AreEqual(game.InputWords_INWS[2], "NEWSPAPER");

			Assert.AreEqual(game.InputWordNum_INPTK[1], 18); // "TAKE"
			Assert.AreEqual(game.InputWordNum_INPTK[2], 34); // "NEWSPAPER"
		}
	}
}