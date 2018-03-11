package com.eCommerce.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.eCommerce.BackEnd.DAO.CategoryDAO;
import com.eCommerce.BackEnd.DAO.ProductDAO;
import com.eCommerce.BackEnd.Model.CategoryModel;
import com.eCommerce.BackEnd.Model.ProductModel;



@Controller
public class ProductList
{
	@Autowired
	 ProductDAO products;
	@Autowired
	 CategoryDAO categoryDAO;
   
   	@RequestMapping(value ="/admin/productlistview")
	  public ModelAndView getlist() 
	   {
			ModelAndView mv=new ModelAndView("productlistview");
			List<ProductModel>slist=products.getAll();
			mv.addObject("slist", slist);
		    return mv;
		

	   }

	@ModelAttribute
	  public void addAttributes(Model model)
	  {
		  model.addAttribute("clist",categoryDAO.getAll());
	  }
	
}
