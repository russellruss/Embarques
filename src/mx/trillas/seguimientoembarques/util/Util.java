package mx.trillas.seguimientoembarques.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Util {
//	private static final String LINE_PATTERN = "([A-Za-zñÑ¥\\s]{0,50}\\w|\\W|[A-Za-zñÑ¥\\s]{0,50}\\w\\s),([A-Za-z0-9\\{\\}]{1,8}),([A-Za-z0-9]{1,8}),((.{0,1}|\\W),|\\W){0,100}";
//	private static final String LINE_PATTERN = "(.{0,50}|\\W|.{0,50}\\w\\s),(.{1,8}),(.{1,8}),((.{0,1}|\\W),|\\W){0,100}";
	private static final String LINE_PATTERN = "[^\\,]{0,50}\\,[^\\,]{1,8}\\,[^\\,]{1,8}(\\,[^\\,]|\\W){0,100}\\,?";
	private static final String EMPTYSPACE_PATTERN = ",\\s+,";
	
	public static boolean containLineExpression(String stringToValidate) {
		Pattern pattern;
		Matcher matcher;

		pattern = Pattern.compile(LINE_PATTERN);
		matcher = pattern.matcher(stringToValidate);
		return matcher.matches();
	}	
	
	public static boolean containSpaceExpression(String stringToValidate) {
		Pattern pattern;
		Matcher matcher;

		pattern = Pattern.compile(EMPTYSPACE_PATTERN);
		matcher = pattern.matcher(stringToValidate);
		return matcher.find();
	}
}