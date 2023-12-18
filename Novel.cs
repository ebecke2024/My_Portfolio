/*****************************************************************************************************************************
 * Name: Eric Becker
 * Date: 5/25/2023
 * Assignment: Course project
 * Description: This is the Novel class which is a child class of the Book class
*/
public class Novel : Book
{
    public string Author { get; set; }
    public string Genre { get; set; }
    public double Price { get; set; }

    public Novel(int iD, string name, string category, double total, string author, 
        string genre, double price) : base (iD, name, category, total)
    {
        Author = author;
        Genre = genre;
        Price = price;
    }

    public override string GetItem()
    {
        return Author;
    }

    public override double GetPrice()
    {
        return Price;
    }

    public override string ToString()
    {
        return string.Format(
            "Author: " + Author + "\n" + "Genre: " + Genre + "\n"
            + "Price: " + Price);
    }
}