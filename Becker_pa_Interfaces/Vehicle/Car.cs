/**************************************************************
 * Name: Eric Becker
 * Date: 5/17/2023
 * Assignment CIS317 PA Interface
 * Description: This is the car file where I will create functions that tell you the brand of the car and if it's running. 
*/
public class Cars : IVehicle
{
    private string m_make;
    private string m_model;
    private bool m_running;
    private string m_destination;

    public Cars(string make, string model, bool run, string destination)
    {
        m_make = make;
        m_model = model;
        m_running = run;
        m_destination = destination;
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
            "Make: {0}\nModel: {1}\nThe car is {2}\nand is heading to {3}",
            m_make, m_model, m_running, m_destination);
    }
}