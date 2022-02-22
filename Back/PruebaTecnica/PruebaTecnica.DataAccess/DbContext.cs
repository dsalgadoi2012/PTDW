using Microsoft.EntityFrameworkCore;
using PruebaTecnica.Abstractions;
using System;
using System.Collections.Generic;
using System.Linq;
namespace PruebaTecnica.DataAccess
{
    public class DbContext<T> : IDbContext<T> where T : class,IEntity
    {
        
        DbSet<T> _items;
        ApiDbContext _context;
        public DbContext(ApiDbContext context)
        {
            _context = context;
            _items = context.Set<T>();
        }

        public void DeleteById(int id)
        {
            var items = _items.Where(x => x.Id == id).FirstOrDefault();
            _context.Remove(items);
            _context.SaveChanges();

        }

        public IList<T> GetAll()
        {
            return _items.ToList();
        }

        public T GetById(int id)
        {
            return _items.Where(x => x.Id == id).FirstOrDefault();
        }

        public T Save(T entity)
        {
            _items.Add(entity);
            _context.SaveChanges();
            return entity;
        }

        public T SaveChanges(T entity)
        {
            var items = _items.Where(x => x.Id == entity.Id).FirstOrDefault();
            _context.SaveChanges();
            return entity;
        }
    }
}
