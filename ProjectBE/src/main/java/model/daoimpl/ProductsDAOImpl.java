package model.daoimpl;

import java.util.List;

import org.hibernate.Session;

import model.config.HibernateUtil;
import model.dao.IProductsDAO;
import model.entity.Products;

public class ProductsDAOImpl implements IProductsDAO {
	private Session sess;
    public ProductsDAOImpl() {
    	sess = HibernateUtil.getSessionFactory().openSession();
    }
    public boolean insertProduct(Products p) {
boolean b = true;
		
		try
		{
			sess.beginTransaction();
			sess.save(p);
			sess.getTransaction().commit();
			
		}catch(Exception ex)
		{
			b = false;
			sess.getTransaction().rollback();
			ex.printStackTrace();
		}
		
		return b;
	}
    
    public List<Products> getProducts()
	{
		List<Products> lp = null;
		try
		{
			sess.beginTransaction();
			lp = sess.createQuery("from Products",Products.class).getResultList();		
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lp;
	}
    
    public boolean updateProduct(Products p)
	{
		boolean b = true;
		try {
			sess.beginTransaction();
			sess.update(p);
			sess.getTransaction().commit();
		}catch(Exception ex)
		{
			sess.getTransaction().rollback();
			b = false;
		}
		return b;
	}
    
    public boolean deleteProduct(int productId)
	{
		boolean b = true;
		try
		{
			sess.beginTransaction();
			Products p = (Products)sess.load(Products.class, new Integer(productId));
			sess.delete(p);
			sess.getTransaction().commit();
		}catch(Exception ex)
		{
			sess.getTransaction().rollback();
			b = false;
		}
		return b;
	}
    
    public Products getProductById(int productId)
    {
    	Products p=null;
		try
		{
			sess.beginTransaction();
		    p = (Products)sess.load(Products.class, new Integer(productId));
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return p ;
    }
    
    @SuppressWarnings("unchecked")
	public List<Products> getProductsByCategory(String category)
	{
		List<Products> lp = null;
		try
		{
			sess.beginTransaction();
			String hql = "from Products where category= :category";
			lp = sess.createQuery(hql).setParameter("category",category).getResultList();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lp;
	}
    
 }


