package model.daoimpl;

import org.hibernate.Session;

import model.config.HibernateUtil;
import model.dao.ICartDAO;
import model.entity.Cart;

public class CartDAOImpl implements ICartDAO{
	private Session sess;
	public CartDAOImpl() {
		sess = HibernateUtil.getSessionFactory().openSession();

}
	public boolean addCartItem(Cart c) {
		 boolean b = true;
			
			try
			{
				sess.beginTransaction();
				sess.save(c);
				sess.getTransaction().commit();
				
			}catch(Exception ex)
			{
				b = false;
				sess.getTransaction().rollback();
				ex.printStackTrace();
			}
			
			return b;
	}
}
