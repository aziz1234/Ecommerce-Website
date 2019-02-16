package model.daoimpl;

import org.hibernate.Session;

import model.config.HibernateUtil;
import model.dao.IUserinfoDAO;
import model.entity.Userinfo;

public class UserinfoDaoImpl implements IUserinfoDAO {
    private Session sess;
    public UserinfoDaoImpl() {
    	sess = HibernateUtil.getSessionFactory().openSession();
    }
	public boolean insertInfo(Userinfo u) {
		boolean b = true;
		
		try
		{
			sess.beginTransaction();
			sess.save(u);
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
