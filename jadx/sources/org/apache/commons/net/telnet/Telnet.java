package org.apache.commons.net.telnet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.SocketException;
import java.time.Duration;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
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

    public Telnet(String str) {
        setDefaultPort(23);
        this.doResponse = new int[256];
        this.willResponse = new int[256];
        this.options = new int[256];
        this.terminalType = str;
        this.optionHandlers = new TelnetOptionHandler[256];
    }

    @Override // org.apache.commons.net.SocketClient
    public void _connectAction_() throws SocketException {
        for (int i10 = 0; i10 < 256; i10++) {
            this.doResponse[i10] = 0;
            this.willResponse[i10] = 0;
            this.options[i10] = 0;
            TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i10];
            if (telnetOptionHandler != null) {
                telnetOptionHandler.setDo(false);
                this.optionHandlers[i10].setWill(false);
            }
        }
        super._connectAction_();
        this._input_ = new BufferedInputStream(this._input_);
        this._output_ = new BufferedOutputStream(this._output_);
        for (int i11 = 0; i11 < 256; i11++) {
            TelnetOptionHandler telnetOptionHandler2 = this.optionHandlers[i11];
            if (telnetOptionHandler2 != null) {
                if (telnetOptionHandler2.getInitLocal()) {
                    requestWill(this.optionHandlers[i11].getOptionCode());
                }
                if (this.optionHandlers[i11].getInitRemote()) {
                    requestDo(this.optionHandlers[i11].getOptionCode());
                }
            }
        }
    }

    public void _registerSpyStream(OutputStream outputStream) {
        this.spyStream = outputStream;
    }

    public final boolean _sendAYT(Duration duration) {
        boolean z9;
        synchronized (this.aytMonitor) {
            try {
                synchronized (this) {
                    z9 = false;
                    this.aytFlag = false;
                    this._output_.write(COMMAND_AYT);
                    this._output_.flush();
                }
                this.aytMonitor.wait(duration.toMillis());
                if (this.aytFlag) {
                    z9 = true;
                } else {
                    this.aytFlag = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    public final synchronized void _sendCommand(byte b10) {
        this._output_.write(255);
        this._output_.write(b10);
        this._output_.flush();
    }

    public final synchronized void _sendSubnegotiation(int[] iArr) {
        if (iArr != null) {
            try {
                this._output_.write(COMMAND_SB);
                for (int i10 : iArr) {
                    byte b10 = (byte) i10;
                    if (b10 == -1) {
                        this._output_.write(b10);
                    }
                    this._output_.write(b10);
                }
                this._output_.write(COMMAND_SE);
                this._output_.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void _stopSpyStream() {
        this.spyStream = null;
    }

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

    public void deleteOptionHandler(int i10) throws InvalidTelnetOptionException {
        if (!TelnetOption.isValidOption(i10)) {
            throw new InvalidTelnetOptionException("Invalid Option Code", i10);
        }
        TelnetOptionHandler[] telnetOptionHandlerArr = this.optionHandlers;
        TelnetOptionHandler telnetOptionHandler = telnetOptionHandlerArr[i10];
        if (telnetOptionHandler == null) {
            throw new InvalidTelnetOptionException("Unregistered option", i10);
        }
        telnetOptionHandlerArr[i10] = null;
        if (telnetOptionHandler.getWill()) {
            requestWont(i10);
        }
        if (telnetOptionHandler.getDo()) {
            requestDont(i10);
        }
    }

    public final synchronized void processAYTResponse() {
        if (!this.aytFlag) {
            synchronized (this.aytMonitor) {
                this.aytFlag = true;
                this.aytMonitor.notifyAll();
            }
        }
    }

    public void processCommand(int i10) {
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(5, i10);
        }
    }

    public void processDo(int i10) {
        boolean acceptLocal;
        String str;
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(1, i10);
        }
        TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i10];
        if (telnetOptionHandler != null) {
            acceptLocal = telnetOptionHandler.getAcceptLocal();
        } else {
            acceptLocal = (i10 != 24 || (str = this.terminalType) == null || str.isEmpty()) ? false : true;
        }
        int[] iArr = this.willResponse;
        int i11 = iArr[i10];
        if (i11 > 0) {
            int i12 = i11 - 1;
            iArr[i10] = i12;
            if (i12 > 0 && stateIsWill(i10)) {
                int[] iArr2 = this.willResponse;
                iArr2[i10] = iArr2[i10] - 1;
            }
        }
        if (this.willResponse[i10] == 0 && requestedWont(i10)) {
            if (acceptLocal) {
                setWantWill(i10);
                sendWill(i10);
            } else {
                int[] iArr3 = this.willResponse;
                iArr3[i10] = iArr3[i10] + 1;
                sendWont(i10);
            }
        }
        setWill(i10);
    }

    public void processDont(int i10) {
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(2, i10);
        }
        int[] iArr = this.willResponse;
        int i11 = iArr[i10];
        if (i11 > 0) {
            int i12 = i11 - 1;
            iArr[i10] = i12;
            if (i12 > 0 && stateIsWont(i10)) {
                int[] iArr2 = this.willResponse;
                iArr2[i10] = iArr2[i10] - 1;
            }
        }
        if (this.willResponse[i10] == 0 && requestedWill(i10)) {
            if (stateIsWill(i10) || requestedWill(i10)) {
                sendWont(i10);
            }
            setWantWont(i10);
        }
        setWont(i10);
    }

    public void processSuboption(int[] iArr, int i10) {
        if (i10 > 0) {
            TelnetOptionHandler[] telnetOptionHandlerArr = this.optionHandlers;
            int i11 = iArr[0];
            TelnetOptionHandler telnetOptionHandler = telnetOptionHandlerArr[i11];
            if (telnetOptionHandler != null) {
                _sendSubnegotiation(telnetOptionHandler.answerSubnegotiation(iArr, i10));
            } else if (i10 > 1 && i11 == 24 && iArr[1] == 1) {
                sendTerminalType();
            }
        }
    }

    public void processWill(int i10) {
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(3, i10);
        }
        TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i10];
        boolean acceptRemote = telnetOptionHandler != null ? telnetOptionHandler.getAcceptRemote() : false;
        int[] iArr = this.doResponse;
        int i11 = iArr[i10];
        if (i11 > 0) {
            int i12 = i11 - 1;
            iArr[i10] = i12;
            if (i12 > 0 && stateIsDo(i10)) {
                int[] iArr2 = this.doResponse;
                iArr2[i10] = iArr2[i10] - 1;
            }
        }
        if (this.doResponse[i10] == 0 && requestedDont(i10)) {
            if (acceptRemote) {
                setWantDo(i10);
                sendDo(i10);
            } else {
                int[] iArr3 = this.doResponse;
                iArr3[i10] = iArr3[i10] + 1;
                sendDont(i10);
            }
        }
        setDo(i10);
    }

    public void processWont(int i10) {
        TelnetNotificationHandler telnetNotificationHandler = this.notifhand;
        if (telnetNotificationHandler != null) {
            telnetNotificationHandler.receivedNegotiation(4, i10);
        }
        int[] iArr = this.doResponse;
        int i11 = iArr[i10];
        if (i11 > 0) {
            int i12 = i11 - 1;
            iArr[i10] = i12;
            if (i12 > 0 && stateIsDont(i10)) {
                int[] iArr2 = this.doResponse;
                iArr2[i10] = iArr2[i10] - 1;
            }
        }
        if (this.doResponse[i10] == 0 && requestedDo(i10)) {
            if (stateIsDo(i10) || requestedDo(i10)) {
                sendDont(i10);
            }
            setWantDont(i10);
        }
        setDont(i10);
    }

    public void registerNotifHandler(TelnetNotificationHandler telnetNotificationHandler) {
        this.notifhand = telnetNotificationHandler;
    }

    public final synchronized void requestDo(int i10) {
        try {
            if (this.doResponse[i10] != 0 || !stateIsDo(i10)) {
                if (!requestedDo(i10)) {
                    setWantDo(i10);
                    int[] iArr = this.doResponse;
                    iArr[i10] = iArr[i10] + 1;
                    sendDo(i10);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void requestDont(int i10) {
        try {
            if (this.doResponse[i10] != 0 || !stateIsDont(i10)) {
                if (!requestedDont(i10)) {
                    setWantDont(i10);
                    int[] iArr = this.doResponse;
                    iArr[i10] = iArr[i10] + 1;
                    sendDont(i10);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void requestWill(int i10) {
        try {
            if (this.willResponse[i10] != 0 || !stateIsWill(i10)) {
                if (!requestedWill(i10)) {
                    setWantWill(i10);
                    int[] iArr = this.doResponse;
                    iArr[i10] = iArr[i10] + 1;
                    sendWill(i10);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void requestWont(int i10) {
        try {
            if (this.willResponse[i10] != 0 || !stateIsWont(i10)) {
                if (!requestedWont(i10)) {
                    setWantWont(i10);
                    int[] iArr = this.doResponse;
                    iArr[i10] = iArr[i10] + 1;
                    sendWont(i10);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean requestedDo(int i10) {
        return (this.options[i10] & 8) != 0;
    }

    public boolean requestedDont(int i10) {
        return !requestedDo(i10);
    }

    public boolean requestedWill(int i10) {
        return (this.options[i10] & 4) != 0;
    }

    public boolean requestedWont(int i10) {
        return !requestedWill(i10);
    }

    public final synchronized void sendByte(int i10) {
        this._output_.write(i10);
        spyWrite(i10);
    }

    public final synchronized void sendDo(int i10) {
        this._output_.write(COMMAND_DO);
        this._output_.write(i10);
        this._output_.flush();
    }

    public final synchronized void sendDont(int i10) {
        this._output_.write(COMMAND_DONT);
        this._output_.write(i10);
        this._output_.flush();
    }

    public final synchronized void sendTerminalType() {
        if (this.terminalType != null) {
            this._output_.write(COMMAND_SB);
            this._output_.write(COMMAND_IS);
            this._output_.write(this.terminalType.getBytes(getCharset()));
            this._output_.write(COMMAND_SE);
            this._output_.flush();
        }
    }

    public final synchronized void sendWill(int i10) {
        this._output_.write(COMMAND_WILL);
        this._output_.write(i10);
        this._output_.flush();
    }

    public final synchronized void sendWont(int i10) {
        this._output_.write(COMMAND_WONT);
        this._output_.write(i10);
        this._output_.flush();
    }

    public void setDo(int i10) {
        TelnetOptionHandler telnetOptionHandler;
        int[] iArr = this.options;
        iArr[i10] = iArr[i10] | 2;
        if (!requestedDo(i10) || (telnetOptionHandler = this.optionHandlers[i10]) == null) {
            return;
        }
        telnetOptionHandler.setDo(true);
        int[] iArrStartSubnegotiationRemote = this.optionHandlers[i10].startSubnegotiationRemote();
        if (iArrStartSubnegotiationRemote != null) {
            _sendSubnegotiation(iArrStartSubnegotiationRemote);
        }
    }

    public void setDont(int i10) {
        int[] iArr = this.options;
        iArr[i10] = iArr[i10] & (-3);
        TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i10];
        if (telnetOptionHandler != null) {
            telnetOptionHandler.setDo(false);
        }
    }

    public void setWantDo(int i10) {
        int[] iArr = this.options;
        iArr[i10] = iArr[i10] | 8;
    }

    public void setWantDont(int i10) {
        int[] iArr = this.options;
        iArr[i10] = iArr[i10] & (-9);
    }

    public void setWantWill(int i10) {
        int[] iArr = this.options;
        iArr[i10] = iArr[i10] | 4;
    }

    public void setWantWont(int i10) {
        int[] iArr = this.options;
        iArr[i10] = iArr[i10] & (-5);
    }

    public void setWill(int i10) {
        TelnetOptionHandler telnetOptionHandler;
        int[] iArr = this.options;
        iArr[i10] = iArr[i10] | 1;
        if (!requestedWill(i10) || (telnetOptionHandler = this.optionHandlers[i10]) == null) {
            return;
        }
        telnetOptionHandler.setWill(true);
        int[] iArrStartSubnegotiationLocal = this.optionHandlers[i10].startSubnegotiationLocal();
        if (iArrStartSubnegotiationLocal != null) {
            _sendSubnegotiation(iArrStartSubnegotiationLocal);
        }
    }

    public void setWont(int i10) {
        int[] iArr = this.options;
        iArr[i10] = iArr[i10] & (-2);
        TelnetOptionHandler telnetOptionHandler = this.optionHandlers[i10];
        if (telnetOptionHandler != null) {
            telnetOptionHandler.setWill(false);
        }
    }

    public void spyRead(int i10) {
        OutputStream outputStream = this.spyStream;
        if (outputStream == null || i10 == 13) {
            return;
        }
        if (i10 == 10) {
            try {
                outputStream.write(13);
            } catch (IOException unused) {
                this.spyStream = null;
                return;
            }
        }
        outputStream.write(i10);
        outputStream.flush();
    }

    public void spyWrite(int i10) {
        OutputStream outputStream;
        if ((stateIsDo(1) && requestedDo(1)) || (outputStream = this.spyStream) == null) {
            return;
        }
        try {
            outputStream.write(i10);
            outputStream.flush();
        } catch (IOException unused) {
            this.spyStream = null;
        }
    }

    public boolean stateIsDo(int i10) {
        return (this.options[i10] & 2) != 0;
    }

    public boolean stateIsDont(int i10) {
        return !stateIsDo(i10);
    }

    public boolean stateIsWill(int i10) {
        return (this.options[i10] & 1) != 0;
    }

    public boolean stateIsWont(int i10) {
        return !stateIsWill(i10);
    }

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
