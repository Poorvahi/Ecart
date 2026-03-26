package com.dbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dto.Cartitemget;
import com.dto.Categoryget;
import com.dto.Contactget;
import com.dto.Feedbackget;
import com.dto.Orderget;
import com.dto.Productget;
import com.dto.Subcategoryget;
import com.dto.Userget;

public class DatabaseCon {
	private Connection con;
	public DatabaseCon() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce?user=root&password=Sql@20");
			System.out.println("Connection established");
		} catch(Exception e)
		{
			e.printStackTrace();
		}

}
	//Insertion in Registration DB
	public boolean Addregi(String unm, String fnm, String lnm, String passwd, String cpasswd,String em, long contact, String gen,String dob, String addr,String state, String city, int postal, String role)
	{
		String query="INSERT INTO registration(username,firstname,lastname,password,email,contact,gender,dob,address,state,city,postalcode,role) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,unm);
			ps.setString(2,fnm);
			ps.setString(3,lnm);
			ps.setString(4,passwd);
			ps.setString(5,em);
			ps.setLong(6,contact);
			ps.setString(7,gen);
			ps.setString(8,dob);
			ps.setString(9,addr);
			ps.setString(10,state);
			ps.setString(11,city);
			ps.setInt(12, postal);
			ps.setString(13,role);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	//Insertion in Login DB
	public boolean Addlogin(String unm, String passwd, String role, String email, long contact)
	{
		String query="INSERT INTO login(username,password,role,email,mobile) VALUES (?,?,?,?,?)";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,unm);
			ps.setString(2,passwd);
			ps.setString(3,role);
			ps.setString(4,email);
			ps.setLong(5, contact);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	//Insertion in Contact DB
		public boolean Addcontact(String email, String msg)
		{
			String query="INSERT INTO contact(email,msg) VALUES (?,?)";
			try(PreparedStatement ps=con.prepareStatement(query))
			{
				ps.setString(1,email);
				ps.setString(2,msg);
				int result=ps.executeUpdate();
				return result>0;
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			return false;
		}
	
	// To add category records from admin desk
	
	
	public boolean Addcategory(String cname)
	{
		String query="INSERT INTO category(cnm) VALUES (?)";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,cname);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	
	//Add User from admin desk
	
	
		public boolean Adduser(String unm, String fnm, String lnm, String passwd, String cpasswd,String em, long contact, String gen,String dob, String addr,String state, String city, int postal, String role)
		{
			String query="INSERT INTO registration(username,firstname,lastname,password,email,contact,gender,dob,address,state,city,postalcode,role) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
			try(PreparedStatement ps=con.prepareStatement(query))
			{
				ps.setString(1,unm);
				ps.setString(2,fnm);
				ps.setString(3,lnm);
				ps.setString(4,passwd);
				ps.setString(5,em);
				ps.setLong(6,contact);
				ps.setString(7,gen);
				ps.setString(8,dob);
				ps.setString(9,addr);
				ps.setString(10,state);
				ps.setString(11,city);
				ps.setInt(12, postal);
				ps.setString(13,role);
				int result=ps.executeUpdate();
				return result>0;
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			return false;
		}
		
		//Add User Login from admin desk
		
		
		public boolean Adduserlogin(String unm, String passwd, String role, String email, long contact)
		{
			String query="INSERT INTO login(username,password,role,email,mobile) VALUES (?,?,?,?,?)";
			try(PreparedStatement ps=con.prepareStatement(query))
			{
				ps.setString(1,unm);
				ps.setString(2,passwd);
				ps.setString(3,role);
				ps.setString(4,email);
				ps.setLong(5, contact);
				int result=ps.executeUpdate();
				return result>0;
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			return false;
		}
	// To add subcategory records from admin desk
	
	
	public boolean Addsubcategory(String sname, int cid, String cnm)
	{
		String query="INSERT INTO subcategory(subnm, cid, categoryname) VALUES (?,?,?)";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,sname);
			ps.setInt(2,cid);
			ps.setString(3,cnm);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	//To add product details by admin desk
	
	
	public boolean Addproduct(String pname, double price, String category, String desc,String brand, int qty, double total, double stotal, String img)
	{
		String query="INSERT INTO product(productname, price, category, description, brand, quantity,total,subtotal,image) VALUES (?,?,?,?,?,?,?,?,?)";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,pname);
			ps.setDouble(2,price);
			ps.setString(3,category);
			ps.setString(4, desc);
			ps.setString(5,brand);
			ps.setInt(6,qty);
			ps.setDouble(7,total);
			ps.setDouble(8, stotal);
			ps.setString(9, img);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	//To Add feedback from userside
	
	public boolean Addfeedback(String name, String email, String experience, int rating, String usability,String design, String performance, String suggestion)
	{
		String query="INSERT INTO feedback(name, email,experience, rating, ease_to_use,design, performance,suggestion) VALUES (?,?,?,?,?,?,?,?)";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,experience);
			ps.setInt(4,rating);
			ps.setString(5,usability);
			ps.setString(6,design);
			ps.setString(7,performance);
			ps.setString(8,suggestion);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	//Insert data into Cart
	
	public boolean Addtocart(int productid, String name, double price, String img, int quantity,double price2,String email)
	{
		String query="INSERT INTO cart(productid,name, price,image,quantity,total,email) VALUES (?,?,?,?,?,?,?)";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setInt(1,productid);
			ps.setString(2, name);
			ps.setDouble(3,price);
			ps.setString(4,img);
			ps.setInt(5, quantity);
			ps.setDouble(6, price2);
			ps.setString(7,email);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	// Add Orders user side				
	
	public boolean AddOrders(String paymentId, double price, String email, int productIds, String names, String images)
    {
		String query = "INSERT INTO orders(payment_id,price,email,product_id,product_name,image) values(?,?,?,?,?,?)";
		
		try (PreparedStatement ps = con.prepareStatement(query)){
		
			ps.setString(1, paymentId);
			ps.setDouble(2, price);
			ps.setString(3, email);
			ps.setInt(4, productIds);
			ps.setString(5, names);
			ps.setString(6, images);
			int res=ps.executeUpdate();
			return res>0;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return false;
    }
	
	
	//Show Cart details
	
	public ArrayList showcart(String newmail)
	{
		ArrayList<Cartitemget> alist= new ArrayList<>();
		try {
			String query="SELECT * from cart where email=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, newmail);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Cartitemget st = new Cartitemget();
				st.setCartid(rs.getInt("cartid"));
				st.setProductid(rs.getInt("productid"));
				st.setName(rs.getString("name"));
				st.setPrice(rs.getDouble("price"));
				st.setImg(rs.getString("image"));
				st.setQuantity(rs.getInt("quantity"));
				st.setTotal(rs.getDouble("total"));
				st.setEmail(rs.getString("email"));
				alist.add(st);
			}	
		}catch(Exception e)
		{
			System.out.println(alist.size());
			System.out.println("Error ALL user:"+e);
			
		}
		return alist;
		
	}
	
	// To increment price of cart
	
	
	public boolean incrementval(int newqty, double incprice, int cartid)
	{
		String query="Update cart set quantity=?, total=? where cartid=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setInt(1,newqty);
			ps.setDouble(2,incprice);
			ps.setInt(3,cartid);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	// To decrement price of cart
	
	public boolean decrementval(int newqty, double incprice, int cartid)
	{
		String query="Update cart set quantity=?, total=? where cartid=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setInt(1,newqty);
			ps.setDouble(2,incprice);
			ps.setInt(3,cartid);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	// To remove product from cart
	
	
	public boolean removeproduct(int cartid) {
		try {
			String sql="DELETE FROM cart WHERE cartid =?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,cartid);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
		

	// Calculate grandtotal
	
	public Double grandtotal(String email) {
			String sql="SELECT sum(total) from cart where email=?";
			try (PreparedStatement ps=con.prepareStatement(sql)){
				ps.setString(1,email);
				try(ResultSet rs=ps.executeQuery()){
					if(rs.next()) {
						double sum=rs.getDouble(1);
						return rs.wasNull() ? 0.0: sum;
					}
					
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return 0.0;
	}
	
	
	
	
	//Display user records on admin desk
	
	
	public ArrayList showAll()
	{
		ArrayList<Userget> alist= new ArrayList<>();
		try {
			String query="SELECT username,firstname,lastname,email,contact,gender,dob,state,city, address from registration";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Userget st= new Userget();
				st.setUsername(rs.getString("username"));
				st.setFirstname(rs.getString("firstname"));
				st.setLastname(rs.getString("lastname"));
				st.setEmail(rs.getString("email"));
				st.setContact(rs.getLong("contact"));
				st.setGender(rs.getString("gender"));
				st.setDob(rs.getString("dob"));
				st.setState(rs.getString("state"));
				st.setCity(rs.getString("city"));
				st.setAddress(rs.getString("address"));
				alist.add(st);
			}	
		}catch(Exception e)
		{
			System.out.println(alist.size());
			System.out.println("Error ALL user:"+e);
			
		}
		return alist;
		
	}
	
	//Display category records on admin desk
	
	
	public ArrayList showAllcategory()
	{
		ArrayList<Categoryget> alist= new ArrayList<>();
		try {
			String query="SELECT cid,cnm from category";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Categoryget cat=new Categoryget();
				cat.setCid(rs.getInt("cid"));
				cat.setCnm(rs.getString("cnm"));
				alist.add(cat);
			}	
		}catch(Exception e)
		{
			System.out.println(alist.size());
			System.out.println("Error:"+e);
			
		}
		return alist;
		
	}
	
	// Display subcategory records on admin desk
	
	
	public ArrayList showAllsubcategory()
	{
		ArrayList<Subcategoryget> alist= new ArrayList<>();
		try {
			String query="SELECT * from subcategory";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Subcategoryget scat =new Subcategoryget();
				scat.setSubid(rs.getInt("subid"));
				scat.setSubnm(rs.getString("subnm"));
				scat.setCid(rs.getInt("cid"));
				scat.setCnm(rs.getString("categoryname"));
				alist.add(scat);
			}	
		}catch(Exception e)
		{
			System.out.println(alist.size());
			System.out.println("Error:"+e);
			
		}
		return alist;
		
	}
	
	// Show all products on Admin desk
	
	public ArrayList showproducts()
	{
		ArrayList<Productget> alist= new ArrayList<>();
		try {
			String query="SELECT * from product";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Productget st= new Productget();
				st.setProductid(rs.getInt("productid"));
				st.setProductname(rs.getString("productname"));
				st.setPrice(rs.getDouble("price"));
				st.setCategory(rs.getString("category"));
				st.setDescription(rs.getString("description"));
				st.setBrand(rs.getString("brand"));
				st.setQuantity(rs.getInt("quantity"));
				st.setTotal(rs.getDouble("total"));
				st.setSubtotal(rs.getDouble("subtotal"));
				st.setImage(rs.getString("image"));
				alist.add(st);
			}	
		}catch(Exception e)
		{
			System.out.println(alist.size());
			System.out.println("Error ALL user:"+e);
			
		}
		return alist;
		
	}
	
	//Show subcategory  related products on user side
	
	public ArrayList showAllsubcat(int cid)
	{
		ArrayList<Subcategoryget> alist= new ArrayList<>();
		try {
			String query="SELECT * from subcategory where cid=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, cid);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Subcategoryget scat =new Subcategoryget();
				scat.setSubid(rs.getInt("subid"));
				scat.setSubnm(rs.getString("subnm"));
				scat.setCid(rs.getInt("cid"));
				scat.setCnm(rs.getString("categoryname"));
				alist.add(scat);
			}	
		}catch(Exception e)
		{
			System.out.println(alist.size());
			System.out.println("Error:"+e);
			
		}
		return alist;
		
	}
	
	//show related subproducts
	
	
	public ArrayList showrelatedproducts(String subnm, String cnm)
	{
		ArrayList<Productget> alist= new ArrayList<>();
		try {
			String query="SELECT * from product where brand=? and category=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, subnm);
			ps.setString(2,cnm);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Productget st= new Productget();
				st.setProductid(rs.getInt("productid"));
				st.setProductname(rs.getString("productname"));
				st.setPrice(rs.getDouble("price"));
				st.setCategory(rs.getString("category"));
				st.setDescription(rs.getString("description"));
				st.setBrand(rs.getString("brand"));
				st.setQuantity(rs.getInt("quantity"));
				st.setTotal(rs.getDouble("total"));
				st.setSubtotal(rs.getDouble("subtotal"));
				st.setImage(rs.getString("image"));
				alist.add(st);
			}	
		}catch(Exception e)
		{
			System.out.println(alist.size());
			System.out.println("Error ALL user:"+e);
			
		}
		return alist;
		
	}
	
	//show related product userhome icon
	
	public ArrayList showrelatedproducts2(String cnm)
	{
		ArrayList<Productget> alist= new ArrayList<>();
		try {
			String query="SELECT * from product where category=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, cnm);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Productget st= new Productget();
				st.setProductid(rs.getInt("productid"));
				st.setProductname(rs.getString("productname"));
				st.setPrice(rs.getDouble("price"));
				st.setCategory(rs.getString("category"));
				st.setDescription(rs.getString("description"));
				st.setBrand(rs.getString("brand"));
				st.setQuantity(rs.getInt("quantity"));
				st.setTotal(rs.getDouble("total"));
				st.setSubtotal(rs.getDouble("subtotal"));
				st.setImage(rs.getString("image"));
				alist.add(st);
			}	
		}catch(Exception e)
		{
			System.out.println(alist.size());
			System.out.println("Error ALL user:"+e);
			
		}
		return alist;
		
	}
	
	//show on queries admin desk
	public ArrayList showquery()
	{
			ArrayList<Contactget> alist= new ArrayList<>();
			try {
				String query="SELECT * from contact";
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					Contactget st= new Contactget();
					st.setEmail(rs.getString("email"));
					st.setMsg(rs.getString("msg"));
					alist.add(st);
				}	
			}catch(Exception e)
			{
				System.out.println(alist.size());
				System.out.println("Error No Contact:"+e);
				
			}
			return alist;
			
		}
	
	//show all feedback admin desk
		public ArrayList showfeedback()
		{
				ArrayList<Feedbackget> alist= new ArrayList<>();
				try {
					String query="SELECT * from feedback";
					PreparedStatement ps=con.prepareStatement(query);
					ResultSet rs=ps.executeQuery();
					while(rs.next())
					{
						Feedbackget st= new Feedbackget();
						st.setName(rs.getString("name"));
						st.setEmail(rs.getString("email"));
						st.setExperience(rs.getString("experience"));
						st.setRating(rs.getString("rating"));
						st.setUsability(rs.getString("usability"));
						st.setDesign(rs.getString("design"));
						st.setPerformance(rs.getString("performance"));
						st.setSuggestion(rs.getString("suggestion"));
						alist.add(st);
					}	
				}catch(Exception e)
				{
					System.out.println(alist.size());
					System.out.println("Error No feedback:"+e);
					
				}
				return alist;
				
			}
		
		//show all orders admin desk
				public ArrayList showallorders()
				{
						ArrayList<Orderget> alist= new ArrayList<>();
						try {
							String query="SELECT * from orders";
							PreparedStatement ps=con.prepareStatement(query);
							ResultSet rs=ps.executeQuery();
							while(rs.next())
							{
								Orderget st= new Orderget();
								st.setOrder_id(rs.getInt("order_id"));
								st.setPayment_id(rs.getString("payment_id"));
								st.setPrice(rs.getDouble("price"));
								st.setEmail(rs.getString("email"));
								st.setProduct_id(rs.getInt("product_id"));
								st.setProduct_name(rs.getString("product_name"));
								st.setCreateddate(rs.getString("Createddate"));
								st.setImage(rs.getString("image"));
								alist.add(st);
							}	
						}catch(Exception e)
						{
							System.out.println(alist.size());
							System.out.println("Error No feedback:"+e);
							
						}
						return alist;
						
					}

				//show all orders user desk
				public ArrayList showuserorders()
				{
						ArrayList<Orderget> alist= new ArrayList<>();
						try {
							String query="SELECT * from orders where email=?";
							PreparedStatement ps=con.prepareStatement(query);
							ResultSet rs=ps.executeQuery();
							while(rs.next())
							{
								Orderget st= new Orderget();
								st.setOrder_id(rs.getInt("order_id"));
								st.setPayment_id(rs.getString("payment_id"));
								st.setPrice(rs.getDouble("price"));
								st.setEmail(rs.getString("email"));
								st.setProduct_id(rs.getInt("product_id"));
								st.setProduct_name(rs.getString("product_name"));
								st.setCreateddate(rs.getString("Createddate"));
								st.setImage(rs.getString("image"));
								alist.add(st);
							}	
						}catch(Exception e)
						{
							System.out.println(alist.size());
							System.out.println("Error No feedback:"+e);
							
						}
						return alist;
						
					}


	//Deleting Users from admin desk
	
	
	public boolean deluser(String username) {
		try {
			String sql="DELETE FROM registration WHERE username=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,username);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//Deleting Category from admin desk
	
	
	public boolean delcategory(int cid) {
		try {
			String sql="DELETE FROM category WHERE cid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,cid);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//Deleting Subcategory from admin desk
	
	
	public boolean delsubcategory(int subid) {
		try {
			String sql="DELETE FROM subcategory WHERE subid =?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,subid);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//Deleting Product from admin desk
	
	
		public boolean delproduct(int pid) {
			try {
				String sql="DELETE FROM product WHERE productid =?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setInt(1,pid);
				int result=ps.executeUpdate();
				return result>0;
			}catch(Exception e) {
				e.printStackTrace();
			}
			return false;
		}
	
		//Deleting Queries from admin desk
		
		
			public boolean delquery(String email) {
				try {
					String sql="DELETE FROM feedback WHERE email =?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,email);
					int result=ps.executeUpdate();
					return result>0;
				}catch(Exception e) {
					e.printStackTrace();
				}
				return false;
			}
			
			
		//Deleting Feedback from admin desk
			
			
			public boolean delfeedback(String email) {
				try {
					String sql="DELETE FROM feedback WHERE email =?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,email);
					int result=ps.executeUpdate();
					return result>0;
				}catch(Exception e) {
					e.printStackTrace();
				}
				return false;
			}
			
			
			//Delete Product add to cart after payment

			public boolean DeleteOrderAddtoCart(String emails, int productIds) {
				try {
		    		String sql = "Delete from cart where email=? and productid=?";
		    		PreparedStatement ps = con.prepareStatement(sql);
		    		ps.setString(1, emails);
		    		ps.setInt(2, productIds);
		    		int result = ps.executeUpdate();
		    		return result>0;
		    	} catch(Exception e) {
		    		e.printStackTrace();
		    	}
				return false;
			}
	
	//Forward data updateform admin desk
	
	
	public Userget searchuser(String username)
	{
		String query= "SELECT * from registration where username=?";
		try(PreparedStatement ps=con.prepareStatement(query)){
			ps.setString(1, username);
			try(ResultSet rs=ps.executeQuery())
			{
				if(rs.next())
				{
					return new Userget(rs.getString("username"),rs.getString("firstname"),rs.getString("lastname"),rs.getString("password"),rs.getString("email"),rs.getLong("contact"),rs.getString("gender"),rs.getString("dob"),rs.getString("address"),rs.getString("state"),rs.getString("city"),rs.getInt("postalcode"),rs.getString("role"));
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//Forward data categoryupdate form admin desk
	
	
		public Categoryget searchcategory(int cid)
		{
			String query= "SELECT * from category where cid=?";
			try(PreparedStatement ps=con.prepareStatement(query)){
				ps.setInt(1, cid);
				try(ResultSet rs=ps.executeQuery())
				{
					if(rs.next())
					{
						return new Categoryget(rs.getInt("cid"),rs.getString("cnm"));
					}
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
		
		//Forward data sub-categoryupdate form admin desk
		
		
			public Subcategoryget searchsubcategory(int subid)
			{
				String query= "SELECT * from subcategory where subid=?";
				try(PreparedStatement ps=con.prepareStatement(query)){
					ps.setInt(1, subid);
					try(ResultSet rs=ps.executeQuery())
					{
						if(rs.next())
						{
							return new Subcategoryget(rs.getInt("subid"),rs.getString("subnm"),rs.getInt("cid"), rs.getString("categoryname"));
						}
					}
				}catch(SQLException e) {
					e.printStackTrace();
				}
				return null;
			}
			
		//Forward data on userprofile
			
			
			public Userget searchuserprofile(String email)
			{
				String query= "SELECT * from registration where email=?";
				try(PreparedStatement ps=con.prepareStatement(query)){
					ps.setString(1, email);
					try(ResultSet rs=ps.executeQuery())
					{
						if(rs.next())
						{
							return new Userget(rs.getString("username"),rs.getString("firstname"),rs.getString("lastname"),rs.getString("password"),rs.getString("email"),rs.getLong("contact"),rs.getString("gender"),rs.getString("dob"),rs.getString("address"),rs.getString("state"),rs.getString("city"),rs.getInt("postalcode"),rs.getString("role"));
						}
					}
				}catch(SQLException e) {
					e.printStackTrace();
				}
				return null;
			}
			
			
			//Forward data on userprofile
			
			
			public Userget searchadminprofile(String email)
			{
				String query= "SELECT * from registration where email=?";
				try(PreparedStatement ps=con.prepareStatement(query)){
					ps.setString(1, email);
					try(ResultSet rs=ps.executeQuery())
					{
						if(rs.next())
						{
							return new Userget(rs.getString("username"),rs.getString("firstname"),rs.getString("lastname"),rs.getString("password"),rs.getString("email"),rs.getLong("contact"),rs.getString("gender"),rs.getString("dob"),rs.getString("address"),rs.getString("state"),rs.getString("city"),rs.getInt("postalcode"),rs.getString("role"));
						}
					}
				}catch(SQLException e) {
					e.printStackTrace();
				}
				return null;
			}
			
			
			//Forward data on product from admin desk
			
			
			public Productget searchproduct(int pid)
			{
				String query= "SELECT * from product where productid=?";
				try(PreparedStatement ps=con.prepareStatement(query)){
					ps.setInt(1, pid);
					try(ResultSet rs=ps.executeQuery())
					{
						if(rs.next())
						{
							return new Productget(rs.getInt("productid"),rs.getString("productname"),rs.getDouble("price"),rs.getString("category"),rs.getString("description"),rs.getString("brand"),rs.getInt("quantity"),rs.getDouble("total"),rs.getDouble("subtotal"),rs.getString("image"));
						}
					}
				}catch(SQLException e) {
					e.printStackTrace();
				}
				return null;
			}
			
		
	
	//Update user records from admin desk
	
	
	public boolean updateuseradmin(String unm, String fnm, String lnm, String passwd,String email, long contact, String gen,String dob, String addr,String state, String city, int postal, String role)
	{
		String query="UPDATE registration set firstname=?, lastname=?,password=?,email=?,contact=?,gender=?,dob=?,address=?,state=?,city=?,postalcode=?,role=? where username=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,fnm);
			ps.setString(2,lnm);
			ps.setString(3,passwd);
			ps.setString(4,email);
			ps.setLong(5,contact);
			ps.setString(6,gen);
			ps.setString(7,dob);
			ps.setString(8,addr);
			ps.setString(9,state);
			ps.setString(10,city);
			ps.setInt(11, postal);
			ps.setString(12,role);
			ps.setString(13,unm);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	//update user login table from admin desk
	
	
	public boolean updateuserlogin(String unm, String passwd,String role, String email, long contact)
	{
		String query="UPDATE login set password=?,role=?,email=?,mobile=? where username=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,passwd);
			ps.setString(2,role);
			ps.setString(3,email);
			ps.setLong(4, contact);
			ps.setString(5,unm);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	//update Category details from admin desk
	public boolean updatecategory(int cid, String cnm)
	{
		String query="UPDATE category set cnm=? where cid=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,cnm);
			ps.setInt(2,cid);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	
	//update SubCategory details from admin desk
	public boolean updatesubcategory(int subid, String subnm,int cid)
	{
		String query="UPDATE subcategory set subnm=?,cid=? where subid=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,subnm);
			ps.setInt(2,cid);
			ps.setInt(3,subid);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	// Update admin profile from admin desk on registration table
	
	
	public boolean updateadminregistration(String unm, String fnm, String lnm, String passwd,String em, long contact, String gen,String dob, String addr,String state, String city, int postal, String role)
	{
		String query="UPDATE registration set firstname=?, lastname=?,password=?,email=?,contact=?,gender=?,dob=?,address=?,state=?,city=?,postalcode=?,role=? where username=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,fnm);
			ps.setString(2,lnm);
			ps.setString(3,passwd);
			ps.setString(4,em);
			ps.setLong(5,contact);
			ps.setString(6,gen);
			ps.setString(7,dob);
			ps.setString(8,addr);
			ps.setString(9,state);
			ps.setString(10,city);
			ps.setInt(11, postal);
			ps.setString(12,role);
			ps.setString(13,unm);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	// Update admin profile from admin desk on login table
	
	
	public boolean updateadminlogin(String unm, String passwd,String role, String em, long contact)
	{
		String query="UPDATE login set password=?,role=?,email=?,mobile=? where username=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,passwd);
			ps.setString(2,role);
			ps.setString(3,em);
			ps.setLong(4, contact);
			ps.setString(5,unm);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	// Update product details from admin desk
	
	public boolean updateproduct(int pid,String pnm,double price, String category, String desc, String brand, int qty, double total, double stotal,String img)
	{
		String query="UPDATE product set productname=?, price=?, category=?, description=?, brand=?,quantity=?, total=?,subtotal=?,image=? where productid=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,pnm);
			ps.setDouble(2,price);
			ps.setString(3,category);
			ps.setString(4,desc);
			ps.setString(5,brand);
			ps.setInt(6,qty);
			ps.setDouble(7,total);
			ps.setDouble(8,stotal);
			ps.setString(9,img);
			ps.setInt(10,pid);
			
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	

	//To change password
	
	public boolean passwordchange(String newPassword, String email)
	{
		String query="UPDATE users SET password=? WHERE email=?";
		try(PreparedStatement ps=con.prepareStatement(query))
		{
			ps.setString(1,newPassword);
			ps.setString(2,email);
			int result=ps.executeUpdate();
			return result>0;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	//To change password in registration table
	
		public boolean changepsswdregistration(String newPassword, String mobile)
		{
			String query="UPDATE registration SET password=? WHERE contact=?";
			try(PreparedStatement ps=con.prepareStatement(query))
			{
				ps.setString(1,newPassword);
				ps.setString(2,mobile);
				int result=ps.executeUpdate();
				return result>0;
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			return false;
		}
		

	//To change password in login table
		
			public boolean changepsswdlogin(String newPassword, String mobile)
			{
				String query="UPDATE login SET password=? WHERE mobile=?";
				try(PreparedStatement ps=con.prepareStatement(query))
				{
					ps.setString(1,newPassword);
					ps.setString(2,mobile);
					int result=ps.executeUpdate();
					return result>0;
				}catch(Exception e)
				{
					e.printStackTrace();
				}
				return false;
			}
		
			//show order on user side
			
			public ArrayList showOrder(String newmail)
			{
				ArrayList<Orderget> alist= new ArrayList<>();
				try {
					String query="SELECT * from orders where email = ?";
					PreparedStatement ps=con.prepareStatement(query);
					ps.setString(1, newmail);
					ResultSet rs=ps.executeQuery();
					while(rs.next())
					{
						Orderget st = new Orderget();
						st.setOrder_id(rs.getInt("order_id"));
						st.setPayment_id(rs.getString("payment_id"));
						st.setPrice(rs.getDouble("price"));
						st.setEmail(rs.getString("email"));
						st.setProduct_id(rs.getInt("product_id"));
						st.setProduct_name(rs.getString("product_name"));
						st.setCreateddate(rs.getString("CreatedDate"));
						st.setImage(rs.getString("image"));
						alist.add(st);
					}	
				}catch(Exception e)
				{
					System.out.println(alist.size());
					System.out.println("Error ALL user:"+e);
					
				}
				return alist;
				
			}
	
	
	
	
}

