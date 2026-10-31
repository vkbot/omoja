package com.example.navistart.cores;

import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class LogcatRule {
    private static final String STORAGE_PREFIX = "logcat-rule:v1:";
    private final String message;
    private final String tag;
    private static final Pattern LOGCAT_TIME_PREFIX = Pattern.compile("^(?:(?:\\d{2}-\\d{2}|\\d{4}-\\d{2}-\\d{2})\\s+)?\\d{2}:\\d{2}:\\d{2}(?:[.,]\\d+)?\\s+");
    private static final Pattern BRACKET_TIME_PREFIX = Pattern.compile("^\\[\\d{2}:\\d{2}:\\d{2}(?:[.,]\\d+)?]\\s*");
    private static final Pattern THREADTIME_LINE = Pattern.compile("^(?:\\d+\\s+){2}[VDIWEAF]\\s+([^:]+):\\s*(.+)$");
    private static final Pattern BRIEF_LINE = Pattern.compile("^[VDIWEAF]/([^\\r\\n(]+?)\\s*\\(\\s*\\d+\\s*\\)\\s*:\\s*(.+)$");
    private static final Pattern TAG_LINE = Pattern.compile("^(?:[VDIWEAF]\\s+)?([^:]+):\\s*(.+)$");

    public LogcatRule(String str, String str2) {
        this.tag = str == null ? "" : str.trim();
        this.message = str2 != null ? str2.trim() : "";
    }

    public static LogcatRule fromStorageValue(String str) {
        int iIndexOf;
        if (str == null || !str.startsWith(STORAGE_PREFIX) || (iIndexOf = str.indexOf(58, 15)) < 0) {
            return null;
        }
        try {
            int i10 = Integer.parseInt(str.substring(15, iIndexOf));
            int i11 = iIndexOf + 1;
            int i12 = i11 + i10;
            if (i10 >= 0 && i12 <= str.length()) {
                LogcatRule logcatRule = new LogcatRule(str.substring(i11, i12), str.substring(i12));
                if (logcatRule.isValid()) {
                    return logcatRule;
                }
            }
        } catch (RuntimeException unused) {
        }
        return null;
    }

    public static LogcatRule parseCapturedLine(String str) {
        String strReplaceFirst;
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        while (true) {
            strReplaceFirst = BRACKET_TIME_PREFIX.matcher(LOGCAT_TIME_PREFIX.matcher(strTrim).replaceFirst("")).replaceFirst("");
            if (strTrim.equals(strReplaceFirst)) {
                break;
            }
            strTrim = strReplaceFirst;
        }
        Matcher matcher = THREADTIME_LINE.matcher(strReplaceFirst);
        if (matcher.matches()) {
            return validRule(matcher.group(1), matcher.group(2));
        }
        Matcher matcher2 = BRIEF_LINE.matcher(strReplaceFirst);
        if (matcher2.matches()) {
            return validRule(matcher2.group(1), matcher2.group(2));
        }
        Matcher matcher3 = TAG_LINE.matcher(strReplaceFirst);
        return matcher3.matches() ? validRule(matcher3.group(1), matcher3.group(2)) : validRule("", strReplaceFirst);
    }

    private static LogcatRule validRule(String str, String str2) {
        LogcatRule logcatRule = new LogcatRule(str, str2);
        if (logcatRule.isValid()) {
            return logcatRule;
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogcatRule)) {
            return false;
        }
        LogcatRule logcatRule = (LogcatRule) obj;
        return this.tag.equals(logcatRule.tag) && this.message.equals(logcatRule.message);
    }

    public String getMessage() {
        return this.message;
    }

    public String getTag() {
        return this.tag;
    }

    public int hashCode() {
        return Objects.hash(this.tag, this.message);
    }

    public boolean isValid() {
        return !this.message.isEmpty();
    }

    public String toDisplayValue() {
        if (this.tag.isEmpty()) {
            return this.message;
        }
        return this.tag + ": " + this.message;
    }

    public String toStorageValue() {
        return STORAGE_PREFIX + this.tag.length() + ":" + this.tag + this.message;
    }
}
