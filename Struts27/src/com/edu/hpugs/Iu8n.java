package com.edu.hpugs;

import java.util.Locale;
import java.util.ResourceBundle;

public class Iu8n {
	public static void main(String[] args) {
		ResourceBundle resourceBundleUS = ResourceBundle.getBundle("app", Locale.US);
		System.out.println(resourceBundleUS.getString("welcome.msg"));
		ResourceBundle resourceBundleCN = ResourceBundle.getBundle("app", Locale.CHINA);
		System.out.println(resourceBundleCN.getString("welcome.msg"));
		System.out.println(resourceBundleCN.getString("welcome.zh"));
	}
}
