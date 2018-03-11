package com.eCommerce.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.eCommerce.BackEnd.DAO.CategoryDAO;
import com.eCommerce.BackEnd.Model.CategoryModel;

@Controller
public class CategoryList 
{
	@Autowired
	 CategoryDAO categorys;
	@RequestMapping(value ="admin/categorylist")
  public ModelAndView add() {
		ModelAndView mv=new ModelAndView("categorylist");
		List<CategoryModel>clist=categorys.getAll();
		mv.addObject("clist", clist);
	return mv;
  }
}
