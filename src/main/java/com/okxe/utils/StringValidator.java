package com.okxe.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringValidator {
    public static boolean isValidMobileNo(String str)
    {
        Pattern ptrn = Pattern.compile("^[0-9]*$");
        Matcher match = ptrn.matcher(str);
        return (match.find() && match.group().equals(str));
    }

    public static boolean containsNumber(String str) {
        String regex = ".*\\d.*";
        Pattern pattern = Pattern.compile(regex);

        Matcher matcherText = pattern.matcher(str);

        return matcherText.matches();
    }
}
