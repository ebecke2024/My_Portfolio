/**************************************************************
 * Name: Eric Becker
 * Date: 5/17/2023
 * Assignment CIS317 PA Interface
 * Description: This is the interface that makes the contract with all the other files. 
*/
interface IVehicle
{
    string GetMake();
    string GetModel();
    void Start();
    void Stop();
    void Drive(string destination);
}