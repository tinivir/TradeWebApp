/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.dbcpservlet;

/**
 *
 * @author tiniv_000
 */
import java.awt.*;
import java.applet.*;
import java.util.*;

public class JavaArray extends Applet{
 public String  javaArray [] =
   { "array 1", "array 2" , "array 3" };

 public String [] getJavaArray() {
   return javaArray;
   }

public String getJavaArrayAsAString() {
   // you need more error checking here, of course...
   int k;
   String s = "";

   k = javaArray.length;
   s = javaArray[0];
   for (int i= 1 ; i < k; i++) {
      s += "|" + javaArray[i] ;
      }
   return s;
   }

 public void putJavaArray(String arrayAsAString) {
   int i = 0;
   String s;
   StringTokenizer st =
      new StringTokenizer(arrayAsAString, "|");

   while(st.hasMoreTokens()){
     javaArray[i++] = st.nextToken();
     }
   }
}
