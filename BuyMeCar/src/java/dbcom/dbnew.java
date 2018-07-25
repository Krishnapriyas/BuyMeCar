 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dbcom;
import java.sql.*;
/**
 *
 * @author Satish
 */
public class dbnew {
    
   public Connection cn;
   public Statement st;
   
		
    PreparedStatement ps=null,ps1=null,pst=null;
		//ResultSet rs=null;
		Connection con=null;
            
		
		public dbnew()
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buymecar_bmc?zeroDateTimeBehavior=convertToNull","root","");
				 st = cn.createStatement();
                                
                                 
			}
			catch(Exception e)
			{
                            
				System.out.println(e);
			}
		}
		
		 public int putData(String sql) {
        System.out.println("sql = " + sql);
        int i = 0;
        try {
            i = st.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public ResultSet getData(String sql) {
        System.out.println("sql = " + sql);
        ResultSet resultSet = null;
        try {
            resultSet = st.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultSet;
    }
    
      public int insertImgCar( String id,byte[] b){
    	int i = 0;
    	
    	try{
    		pst = con.prepareStatement("insert into photocar(cid,img) values(?,?)");
    		pst.setString(1, id);
    	    pst.setBytes(2, b);
    	    i = pst.executeUpdate();
    	}
    	catch(Exception e){
    		System.out.println(e);
    	}
    	return i;
    }
		
    
}
