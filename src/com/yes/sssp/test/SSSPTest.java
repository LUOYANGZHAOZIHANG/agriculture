package com.yes.sssp.test;

import java.sql.SQLException;
import java.util.List; 
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.sql.DataSource; 
import org.hibernate.ejb.QueryHints;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yes.sssp.entity.Department;
import com.yes.sssp.repository.DepartmentRepository;
 
public class SSSPTest {
	
	private ApplicationContext ctx = null;  
	private DepartmentRepository departmentRepository;
	private EntityManagerFactory entityManagerFactory;
	{
		ctx = new ClassPathXmlApplicationContext("applicationContext.xml");  
		departmentRepository = ctx.getBean(DepartmentRepository.class);
		entityManagerFactory = ctx.getBean(EntityManagerFactory.class);
	}
	@Test
	public void tetJpaSecondLevelCache(){
		String jpql = "FROM Department d"; 
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery(jpql);	
		List<Department> departments = query.setHint(QueryHints.HINT_CACHEABLE, true).getResultList(); 
		entityManager.clear(); 
	}
	@Test
	public void testisTrue(){
		System.out.println("这是真的");
		return;
	}
	
	@Test
	public void testRepositorySecondLevelCache(){
		List<Department> departments = departmentRepository.findAll(); 
		departments = departmentRepository.getAll();
	}
	
	//运行的时候会生成数据库表文件
	//因为之前扫描到需要生成的文件
	@Test
	public void testDataSource() throws SQLException {
		DataSource dataSource = ctx.getBean(DataSource.class);
		System.out.println(dataSource.getConnection());
	}

}
