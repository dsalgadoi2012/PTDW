using PruebaTecnica.Abstractions;
using System;
using System.Collections.Generic;

namespace PruebaTecnica.Repository
{
    public interface IRepository<T> : ICrud<T>
    {

    }
    public class Repository<T> : IRepository<T> where T : IEntity
    {
        IDbContext<T> _dbContext;
        public Repository(IDbContext<T> dbContext)
        {
            _dbContext = dbContext;
        }
        public void DeleteById(int id)
        {
            _dbContext.DeleteById(id);
        }

        public IList<T> GetAll()
        {
            return _dbContext.GetAll();
        }

        public T GetById(int id)
        {
            return _dbContext.GetById(id);
        }

        public T Save(T entity)
        {
            return _dbContext.Save(entity);
        }

        public T SaveChanges(T entity)
        {
            return _dbContext.SaveChanges(entity);
        }
    }
}
