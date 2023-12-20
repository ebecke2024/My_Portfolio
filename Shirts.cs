/*****************************************************************************************************************************
 * Name: Eric Becker
 * Date: 5/25/2023
 * Assignment: Course project
 * Description: This is the Shirt class which is a child class of the Clothes class
*/
public class Shirts : Clothes
{
    public string Brand { get; set; }
    public double Price { get; set; }
    public string Type { get; set; }

    public Shirts(int iD, string size, string gender, double total, string brand, double price, string type)
        : base(iD, size, gender, total)
    {
        Brand = brand;
        Price = price;
        Type = type;
    }

    public override string GetItem()
    {
        return Brand;
    }

    public override double GetPrice()
    {
        return Price;
    }

    public override string ToString()
    {
        return string.Format(
            "Brand: " + Brand + "\n" + "Price: " + Price + "\n"
                + "Type: " + Type);
    }
}