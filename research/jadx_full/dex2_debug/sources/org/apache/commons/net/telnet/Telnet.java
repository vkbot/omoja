package org.apache.commons.net.telnet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.SocketException;
import java.time.Duration;
import kotlin.io.path.f;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
class Telnet extends SocketClient {
    static final int DEFAULT_PORT = 23;
    static final int DO_MASK = 2;
    static final char NUL = 0;
    static final int REQUESTED_DO_MASK = 8;
    static final int REQUESTED_WILL_MASK = 4;
    protected static final int TERMINAL_TYPE = 24;
    protected static final int TERMINAL_TYPE_IS = 0;
    protected static final int TERMINAL_TYPE_SEND = 1;
    static final int WILL_MASK = 1;
    static final boolean debug = false;
    static final boolean debugoptions = false;
    private final int[] doResponse;
    private TelnetNotificationHandler notifhand;
    private final TelnetOptionHandler[] optionHandlers;
    private final int[] options;
    private volatile OutputStream spyStream;
    private String terminalType;
    private final int[] willResponse;
    static final byte[] COMMAND_DO = {-1, -3};
    static final byte[] COMMAND_DONT = {-1, -2};
    static final byte[] COMMAND_WILL = {-1, -5};
    static final byte[] COMMAND_WONT = {-1, -4};
    static final byte[] COMMAND_SB = {-1, -6};
    static final byte[] COMMAND_SE = {-1, -16};
    static final byte[] COMMAND_IS = {24, 0};
    static final byte[] COMMAND_AYT = {-1, -10};
    private final Object aytMonitor = new Object();
    private volatile boolean aytFlag = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Telnet(String str) {
        setDefaultPort(23);
        this.doResponse = new int[256];
        this.willResponse = new int[256];
        this.options = new int[256];
        this.terminalType = str;
        this.optionHandlers = new TelnetOptionHandler[256];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.SocketClient
    public void _connectAction_() throws SocketException {
        for (int i = 0; i < 256; i++) {
            this.doResponse[i] = 0;
            this.willResponse[i] = 0;
            this.options[i] = 0;
            TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i];
            if (telnetOptionHandler != null) {
                telnetOptionHandler.setDo(false);
                this.optionHandlers[i].setWill(false);
            }
        }
        super._connectAction_();
        this._input_ = new BufferedInputStream(this._input_);
        this._output_ = new BufferedOutputStream(this._output_);
        for (int i2 = 0; i2 < 256; i2++) {
            TelnetOptionHandler telnetOptionHandler2 = this.optionHandlers[i2];
            if (telnetOptionHandler2 != null) {
                if (telnetOptionHandler2.getInitLocal()) {
                    requestWill(this.optionHandlers[i2].getOptionCode());
                }
                if (this.optionHandlers[i2].getInitRemote()) {
                    requestDo(this.optionHandlers[i2].getOptionCode());
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void _registerSpyStream(OutputStream outputStream) {
        this.spyStream = outputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean _sendAYT(Duration duration) {
        boolean z;
        synchronized (this.aytMonitor) {
            try {
                synchronized (this) {
                    z = false;
                    this.aytFlag = false;
                    this._output_.write(COMMAND_AYT);
                    this._output_.flush();
                }
                this.aytMonitor.wait(f.c(duration));
                if (this.aytFlag) {
                    z = true;
                } else {
                    this.aytFlag = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void _sendCommand(byte b) {
        this._output_.write(255);
        this._output_.write(b);
        this._output_.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void _sendSubnegotiation(int[] iArr) {
        if (iArr != null) {
            try {
                this._output_.write(COMMAND_SB);
                for (int i : iArr) {
                    byte b = (byte) i;
                    if (b == -1) {
                        this._output_.write(b);
                    }
                    this._output_.write(b);
                }
                this._output_.write(COMMAND_SE);
                this._output_.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void _stopSpyStream() {
        this.spyStream = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOptionHandler(TelnetOptionHandler telnetOptionHandler) throws InvalidTelnetOptionException {
        int optionCode = telnetOptionHandler.getOptionCode();
        if (!TelnetOption.isValidOption(optionCode)) {
            throw new InvalidTelnetOptionException("Invalid Option Code", optionCode);
        }
        TelnetOptionHandler[] telnetOptionHandlerArr = this.optionHandlers;
        if (telnetOptionHandlerArr[optionCode] != null) {
            throw new InvalidTelnetOptionException("Already registered option", optionCode);
        }
        telnetOptionHandlerArr[optionCode] = telnetOptionHandler;
        if (isConnected()) {
            if (telnetOptionHandler.getInitLocal()) {
                requestWill(optionCode);
            }
            if (telnetOptionHandler.getInitRemote()) {
                requestDo(optionCode);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void deleteOptionHandler(int i) throws InvalidTelnetOptionException {
        if (!TelnetOption.isValidOption(i)) {
            throw new InvalidTelnetOptionException("Invalid Option Code", i);
        }
        TelnetOptionHandler[] telnetOptionHandlerArr = this.optionHandlers;
        TelnetOptionHandler telnetOptionHandler = telnetOptionHandlerArr[i];
        if (telnetOptionHandler == null) {
            throw new InvalidTelnetOptionException("Unregistered option", i);
        }
        telnetOptionHandlerArr[i] = null;
        if (telnetOptionHandler.getWill()) {
            requestWont(i);
        }
        if (telnetOptionHandler.getDo()) {
            requestDont(i);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void processAYTResponse() {
        if (!this.aytFlag) {
            synchronized (this.aytMonitor) {
                this.aytFlag = true;
                this.aytMonitor.notifyAll();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processCommand(int i) {
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(5, i);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processDo(int i) {
        boolean acceptLocal;
        String str;
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(1, i);
        }
        TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i];
        if (telnetOptionHandler != null) {
            acceptLocal = telnetOptionHandler.getAcceptLocal();
        } else {
            acceptLocal = (i != 24 || (str = this.terminalType) == null || str.isEmpty()) ? false : true;
        }
        int[] iArr = this.willResponse;
        int i2 = iArr[i];
        if (i2 > 0) {
            int i3 = i2 - 1;
            iArr[i] = i3;
            if (i3 > 0 && stateIsWill(i)) {
                int[] iArr2 = this.willResponse;
                iArr2[i] = iArr2[i] - 1;
            }
        }
        if (this.willResponse[i] == 0 && requestedWont(i)) {
            if (acceptLocal) {
                setWantWill(i);
                sendWill(i);
            } else {
                int[] iArr3 = this.willResponse;
                iArr3[i] = iArr3[i] + 1;
                sendWont(i);
            }
        }
        setWill(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processDont(int i) {
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(2, i);
        }
        int[] iArr = this.willResponse;
        int i2 = iArr[i];
        if (i2 > 0) {
            int i3 = i2 - 1;
            iArr[i] = i3;
            if (i3 > 0 && stateIsWont(i)) {
                int[] iArr2 = this.willResponse;
                iArr2[i] = iArr2[i] - 1;
            }
        }
        if (this.willResponse[i] == 0 && requestedWill(i)) {
            if (stateIsWill(i) || requestedWill(i)) {
                sendWont(i);
            }
            setWantWont(i);
        }
        setWont(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processSuboption(int[] iArr, int i) {
        if (i > 0) {
            TelnetOptionHandler[] telnetOptionHandlerArr = this.optionHandlers;
            int i2 = iArr[0];
            TelnetOptionHandler telnetOptionHandler = telnetOptionHandlerArr[i2];
            if (telnetOptionHandler != null) {
                _sendSubnegotiation(telnetOptionHandler.answerSubnegotiation(iArr, i));
            } else if (i > 1 && i2 == 24 && iArr[1] == 1) {
                sendTerminalType();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processWill(int i) {
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(3, i);
        }
        TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i];
        boolean acceptRemote = telnetOptionHandler != null ? telnetOptionHandler.getAcceptRemote() : false;
        int[] iArr = this.doResponse;
        int i2 = iArr[i];
        if (i2 > 0) {
            int i3 = i2 - 1;
            iArr[i] = i3;
            if (i3 > 0 && stateIsDo(i)) {
                int[] iArr2 = this.doResponse;
                iArr2[i] = iArr2[i] - 1;
            }
        }
        if (this.doResponse[i] == 0 && requestedDont(i)) {
            if (acceptRemote) {
                setWantDo(i);
                sendDo(i);
            } else {
                int[] iArr3 = this.doResponse;
                iArr3[i] = iArr3[i] + 1;
                sendDont(i);
            }
        }
        setDo(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void processWont(int i) {
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(4, i);
        }
        int[] iArr = this.doResponse;
        int i2 = iArr[i];
        if (i2 > 0) {
            int i3 = i2 - 1;
            iArr[i] = i3;
            if (i3 > 0 && stateIsDont(i)) {
                int[] iArr2 = this.doResponse;
                iArr2[i] = iArr2[i] - 1;
            }
        }
        if (this.doResponse[i] == 0 && requestedDo(i)) {
            if (stateIsDo(i) || requestedDo(i)) {
                sendDont(i);
            }
            setWantDont(i);
        }
        setDont(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerNotifHandler(TelnetNotificationHandler telnetNotificationHandler) {
        this.notifhand = telnetNotificationHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void requestDo(int i) {
        try {
            if (this.doResponse[i] != 0 || !stateIsDo(i)) {
                if (!requestedDo(i)) {
                    setWantDo(i);
                    int[] iArr = this.doResponse;
                    iArr[i] = iArr[i] + 1;
                    sendDo(i);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void requestDont(int i) {
        try {
            if (this.doResponse[i] != 0 || !stateIsDont(i)) {
                if (!requestedDont(i)) {
                    setWantDont(i);
                    int[] iArr = this.doResponse;
                    iArr[i] = iArr[i] + 1;
                    sendDont(i);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void requestWill(int i) {
        try {
            if (this.willResponse[i] != 0 || !stateIsWill(i)) {
                if (!requestedWill(i)) {
                    setWantWill(i);
                    int[] iArr = this.doResponse;
                    iArr[i] = iArr[i] + 1;
                    sendWill(i);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void requestWont(int i) {
        try {
            if (this.willResponse[i] != 0 || !stateIsWont(i)) {
                if (!requestedWont(i)) {
                    setWantWont(i);
                    int[] iArr = this.doResponse;
                    iArr[i] = iArr[i] + 1;
                    sendWont(i);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean requestedDo(int i) {
        return (this.options[i] & 8) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean requestedDont(int i) {
        return !requestedDo(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean requestedWill(int i) {
        return (this.options[i] & 4) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean requestedWont(int i) {
        return !requestedWill(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void sendByte(int i) {
        this._output_.write(i);
        spyWrite(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void sendDo(int i) {
        this._output_.write(COMMAND_DO);
        this._output_.write(i);
        this._output_.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void sendDont(int i) {
        this._output_.write(COMMAND_DONT);
        this._output_.write(i);
        this._output_.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void sendTerminalType() {
        if (this.terminalType != null) {
            this._output_.write(COMMAND_SB);
            this._output_.write(COMMAND_IS);
            this._output_.write(this.terminalType.getBytes(getCharset()));
            this._output_.write(COMMAND_SE);
            this._output_.flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void sendWill(int i) {
        this._output_.write(COMMAND_WILL);
        this._output_.write(i);
        this._output_.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void sendWont(int i) {
        this._output_.write(COMMAND_WONT);
        this._output_.write(i);
        this._output_.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDo(int i) {
        TelnetOptionHandler telnetOptionHandler;
        int[] iArr = this.options;
        iArr[i] = iArr[i] | 2;
        if (!requestedDo(i) || (telnetOptionHandler = this.optionHandlers[i]) == null) {
            return;
        }
        telnetOptionHandler.setDo(true);
        int[] iArrStartSubnegotiationRemote = this.optionHandlers[i].startSubnegotiationRemote();
        if (iArrStartSubnegotiationRemote != null) {
            _sendSubnegotiation(iArrStartSubnegotiationRemote);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDont(int i) {
        int[] iArr = this.options;
        iArr[i] = iArr[i] & (-3);
        TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i];
        if (telnetOptionHandler != null) {
            telnetOptionHandler.setDo(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWantDo(int i) {
        int[] iArr = this.options;
        iArr[i] = iArr[i] | 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWantDont(int i) {
        int[] iArr = this.options;
        iArr[i] = iArr[i] & (-9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWantWill(int i) {
        int[] iArr = this.options;
        iArr[i] = iArr[i] | 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWantWont(int i) {
        int[] iArr = this.options;
        iArr[i] = iArr[i] & (-5);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWill(int i) {
        TelnetOptionHandler telnetOptionHandler;
        int[] iArr = this.options;
        iArr[i] = iArr[i] | 1;
        if (!requestedWill(i) || (telnetOptionHandler = this.optionHandlers[i]) == null) {
            return;
        }
        telnetOptionHandler.setWill(true);
        int[] iArrStartSubnegotiationLocal = this.optionHandlers[i].startSubnegotiationLocal();
        if (iArrStartSubnegotiationLocal != null) {
            _sendSubnegotiation(iArrStartSubnegotiationLocal);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWont(int i) {
        int[] iArr = this.options;
        iArr[i] = iArr[i] & (-2);
        TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i];
        if (telnetOptionHandler != null) {
            telnetOptionHandler.setWill(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void spyRead(int i) {
        OutputStream outputStream = this.spyStream;
        if (outputStream == null || i == 13) {
            return;
        }
        if (i == 10) {
            try {
                outputStream.write(13);
            } catch (IOException unused) {
                this.spyStream = null;
                return;
            }
        }
        outputStream.write(i);
        outputStream.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void spyWrite(int i) {
        OutputStream outputStream;
        if ((stateIsDo(1) && requestedDo(1)) || (outputStream = this.spyStream) == null) {
            return;
        }
        try {
            outputStream.write(i);
            outputStream.flush();
        } catch (IOException unused) {
            this.spyStream = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean stateIsDo(int i) {
        return (this.options[i] & 2) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean stateIsDont(int i) {
        return !stateIsDo(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean stateIsWill(int i) {
        return (this.options[i] & 1) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean stateIsWont(int i) {
        return !stateIsWill(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregisterNotifHandler() {
        this.notifhand = null;
    }

    public Telnet() {
        setDefaultPort(23);
        this.doResponse = new int[256];
        this.willResponse = new int[256];
        this.options = new int[256];
        this.optionHandlers = new TelnetOptionHandler[256];
    }
}
