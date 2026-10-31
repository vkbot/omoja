package org.apache.commons.net.pop3;

import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class POP3Command {
    public static final int APOP = 9;
    public static final int AUTH = 13;
    public static final int CAPA = 12;
    public static final int DELE = 6;
    public static final int LIST = 4;
    private static final int NEXT = 14;
    public static final int NOOP = 7;
    public static final int PASS = 1;
    public static final int QUIT = 2;
    public static final int RETR = 5;
    public static final int RSET = 8;
    public static final int STAT = 3;
    public static final int TOP = 10;
    public static final int UIDL = 11;
    public static final int USER = 0;
    static final String[] commands;

    static {
        String[] strArr = {"USER", "PASS", "QUIT", "STAT", "LIST", "RETR", "DELE", "NOOP", "RSET", "APOP", "TOP", "UIDL", "CAPA", "AUTH"};
        commands = strArr;
        if (strArr.length == 14) {
            return;
        }
        C1929i.m3030l("Error in array definition");
    }

    private POP3Command() {
    }

    public static String getCommand(int i10) {
        return commands[i10];
    }
}
