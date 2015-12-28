package com.yes.sssp.handler;

import java.util.Map;

import org.hibernate.sql.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yes.sssp.entity.Employee;
import com.yes.sssp.service.DepartmentService;
import com.yes.sssp.service.EmployeeService; 

@Controller
public class EmployeeHandler {
	
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private DepartmentService departmentService;
	
	@ModelAttribute
	public void getEmployee(@RequestParam(value="id",required=false)Integer id,
			Map<String,Object>map){ 
		//如果ID不是等于空的话 就是修改
		//目前只有修改和删除会传入ID属性，其余的操作均不会 
		if(id != null){
			System.out.println("进入getEmployee()");
			Employee employee = employeeService.get(id);
			//在这里清空当前的Department
			//否则修改当前对象的Department的时候就会发生500的错误
			//之所以能够尽到这个由@ModelAttribute修饰的getEmployee中
			//是因为 <form:form action="${url}" method="post"  modelAttribute="employee"> 中的modelAttribute="employee"所指向的类型
			//把关联的department置为null
			employee.setDepartment(null);
			map.put("employee", employee);
		}
	}
	@RequestMapping(value="/empDelete/{id}",method=RequestMethod.DELETE)
	public String delete(@PathVariable("id")Integer id){
		System.out.println(id);
		employeeService.delect(id);
		return "redirect:/empList";
	}
	@RequestMapping(value="/empUpdate/{id}",method=RequestMethod.PUT)
	public String update(Employee employee){
		System.out.println("进入update()");
		employeeService.save(employee);
		return "redirect:/empList";
	}
	@RequestMapping(value="/empReadyUpdate/{id}",method=RequestMethod.GET)
	public String readyUpdate(@PathVariable("id")Integer id,Map<String,Object>map) { 
		Employee employee = employeeService.get(id);
		map.put("employee", employee);
		map.put("departments", departmentService.getAll()); 
		//之后转发到input.jsp页面
		return "emp/input";
	}
	@RequestMapping(value="/empSave",method=RequestMethod.PUT)
	public String save(Employee employee){
		employeeService.save(employee);
		//添加成功之后转发到emps
		return "redirect:/empList";
	}
	
	/**
	 * 准备添加
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/empReadySave",method=RequestMethod.GET)
	public String readySave(Map<String, Object>map){
		map.put("departments", departmentService.getAll());
		map.put("employee", new Employee());  
		return "emp/input";
	}
	
	/**2015-12-27 17:39:05
	 * 使用Ajax验证当前用户名是否已经存在
	 * @param lastName 当前用户名
	 * @return 0代表可用,1代表已存在
	 */
	@ResponseBody
	@RequestMapping(value="/ajaxValidateLastName",method=RequestMethod.POST)
	public String validateLastName(@RequestParam(value="lastName",required=true) String lastName){
		Employee employee = employeeService.getByLastName(lastName);
		if(employee == null){
			return "0";
		}else{
			return "1";
		}
	} 
	/**
	 * 2015-12-27 17:38:17
	 * @param pageNoStr 当前页数
	 * @param map 返回的Map，在页面中接收
	 * @return emp/list
	 */
	@RequestMapping("/empList")
	public String list(@RequestParam(value="pageNo", required=false, defaultValue="1") String pageNoStr, 
			Map<String, Object> map){
		int pageNo = 1; 
		try { 
			pageNo = Integer.parseInt(pageNoStr);
			if(pageNo < 1){
				pageNo = 1; 
			}
		} catch (Exception e) {}
		
		Page<Employee> page = employeeService.getPage(pageNo, 5); 
		map.put("page", page); 
		return "emp/list";
	}
}
