using System;
using Oracle.ManagedDataAccess.Client;

namespace hello_dotnet
{
    class Program
    {
        static void Main(string[] args)
        {
            OracleConnection connection = new OracleConnection();

            Console.WriteLine("Hello dotnet 3!");
        }
    }
}
