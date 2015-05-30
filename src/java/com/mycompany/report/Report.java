/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.report;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import net.sf.jasperreports.components.map.StandardItem;
import net.sf.jasperreports.components.map.StandardItemData;
import net.sf.jasperreports.components.map.StandardMapComponent;
import net.sf.jasperreports.engine.JRException;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JRDesignDatasetParameter;
import net.sf.jasperreports.engine.design.JRDesignDatasetRun;
import net.sf.jasperreports.engine.design.JRDesignElementDataset;
import net.sf.jasperreports.engine.design.JRDesignExpression;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 *
 * @author tiniv_000
 */
public class Report {
    public String per;
    public String comm;
    public String ptCode;
    public int rtCode;
    public String rgCode;
    private static Report instance;
    
    public static synchronized Report getInstance() {
        if (instance == null) {
            instance = new Report();
        }
        return instance;
    }
    private Report(){}

    public Report(String[] per, String[] comm, String[] ptCode, int rtCode, String[] rgCode) {
        this.rtCode=rtCode;
         this.per = "('";
        for(int i=0;i<per.length;i++){
            this.per += per[i]+"%')";
            if(i+1!=per.length)
                this.per+=" or period Like('";
        }
       //this.per += "%')";
       this.comm=" in (";
       for(int i=0;i<comm.length;i++)
           if (comm.length==1) this.comm ="='"+ comm[i]+"' ";
           else {this.comm+=comm[i];if(i+1!=comm.length)this.comm+=",";}
       if (comm.length!=1) this.comm += ")";
       this.ptCode=" in (";
       for(int i=0;i<ptCode.length;i++)
           if (ptCode.length==1) this.ptCode ="="+ ptCode[i]+" ";
           else {this.ptCode+=ptCode[i];if(i+1!=ptCode.length)this.ptCode+=",";}
       if (ptCode.length!=1) this.ptCode += ")";

       this.rgCode=" in (";
       for(int i=0;i<rgCode.length;i++)
           if (rgCode.length==1) this.rgCode ="="+ rgCode[i]+" ";
           else {this.rgCode+=rgCode[i];if(i+1!=rgCode.length)this.rgCode+=",";}
       if (rgCode.length!=1) this.rgCode += ")";
            instance=this;
    }
    public void MakeReport() throws JRException, FileNotFoundException {
        InputStream inputStream = new FileInputStream ("E:\\Documents\\NetBeansProjects\\WebApplication1\\web\\WEB-INF\\reports\\Blank_A4.jrxml");
 
        
        ArrayList<Tdataset> dataBeanList = testJndiDataSource();
 
 
        JRBeanCollectionDataSource beanColDataSource = new
        JRBeanCollectionDataSource(dataBeanList);

        Map parameters = new HashMap();

        JasperDesign jasperDesign = JRXmlLoader.load(inputStream);
        JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, beanColDataSource);
        JasperExportManager.exportReportToHtmlFile(jasperPrint, "E:\\Documents\\NetBeansProjects\\WebApplication1\\web\\WEB-INF\\jsp\\test_jasper1.html");
        //JasperExportManager.exportReportToPdfFile(jasperPrint, "c:/reports/test_jasper1.pdf"); 

    
}
 
        public void MakeChart() throws FileNotFoundException, JRException
        {
            InputStream inputStream = new FileInputStream ("E:\\Documents\\NetBeansProjects\\WebApplication1\\web\\WEB-INF\\reports\\Blank_A4_1.jrxml");
 
        
        ArrayList<Tdataset> dataBeanList = testChart();
 
 
        JRBeanCollectionDataSource beanColDataSource = new
        JRBeanCollectionDataSource(dataBeanList);

        Map parameters = new HashMap();

        JasperDesign jasperDesign = JRXmlLoader.load(inputStream);
        JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, beanColDataSource);
        JasperExportManager.exportReportToHtmlFile(jasperPrint, "E:\\Documents\\NetBeansProjects\\WebApplication1\\web\\WEB-INF\\jsp\\test_jasper2.html");
        //JasperExportManager.exportReportToPdfFile(jasperPrint, "c:/reports/test_jasper1.pdf"); 

    

        }
        
                   public ArrayList<Tdataset> testChart() {
Connection conn = null;
		PreparedStatement stmt = null;
                 ResultSet res=null;
		StringBuffer sb = new StringBuffer();
                ArrayList<Tdataset> datas=new ArrayList<>();
		try {
			InitialContext ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/trade");

			// This works too
			// Context envCtx = (Context) ctx.lookup("java:comp/env");
			// DataSource ds = (DataSource) envCtx.lookup("jdbc/TestDB");

			conn = ds.getConnection();

			
			String query="select cmdCode, TradeValue,period, ptCode  from ttradedata where rgCode=2 and cmdCode!='TOTAL' ORDER by TradeValue desc LIMIT 10 ";
                        
                        stmt = conn.prepareStatement(query);

                        res= stmt.executeQuery();

			while (res.next()) {
                            datas.add(new Tdataset(res.getLong(2),res.getString(1),res.getInt(4),res.getDate(3)));
				
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try { if (res != null) res.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return datas;
	}
           public Map< String, Long> getMap() {
		Connection conn = null;
		PreparedStatement stmt = null;
                 ResultSet res=null;
		StringBuffer sb = new StringBuffer();
                Map datas = new HashMap< String, Long>(); 
		try {
			InitialContext ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/trade");

			// This works too
			// Context envCtx = (Context) ctx.lookup("java:comp/env");
			// DataSource ds = (DataSource) envCtx.lookup("jdbc/TestDB");

			conn = ds.getConnection();

			
			String query="SELECT TradeValue, pt.crName, rt.crName,rgDesc FROM ttradedata "
                                + "join tcountries pt on pt.crCode=ttradedata.ptCode "
                                + "join  tcommodities on tcommodities.cmdC=ttradedata.cmdCode and tcommodities.cmdC"+comm
                                + "join tregimes on tregimes.rgCode=ttradedata.rgCode and tregimes.rgCode"+rgCode
                                + "join tcountries rt on rt.crCode=ttradedata.rtCode and rtCode=?"
                                + " where period like "+per;
                        
                        stmt = conn.prepareStatement(query);
                        stmt.setInt(1, rtCode);
                        res= stmt.executeQuery();
                        if (res.first()) {
                        datas.put(res.getString(3),-1);
                        datas.put(res.getString(4),-2);
                        
                        }
			while (res.next()) {
                            datas.put(res.getString(2),res.getLong(1));
				
			}
                            
				
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try { if (res != null) res.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return datas;
	}
           
   public ArrayList<Tdataset> testJndiDataSource() {
		Connection conn = null;
		PreparedStatement stmt = null;
                 ResultSet res=null;
		StringBuffer sb = new StringBuffer();
                ArrayList<Tdataset> datas=new ArrayList<>();
		try {
			InitialContext ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/trade");

			// This works too
			// Context envCtx = (Context) ctx.lookup("java:comp/env");
			// DataSource ds = (DataSource) envCtx.lookup("jdbc/TestDB");

			conn = ds.getConnection();

			
			String query="SELECT tcountries.crName,ttradedata.*,tcommodities.cmdDescE,tregimes.rgDesc FROM ttradedata "
                                + "join tcountries on tcountries.crCode=ttradedata.ptCode and tcountries.crCode"+ptCode
                                + "join  tcommodities on tcommodities.cmdC=ttradedata.cmdCode and tcommodities.cmdC"+comm
                                + "join tregimes on tregimes.rgCode=ttradedata.rgCode and tregimes.rgCode"+rgCode
                                + "where period like "+per;
                        
                        stmt = conn.prepareStatement(query);

                        res= stmt.executeQuery();

			while (res.next()) {
                            datas.add(new Tdataset(res.getLong(4),res.getLong(9) , 
                                    res.getInt(10),res.getString(12) ,res.getString(11) ,
                                    res.getString(1),res.getInt(2),"Ukraine",804,
                                    res.getString(13),res.getInt(6),res.getDate(3),res.getInt(8)));
				
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try { if (res != null) res.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
			try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return datas;
	}
    }