package spring.mvc.teamProject.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.FinancialProductsDAOImpl;
import spring.mvc.teamProject.persistence.MembersDAOImpl;
import spring.mvc.teamProject.vo.MembersVO;



@Service
public class FinancialProductsServiceImpl implements FinancialProductsService{

	@Autowired
	FinancialProductsDAOImpl productDAO;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;


}
