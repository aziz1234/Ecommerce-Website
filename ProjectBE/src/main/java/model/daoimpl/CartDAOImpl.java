package model.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.config.HibernateUtil;
import model.dao.ICartDAO;
import model.entity.Cart;
import model.entity.Products;



@Service
public class CartDAOImpl implements ICartDAO{
	private Session sess;
	public CartDAOImpl() {
		sess = HibernateUtil.getSessionFactory().openSession();

}

	
	
	@Transactional
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
	

	@SuppressWarnings("unchecked")
	
	public List<Products> getCartForUser(String userName){
		
		
		try
		{
			sess.beginTransaction();
			String hql = "FROM Cart WHERE userName= :userName";
			return sess.createQuery(hql).setParameter("userName",userName).getResultList();
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
		
		
	}
}
