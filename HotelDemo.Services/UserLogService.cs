using HotelDemo.EF;
using HotelDemo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelDemo.Services
{

    public interface IUserLogService
    {
        Int32 Insert(UserLogModel info);
        void Delete(Int32 ID);
        List<UserLogModel> GelAll();

    }
    public class UserLogService : IUserLogService
    {
        private HotelDemoContext _context;
        public UserLogService()
        {
            _context = new HotelDemoContext();
        }

        public Int32 Insert(UserLogModel info)
        {
            try
            {
                var userLog = new UserLog
                {
                    CreatedOn = info.CreatedOn,
                    UserID = info.UserID,
                    UserName = info.UserName,
                    IPAddress = info.IPAddress,
                    Country = info.Country,

                };
                _context.UserLogs.Add(userLog);
                _context.SaveChanges();

                return userLog.ID;
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
                var userLog = (from p in _context.UserLogs
                            where p.ID == ID
                            select p).FirstOrDefault();
                _context.UserLogs.Remove(userLog);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {

            }
        }

        public List<UserLogModel> GelAll()
        {
            List<UserLogModel> userLogList = new List<UserLogModel>();
            try
            {
                userLogList = (from p in _context.UserLogs
                               select new UserLogModel { Country = p.Country, CreatedOn = p.CreatedOn, ID = p.ID, IPAddress = p.IPAddress, UserID = p.UserID, UserName = p.UserName }).ToList();
            }
            catch (Exception ex)
            {

            }

            return userLogList;
        }
    }
}
