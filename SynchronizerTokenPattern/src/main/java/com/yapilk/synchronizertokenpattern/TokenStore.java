/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yapilk.synchronizertokenpattern;

import java.util.HashMap;

/**
 *
 * @author yapilk
 */
public class TokenStore {
    
    private static HashMap<String, String> hashToken = new HashMap<String, String>();
    
    public static void setToken(String pKey, String pValue)
    {
        hashToken.put(pKey, pValue);
    }
    
    public static String getToken(String pKey)
    {
        return hashToken.get(pKey);
    }
    
    
}
