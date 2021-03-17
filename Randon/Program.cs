using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Diagnostics;

namespace Randon
{
    class Program
    {
        // Essa string de conexao é conexao local por isso o "." no final e esta fazendo login pelo usuario do windows
        /*
            A estrutura do banco é create database Dados
            Create table Tabela ( String varchar(255))
            
            Tanto para SQL Server e MySQL
             */
        private static SqlConnection con = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Dados;Data Source=.");

        static void Main(string[] args)
        {
            int Qtd = 100000; //1000000
            int Contador = 0;
            string texto = "";
            Random random = new Random();
            int[] asciiCodes = new int[255];
            string[] VetString;
            VetString = new string[Qtd];
            var stopwatch = new Stopwatch();

            stopwatch.Start();

            while (Contador < Qtd)
            {
                for (int i = 0; i < 255; i++)
                {
                    asciiCodes[i] = random.Next(32, 126);
                }

                for (int i = 0; i < 255; i++)
                {
                    texto += ((char)asciiCodes[i]).ToString();
                }

                Console.WriteLine(Contador + 1);

                VetString[Contador] = texto;

                texto = "";

                Contador++;
            }
            stopwatch.Stop();
            Console.WriteLine("Tempo Inserir Dados Aleatorios no Vetor (Memoria): " + stopwatch.Elapsed);

            con.Open();

            SqlTransaction tran = con.BeginTransaction();
            
            try
            {
                string sql = "insert into Tabela values (@String)";

                SqlCommand comando = new SqlCommand(sql, con);

                comando.Transaction = tran;

                stopwatch.Reset();
                stopwatch.Start();

                for (int i = 0; i < VetString.Length; i++)
                {
                    comando.Parameters.Add("@String", VetString[i]);
                    
                    comando.ExecuteNonQuery();

                    sql = "";
                    comando.Parameters.Clear();
                    //Console.WriteLine("SQL " + i + 1);
                }

                tran.Commit();

                stopwatch.Stop();

                Console.WriteLine("Tempo Inserir SQL: " + stopwatch.Elapsed);

            }
            catch (SqlException ex)
            {
                tran.Rollback();
                Console.WriteLine(ex.Message);
            }

            finally
            {
                con.Close();
            }


            con.Close();

            //---------------------------------------------------------------------------------------------------

            //Aqui você substitui pelos seus dados
            // Aqui o usuario é Jose e a senha 1234, tem que substituir
            var connString = "Server=localhost;Database=Dados;Uid=Jose;Pwd=1234";
            var connection = new MySqlConnection(connString);
            var command = connection.CreateCommand();

            try
            {
                connection.Open();

                MySqlTransaction tranMySQL = connection.BeginTransaction();

                command.Transaction = tranMySQL;
                //command.CommandText = "INSERT INTO Tabela VALUES ('jose augusto')";

                stopwatch.Reset();
                stopwatch.Start();

                try
                {
                    for (int i = 0; i < VetString.Length; i++)
                    {
                        command.Parameters.AddWithValue("@String", VetString[i]);
                        command.CommandText = "INSERT INTO Tabela(String) VALUES (@String)";
                        command.ExecuteNonQuery();
                        //Console.WriteLine("MYSQL " + i + 1);
                        command.Parameters.Clear();
                    }
                    tranMySQL.Commit();
                    
                    stopwatch.Stop();

                    Console.WriteLine("Tempo Inserir MySQL: " + stopwatch.Elapsed);
                }
                catch (Exception erro)
                {
                    tranMySQL.Rollback();
                    Console.WriteLine(erro);
                }
            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                    connection.Close();
            }

            Console.ReadKey();


        }
    }
}
