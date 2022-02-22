using PruebaTecnica.Abstractions;
using PruebaTecnica.Repository;
using System;
using System.Collections.Generic;

namespace PruebaTecnica.Aplication
{
    public interface IAplication<T> : ICrud<T>
    {

    }
    public class Aplication<T> : IAplication<T> where T : IEntity
    {
        IRepository<T> _repository;
        public Aplication(IRepository<T> repository)
        {
          _repository = repository;
        }
        public void DeleteById(int id)
        {
            _repository.DeleteById(id);
        }

        public IList<T> GetAll()
        {
            return _repository.GetAll();
        }

        public T GetById(int id)
        {
            return _repository.GetById(id);
        }

        public T Save(T entity)
        {
            return _repository.Save(entity);
        }

        public T SaveChanges(T entity)
        {
            return _repository.SaveChanges(entity);
        }
    }
}
