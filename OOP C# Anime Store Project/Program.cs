/*****************************************************************************************************************************
 * Name: Eric Becker
 * Date: 5/25/2023
 * Assignment: Course project
 * Description: This is the program of the code where everything is put together
*/
using System.Data.SQLite;
public class AnimeStoreTest
{
    static void Main(string[] args)
    {
        const string dbName = "EricBecker.db";
        Console.WriteLine("Eric Becker Course Project");
        SQLiteConnection conn = SQLiteDatabase.Connect(dbName);

        if (conn != null)
        {
            ProdcutDb.CreateTable(conn);
            ProdcutDb.CreateTable2(conn);
            ProdcutDb.AddProductBook(conn, new Manga(12345, "Vinland Saga", "Seinen", 24.99, "Author", "Historical Fiction", 24.99));
            ProdcutDb.AddProductClothe(conn, new Clothes(22345, "Medium", "Male", 14.99));

            PrintProduct(ProdcutDb.GetAllBooks(conn));
        }
    }

    private static void PrintProduct(List<Book> books)
    {
        foreach (Book b in books)
        {
            PassProduct(b);
        }
    }

    private static void PassProduct(Book b)
    {
        Console.WriteLine("Book " + b.ID + ":");
        Console.WriteLine(b.Name, b.Category, b.Total);
    }
    
    private static void PrintProduct2(List<Clothes> clothes)
    {
        foreach (Clothes c in clothes)
        {
            PassProduct2(c);
        }
    }

    private static void PassProduct2(Clothes c)
    {
        Console.WriteLine("clothes: " + c.ID + ":");
        Console.WriteLine(c.Size, c.Gender, c.Total);
    }

    
}

