package org.apache.commons.net.imap;

import ai.onnxruntime.a;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class IMAPClient extends IMAP {
    private static final char DQUOTE = '\"';
    private static final String DQUOTE_S = "\"";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean append(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder(IMAP.quoteMailboxName(str));
        if (str2 != null) {
            sb.append(" ");
            sb.append(str2);
        }
        if (str3 != null) {
            sb.append(" ");
            if (str3.charAt(0) == '\"') {
                sb.append(str3);
            } else {
                sb.append('\"');
                sb.append(str3);
                sb.append('\"');
            }
        }
        sb.append(" ");
        if (str4.startsWith(DQUOTE_S) && str4.endsWith(DQUOTE_S)) {
            sb.append(str4);
            return doCommand(IMAPCommand.APPEND, sb.toString());
        }
        sb.append('{');
        sb.append(str4.getBytes(IMAP.__DEFAULT_ENCODING).length);
        sb.append('}');
        return IMAPReply.isContinuation(sendCommand(IMAPCommand.APPEND, sb.toString())) && IMAPReply.isSuccess(sendData(str4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean capability() {
        return doCommand(IMAPCommand.CAPABILITY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean check() {
        return doCommand(IMAPCommand.CHECK);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean close() {
        return doCommand(IMAPCommand.CLOSE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean copy(String str, String str2) {
        IMAPCommand iMAPCommand = IMAPCommand.COPY;
        StringBuilder sbW = a.w(str, " ");
        sbW.append(IMAP.quoteMailboxName(str2));
        return doCommand(iMAPCommand, sbW.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean create(String str) {
        return doCommand(IMAPCommand.CREATE, IMAP.quoteMailboxName(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean delete(String str) {
        return doCommand(IMAPCommand.DELETE, IMAP.quoteMailboxName(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean examine(String str) {
        return doCommand(IMAPCommand.EXAMINE, IMAP.quoteMailboxName(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean expunge() {
        return doCommand(IMAPCommand.EXPUNGE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean fetch(String str, String str2) {
        return doCommand(IMAPCommand.FETCH, str + " " + str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean list(String str, String str2) {
        return doCommand(IMAPCommand.LIST, IMAP.quoteMailboxName(str) + " " + IMAP.quoteMailboxName(str2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean login(String str, String str2) {
        if (getState() != IMAP$IMAPState.NOT_AUTH_STATE) {
            return false;
        }
        if (!doCommand(IMAPCommand.LOGIN, str + " " + str2)) {
            return false;
        }
        setState(IMAP$IMAPState.AUTH_STATE);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean logout() {
        return doCommand(IMAPCommand.LOGOUT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean lsub(String str, String str2) {
        return doCommand(IMAPCommand.LSUB, IMAP.quoteMailboxName(str) + " " + IMAP.quoteMailboxName(str2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean noop() {
        return doCommand(IMAPCommand.NOOP);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean rename(String str, String str2) {
        return doCommand(IMAPCommand.RENAME, IMAP.quoteMailboxName(str) + " " + IMAP.quoteMailboxName(str2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean search(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append("CHARSET ");
            sb.append(str);
        }
        sb.append(str2);
        return doCommand(IMAPCommand.SEARCH, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean select(String str) {
        return doCommand(IMAPCommand.SELECT, IMAP.quoteMailboxName(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean status(String str, String[] strArr) {
        if (strArr == null || strArr.length < 1) {
            i.k("STATUS command requires at least one data item name");
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(IMAP.quoteMailboxName(str));
        sb.append(" (");
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                sb.append(" ");
            }
            sb.append(strArr[i]);
        }
        sb.append(")");
        return doCommand(IMAPCommand.STATUS, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean store(String str, String str2, String str3) {
        return doCommand(IMAPCommand.STORE, str + " " + str2 + " " + str3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean subscribe(String str) {
        return doCommand(IMAPCommand.SUBSCRIBE, IMAP.quoteMailboxName(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean uid(String str, String str2) {
        return doCommand(IMAPCommand.UID, str + " " + str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean unsubscribe(String str) {
        return doCommand(IMAPCommand.UNSUBSCRIBE, IMAP.quoteMailboxName(str));
    }

    public boolean search(String str) {
        return search(null, str);
    }

    @Deprecated
    public boolean append(String str) {
        return append(str, null, null);
    }

    @Deprecated
    public boolean append(String str, String str2, String str3) {
        StringBuilder sbU = a.u(str);
        if (str2 != null) {
            sbU.append(" ");
            sbU.append(str2);
        }
        if (str3 != null) {
            if (str3.charAt(0) == '{') {
                sbU.append(" ");
                sbU.append(str3);
            } else {
                sbU.append(" {");
                sbU.append(str3);
                sbU.append("}");
            }
        }
        return doCommand(IMAPCommand.APPEND, sbU.toString());
    }
}
