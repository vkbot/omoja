package org.apache.commons.net.telnet;

import j1.i;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketException;
import java.time.Duration;
import n0.b;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.file.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class TelnetClient extends Telnet {
    private static final int DEFAULT_MAX_SUBNEGOTIATION_LENGTH = 512;
    private InputStream input;
    private TelnetInputListener inputListener;
    final int maxSubnegotiationLength;
    private OutputStream output;
    protected boolean readerThread;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TelnetClient(String str, int i) {
        super(str);
        this.readerThread = true;
        this.input = null;
        this.output = null;
        this.maxSubnegotiationLength = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.telnet.Telnet, org.apache.commons.net.SocketClient
    public void _connectAction_() throws SocketException {
        super._connectAction_();
        TelnetInputStream telnetInputStream = new TelnetInputStream(this._input_, this, this.readerThread);
        if (this.readerThread) {
            telnetInputStream.start();
        }
        this.input = new BufferedInputStream(telnetInputStream);
        this.output = new TelnetOutputStream(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.telnet.Telnet
    public void addOptionHandler(TelnetOptionHandler telnetOptionHandler) throws InvalidTelnetOptionException {
        super.addOptionHandler(telnetOptionHandler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void closeOutputStream() {
        OutputStream outputStream = this._output_;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.close();
        } finally {
            this._output_ = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.telnet.Telnet
    public void deleteOptionHandler(int i) throws InvalidTelnetOptionException {
        super.deleteOptionHandler(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: java.lang.Object[] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.net.SocketClient
    public void disconnect() {
        try {
            IOUtils.close(this.input);
            IOUtils.close(this.output);
        } finally {
            this.output = null;
            this.input = null;
            super.disconnect();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void flushOutputStream() throws IOException {
        OutputStream outputStream = this._output_;
        if (outputStream != null) {
            outputStream.flush();
        } else {
            b.A("Stream closed");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream getInputStream() {
        return this.input;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getLocalOptionState(int i) {
        return stateIsWill(i) && requestedWill(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OutputStream getOutputStream() {
        return this.output;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getReaderThread() {
        return this.readerThread;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getRemoteOptionState(int i) {
        return stateIsDo(i) && requestedDo(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyInputListener() {
        TelnetInputListener telnetInputListener;
        synchronized (this) {
            telnetInputListener = this.inputListener;
        }
        if (telnetInputListener != null) {
            telnetInputListener.telnetInputAvailable();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void registerInputListener(TelnetInputListener telnetInputListener) {
        this.inputListener = telnetInputListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.telnet.Telnet
    public /* bridge */ /* synthetic */ void registerNotifHandler(TelnetNotificationHandler telnetNotificationHandler) {
        super.registerNotifHandler(telnetNotificationHandler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerSpyStream(OutputStream outputStream) {
        super._registerSpyStream(outputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean sendAYT(long j) {
        return _sendAYT(e.o(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sendCommand(byte b) {
        _sendCommand(b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sendSubnegotiation(int[] iArr) {
        if (iArr.length >= 1) {
            _sendSubnegotiation(iArr);
        } else {
            i.k("zero length message");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setReaderThread(boolean z) {
        this.readerThread = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void stopSpyStream() {
        super._stopSpyStream();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void unregisterInputListener() {
        this.inputListener = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.telnet.Telnet
    public /* bridge */ /* synthetic */ void unregisterNotifHandler() {
        super.unregisterNotifHandler();
    }

    public boolean sendAYT(Duration duration) {
        return _sendAYT(duration);
    }

    public TelnetClient(int i) {
        this("VT100", i);
    }

    public TelnetClient(String str) {
        this(str, 512);
    }

    public TelnetClient() {
        this("VT100", 512);
    }
}
