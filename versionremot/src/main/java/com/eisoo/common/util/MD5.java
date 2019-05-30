package com.eisoo.common.util;

import java.security.MessageDigest;

public class MD5
{
    private final static String[] hexDigits = {
            "0", "1", "2", "3", "4", "5", "6", "7",
            "8", "9", "a", "b", "c", "d", "e", "f"};

    public static String byteArrayToHexString(byte[] b){
        StringBuffer resultSb = new StringBuffer();
        for (int i = 0; i < b.length; i++){
            resultSb.append(byteToHexString(b[i]));
        }
        return resultSb.toString();
    }

    private static String byteToHexString(byte b){
        int n = b;
        if (n < 0)
            n = 256 + n;
        int d1 = n / 16;
        int d2 = n % 16;
        return hexDigits[d1] + hexDigits[d2];
    }

    public static String MD5Encode(String origin){
        String resultString = null;
        try {
            resultString=new String(origin);
            MessageDigest md = MessageDigest.getInstance("MD5");
            resultString=byteArrayToHexString(md.digest(resultString.getBytes("utf-8")));
        }catch (Exception ex){}
        return resultString;
    }



    public static void main(String[] args)
    {
        String key = "8428409d8730e6bc";
        String newSign1 = MD5.MD5Encode(
                "888888"+key+"20181029").toLowerCase();
        System.out.println(newSign1);//f9303fb1523cd77a06c3ac705be425ef

    }

}
