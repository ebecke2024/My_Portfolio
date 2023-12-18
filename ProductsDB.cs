/*****************************************************************************************************************************
 * Name: Eric Becker
 * Date: 5/25/2023
 * Assignment: Course project
 * Description: This is the Product database class where I keep all the items in the database
*/
using System.Data.SQLite;

public class ProdcutDb
{
    public static void CreateTable(SQLiteConnection conn)
    {
        string sql =
            "CREATE TABLE IF NOT EXISTS ProductBooks (\n"
            + "    ID integer PRIMARY KEY\n"
            + "    ,Name varchar(40)\n"
            + "    ,Category varchar(40)\n"
            + "    ,Total double);";
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
    }

    public static void AddProductBook(SQLiteConnection conn, Book b)
    {
        string sql = string.Format(
            "INSERT INTO ProductBooks(Name, Category, Total) "
            + "VALUES('{0}','{1}',{2})",
            b.Name, b.Category, b.Total);
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
    }

    public static void UpdateProductBook(SQLiteConnection conn, Book b)
    {
        string sql = string.Format(
            "Update ProductBooks SET Name='{0}', Category='{1}', Total={2}" 
            + "WHERE ID={6}", b.Name, b.Category, b.Total);
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
    }

    public static void DeleteProductBook(SQLiteConnection conn, int id)
    {
        string sql = string.Format("DELETE from ProductBooks WHERE ID = {0}", id);
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
    }

    public static void CreateTable2(SQLiteConnection conn)
    {
        string sql =
            "CREATE TABLE IF NOT EXISTS ProductClothes (\n"
            + "    ID integer PRIMARY KEY\n"
            + "    ,Size varchar(40)\n"
            + "    ,Gender varchar(40)\n"
            + "    ,Total double);";
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
    }

    public static void AddProductClothe(SQLiteConnection conn, Clothes c)
    {
        string sql = string.Format(
            "INSERT INTO ProductClothes(Size, Gender, Total) "
            + "VALUES('{0}','{1}',{2})",
            c.Size, c.Gender, c.Total);
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
    }

    public static void UpdateProductClothe(SQLiteConnection conn, Clothes c)
    {
        string sql = string.Format(
            "Update ProductClothes SET Size='{0}', Gender='{1}',Total={2}" 
            + "WHERE ID={6}", c.Size, c.Gender, c.Total);
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
    }

    public static void DeleteProductClothe(SQLiteConnection conn, int id)
    {
        string sql = string.Format("DELETE from ProductClothes WHERE ID = {0}", id);
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
    }

    public static List<Book> GetAllBooks(SQLiteConnection conn)
    {
        List<Book> books = new List<Book>();
        string sql = "SELECT * FROM ProductBooks";
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;

        SQLiteDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            books.Add(new Book(
                rdr.GetInt32(0),
                rdr.GetString(1),
                rdr.GetString(2),
                rdr.GetDouble(3)
            ));
        }

        return books;
    }
    
    public static List<Clothes> GetAllClothes(SQLiteConnection conn)
    {
        List<Clothes> clothes = new List<Clothes>();
        string sql = "SELECT * FROM ProductBooks";
        SQLiteCommand cmd = conn.CreateCommand();
        cmd.CommandText = sql;

        SQLiteDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            clothes.Add(new Clothes(
                rdr.GetInt32(0),
                rdr.GetString(1),
                rdr.GetString(2),
                rdr.GetDouble(3)
            ));
        }

        return clothes;
    }
}