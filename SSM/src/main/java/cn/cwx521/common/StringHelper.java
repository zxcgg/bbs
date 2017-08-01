package cn.cwx521.common;

public class StringHelper {
	
	
	public static String change(String name) {
		StringBuffer sb = new StringBuffer();
		for(int i =0;i<name.length();i++) {
			
			if(Character.isUpperCase(name.charAt(i))) {
				sb.append("_");
			}
			
			sb.append(name.charAt(i));
		}
		return sb.toString();
	}
}
