package model.config;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Environment;

import model.entity.Authorities;
import model.entity.Cart;
import model.entity.Products;
import model.entity.Userinfo;



public class HibernateUtil {

	private static StandardServiceRegistry registry;
	private static SessionFactory sf;
	
	public static SessionFactory getSessionFactory() {
		if(sf == null)
		{
			try
			{
				StandardServiceRegistryBuilder registryBuilder = new StandardServiceRegistryBuilder();
				
				Map<String, String> settings = new HashMap<String, String>();
				settings.put(Environment.DRIVER, "org.h2.Driver");
				settings.put(Environment.URL, "jdbc:h2:tcp://localhost/~/Webproject");
				settings.put(Environment.USER, "Aziz");
				settings.put(Environment.PASS, "*Aziz007");
				settings.put(Environment.DIALECT, "org.hibernate.dialect.H2Dialect");
				settings.put(Environment.HBM2DDL_AUTO, "update");
				settings.put(Environment.SHOW_SQL, "true");
				
				registryBuilder.applySettings(settings);
				
				registry = registryBuilder.build();
				
				MetadataSources sources = new MetadataSources(registry);
				sources.addAnnotatedClass(Userinfo.class);
				sources.addAnnotatedClass(Products.class);
				sources.addAnnotatedClass(Cart.class);
				sources.addAnnotatedClass(Authorities.class);
				
				Metadata md = sources.getMetadataBuilder().build();
				sf = md.getSessionFactoryBuilder().build();
				
				
				
			}catch(Exception ex)
			{
				ex.printStackTrace();
			}
		}
		return sf;
	}
	
	public static void shutdown() {
		if(registry !=null)
		{
			StandardServiceRegistryBuilder.destroy(registry);
		}
	}
}