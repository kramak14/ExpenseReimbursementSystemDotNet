using ExpenseReinbursementSystem.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExpenseReinbursementSystem.BusinessLogic
{
    public class DatabaseConnection
    {
        string connectionString = string.Empty;
        SqlConnection conn = null;

        public DatabaseConnection()
        {
            connectionString = "Data Source=(local);Initial Catalog=ERS;"
                + "Integrated Security=true";

            if(conn == null)
            {
                conn = new SqlConnection(connectionString);
            }

        }

            //Select all employees by id, first_name, last_name and display using a Grid
        internal DataSet GetEmployees(String employeeId)
        {
            string connectionString = "Data Source=(local);Initial Catalog=ERS;"
               + "Integrated Security=true";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            //The best way to prevent SQL Injections
            string query = "SELECT * FROM dbo.Employees  WHERE id = @0";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.Add(employeeId);

            SqlDataAdapter adapter = new SqlDataAdapter(command);

            DataSet ds = new DataSet();
            adapter.Fill(ds);

            return ds;
        }

        internal DataSet DisplayEmployees()
        {
            EmployeeProfile e = new EmployeeProfile();
            conn.Open();

            SqlCommand command = new SqlCommand("SELECT id, first_name, last_name FROM dbo.employees", conn);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            conn.Close();

            return ds;

        }

        internal DataSet SubmitRequest()
        {
            EmployeeProfile e = new EmployeeProfile();
            conn.Open();
            SqlCommand command = new SqlCommand("SELECT a.id, b.reimbursement_req, b.description, b.status FROM dbo.employees a, dbo.reimbursement_request b",conn);
            
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            conn.Close();

            return ds;
        }

        public static bool UpdateStatus(string reimbursementId, string status, string managerId)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["ERSConnection"].ConnectionString;
            var cmnd = "UPDATE reimbursement_request " + "SET status = @status, manager = @manager " +
                "WHERE reimbursement_id = @reimbursement_id";
            var userStore = new UserStore<IdentityUser>(new IdentityDbContext("ERSConnection"));
            var manager = new UserManager<IdentityUser>(userStore);
            var name = manager.FindById(managerId).UserName;

            using(SqlConnection conn = new SqlConnection(connectionString))
            {
                using(SqlCommand command = new SqlCommand(cmnd, conn))
                {
                    command.Parameters.AddWithValue("@status", status);
                    command.Parameters.AddWithValue("@manager", name);
                    command.Parameters.AddWithValue("@reimbursement_id", reimbursementId);

                    try
                    {
                        conn.Open();
                        command.ExecuteNonQuery();
                        conn.Close(); ;
                    } catch(SqlException e)
                    {
                        Console.WriteLine(e.StackTrace);
                        return false;
                    } catch(Exception e)
                    {
                        Console.WriteLine(e.StackTrace);
                        return false;
                    }

                    return true;
                }
            }
        }

    }
}