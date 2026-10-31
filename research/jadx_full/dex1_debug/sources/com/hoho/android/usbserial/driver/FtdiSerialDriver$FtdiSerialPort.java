package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.util.Log;
import j1.i;
import java.io.IOException;
import java.util.EnumSet;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FtdiSerialDriver$FtdiSerialPort extends CommonUsbSerialPort {
    private static final int GET_LATENCY_TIMER_REQUEST = 10;
    private static final int GET_MODEM_STATUS_REQUEST = 5;
    private static final int MODEM_CONTROL_DTR_DISABLE = 256;
    private static final int MODEM_CONTROL_DTR_ENABLE = 257;
    private static final int MODEM_CONTROL_REQUEST = 1;
    private static final int MODEM_CONTROL_RTS_DISABLE = 512;
    private static final int MODEM_CONTROL_RTS_ENABLE = 514;
    private static final int MODEM_STATUS_CD = 128;
    private static final int MODEM_STATUS_CTS = 16;
    private static final int MODEM_STATUS_DSR = 32;
    private static final int MODEM_STATUS_RI = 64;
    private static final int READ_HEADER_LENGTH = 2;
    private static final int REQTYPE_DEVICE_TO_HOST = 192;
    private static final int REQTYPE_HOST_TO_DEVICE = 64;
    private static final int RESET_ALL = 0;
    private static final int RESET_PURGE_RX = 1;
    private static final int RESET_PURGE_TX = 2;
    private static final int RESET_REQUEST = 0;
    private static final int SET_BAUD_RATE_REQUEST = 3;
    private static final int SET_DATA_REQUEST = 4;
    private static final int SET_FLOW_CONTROL_REQUEST = 2;
    private static final int SET_LATENCY_TIMER_REQUEST = 9;
    private static final int USB_WRITE_TIMEOUT_MILLIS = 5000;
    private boolean baudRateWithPort;
    private int breakConfig;
    private boolean dtr;
    private boolean rts;
    final /* synthetic */ FtdiSerialDriver this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FtdiSerialDriver$FtdiSerialPort(FtdiSerialDriver ftdiSerialDriver, UsbDevice usbDevice, int i9) {
        super(usbDevice, i9);
        this.this$0 = ftdiSerialDriver;
        this.baudRateWithPort = false;
        this.dtr = false;
        this.rts = false;
        this.breakConfig = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getStatus() throws IOException {
        byte[] bArr = new byte[2];
        int iControlTransfer = this.mConnection.controlTransfer(REQTYPE_DEVICE_TO_HOST, 5, 0, this.mPortNumber + 1, bArr, 2, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 2) {
            return bArr[0];
        }
        b.A(ai.onnxruntime.a.e(iControlTransfer, "Get modem status failed: result="));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void setBaudrate(int i9) throws IOException {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        if (i9 > 3500000) {
            androidx.navigation.b.g("Baud rate to high");
            return;
        }
        int i16 = 0;
        if (i9 >= 2500000) {
            i12 = 3000000;
            i11 = 0;
            i10 = 0;
        } else if (i9 >= 1750000) {
            i12 = 2000000;
            i10 = 0;
            i11 = 1;
        } else {
            int i17 = (48000000 / i9) + 1;
            i10 = (i17 >> 1) & 7;
            i11 = i17 >> 4;
            if (i11 > 16383) {
                androidx.navigation.b.g("Baud rate to low");
                return;
            }
            i12 = ((48000000 / ((i11 << 3) + i10)) + 1) >> 1;
        }
        double dAbs = Math.abs(1.0d - (((double) i12) / ((double) i9)));
        if (dAbs >= 0.031d) {
            throw new UnsupportedOperationException(String.format("Baud rate deviation %.1f%% is higher than allowed 3%%", Double.valueOf(dAbs * 100.0d)));
        }
        switch (i10) {
            case 1:
                i13 = i11 | 49152;
                i14 = i13;
                break;
            case 2:
                i13 = 32768 | i11;
                i14 = i13;
                break;
            case 3:
                i16 = 1;
                i14 = i11;
                break;
            case 4:
                i13 = i11 | 16384;
                i14 = i13;
                break;
            case 5:
                i15 = i11 | 16384;
                i14 = i15;
                i16 = 1;
                break;
            case 6:
                i15 = i11 | 32768;
                i14 = i15;
                i16 = 1;
                break;
            case 7:
                i15 = i11 | 49152;
                i14 = i15;
                i16 = 1;
                break;
            default:
                i14 = i11;
                break;
        }
        if (this.baudRateWithPort) {
            i16 = (i16 << 8) | (this.mPortNumber + 1);
        }
        int i18 = i16;
        Log.d(FtdiSerialDriver.access$000(), String.format("baud rate=%d, effective=%d, error=%.1f%%, value=0x%04x, index=0x%04x, divisor=%d, subdivisor=%d", Integer.valueOf(i9), Integer.valueOf(i12), Double.valueOf(dAbs * 100.0d), Integer.valueOf(i14), Integer.valueOf(i18), Integer.valueOf(i11), Integer.valueOf(i10)));
        int iControlTransfer = this.mConnection.controlTransfer(64, 3, i14, i18, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 0) {
            return;
        }
        b.A(ai.onnxruntime.a.e(iControlTransfer, "Setting baudrate failed: result="));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void closeInt() {
        try {
            this.mConnection.releaseInterface(this.mDevice.getInterface(this.mPortNumber));
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCD() {
        return (getStatus() & 128) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCTS() {
        return (getStatus() & 16) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getControlLines() throws IOException {
        int status = getStatus();
        EnumSet<UsbSerialPort$ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort$ControlLine.class);
        if (this.rts) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.RTS);
        }
        if ((status & 16) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.CTS);
        }
        if (this.dtr) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.DTR);
        }
        if ((status & 32) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.DSR);
        }
        if ((status & 128) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.CD);
        }
        if ((status & 64) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.RI);
        }
        return enumSetNoneOf;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDSR() {
        return (getStatus() & 32) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDTR() {
        return this.dtr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbSerialDriver getDriver() {
        return this.this$0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLatencyTimer() throws IOException {
        byte[] bArr = new byte[1];
        int iControlTransfer = this.mConnection.controlTransfer(REQTYPE_DEVICE_TO_HOST, 10, 0, this.mPortNumber + 1, bArr, 1, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 1) {
            return bArr[0];
        }
        b.A(ai.onnxruntime.a.e(iControlTransfer, "Get latency timer failed: result="));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getRI() {
        return (getStatus() & 64) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getRTS() {
        return this.rts;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getSupportedControlLines() {
        return EnumSet.allOf(UsbSerialPort$ControlLine.class);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$FlowControl> getSupportedFlowControl() {
        return EnumSet.of(UsbSerialPort$FlowControl.NONE, UsbSerialPort$FlowControl.RTS_CTS, UsbSerialPort$FlowControl.DTR_DSR, UsbSerialPort$FlowControl.XON_XOFF_INLINE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void openInt() throws IOException {
        boolean z8 = true;
        if (!this.mConnection.claimInterface(this.mDevice.getInterface(this.mPortNumber), true)) {
            b.y(this.mPortNumber, "Could not claim interface ");
            return;
        }
        if (this.mDevice.getInterface(this.mPortNumber).getEndpointCount() < 2) {
            b.A("Not enough endpoints");
            return;
        }
        this.mReadEndpoint = this.mDevice.getInterface(this.mPortNumber).getEndpoint(0);
        this.mWriteEndpoint = this.mDevice.getInterface(this.mPortNumber).getEndpoint(1);
        int iControlTransfer = this.mConnection.controlTransfer(64, 0, 0, this.mPortNumber + 1, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer != 0) {
            b.A(ai.onnxruntime.a.e(iControlTransfer, "Reset failed: result="));
            return;
        }
        int iControlTransfer2 = this.mConnection.controlTransfer(64, 1, (this.dtr ? 257 : 256) | (this.rts ? MODEM_CONTROL_RTS_ENABLE : 512), this.mPortNumber + 1, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer2 != 0) {
            b.A(ai.onnxruntime.a.e(iControlTransfer2, "Init RTS,DTR failed: result="));
            return;
        }
        setFlowControl(this.mFlowControl);
        byte[] rawDescriptors = this.mConnection.getRawDescriptors();
        if (rawDescriptors == null || rawDescriptors.length < 14) {
            b.A("Could not get device descriptors");
            return;
        }
        byte b9 = rawDescriptors[13];
        if (b9 != 7 && b9 != 8 && b9 != 9 && this.mDevice.getInterfaceCount() <= 1) {
            z8 = false;
        }
        this.baudRateWithPort = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void purgeHwBuffers(boolean z8, boolean z9) throws IOException {
        int iControlTransfer;
        int iControlTransfer2;
        if (z8 && (iControlTransfer2 = this.mConnection.controlTransfer(64, 0, 1, this.mPortNumber + 1, null, 0, USB_WRITE_TIMEOUT_MILLIS)) != 0) {
            b.A(ai.onnxruntime.a.e(iControlTransfer2, "Purge write buffer failed: result="));
        } else {
            if (!z9 || (iControlTransfer = this.mConnection.controlTransfer(64, 0, 2, this.mPortNumber + 1, null, 0, USB_WRITE_TIMEOUT_MILLIS)) == 0) {
                return;
            }
            b.A(ai.onnxruntime.a.e(iControlTransfer, "Purge read buffer failed: result="));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        int i11;
        int i12;
        if (i9 <= 2) {
            i.k("Read length too small");
            return 0;
        }
        int iMin = Math.min(i9, bArr.length);
        if (i10 != 0) {
            long jA = a7.a.a() + ((long) i10);
            do {
                i12 = super.read(bArr, iMin, Math.max(1, (int) (jA - a7.a.a())), false);
                if (i12 != 2) {
                    break;
                }
            } while (a7.a.a() < jA);
            if (i12 <= 0) {
                testConnection(a7.a.a() < jA);
            }
        } else {
            do {
                i11 = super.read(bArr, iMin, i10);
            } while (i11 == 2);
            i12 = i11;
        }
        return readFilter(bArr, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int readFilter(byte[] bArr, int i9) throws IOException {
        int maxPacketSize = this.mReadEndpoint.getMaxPacketSize();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i9) {
            int i12 = i10 + maxPacketSize;
            int i13 = i10 + 2;
            int iMin = Math.min(i12, i9) - i13;
            if (iMin < 0) {
                b.A("Expected at least 2 bytes");
                return 0;
            }
            System.arraycopy(bArr, i13, bArr, i11, iMin);
            i11 += iMin;
            i10 = i12;
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setBreak(boolean z8) throws IOException {
        int i9 = this.breakConfig;
        if (z8) {
            i9 |= 16384;
        }
        int iControlTransfer = this.mConnection.controlTransfer(64, 4, i9, this.mPortNumber + 1, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 0) {
            return;
        }
        b.A(ai.onnxruntime.a.e(iControlTransfer, "Setting BREAK failed: result="));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setDTR(boolean z8) throws IOException {
        int iControlTransfer = this.mConnection.controlTransfer(64, 1, z8 ? 257 : 256, this.mPortNumber + 1, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 0) {
            this.dtr = z8;
        } else {
            b.A(ai.onnxruntime.a.e(iControlTransfer, "Set DTR failed: result="));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setFlowControl(UsbSerialPort$FlowControl usbSerialPort$FlowControl) throws IOException {
        int i9 = this.mPortNumber + 1;
        int i10 = FtdiSerialDriver$1.$SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl[usbSerialPort$FlowControl.ordinal()];
        int i11 = 0;
        if (i10 != 1) {
            if (i10 == 2) {
                i9 |= 256;
            } else if (i10 == 3) {
                i9 |= 512;
            } else if (i10 != 4) {
                androidx.navigation.b.a();
                return;
            } else {
                i9 |= 1024;
                i11 = 4881;
            }
        }
        int iControlTransfer = this.mConnection.controlTransfer(64, 2, i11, i9, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 0) {
            this.mFlowControl = usbSerialPort$FlowControl;
        } else {
            b.A(ai.onnxruntime.a.e(iControlTransfer, "Set flow control failed: result="));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLatencyTimer(int i9) throws IOException {
        int iControlTransfer = this.mConnection.controlTransfer(64, 9, i9, this.mPortNumber + 1, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 0) {
            return;
        }
        b.A(ai.onnxruntime.a.e(iControlTransfer, "Set latency timer failed: result="));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setParameters(int i9, int i10, int i11, int i12) throws IOException {
        if (i9 <= 0) {
            i.k(ai.onnxruntime.a.e(i9, "Invalid baud rate: "));
            return;
        }
        setBaudrate(i9);
        if (i10 == 5 || i10 == 6) {
            androidx.navigation.b.g(ai.onnxruntime.a.e(i10, "Unsupported data bits: "));
            return;
        }
        if (i10 != 7 && i10 != 8) {
            i.k(ai.onnxruntime.a.e(i10, "Invalid data bits: "));
            return;
        }
        if (i12 != 0) {
            if (i12 == 1) {
                i10 |= 256;
            } else if (i12 == 2) {
                i10 |= 512;
            } else if (i12 == 3) {
                i10 |= 768;
            } else {
                if (i12 != 4) {
                    i.k(ai.onnxruntime.a.e(i12, "Invalid parity: "));
                    return;
                }
                i10 |= 1024;
            }
        }
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    i.k(ai.onnxruntime.a.e(i11, "Invalid stop bits: "));
                    return;
                } else {
                    androidx.navigation.b.g("Unsupported stop bits: 1.5");
                    return;
                }
            }
            i10 |= 4096;
        }
        int i13 = i10;
        int iControlTransfer = this.mConnection.controlTransfer(64, 4, i13, this.mPortNumber + 1, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 0) {
            this.breakConfig = i13;
        } else {
            b.A(ai.onnxruntime.a.e(iControlTransfer, "Setting parameters failed: result="));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setRTS(boolean z8) throws IOException {
        int iControlTransfer = this.mConnection.controlTransfer(64, 1, z8 ? MODEM_CONTROL_RTS_ENABLE : 512, this.mPortNumber + 1, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 0) {
            this.rts = z8;
        } else {
            b.A(ai.onnxruntime.a.e(iControlTransfer, "Set DTR failed: result="));
        }
    }

    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public int read(byte[] bArr, int i9) {
        if (bArr.length > 2) {
            return read(bArr, bArr.length, i9);
        }
        i.k("Read buffer too small");
        return 0;
    }
}
