/**************************************************************
 * Name: Eric Becker
 * Date: 5/17/2023
 * Assignment CIS317 PA Interface
 * Description: This is the cargo truck file that is similar to the car class except that it has the added cargo capacity
*/
public class CargoTrucks : IVehicle
{
    private string m_make;
    private string m_model;
    private bool m_running;
    private string m_destination;
    public string CargoCapacity { get; set; }

    public CargoTrucks(string make, string model, bool run, string destination,  string cargoCapacity)
    {
        m_make = make;
        m_model = model;
        m_running = run;
        m_destination = destination;
        CargoCapacity = cargoCapacity;
    }

        public string GetMake()
    {
        return m_make;
    }

    public string GetModel()
    {
        return m_model;
    }

    public void Start()
    {
        Console.Write(m_running);
    }

    public void Stop()
    {
        Console.Write(m_running);
    }

    public void Drive(string destination)
    {
        Console.Write(destination);
    }

    public override string ToString()
    {
        return string.Format(
            "Make: {0}\nModel: {1}\nThe truck is {2} and hauling {3} of cargo to {4}",
             m_make, m_model, m_running, CargoCapacity, m_destination);
    }
}