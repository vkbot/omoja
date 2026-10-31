package org.apache.commons.net.imap;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.ftp.C2930a;
import org.apache.commons.net.p162io.CRLFLineReader;
import org.apache.commons.net.util.NetConstants;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class IMAP extends SocketClient {
    public static final int DEFAULT_PORT = 143;
    protected BufferedWriter __writer;
    protected BufferedReader _reader;
    private volatile IMAPChunkListener chunkListener;
    private final char[] initialID = {'A', 'A', 'A', 'A'};
    private int replyCode;
    private final List<String> replyLines;
    private IMAPState state;
    protected static final String __DEFAULT_ENCODING = StandardCharsets.ISO_8859_1.name();
    public static final IMAPChunkListener TRUE_CHUNK_LISTENER = new C2930a(2);

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface IMAPChunkListener {
        boolean chunkReceived(IMAP imap);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum IMAPState {
        DISCONNECTED_STATE,
        NOT_AUTH_STATE,
        AUTH_STATE,
        LOGOUT_STATE
    }

    public IMAP() {
        setDefaultPort(DEFAULT_PORT);
        this.state = IMAPState.DISCONNECTED_STATE;
        this._reader = null;
        this.__writer = null;
        this.replyLines = new ArrayList();
        createCommandSupport();
    }

    private void getReply(boolean z9) throws IOException {
        IMAPChunkListener iMAPChunkListener;
        this.replyLines.clear();
        String line = this._reader.readLine();
        if (line == null) {
            throw new EOFException("Connection closed without indication.");
        }
        this.replyLines.add(line);
        if (z9) {
            while (IMAPReply.isUntagged(line)) {
                int iLiteralCount = IMAPReply.literalCount(line);
                boolean z10 = iLiteralCount >= 0;
                while (iLiteralCount >= 0) {
                    String line2 = this._reader.readLine();
                    if (line2 == null) {
                        throw new EOFException("Connection closed without indication.");
                    }
                    this.replyLines.add(line2);
                    iLiteralCount -= line2.length() + 2;
                }
                if (z10 && (iMAPChunkListener = this.chunkListener) != null && iMAPChunkListener.chunkReceived(this)) {
                    fireReplyReceived(3, getReplyString());
                    this.replyLines.clear();
                }
                line = this._reader.readLine();
                if (line == null) {
                    throw new EOFException("Connection closed without indication.");
                }
                this.replyLines.add(line);
            }
            this.replyCode = IMAPReply.getReplyCode(line);
        } else {
            this.replyCode = IMAPReply.getUntaggedReplyCode(line);
        }
        fireReplyReceived(this.replyCode, getReplyString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(IMAP imap) {
        return true;
    }

    public static String quoteMailboxName(String str) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return "\"\"";
        }
        if ((str.length() > 1 && str.startsWith("\"") && str.endsWith("\"")) || !str.contains(" ")) {
            return str;
        }
        return "\"" + str.replaceAll("([\\\\\"])", "\\\\$1") + "\"";
    }

    private int sendCommandWithID(String str, String str2, String str3) throws IOException {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
            sb.append(' ');
        }
        sb.append(str2);
        if (str3 != null) {
            sb.append(' ');
            sb.append(str3);
        }
        sb.append(SocketClient.NETASCII_EOL);
        String string = sb.toString();
        this.__writer.write(string);
        this.__writer.flush();
        fireCommandSent(str2, string);
        getReply();
        return this.replyCode;
    }

    @Override // org.apache.commons.net.SocketClient
    public void _connectAction_() throws IOException {
        super._connectAction_();
        InputStream inputStream = this._input_;
        String str = __DEFAULT_ENCODING;
        this._reader = new CRLFLineReader(new InputStreamReader(inputStream, str));
        this.__writer = new BufferedWriter(new OutputStreamWriter(this._output_, str));
        int soTimeout = getSoTimeout();
        if (soTimeout <= 0) {
            setSoTimeout(this.connectTimeout);
        }
        getReply(false);
        if (soTimeout <= 0) {
            setSoTimeout(soTimeout);
        }
        setState(IMAPState.NOT_AUTH_STATE);
    }

    @Override // org.apache.commons.net.SocketClient
    public void disconnect() {
        super.disconnect();
        this._reader = null;
        this.__writer = null;
        this.replyLines.clear();
        setState(IMAPState.DISCONNECTED_STATE);
    }

    public boolean doCommand(IMAPCommand iMAPCommand) {
        return IMAPReply.isSuccess(sendCommand(iMAPCommand));
    }

    @Override // org.apache.commons.net.SocketClient
    public void fireReplyReceived(int i10, String str) {
        getCommandSupport().fireReplyReceived(i10, getReplyString());
    }

    public String generateCommandID() {
        String str = new String(this.initialID);
        boolean z9 = true;
        for (int length = this.initialID.length - 1; z9 && length >= 0; length--) {
            char[] cArr = this.initialID;
            char c = cArr[length];
            if (c == 'Z') {
                cArr[length] = 'A';
            } else {
                cArr[length] = (char) (c + 1);
                z9 = false;
            }
        }
        return str;
    }

    public String getReplyString() {
        StringBuilder sb = new StringBuilder(256);
        Iterator<String> it = this.replyLines.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(SocketClient.NETASCII_EOL);
        }
        return sb.toString();
    }

    public String[] getReplyStrings() {
        return (String[]) this.replyLines.toArray(NetConstants.EMPTY_STRING_ARRAY);
    }

    public IMAPState getState() {
        return this.state;
    }

    public int sendCommand(IMAPCommand iMAPCommand, String str) {
        return sendCommand(iMAPCommand.getIMAPCommand(), str);
    }

    public int sendData(String str) {
        return sendCommandWithID(null, str, null);
    }

    public void setChunkListener(IMAPChunkListener iMAPChunkListener) {
        this.chunkListener = iMAPChunkListener;
    }

    public void setState(IMAPState iMAPState) {
        this.state = iMAPState;
    }

    public boolean doCommand(IMAPCommand iMAPCommand, String str) {
        return IMAPReply.isSuccess(sendCommand(iMAPCommand, str));
    }

    public int sendCommand(IMAPCommand iMAPCommand) {
        return sendCommand(iMAPCommand, (String) null);
    }

    public int sendCommand(String str) {
        return sendCommand(str, (String) null);
    }

    public int sendCommand(String str, String str2) {
        return sendCommandWithID(generateCommandID(), str, str2);
    }

    private void getReply() throws IOException {
        getReply(true);
    }
}
