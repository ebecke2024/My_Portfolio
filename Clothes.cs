/*****************************************************************************************************************************
 * Name: Eric Becker
 * Date: 5/25/2023
 * Assignment: Course project
 * Description: This is the clothes parent class where all clothing information will be stored
*/
public class Clothes : IAnimeStore
{
    public int ID { get; set;}
    public string Size { get; set; }
    public string Gender { get; set; }
    public double Total { get; set; }

    public Clothes(int iD, string size, string gender, double total)
    {
        ID = iD;
        Size = size;
        Gender = gender;
        Total = total;
    }

    public virtual string GetItem()
    {
        return Size;
         
    }

    public virtual double GetPrice()
    {
        return Total;
    }

    public override string ToString()
    {
        return string.Format(
            "The size of the clothing you bought is " + Size + "The gender is " + Gender +
                "the Total is " + Total);
    }
}