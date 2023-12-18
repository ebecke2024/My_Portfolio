/*****************************************************************************************************************************
 * Name: Eric Becker
 * Date: 5/25/2023
 * Assignment: Course project
 * Description: This is the fabrics constructor for the clothing class
*/
public abstract class Fabrics //This creates the fabric class
{
    public string Material { get; set; } //Makes the properties of the class

    public Fabrics(string material) //Makes the methods of the class
    {
        Material = material;
    }
}
