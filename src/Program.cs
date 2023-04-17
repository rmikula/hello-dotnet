using System;
using System.Data;
using System.Data.Common;
using Oracle.ManagedDataAccess.Client;

namespace hello_dotnet
{
    class Program
    {
        static void Main(string[] args)
        {
            OracleConnection connection = new OracleConnection();

            Console.WriteLine("Hello dotnet 7!");
        }
    }
}
