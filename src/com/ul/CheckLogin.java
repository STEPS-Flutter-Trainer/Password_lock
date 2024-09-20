package com.ul;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

public class CheckLogin {
    /*
     * @param strUserId
     * @param strPassword are obtained from the Customer Login form
     * Gets Jdbc connection and validates userLogin
     *  */
    public static boolean LoginValidate(String strUserId,  String strPassword)
    throws ClassNotFoundException, SQLException
    {
    	if(strUserId.equals(strPassword))
    	{
    		return true;
    	}
    	else{
    		return false;
    	}
       
            }
} 
