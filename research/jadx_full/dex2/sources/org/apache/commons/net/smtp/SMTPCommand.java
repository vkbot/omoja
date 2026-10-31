package org.apache.commons.net.smtp;

import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class SMTPCommand {
    public static final int AUTH = 14;
    public static final int DATA = 3;
    public static final int EHLO = 15;
    public static final int EXPAND = 9;
    public static final int EXPN = 9;
    public static final int HELLO = 0;
    public static final int HELO = 0;
    public static final int HELP = 10;
    public static final int LOGIN = 0;
    public static final int LOGOUT = 13;
    public static final int MAIL = 1;
    public static final int MAIL_FROM = 1;
    private static final int NEXT = 16;
    public static final int NOOP = 11;
    public static final int QUIT = 13;
    public static final int RCPT = 2;
    public static final int RECIPIENT = 2;
    public static final int RESET = 7;
    public static final int RSET = 7;
    public static final int SAML = 6;
    public static final int SEND = 4;
    public static final int SEND_AND_MAIL_FROM = 6;
    public static final int SEND_FROM = 4;
    public static final int SEND_MESSAGE_DATA = 3;
    public static final int SEND_OR_MAIL_FROM = 5;
    public static final int SOML = 5;
    public static final int TURN = 12;
    public static final int VERIFY = 8;
    public static final int VRFY = 8;
    private static final String[] commands;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        String[] strArr = {"HELO", "MAIL FROM:", "RCPT TO:", "DATA", "SEND FROM:", "SOML FROM:", "SAML FROM:", "RSET", "VRFY", "EXPN", "HELP", "NOOP", "TURN", "QUIT", "AUTH", "EHLO"};
        commands = strArr;
        if (strArr.length == 16) {
            return;
        }
        i.l("Error in array definition");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SMTPCommand() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getCommand(int i) {
        return commands[i];
    }
}
