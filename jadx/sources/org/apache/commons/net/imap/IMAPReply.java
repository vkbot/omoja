package org.apache.commons.net.imap;

import ai.onnxruntime.AbstractC0074a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.net.MalformedServerReplyException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class IMAPReply {
    public static final int BAD = 2;
    public static final int CONT = 3;
    private static final String IMAP_BAD = "BAD";
    private static final String IMAP_CONTINUATION_PREFIX = "+";
    private static final String IMAP_NO = "NO";
    private static final String IMAP_OK = "OK";
    private static final String IMAP_UNTAGGED_PREFIX = "* ";

    /* JADX INFO: renamed from: NO */
    public static final int f8131NO = 1;

    /* JADX INFO: renamed from: OK */
    public static final int f8132OK = 0;
    public static final int PARTIAL = 3;
    private static final String TAGGED_RESPONSE = "^\\w{1,80} (\\S{1,80}).{0,500}";
    private static final Pattern TAGGED_PATTERN = Pattern.compile(TAGGED_RESPONSE);
    private static final String UNTAGGED_RESPONSE = "^\\* (\\S{1,80}).{0,500}";
    private static final Pattern UNTAGGED_PATTERN = Pattern.compile(UNTAGGED_RESPONSE);
    private static final Pattern LITERAL_PATTERN = Pattern.compile("\\{(\\d+)\\}$");

    private IMAPReply() {
    }

    private static int getReplyCode(String str, Pattern pattern) throws MalformedServerReplyException {
        if (isContinuation(str)) {
            return 3;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            switch (strGroup) {
                case "NO":
                    return 1;
                case "OK":
                    return 0;
                case "BAD":
                    return 2;
            }
        }
        throw new MalformedServerReplyException(AbstractC0074a.m162m("Received unexpected IMAP protocol response from server: '", str, "'."));
    }

    public static int getUntaggedReplyCode(String str) {
        return getReplyCode(str, UNTAGGED_PATTERN);
    }

    public static boolean isContinuation(int i10) {
        return i10 == 3;
    }

    public static boolean isSuccess(int i10) {
        return i10 == 0;
    }

    public static boolean isUntagged(String str) {
        return str.startsWith(IMAP_UNTAGGED_PREFIX);
    }

    public static int literalCount(String str) {
        Matcher matcher = LITERAL_PATTERN.matcher(str);
        if (matcher.find()) {
            return Integer.parseInt(matcher.group(1));
        }
        return -1;
    }

    public static boolean isContinuation(String str) {
        return str.startsWith(IMAP_CONTINUATION_PREFIX);
    }

    public static int getReplyCode(String str) {
        return getReplyCode(str, TAGGED_PATTERN);
    }
}
