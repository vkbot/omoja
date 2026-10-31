package org.apache.commons.net;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.Objects;
import org.apache.commons.net.p162io.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
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

    public PrintCommandListener(PrintWriter printWriter, boolean z9, char c, boolean z10) {
        Objects.requireNonNull(printWriter, "writer");
        this.writer = printWriter;
        this.noLogin = z9;
        this.eolMarker = c;
        this.showDirection = z10;
    }

    private String getCommand(ProtocolCommandEvent protocolCommandEvent) {
        return Objects.toString(protocolCommandEvent.getCommand()).toUpperCase(Locale.ROOT);
    }

    private String getMessage(ProtocolCommandEvent protocolCommandEvent) {
        return Objects.toString(protocolCommandEvent.getMessage());
    }

    private String getPrintableString(String str) {
        int iIndexOf;
        if (this.eolMarker == 0 || (iIndexOf = str.indexOf(SocketClient.NETASCII_EOL)) <= 0) {
            return str;
        }
        return str.concat("1") + str.substring(0, iIndexOf) + this.eolMarker + str.substring(iIndexOf);
    }

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

    public PrintCommandListener(PrintStream printStream, boolean z9) {
        this(Util.newPrintWriter(printStream), z9);
    }

    public PrintCommandListener(PrintStream printStream, boolean z9, char c) {
        this(Util.newPrintWriter(printStream), z9, c);
    }

    public PrintCommandListener(PrintStream printStream, boolean z9, char c, boolean z10) {
        this(Util.newPrintWriter(printStream), z9, c, z10);
    }

    public PrintCommandListener(PrintWriter printWriter) {
        this(printWriter, false);
    }

    public PrintCommandListener(PrintWriter printWriter, boolean z9) {
        this(printWriter, z9, (char) 0);
    }

    public PrintCommandListener(PrintWriter printWriter, boolean z9, char c) {
        this(printWriter, z9, c, false);
    }

    public PrintCommandListener(PrintStream printStream) {
        this(Util.newPrintWriter(printStream));
    }
}
