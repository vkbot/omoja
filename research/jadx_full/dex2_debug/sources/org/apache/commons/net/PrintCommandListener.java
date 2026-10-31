package org.apache.commons.net;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.Objects;
import org.apache.commons.net.io.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class PrintCommandListener implements ProtocolCommandListener {
    private static final String CMD_LOGIN = "LOGIN";
    private static final String CMD_PASS = "PASS";
    private static final String CMD_USER = "USER";
    private static final String DIRECTION_MARKER_RECEIVE = "< ";
    private static final String DIRECTION_MARKER_SEND = "> ";
    private static final String HIDDEN_MARKER = " *******";
    private final char eolMarker;
    private final boolean noLogin;
    private final boolean showDirection;
    private final PrintWriter writer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PrintCommandListener(PrintWriter printWriter, boolean z, char c, boolean z2) {
        Objects.requireNonNull(printWriter, "writer");
        this.writer = printWriter;
        this.noLogin = z;
        this.eolMarker = c;
        this.showDirection = z2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String getCommand(ProtocolCommandEvent protocolCommandEvent) {
        return Objects.toString(protocolCommandEvent.getCommand()).toUpperCase(Locale.ROOT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String getMessage(ProtocolCommandEvent protocolCommandEvent) {
        return Objects.toString(protocolCommandEvent.getMessage());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String getPrintableString(String str) {
        int iIndexOf;
        if (this.eolMarker == 0 || (iIndexOf = str.indexOf(SocketClient.NETASCII_EOL)) <= 0) {
            return str;
        }
        return str.concat("1") + str.substring(0, iIndexOf) + this.eolMarker + str.substring(iIndexOf);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ProtocolCommandListener
    public void protocolCommandSent(ProtocolCommandEvent protocolCommandEvent) {
        if (this.showDirection) {
            this.writer.print(DIRECTION_MARKER_SEND);
        }
        if (this.noLogin) {
            String command = getCommand(protocolCommandEvent);
            if (CMD_PASS.equals(command) || CMD_USER.equals(command)) {
                this.writer.print(command);
                this.writer.println(HIDDEN_MARKER);
            } else if (CMD_LOGIN.equals(command)) {
                String message = getMessage(protocolCommandEvent);
                this.writer.print(message.substring(0, message.indexOf(CMD_LOGIN) + 5));
                this.writer.println(HIDDEN_MARKER);
            } else {
                this.writer.print(getPrintableString(getMessage(protocolCommandEvent)));
            }
        } else {
            this.writer.print(getPrintableString(getMessage(protocolCommandEvent)));
        }
        this.writer.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ProtocolCommandListener
    public void protocolReplyReceived(ProtocolCommandEvent protocolCommandEvent) {
        if (this.showDirection) {
            this.writer.print(DIRECTION_MARKER_RECEIVE);
        }
        String message = getMessage(protocolCommandEvent);
        char cCharAt = message.charAt(message.length() - 1);
        this.writer.print(message);
        if (cCharAt != '\r' && cCharAt != '\n') {
            this.writer.println();
        }
        this.writer.flush();
    }

    public PrintCommandListener(PrintStream printStream, boolean z) {
        this(Util.newPrintWriter(printStream), z);
    }

    public PrintCommandListener(PrintStream printStream, boolean z, char c) {
        this(Util.newPrintWriter(printStream), z, c);
    }

    public PrintCommandListener(PrintStream printStream, boolean z, char c, boolean z2) {
        this(Util.newPrintWriter(printStream), z, c, z2);
    }

    public PrintCommandListener(PrintWriter printWriter) {
        this(printWriter, false);
    }

    public PrintCommandListener(PrintWriter printWriter, boolean z) {
        this(printWriter, z, (char) 0);
    }

    public PrintCommandListener(PrintWriter printWriter, boolean z, char c) {
        this(printWriter, z, c, false);
    }

    public PrintCommandListener(PrintStream printStream) {
        this(Util.newPrintWriter(printStream));
    }
}
