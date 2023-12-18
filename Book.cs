/*****************************************************************************************************************************
 * Name: Eric Becker
 * Date: 5/25/2023
 * Assignment: Course project
 * Description: This is the book class where all the book information will be stored
*/
public class Book : IAnimeStore
{
    
    public string Name { get; set; }
    public string Category { get; set; }
    public double Total { get; set; }
    public int ID { get; set; }

    public Book (int iD, string name, string category, double total)
    {
        ID = iD;
        Name = name;
        Category = category;
        Total = total;
    }

    public virtual string GetItem()
    {
        return Name;
    }

    public virtual double GetPrice()
    {
        return Total;
    }

    public override string ToString()
    {
        return string.Format(
            "The name of your book is " + Name + "The category is " + Category +
                "The price is " + Total);
    }

    
}