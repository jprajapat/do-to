package com.hibernate.helper;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	private FactoryProvider() {
	}

	public static SessionFactory factory = null;

	public static SessionFactory getSessionFactory() {
		if (factory == null) {
			try {
				Configuration cfg = new Configuration();
				cfg.configure();
				StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder();
				ssrb.applySettings(cfg.getProperties());
				StandardServiceRegistry ssr = ssrb.build();
				factory = cfg.buildSessionFactory(ssr);
				return factory;

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return factory;
	}

}
