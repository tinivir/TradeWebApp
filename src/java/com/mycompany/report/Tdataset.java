/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.report;


import java.util.Date;
import javax.persistence.Column;

/**
 *
 * @author tiniv_000
 */

public class Tdataset implements java.io.Serializable
    {

     private Long NetWeight;
     private Long tradeValue;
    private String pfCode; 
            private java.sql.Date period ;
        private Integer yr ;
        private String periodDesc ;
        private Integer aggrLevel ;
        private Integer IsLeaf ;
        private Integer rgCode ;
        private String rgDesc ;
        private Integer rtCode ;
        private String rtTitle ;
        private String rt3ISO ;
        private Integer ptCode ;
        private String ptTitle ;
        private String pt3ISO ;
        private String cmdCode ;
        private String cmdDescE ;
        private Integer qtCode ;
        private String qtDesc ;
        private Integer TradeQuantity ;
         private Integer estCode ;
    
        
public Tdataset(){
}
public Tdataset( Long NetWeight, Long TradeValue,Integer TradeQuantity,String cmdDescE,
                String cmdCode,String ptTitle,Integer ptCode,String rtTitle,
                Integer rtCode,String rgDesc,Integer rgCode,java.sql.Date period,Integer estCode) {

       this.NetWeight = NetWeight;
       this.tradeValue = TradeValue;
       this.TradeQuantity=TradeQuantity;

       this.cmdDescE=cmdDescE;
       this.cmdCode=cmdCode;
       this.period=period;
       this.ptTitle=ptTitle;
       this.ptCode=ptCode;

       this.rtTitle=rtTitle;
       this.rtCode=rtCode;
       this.rgDesc=rgDesc;
       this.rgCode=rgCode;

       this.estCode=estCode;
    }
    public Tdataset( Long TradeValue,String cmdCode,Integer ptCode,java.sql.Date period) {


       this.tradeValue = TradeValue;

       this.cmdCode=cmdCode;
       this.period=period;

       this.ptCode=ptCode;

    }
    
   public String getpfCode() {
        return this.pfCode;
    }
    
    public void setpfCode(String pfCode) {
        this.pfCode = pfCode;
    }
    
    public Integer getTradeQuantity() {
        return this.TradeQuantity;
    }
    
    public void setTradeQuantity(Integer TradeQuantity) {
        this.TradeQuantity = TradeQuantity;
    }
    
    public Integer getestCode() {
        return this.estCode;
    }
    
    public void setestCode(Integer estCode) {
        this.estCode = estCode;
    }
    
    public String getqtDesc() {
        return this.qtDesc;
    }
    
    public void setqtDesc(String qtDesc) {
        this.qtDesc = qtDesc;
    }
    
    public Integer getqtCode() {
        return this.qtCode;
    }
    
    public void setqtCode(Integer qtCode) {
        this.qtCode = qtCode;
    }
    
    public String getcmdDescE() {
        return this.cmdDescE;
    }
    
    public void setcmdDescE(String cmdDescE) {
        this.cmdDescE = cmdDescE;
    }
    
    public String getcmdCode() {
        return this.cmdCode;
    }
    
    public void setcmdCode(String cmdCode) {
        this.cmdCode = cmdCode;
    }
    
    public String getpt3ISO() {
        return this.pt3ISO;
    }
    
    public void setpt3ISO(String pt3ISO) {
        this.pt3ISO = pt3ISO;
    }
        
    public String getptTitle() {
        return this.ptTitle;
    }
    
    public void setptTitle(String ptTitle) {
        this.ptTitle = ptTitle;
    }
        
    public Integer getptCode() {
        return this.ptCode;
    }
    
    public void setptCode(Integer ptCode) {
        this.ptCode = ptCode;
    }    
        
                  
    public String getrt3ISO() {
        return this.rt3ISO;
    }
    
    public void setrt3ISO(String rt3ISO) {
        this.rt3ISO = rt3ISO;
    }
    
            
    public String getrtTitle() {
        return this.rtTitle;
    }
    
    public void setrtTitle(String rtTitle) {
        this.rtTitle = rtTitle;
    }
            
    public Integer getrtCode() {
        return this.rtCode;
    }
    
    public void setrtCode(Integer rtCode) {
        this.rtCode = rtCode;
    }  
    
    public String getrgDesc() {
        return this.rgDesc;
    }
    
    public void setrgDesc(String rgDesc) {
        this.rgDesc = rgDesc;
    }
        
    public Integer getrgCode() {
        return this.rgCode;
    }
    
    public void setrgCode(Integer rgCode) {
        this.rgCode = rgCode;
    }
    
    
    public Integer getIsLeaf() {
        return this.IsLeaf;
    }
    
    public void setIsLeaf(Integer IsLeaf) {
        this.IsLeaf = IsLeaf;
    }  
    
    public Integer getaggrLevel() {
        return this.aggrLevel;
    }
    
    public void setaggrLevel(Integer aggrLevel) {
        this.aggrLevel = aggrLevel;
    } 
    
    public java.sql.Date getperiod() {
        return this.period;
    }
    
    public void setperiod(java.sql.Date period) {
        this.period = period;
    }
    
    public String getperiodDesc() {
        return this.periodDesc;
    }
    
    public void setperiodDesc(String periodDesc) {
        this.periodDesc = periodDesc;
    }
        
    public Integer getyr() {
        return this.yr;
    }
    
    public void setyr(Integer yr) {
        this.yr = yr;
    }
 
    public Long getNetWeight() {
        return this.NetWeight;
    }
    public void setNetWeight(Long netWeight) {
        this.NetWeight = netWeight;
    }

    

    public Long getTradeValue() {
        return this.tradeValue;
    }
    
    public void setTradeValue(Long tradeValue) {
        this.tradeValue = tradeValue;
    }
    }
