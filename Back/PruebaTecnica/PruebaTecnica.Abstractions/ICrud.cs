using System;
using System.Collections.Generic;

namespace PruebaTecnica.Abstractions
{
    public interface ICrud<T>
    {
        T SaveChanges(T entity);
        T Save(T entity);
        IList<T> GetAll();
        T GetById(int id);
        void DeleteById(int id);
    }
}
