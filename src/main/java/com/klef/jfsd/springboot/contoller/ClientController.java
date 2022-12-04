package com.klef.jfsd.springboot.contoller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Book;
import com.klef.jfsd.springboot.model.Cart;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Order;
import com.klef.jfsd.springboot.model.Review;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.OrderRepository;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BookService;
import com.klef.jfsd.springboot.service.CartService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.OrderService;
import com.klef.jfsd.springboot.service.ReviewService;
import com.klef.jfsd.springboot.service.SellerService;

import io.netty.handler.codec.http.HttpRequest;

@Controller
public class ClientController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private SellerService sellerService;
	@Autowired
	private BookService bookService;
	@Autowired
	private CartService cartService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private ReviewService reviewService;
	
	
	@GetMapping("/")
	public String mainhomedemo()
	{
		return "index";
	}
	@GetMapping("adminhome")
	public String adminhome()
	{
		return "adminhome";
	}
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView("adminlogin");
		return mv;
	}
	
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("auname", auname);
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("customerlogin")
	public ModelAndView customerlogin()
	{
		ModelAndView mv=new ModelAndView("customerlogin");
		return mv;
	}
	
	@PostMapping("/checkcustomerlogin")
	public ModelAndView checkemplogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String euname=request.getParameter("euname");
		String epwd=request.getParameter("epwd");
		
		Customer customer1 = customerService.checkcustomerlogin(euname, epwd);
		
		if(customer1!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("customer1", customer1);
			mv.setViewName("customerhome");
		}
		else
		{
			mv.setViewName("customerlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	@GetMapping("customerhome")
	public String customer()
	{
		return "customerhome";
	}
	@GetMapping("customerreg")
	public ModelAndView customerreg()
	{
		ModelAndView mv=new ModelAndView("customerreg","customer",new Customer());
		return mv;
		
	}
	
	@PostMapping("/addcustomer")
	public String addcustomer(@ModelAttribute("customer") Customer customer)
	{
		customerService.addcustomer(customer);
		return "redirect:customerlogin";
	}
	@GetMapping("sellerlogin")
	public ModelAndView sellerlogin()
	{
		ModelAndView mv=new ModelAndView("sellerlogin");
		return mv;
	}
	@PostMapping("/checksellerlogin")
	public ModelAndView checksellerlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String euname=request.getParameter("euname");
		String epwd=request.getParameter("epwd");
		
		Seller seller1 = sellerService.checksellerlogin(euname, epwd);
		
		if(seller1!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("seller1", seller1);
			mv.setViewName("sellerhome");
		}
		else
		{
			mv.setViewName("sellerlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	@PostMapping("/addseller")
	public String addemployeedemo(@ModelAttribute("seller") Seller seller)
	{
		seller.setSellerstatus("registered");
		sellerService.addseller(seller);
		return "redirect:sellerlogin";
	}
	
	
	@GetMapping("sellerreg")
	public ModelAndView sellerreg()
	{
		ModelAndView mv=new ModelAndView("sellerreg","seller",new Seller());
		return mv;
		
	}
	
	@GetMapping("validatesellerlist")
	public ModelAndView validatesellerlist(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
		ModelAndView mv=new ModelAndView("validateseller");
		List<Seller> li=sellerService.validatesellerlist();
		mv.addObject("sellerlist",li);
		return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
		}
	}
	
	@GetMapping("/validateseller")
	public String validateseller(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
			return "validateseller";
		}
		else {
			return "index";
		}
	}
	@GetMapping("deleteseller")
	public String deleteseller(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
		adminService.deleteseller(id);
		return "redirect:viewallsellers";
		}
		else {
			return "index";
		}
	}
	@GetMapping("/viewallsellers")
	public ModelAndView viewallsellers(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
			ModelAndView mv = new ModelAndView("viewallsellers");
			List<Seller> sellerlist=adminService.viewallsellers();
			mv.addObject("sellerlist",sellerlist);
		return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;	
		}
	}
	
	@GetMapping("/viewallcustomers")
	public ModelAndView viewallcustomers(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
		ModelAndView mv = new ModelAndView("viewallcustomers");
		List<Customer> customerlist=adminService.viewallcustomers();
		mv.addObject("customerlist",customerlist);
		return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;	
		}
	}
	@GetMapping("deletecustomer")
	public String deletecustomer(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
			adminService.deletecustomer(id);
			return "redirect:viewallcustomers";
		}
		else {
			return "index";
		}
	}
	
	@GetMapping("product")
	public ModelAndView productdemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
			ModelAndView mv=new ModelAndView("customerproduct");
			List<Book> booklist=bookService.booklist();
			mv.addObject("c",customer1);
			mv.addObject("booklist",booklist);
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
			
		}
	}
	@GetMapping("adminchangepwd")
	public String adminchangepwd() {
		return "adminchangepwd";
	}
	@GetMapping("customerprofile")
	public String customerprofile()
	{
		return "customerprofile";
	}
	@PostMapping("changeadminpwd")
	public String changeadminpwd(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
			adminService.changeadminpwd(request.getParameter("id"),request.getParameter("pwd"));
			return "redirect:adminchangepwd";
		}
		else {
			return "index";
		}
	}
	
	
	@GetMapping("customerprofileedit")
	public ModelAndView customerprofileedit(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
			ModelAndView mv=new ModelAndView("customerprofileedit","customer",new Customer());
			mv.addObject("c",customer1);
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
		}
	}
	
	@PostMapping("updatecustomer")
	public String updatecustomer(@ModelAttribute("customer") Customer customer)
	{
		customerService.updatecustomer(customer);
		return "redirect:customerprofile";
	}
	
	@GetMapping("managebooks")
	public ModelAndView managebook(HttpServletRequest request) {

		HttpSession session = request.getSession();
		Seller seller1 = (Seller) session.getAttribute("seller1");
		if(seller1!=null) {
			ModelAndView mv=new ModelAndView("managebooks");
			List<Book> booklist=bookService.getbooksbysellerid(seller1.getSellerid());
			mv.addObject("booklist",booklist);
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
		}	
	}
	
	@GetMapping("manageorders")
	public ModelAndView manageOrders(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Seller seller1 = (Seller) session.getAttribute("seller1");
		if(seller1!=null) {
			ModelAndView mv=new ModelAndView("manageorders");
			mv.addObject("olist",orderService.viewSellerOrders(seller1.getSellerid()));
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;	
		}
	}
	
	@PostMapping("changestatus")
	public String changestatus(HttpServletRequest request)
	{
		orderService.changeStatus(Integer.parseInt(request.getParameter("oid")),request.getParameter("status"));
		return "redirect:manageorders";
	}
	
	@GetMapping("addbook")
	public ModelAndView addbook(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		Seller seller1 = (Seller) session.getAttribute("seller1");
		if(seller1!=null) {
			ModelAndView mv=new ModelAndView("addbook");
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
			
		}
	}
	
	@GetMapping("/error")
	public String errorpage()
	{
		return "error";
	}
	
	@PostMapping("addbookimpl")
	public String addbookimpl(HttpServletRequest request,@RequestParam("image1") MultipartFile file1,@RequestParam("image2") MultipartFile file2,@RequestParam("image3") MultipartFile file3,@RequestParam("image4") MultipartFile file4) throws SerialException, SQLException, IOException {
		HttpSession session = request.getSession();
		Seller seller1 = (Seller) session.getAttribute("seller1");
		byte[] bytes1 = file1.getBytes();
		Blob blob1 = new javax.sql.rowset.serial.SerialBlob(bytes1);
		byte[] bytes2 = file2.getBytes();
		Blob blob2 = new javax.sql.rowset.serial.SerialBlob(bytes2);
		byte[] bytes3 = file3.getBytes();
		Blob blob3 = new javax.sql.rowset.serial.SerialBlob(bytes3);
		byte[] bytes4 = file4.getBytes();
		Blob blob4 = new javax.sql.rowset.serial.SerialBlob(bytes4);
		Book book=new Book();
		book.setName(request.getParameter("name"));
		book.setDescription(request.getParameter("description"));
		book.setPrice(Double.parseDouble(request.getParameter("price")));
		book.setStock(Integer.parseInt(request.getParameter("stock")));
		book.setSellerid(seller1.getSellerid());
		book.setRating(0);
		book.setSeller("seller");
		book.setImage1(blob1);
		book.setImage2(blob2);
		book.setImage3(blob3);
		book.setImage4(blob4);
		bookService.addbook(book);
		return "redirect:managebooks";
	}
	
	@GetMapping("deletebook")
	public String deletebook(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		Seller seller1 = (Seller) session.getAttribute("seller1");
		if(seller1!=null) {
			bookService.deletebookbyid(id);
			return "redirect:managebooks";
		}
		else {
			return "index";
		}
	}
	@GetMapping("bookdetails")
	public ModelAndView bookdetails(HttpServletRequest request,@RequestParam("id") int id) {
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
			ModelAndView mv=new ModelAndView("bookdetails");
			mv.addObject("book",bookService.getbookbyid(id));
			List<Review> rlist=reviewService.bookReviews(id);
			mv.addObject("reviewlist",rlist);
			double sum=0;
			int count=0;
			for(Review r:rlist)
			{
				sum+=r.getRating();
				count++;
			}
			double totalrating= (sum/count);
			DecimalFormat numberFormat = new DecimalFormat("#.0");
			mv.addObject("totalrating",numberFormat.format(totalrating));
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
			
		}
	}
	
	@GetMapping("viewallorders")
	public ModelAndView viewallorders(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
		ModelAndView mv=new ModelAndView("viewallorders");
		mv.addObject("olist", orderService.viewAllOrders());
		return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
			
		}
	}
	
	@GetMapping("approveseller")
	public String approveseller(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
			adminService.approveseller(id);
			return "redirect:viewallsellers";
		}
		else {
			return "index";
		}
	}
	
	@GetMapping("rejectseller")
	public String rejectseller(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		String auname = (String) session.getAttribute("auname");
		if(auname!=null) {
			adminService.rejectseller(id);
			return "redirect:viewallsellers";
		}
		else {
			return "index";
		}
	}
	
	@GetMapping("addtocart")
	public String addtocart(HttpServletRequest request,@RequestParam("id") int id)
	{

		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
			Cart cart=new Cart();
			cart.setBook_id(id);
			cart.setSeller_id(bookService.getbookbyid(id).getSellerid());
			cart.setBook_name(bookService.getbookbyid(id).getName());
			cart.setCustomer_id(customer1.getId());
			cart.setBook_price(bookService.getbookbyid(id).getPrice());
			cartService.addCart(cart);
			return "redirect:cart?cid="+customer1.getId();
		}
		else {
			return "index";
		}
	}
	
	
	@GetMapping("cart")
	public ModelAndView cart(HttpServletRequest request,@RequestParam("cid") int cid)
	{
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
			ModelAndView mv=new ModelAndView("cart");
			List<Cart> clist=cartService.customercart(cid);
			mv.addObject("clist", clist);
			double subtotal=0,tax=0,total=0;
			for(Cart c:clist) {
				subtotal+=c.getBook_price();
			}
			tax=(subtotal*0.05);
			total=tax+subtotal;
			mv.addObject("subtotal", subtotal);
			mv.addObject("tax", tax);
			mv.addObject("total", total);
			mv.addObject("cid",cid);
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
			
		}
	}
	
	@GetMapping("deletecartitem")
	public String deletecartitem(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
		cartService.delete(id);
		return "redirect:cart?cid="+customer1.getId();
		}
		else {
			return "index";
		}
	}
	
	@GetMapping("customerorders")
	public ModelAndView customerorders(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
			ModelAndView mv=new ModelAndView("customerorders");
			mv.addObject("olist", orderService.viewCustomerOrders(id));
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
		}
	}
	
	@GetMapping("buycartitems")
	public String buycartitems(HttpServletRequest request,@RequestParam("id") int id) {
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
		List<Cart> clist=cartService.customercart(id);
		for(Cart c:clist)
		{
			Order o=new Order();
			o.setBookid(c.getBook_id());
			o.setBookname(c.getBook_name());
			o.setBookprice(c.getBook_price());
			o.setCustomerid(c.getCustomer_id());
			o.setSellerid(c.getSeller_id());
			o.setStatus("CONFIRMED");
			orderService.addOrder(o);
			cartService.delete(c.getCart_id());
		}
		return "redirect:customerorders?id="+id;
		}
		else {
			return "index";
		}
	}
	
	@GetMapping("buybook")	
	public String buybook(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
			Order o=new Order();
			Book book=bookService.getbookbyid(id);
			o.setBookid(book.getId());
			o.setBookname(book.getName());
			o.setBookprice(book.getPrice());
			o.setCustomerid(customer1.getId());
			o.setSellerid(book.getSellerid());
			o.setStatus("CONFIRMED");
			orderService.addOrder(o);
			return "redirect:customerorders?id="+customer1.getId();
		}
		else {
			return "index";
		}
	}
	
	@GetMapping("cancelorder")
	public String cancelorder(HttpServletRequest request,@RequestParam("id") int id) {
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
			orderService.deleteOrder(id);
			return "redirect:customerorders?id="+customer1.getId();
		}
		else {
			return "index";
		}
	}
	@GetMapping("sellerhome")
	public String sellerhome()
	{
		return "sellerhome";
	}
	
	@GetMapping("writereview")
	public ModelAndView writereview(HttpServletRequest request,@RequestParam("id") int id)
	{
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		if(customer1!=null) {
			ModelAndView mv=new ModelAndView("writereview");
			mv.addObject("order", orderService.viewOrder(id));
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("index");
			return mv;
			
		}
	}
	@PostMapping("addreview")
	public String addreview(HttpServletRequest request,@RequestParam("reviewimage") MultipartFile reviewimage) throws SerialException, SQLException, IOException {
		HttpSession session = request.getSession();
		Customer customer1 = (Customer) session.getAttribute("customer1");
		byte[] bytes = reviewimage.getBytes();
		Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		Review review=new Review();
		review.setBookid(Integer.parseInt(request.getParameter("bookid")));
		review.setCustomerid(Integer.parseInt(request.getParameter("customerid")));
		review.setOrderid(Integer.parseInt(request.getParameter("orderid")));
		review.setCustomername(customer1.getName());
		review.setRating(Integer.parseInt(request.getParameter("rating")));
		review.setReview_image(blob);
		review.setDescription(request.getParameter("description"));
		reviewService.addReview(review);
		return "redirect:customerorders?id="+customer1.getId();
	}
	
	@GetMapping("/reviewimage")
	public ResponseEntity<byte[]> reviewimage(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Review review =  reviewService.getreviewbyid(id);
	  byte [] imageBytes = null;
	  imageBytes = review.getReview_image().getBytes(1,(int) review.getReview_image().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	
	@GetMapping("/image1")
	public ResponseEntity<byte[]> displayimage1(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Book product =  bookService.getbookbyid(id);
	  byte [] imageBytes = null;
	  imageBytes = product.getImage1().getBytes(1,(int) product.getImage1().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	@GetMapping("/image2")
	public ResponseEntity<byte[]> displayimage2(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Book product =  bookService.getbookbyid(id);
	  byte [] imageBytes = null;
	  imageBytes = product.getImage2().getBytes(1,(int) product.getImage2().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	@GetMapping("/image3")
	public ResponseEntity<byte[]> displayimage3(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Book product =  bookService.getbookbyid(id);
	  byte [] imageBytes = null;
	  imageBytes = product.getImage3().getBytes(1,(int) product.getImage3().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	@GetMapping("/image4")
	public ResponseEntity<byte[]> displayimage4(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Book product =  bookService.getbookbyid(id);
	  byte [] imageBytes = null;
	  imageBytes = product.getImage4().getBytes(1,(int) product.getImage4().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	
}
