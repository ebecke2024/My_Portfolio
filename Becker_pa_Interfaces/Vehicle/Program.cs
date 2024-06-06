/**************************************************************
 * Name: Eric Becker
 * Date: 5/17/2023
 * Assignment CIS317 PA Interface
 * Description: This file brings all the classes together to make the program work.
*/
public class VehicleExample
{
    public static void Main(string[] args)
    {
        Console.WriteLine("\nEric Becker, Week 2 Interface PA\n");

        Cars car1 = new Cars("Ford", "Sports", true, "home");
        Cars car2 = new Cars("Cheverla", "Truck", false, "Grandma's house");
        CargoTrucks truck1 = new CargoTrucks("Nisson", "18 Wheeler", true, "Walmart", "A ton");
        CargoTrucks truck2 = new CargoTrucks("Mercedes", "Normal", false, "Target", "A huge ton");

        List<IVehicle> vehicles = new List<IVehicle> { car1, car2, truck1, truck2 };
        Console.WriteLine("Vehicles printed from list");
        foreach (IVehicle vehicle in vehicles)
        {
            PrintVehicle(vehicle);
            Console.WriteLine();
        }

        Console.WriteLine("Vehicles Printed Directly");
        PrintVehicle(car1);
        Console.WriteLine();
        PrintVehicle(car2);
        Console.WriteLine();
        PrintVehicle(truck1);
        Console.WriteLine();
        PrintVehicle(truck2);
        Console.WriteLine();

    }

    private static void PrintVehicle(IVehicle vehicle)
    {
        Console.Write(vehicle);
    }
}
