using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication1.DAL
{
    public class myDAL
    {
        private static readonly string connString =
System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

//login by checking from table 
        public int CheckLogin(string un, string Password, ref int type, ref int id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();

            try
            {

                SqlCommand cmd1 = new SqlCommand("ULog", con);
                cmd1.CommandType = CommandType.StoredProcedure;

                cmd1.Parameters.Add("@un", SqlDbType.VarChar, 30).Value = un;
                cmd1.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = Password;
                cmd1.Parameters.Add("@status", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@ID", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@type", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd1.ExecuteNonQuery();

                int status = (int)cmd1.Parameters["@status"].Value;
                type = (int)cmd1.Parameters["@type"].Value;
                id = (int)cmd1.Parameters["@ID"].Value;

                return status;
            }

            catch (SqlException ex)
            {
                return -1;
            }

            finally
            {
                con.Close();
            }
        }

		//signup patient into login table
        public int SignUpPatient(string Name, string BirthDate, string un, string Password, string PhoneNo, string gender, string Address, ref int id)
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();

            try
            {

                SqlCommand cmd1 = new SqlCommand("signingPatient", con);
                cmd1.CommandType = CommandType.StoredProcedure;

                cmd1.Parameters.Add("@name", SqlDbType.VarChar, 20).Value = Name;
                cmd1.Parameters.Add("@address", SqlDbType.VarChar, 40).Value = Address;
                cmd1.Parameters.Add("@gender", SqlDbType.VarChar, 1).Value = gender;
                cmd1.Parameters.Add("@date", SqlDbType.Date).Value = "11-12-1999";
                cmd1.Parameters.Add("@un", SqlDbType.VarChar, 30).Value = un;
                cmd1.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = Password;
                cmd1.Parameters.Add("@phone", SqlDbType.Char, 15).Value = PhoneNo;

                cmd1.Parameters.Add("@status", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@ID", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd1.ExecuteNonQuery();

                int status = (int)cmd1.Parameters["@status"].Value;

                if (status != 0)
                {
                    id = (int)cmd1.Parameters["@ID"].Value;
                }


                return status;
            }

            catch (SqlException ex)
            {
                return -1;
            }

            finally
            {
                con.Close();
            }
        }

		
        public int yearlypack1(int pid, int yid, ref string mes)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			string m = "";

			con.InfoMessage += delegate (object sender, SqlInfoMessageEventArgs e)
			{
				m += "\n" + e.Message;
			};


			try
			{


				cmd1 = new SqlCommand("yp1", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@pid", SqlDbType.Int).Value = pid;
				cmd1.Parameters.Add("@yid", SqlDbType.Int).Value = yid;

				cmd1.ExecuteNonQuery();
				mes = m;

				return 0;
			}

			catch (SqlException)
			{
				mes = "error";
				return -1;

			}

			finally
			{
				con.Close();
			}
		}
		public int yearlypack2(int pid, int yid, ref string mes)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			string m = "";

			con.InfoMessage += delegate (object sender, SqlInfoMessageEventArgs e)
			{
				m += "\n" + e.Message;
			};


			try
			{


				cmd1 = new SqlCommand("yp2", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@pid", SqlDbType.Int).Value = pid;
				cmd1.Parameters.Add("@yid", SqlDbType.Int).Value = yid;

				cmd1.ExecuteNonQuery();
				mes = m;

				return 0;
			}

			catch (SqlException)
			{
				mes = "error";
				return -1;

			}

			finally
			{
				con.Close();
			}
		}
		public int yearlypack3(int pid, int yid, ref string mes)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			string m = "";

			con.InfoMessage += delegate (object sender, SqlInfoMessageEventArgs e)
			{
				m += "\n" + e.Message;
			};


			try
			{


				cmd1 = new SqlCommand("yp3", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@pid", SqlDbType.Int).Value = pid;
				cmd1.Parameters.Add("@yid", SqlDbType.Int).Value = yid;

				cmd1.ExecuteNonQuery();
				mes = m;

				return 0;
			}

			catch (SqlException)
			{
				mes = "error";
				return -1;

			}

			finally
			{
				con.Close();
			}
		}
		//Claim a benefit 1,2,3
		public int insertbenefit(int dID, int bID, ref string mes)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			string m = "";

			con.InfoMessage += delegate (object sender, SqlInfoMessageEventArgs e)
			{
				m += "\n" + e.Message;
			};


			try
			{


				cmd1 = new SqlCommand("ClaimBenefit1", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@did", SqlDbType.Int).Value = dID;
				cmd1.Parameters.Add("@bid", SqlDbType.Int).Value = bID;

				cmd1.ExecuteNonQuery();
				mes = m;

				return 0;
			}

			catch (SqlException)
			{
				mes = "error";
				return -1;
				
			}

			finally
			{
				con.Close();
			}
		}
		public int insertbenefit2(int dID, int bID, ref string mes)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			string m = "";

			con.InfoMessage += delegate (object sender, SqlInfoMessageEventArgs e)
			{
				m += "\n" + e.Message;
			};


			try
			{


				cmd1 = new SqlCommand("ClaimBenefit2", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@did", SqlDbType.Int).Value = dID;
				cmd1.Parameters.Add("@bid", SqlDbType.Int).Value = bID;

				cmd1.ExecuteNonQuery();
				mes = m;

				return 0;
			}

			catch (SqlException)
			{
				mes = "error";
				return -1;

			}

			finally
			{
				con.Close();
			}
		}
		public int insertbenefit3(int dID, int bID, ref string mes)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			string m = "";

			con.InfoMessage += delegate (object sender, SqlInfoMessageEventArgs e)
			{
				m += "\n" + e.Message;
			};


			try
			{


				cmd1 = new SqlCommand("ClaimBenefit3", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@did", SqlDbType.Int).Value = dID;
				cmd1.Parameters.Add("@bid", SqlDbType.Int).Value = bID;

				cmd1.ExecuteNonQuery();
				mes = m;

				return 0;
			}

			catch (SqlException)
			{
				mes = "error";
				return -1;

			}

			finally
			{
				con.Close();
			}
		}
		public int getsDoctorTable(ref DataTable result)
		{
			DataSet ds = new DataSet();
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			try
			{
				cmd1 = new SqlCommand("select* from Doctor", con);
				cmd1.CommandType = CommandType.Text;

				cmd1.ExecuteNonQuery();

				using (SqlDataAdapter da = new SqlDataAdapter(cmd1))
				{
					da.Fill(ds);
				}

				result = ds.Tables[0];
				return 1;
			}

			catch (SqlException ex)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}
		public int getsPatienttable(ref DataTable result)
		{
			DataSet ds = new DataSet();
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			try
			{
				cmd1 = new SqlCommand("select* from Patient", con);
				cmd1.CommandType = CommandType.Text;

				cmd1.ExecuteNonQuery();

				using (SqlDataAdapter da = new SqlDataAdapter(cmd1))
				{
					da.Fill(ds);
				}

				result = ds.Tables[0];
				return 1;
			}

			catch (SqlException ex)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}

		//BookApp part1: view specializations
		public int getspectable(ref DataTable result)
		{
			DataSet ds = new DataSet();
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			try
			{
				/*EXECUTING QUERY*/
				cmd1 = new SqlCommand("select* from SpecAvaila", con);
				cmd1.CommandType = CommandType.Text;

				cmd1.ExecuteNonQuery();

				using (SqlDataAdapter da = new SqlDataAdapter(cmd1))
				{
					da.Fill(ds);
				}

				result = ds.Tables[0];
				return 1;
			}

			catch (SqlException ex)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}




		//Book App part2: See doctors List
		public int alldocslist(string specName, ref DataTable result)
		{
			DataSet ds = new DataSet();
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			try
			{

				/*
                  Procedure RetrieveDeptDoctorInfo
                  @deptName varchar (30)
                 */


				cmd1 = new SqlCommand("getDoc", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				//Input
				cmd1.Parameters.Add("@specName", SqlDbType.VarChar, 30).Value = specName;

				cmd1.ExecuteNonQuery();

				using (SqlDataAdapter da = new SqlDataAdapter(cmd1))
				{
					da.Fill(ds);
				}

				/*FILL TABLE*/
				result = ds.Tables[0];

				return 1;
			}

			catch (SqlException ex)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}





		//BookApp part 3: View Doctors prof: can book from button

		public int getDocProfile(int dID, ref string name, ref string phone, ref string gender, ref float charges, ref int Tpatients, ref string qualification, ref string specialization, ref int age)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();


			try
			{

				SqlCommand cmd1 = new SqlCommand("getDD", con);

				cmd1.CommandType = CommandType.StoredProcedure;


				cmd1.Parameters.Add("@dID", SqlDbType.Int).Value = dID;

				cmd1.Parameters.Add("@name", SqlDbType.VarChar, 20).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@phone", SqlDbType.VarChar, 15).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@gender", SqlDbType.VarChar, 2).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@charges", SqlDbType.Float).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@PTreated", SqlDbType.Int).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@qualification", SqlDbType.VarChar, 100).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@specialization", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@age", SqlDbType.Int).Direction = ParameterDirection.Output;


				cmd1.ExecuteNonQuery();

				name = (string)cmd1.Parameters["@name"].Value;
				phone = (string)cmd1.Parameters["@phone"].Value;
				gender = (string)cmd1.Parameters["@gender"].Value;
				charges = Convert.ToSingle(cmd1.Parameters["@charges"].Value);
				Tpatients = (int)cmd1.Parameters["@PTreated"].Value;
				qualification = (string)cmd1.Parameters["@qualification"].Value;
				specialization = (string)cmd1.Parameters["@specialization"].Value;
				age = (int)cmd1.Parameters["@age"].Value;


				return 0;
			}

			catch (SqlException ex)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}

		// Xheck if Patient prev has an appointment today, only one app per day
		public int CheckIfPrev(int pID, ref int val)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();


			try
			{

				SqlCommand cmd1 = new SqlCommand("checkprevApp", con);

				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@pid", SqlDbType.Int).Value = pID;


				cmd1.Parameters.Add("@num", SqlDbType.Int).Direction = ParameterDirection.Output;


				cmd1.ExecuteNonQuery();

				val = (int)cmd1.Parameters["@num"].Value;


				return 0;
			}

			catch (SqlException ex)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}


		//BokkApp part4: Choose an Available Time

		public int checkifavailable(int dID, int pID, ref DataTable result)
		{
			DataSet ds = new DataSet();
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			try
			{


				cmd1 = new SqlCommand("getFreeTime", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				//Input
				cmd1.Parameters.Add("@dID", SqlDbType.Int).Value = dID;
				cmd1.Parameters.Add("@pID", SqlDbType.Int).Value = pID;

				//Output
				cmd1.Parameters.Add("@count", SqlDbType.Int).Direction = ParameterDirection.Output;

				cmd1.ExecuteNonQuery();

				using (SqlDataAdapter da = new SqlDataAdapter(cmd1))
				{
					da.Fill(ds);
				}
				result = ds.Tables[0];

				return (int)cmd1.Parameters["@count"].Value;
			}

			catch (SqlException ex)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}




		//Part5:  Book into Table -->page BookFinalApp
		public int Booking(int dID, int pID, int available, ref string mes)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			string m = "";

			con.InfoMessage += delegate (object sender, SqlInfoMessageEventArgs e)
			{
				m += "\n" + e.Message;
			};


			try
			{

				cmd1 = new SqlCommand("BookIntoTable", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@dId", SqlDbType.Int).Value = dID;
				cmd1.Parameters.Add("@pid", SqlDbType.Int).Value = pID;
				cmd1.Parameters.Add("@available", SqlDbType.Int).Value = available;

				cmd1.ExecuteNonQuery();
				mes = m;

				return 0;
			}

			catch (SqlException)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}

		//Displays App Today From Patients App Today page

		public int appointmentTodayDisplayer(int pid, ref string dName, ref string timings)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd1;

			try
			{
				cmd1 = new SqlCommand("AppointmentToday", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@pid", SqlDbType.Int).Value = pid;

				//Outputs
				cmd1.Parameters.Add("@count", SqlDbType.Int).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@timings", SqlDbType.VarChar, 30).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@dName", SqlDbType.VarChar, 30).Direction = ParameterDirection.Output;

				cmd1.ExecuteNonQuery();   //Execute the cmd query

				int status = (int)cmd1.Parameters["@count"].Value;

				if (status == 0)
				{
					return status;
				}

				else
				{
					dName = (string)cmd1.Parameters["@dName"].Value;
					timings = (string)cmd1.Parameters["@timings"].Value;
					return status;
				}
			}

			catch (SqlException ex)
			{
				return -1;  //if any error, return -1
			}

			finally
			{
				con.Close();
			}
		}

		//Views Patients Profile -->from Patients page
		public int getPatientProf(int pid, ref string name, ref string phone, ref string address, ref string birthDate, ref int age, ref string gender, ref string ypk)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();


			try
			{

				SqlCommand cmd1 = new SqlCommand("PatientInfo", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@id", SqlDbType.Int).Value = pid;

				cmd1.Parameters.Add("@name", SqlDbType.VarChar, 20).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@phone", SqlDbType.Char, 15).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@birthDate", SqlDbType.VarChar, 10).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@address", SqlDbType.VarChar, 40).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@age", SqlDbType.Int).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@gender", SqlDbType.Char, 1).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@yp", SqlDbType.VarChar, 20).Direction = ParameterDirection.Output;

				cmd1.ExecuteNonQuery();

				name = (string)cmd1.Parameters["@name"].Value;
				phone = (string)cmd1.Parameters["@phone"].Value;
				address = (string)cmd1.Parameters["@address"].Value;
				birthDate = (string)cmd1.Parameters["@birthDate"].Value;
				age = (int)cmd1.Parameters["@age"].Value;
				gender = (string)cmd1.Parameters["@gender"].Value;
				ypk = (string)cmd1.Parameters["@yp"].Value;


				return 0;
			}

			catch (SqlException ex)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}
		//View Docs prof from docs page
		public int getdocsProf(int did, ref string name, ref string phone, ref string address, ref string birthDate, ref int pno, ref int charg, ref int sal, ref string gender, ref string bfc, ref string spec, ref string qual) { 
		SqlConnection con = new SqlConnection(connString);
			con.Open();


			try
			{

				SqlCommand cmd1 = new SqlCommand("docsInfo", con);
				cmd1.CommandType = CommandType.StoredProcedure;

				cmd1.Parameters.Add("@id", SqlDbType.Int).Value = did;

				cmd1.Parameters.Add("@name", SqlDbType.VarChar, 20).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@phone", SqlDbType.Char, 15).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@birthDate", SqlDbType.VarChar, 10).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@address", SqlDbType.VarChar, 40).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@char", SqlDbType.Int).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@sal", SqlDbType.Int).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@np", SqlDbType.Int).Direction = ParameterDirection.Output;

				cmd1.Parameters.Add("@gender", SqlDbType.Char, 1).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@bfc", SqlDbType.VarChar, 20).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@spec", SqlDbType.VarChar, 20).Direction = ParameterDirection.Output;
				cmd1.Parameters.Add("@qual", SqlDbType.VarChar, 20).Direction = ParameterDirection.Output;


				cmd1.ExecuteNonQuery();

				name = (string)cmd1.Parameters["@name"].Value;
				phone = (string)cmd1.Parameters["@phone"].Value;
				address = (string)cmd1.Parameters["@address"].Value;
				birthDate = (string)cmd1.Parameters["@birthDate"].Value;
				charg = (int)cmd1.Parameters["@char"].Value;
				sal = (int)cmd1.Parameters["@sal"].Value;
				pno = (int)cmd1.Parameters["@np"].Value;

				gender = (string)cmd1.Parameters["@gender"].Value;
				bfc = (string)cmd1.Parameters["@bfc"].Value;
				qual = (string)cmd1.Parameters["@qual"].Value;
				spec = (string)cmd1.Parameters["@spec"].Value;


				return 0;
			}

			catch (SqlException ex)
			{
				return -1;
			}

			finally
			{
				con.Close();
			}
		}



		//Docs app today: viewed and can be deleted
		public void BookedAppToday(int dids, ref DataTable DT)
		{

			DataSet ds = new DataSet();
			SqlConnection con = new SqlConnection(connString);
			con.Open();

			try
			{
				SqlCommand cmd = new SqlCommand();

				cmd = new SqlCommand("AppTodayforDoc", con);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@ddid", SqlDbType.Int);
				cmd.Parameters["@ddid"].Value = dids;
				cmd.ExecuteNonQuery();


				using (SqlDataAdapter da = new SqlDataAdapter(cmd))
				{
					da.Fill(ds);
				}

				DT = ds.Tables[0];

			}

			catch (SqlException ex)
			{
				Console.WriteLine("SQL Error" + ex.Message.ToString());
			}

			finally
			{
				con.Close();
			}
		}


		//doc deletes app
		public int RemoveBookedApp(int appointmentid)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd;



			try
			{
				cmd = new SqlCommand("removeApp", con);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@appid", SqlDbType.Int).Value = appointmentid;
				cmd.ExecuteNonQuery();
			}

			catch (SqlException ex)
			{
				Console.WriteLine("SQL Error" + ex.Message.ToString());
				return -1;
			}

			finally
			{
				con.Close();

			}
			return 1;

		}

		public int RemoveDoc(int docid)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd;



			try
			{
				cmd = new SqlCommand("removeDoc", con);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@docid", SqlDbType.Int).Value = docid;
				cmd.ExecuteNonQuery();
			}

			catch (SqlException ex)
			{
				Console.WriteLine("SQL Error" + ex.Message.ToString());
				return -1;
			}

			finally
			{
				con.Close();

			}
			return 1;

		}

		public int RemovePatient(int pid)
		{
			SqlConnection con = new SqlConnection(connString);
			con.Open();
			SqlCommand cmd;



			try
			{
				cmd = new SqlCommand("removePatient", con);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.Add("@pid", SqlDbType.Int).Value = pid;
				cmd.ExecuteNonQuery();
			}

			catch (SqlException ex)
			{
				Console.WriteLine("SQL Error" + ex.Message.ToString());
				return -1;
			}

			finally
			{
				con.Close();

			}
			return 1;

		}






	}
}