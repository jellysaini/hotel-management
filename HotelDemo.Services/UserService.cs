using HotelDemo.EF;
using HotelDemo.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelDemo.Services
{
    public interface IUserService
    {
        Int32 Insert(UserModel info);
        Int32 Update(UserModel info);
        void Delete(Int32 ID);
        UserModel GetByID(Int32 ID);
        List<UserModel> GelAll();
        UserModel Login(String EmailID, String Password);
        UserModel CheckEmailExist(String Email);
        Int32 UpdateWrongAttempt(String Email);
        void Logout(Int32 ID);
        Int32 LoginUserCount();
    }
    public class UserService : IUserService
    {
        private HotelDemoContext _context;
        public UserService()
        {
            _context = new HotelDemoContext();
        }

        public Int32 Insert(UserModel info)
        {
            try
            {
                var user = new User
                {
                    CreatedOn = info.CreatedOn,
                    Email = info.Email,
                    FirstName = info.FirstName,
                    LastName = info.LastName,
                    Password = info.Password,
                    IPAddress = info.IPAddress,
                    Country = info.Country,
                    IsCurrentLogin = info.IsCurrentLogin,
                    UserTypeID = info.UserTypeID,
                    WrongTry = info.WrongTry
                };
                _context.Users.Add(user);
                _context.SaveChanges();

                return user.ID;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public Int32 Update(UserModel info)
        {
            try
            {
                var user = (from p in _context.Users
                            where p.ID == info.ID
                            select p).FirstOrDefault();


                user.Email = info.Email;
                user.FirstName = info.FirstName;
                user.LastName = info.LastName;
                user.Password = info.Password;

                _context.Entry(user).State = EntityState.Modified;
                _context.SaveChanges();
                return user.ID;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public void Delete(Int32 ID)
        {
            try
            {
                var user = (from p in _context.Users
                            where p.ID == ID
                            select p).FirstOrDefault();
                _context.Users.Remove(user);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {

            }
        }

        public UserModel GetByID(Int32 ID)
        {
            UserModel user = new UserModel();
            try
            {
                user = (from p in _context.Users
                        join x in _context.UserTypes on p.UserTypeID equals x.ID
                        where p.ID == ID
                        select new UserModel { CreatedOn = p.CreatedOn, Email = p.Email, FirstName = p.FirstName, ID = p.ID, LastName = p.LastName, Password = p.Password, Country = p.Country, IPAddress = p.IPAddress, IsCurrentLogin = p.IsCurrentLogin, UserTypeID = p.UserTypeID, WrongTry = p.WrongTry, UserTypeName = x.TypeName }).FirstOrDefault();
            }
            catch (Exception ex)
            {

            }
            return user;
        }

        public List<UserModel> GelAll()
        {
            List<UserModel> userList = new List<UserModel>();
            try
            {
                userList = (from p in _context.Users
                            join x in _context.UserTypes on p.UserTypeID equals x.ID
                            select new UserModel { CreatedOn = p.CreatedOn, Email = p.Email, FirstName = p.FirstName, ID = p.ID, LastName = p.LastName, Password = p.Password, Country = p.Country, IPAddress = p.IPAddress, IsCurrentLogin = p.IsCurrentLogin, UserTypeID = p.UserTypeID, WrongTry = p.WrongTry, UserTypeName = x.TypeName }).ToList();
            }
            catch (Exception ex)
            {

            }

            return userList;
        }

        public UserModel Login(String Email, String Password)
        {
            UserModel user = new UserModel();
            try
            {
                user = (from p in _context.Users
                        join x in _context.UserTypes on p.UserTypeID equals x.ID
                        where p.Email == Email && p.Password == Password
                        select new UserModel { CreatedOn = p.CreatedOn, Email = p.Email, FirstName = p.FirstName, ID = p.ID, LastName = p.LastName, Password = p.Password, Country = p.Country, IPAddress = p.IPAddress, IsCurrentLogin = p.IsCurrentLogin, UserTypeID = p.UserTypeID, WrongTry = p.WrongTry, UserTypeName = x.TypeName }).FirstOrDefault();

                #region Update the Status
                if (user != null)
                {
                    var userData = (from p in _context.Users
                                    where p.ID == user.ID
                                    select p).FirstOrDefault();

                    userData.IsCurrentLogin = true;
                    userData.WrongTry = 0;

                    _context.Entry(userData).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                #endregion
            }
            catch (Exception ex)
            {

            }
            return user;
        }

        public UserModel CheckEmailExist(String Email)
        {

            UserModel user = new UserModel();
            try
            {
                user = (from p in _context.Users
                        join x in _context.UserTypes on p.UserTypeID equals x.ID
                        where p.Email == Email
                        select new UserModel { CreatedOn = p.CreatedOn, Email = p.Email, FirstName = p.FirstName, ID = p.ID, LastName = p.LastName, Password = p.Password, Country = p.Country, IPAddress = p.IPAddress, IsCurrentLogin = p.IsCurrentLogin, UserTypeID = p.UserTypeID, WrongTry = p.WrongTry, UserTypeName = x.TypeName }).FirstOrDefault();
            }
            catch (Exception ex)
            {

            }
            return user;

        }

        public Int32 UpdateWrongAttempt(String Email)
        {
            try
            {
                var user = (from p in _context.Users
                            where p.Email == Email
                            select p).FirstOrDefault();

                Int32 currentCount = Convert.ToInt32(user.WrongTry);
                user.WrongTry = currentCount + 1;
                _context.Entry(user).State = EntityState.Modified;
                _context.SaveChanges();

                return Convert.ToInt32(user.WrongTry);

            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public void Logout(Int32 ID)
        {
            try
            {
                var user = (from p in _context.Users
                            where p.ID == ID
                            select p).FirstOrDefault();

                user.IsCurrentLogin = false;
                _context.Entry(user).State = EntityState.Modified;
                _context.SaveChanges();

            }
            catch (Exception ex)
            {

            }
        }

        public Int32 LoginUserCount()
        {
            try
            {
                var count = (from p in _context.Users
                             where p.IsCurrentLogin == true
                             select p).Count();


                return count;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

    }
}
