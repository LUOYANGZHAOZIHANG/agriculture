package com.yes.sssp.service;
  
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.yes.sssp.entity.Employee;
import com.yes.sssp.repository.EmployeeRepository;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	//@Transactional(readOnly=true)
	//只读方法
/*	@Transactional(readOnly=true)
	public Page<Employee> getPage(int pageNo,int pageSize){
		PageRequest pageRequest = new PageRequest(pageNo-1,pageSize);
		
		
		//如果是带条件分页的话使用
		//jpaSpecificationExecutor.finAll(Specification<T>,Pageable);
		return employeeRepository.findAll(pageRequest);
	}*/
	
	@Transactional(readOnly=true)
	public Employee get(Integer id){
		return employeeRepository.findOne(id);
	}
	@Transactional
	public void delect(Integer id){
		employeeRepository.delete(id);
	}
	@Transactional
	public void save(Employee employee){  
		if(employee.getId() == null){
			employee.setCreateTime(new Date());
		} 
		employeeRepository.saveAndFlush(employee);
	}
	@Transactional(readOnly=true)
	public Employee getByLastName(String lastName){
		return employeeRepository.getByLastName(lastName);
	}
	@Transactional(readOnly=true)
	public Page<Employee> getPage(int pageNo, int pageSize){
		PageRequest pageable = new PageRequest(pageNo - 1, pageSize);
		return employeeRepository.findAll(pageable);
	}
}
