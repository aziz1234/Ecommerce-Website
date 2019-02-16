package model.daoimpl;

import org.hibernate.Session;

import model.config.HibernateUtil;
import model.dao.IAuthoritiesDAO;
import model.entity.Authorities;

public class AuthoritiesDAOImpl implements IAuthoritiesDAO {
	private Session sess;
    public AuthoritiesDAOImpl() {
    	
    	sess = HibernateUtil.getSessionFactory().openSession();
    }


	public boolean setAuthorities(Authorities a) {
		
    boolean b = true;
		
		try
		{
			sess.beginTransaction();
			sess.save(a);
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
