package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import j1.i;
import java.io.IOException;
import java.util.EnumSet;
import kotlin.jvm.internal.ByteCompanionObject;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Cp21xxSerialDriver$Cp21xxSerialPort extends CommonUsbSerialPort {
    private static final int DTR_DISABLE = 256;
    private static final int DTR_ENABLE = 257;
    private static final int FLUSH_READ_CODE = 10;
    private static final int FLUSH_WRITE_CODE = 5;
    private static final int REQTYPE_DEVICE_TO_HOST = 193;
    private static final int REQTYPE_HOST_TO_DEVICE = 65;
    private static final int RTS_DISABLE = 512;
    private static final int RTS_ENABLE = 514;
    private static final int SILABSER_FLUSH_REQUEST_CODE = 18;
    private static final int SILABSER_GET_COMM_STATUS_REQUEST_CODE = 16;
    private static final int SILABSER_GET_MDMSTS_REQUEST_CODE = 8;
    private static final int SILABSER_IFC_ENABLE_REQUEST_CODE = 0;
    private static final int SILABSER_SET_BAUDRATE_REQUEST_CODE = 30;
    private static final int SILABSER_SET_BREAK_REQUEST_CODE = 5;
    private static final int SILABSER_SET_CHARS_REQUEST_CODE = 25;
    private static final int SILABSER_SET_FLOW_REQUEST_CODE = 19;
    private static final int SILABSER_SET_LINE_CTL_REQUEST_CODE = 3;
    private static final int SILABSER_SET_MHS_REQUEST_CODE = 7;
    private static final int SILABSER_SET_XOFF_REQUEST_CODE = 10;
    private static final int SILABSER_SET_XON_REQUEST_CODE = 9;
    private static final int STATUS_CD = 128;
    private static final int STATUS_CTS = 16;
    private static final int STATUS_DSR = 32;
    private static final int STATUS_DTR = 1;
    private static final int STATUS_RI = 64;
    private static final int STATUS_RTS = 2;
    private static final int UART_DISABLE = 0;
    private static final int UART_ENABLE = 1;
    private static final int USB_WRITE_TIMEOUT_MILLIS = 5000;
    private boolean dtr;
    private boolean mIsRestrictedPort;
    private boolean rts;
    final /* synthetic */ Cp21xxSerialDriver this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cp21xxSerialDriver$Cp21xxSerialPort(Cp21xxSerialDriver cp21xxSerialDriver, UsbDevice usbDevice, int i9) {
        super(usbDevice, i9);
        this.this$0 = cp21xxSerialDriver;
        this.dtr = false;
        this.rts = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte getStatus() throws IOException {
        byte[] bArr = new byte[1];
        int iControlTransfer = this.mConnection.controlTransfer(REQTYPE_DEVICE_TO_HOST, 8, 0, this.mPortNumber, bArr, 1, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 1) {
            return bArr[0];
        }
        b.A(ai.onnxruntime.a.e(iControlTransfer, "Control transfer failed: 8 / 0 -> "));
        return (byte) 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setBaudRate(int i9) throws IOException {
        if (this.mConnection.controlTransfer(65, 30, 0, this.mPortNumber, new byte[]{(byte) (i9 & 255), (byte) ((i9 >> 8) & 255), (byte) ((i9 >> 16) & 255), (byte) ((i9 >> 24) & 255)}, 4, USB_WRITE_TIMEOUT_MILLIS) >= 0) {
            return;
        }
        b.A("Error setting baud rate");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setConfigSingle(int i9, int i10) throws IOException {
        int iControlTransfer = this.mConnection.controlTransfer(65, i9, i10, this.mPortNumber, null, 0, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 0) {
            return;
        }
        StringBuilder sbV = ai.onnxruntime.a.v("Control transfer failed: ", i9, i10, " / ", " -> ");
        sbV.append(iControlTransfer);
        throw new IOException(sbV.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void closeInt() {
        try {
            setConfigSingle(0, 0);
        } catch (Exception unused) {
        }
        try {
            this.mConnection.releaseInterface(this.mDevice.getInterface(this.mPortNumber));
        } catch (Exception unused2) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCD() {
        return (getStatus() & ByteCompanionObject.MIN_VALUE) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCTS() {
        return (getStatus() & 16) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getControlLines() throws IOException {
        byte status = getStatus();
        EnumSet<UsbSerialPort$ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort$ControlLine.class);
        if ((status & 2) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.RTS);
        }
        if ((status & 16) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.CTS);
        }
        if ((status & 1) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.DTR);
        }
        if ((status & 32) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.DSR);
        }
        if ((status & ByteCompanionObject.MIN_VALUE) != 0) {
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
        return EnumSet.of(UsbSerialPort$FlowControl.NONE, UsbSerialPort$FlowControl.RTS_CTS, UsbSerialPort$FlowControl.DTR_DSR, UsbSerialPort$FlowControl.XON_XOFF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getXON() throws IOException {
        byte[] bArr = new byte[19];
        int iControlTransfer = this.mConnection.controlTransfer(REQTYPE_DEVICE_TO_HOST, 16, 0, this.mPortNumber, bArr, 19, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer == 19) {
            return (bArr[4] & 8) == 0;
        }
        b.A(ai.onnxruntime.a.e(iControlTransfer, "Control transfer failed: 16 -> "));
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void openInt() throws IOException {
        this.mIsRestrictedPort = this.mDevice.getInterfaceCount() == 2 && this.mPortNumber == 1;
        if (this.mPortNumber >= this.mDevice.getInterfaceCount()) {
            b.A("Unknown port number");
            return;
        }
        UsbInterface usbInterface = this.mDevice.getInterface(this.mPortNumber);
        if (!this.mConnection.claimInterface(usbInterface, true)) {
            b.y(this.mPortNumber, "Could not claim interface ");
            return;
        }
        for (int i9 = 0; i9 < usbInterface.getEndpointCount(); i9++) {
            UsbEndpoint endpoint = usbInterface.getEndpoint(i9);
            if (endpoint.getType() == 2) {
                if (endpoint.getDirection() == 128) {
                    this.mReadEndpoint = endpoint;
                } else {
                    this.mWriteEndpoint = endpoint;
                }
            }
        }
        setConfigSingle(0, 1);
        setConfigSingle(7, (this.dtr ? 257 : 256) | (this.rts ? RTS_ENABLE : 512));
        setFlowControl(this.mFlowControl);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void purgeHwBuffers(boolean z8, boolean z9) throws IOException {
        int i9 = (z9 ? 10 : 0) | (z8 ? 5 : 0);
        if (i9 != 0) {
            setConfigSingle(18, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setBreak(boolean z8) throws IOException {
        setConfigSingle(5, z8 ? 1 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setDTR(boolean z8) throws IOException {
        this.dtr = z8;
        setConfigSingle(7, z8 ? 257 : 256);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setFlowControl(UsbSerialPort$FlowControl usbSerialPort$FlowControl) throws IOException {
        byte[] bArr = new byte[16];
        if (usbSerialPort$FlowControl == UsbSerialPort$FlowControl.RTS_CTS) {
            bArr[4] = (byte) (bArr[4] | ByteCompanionObject.MIN_VALUE);
            bArr[0] = (byte) (bArr[0] | 8);
        } else if (this.rts) {
            bArr[4] = (byte) (bArr[4] | 64);
        }
        if (usbSerialPort$FlowControl == UsbSerialPort$FlowControl.DTR_DSR) {
            byte b9 = (byte) (bArr[0] | 2);
            bArr[0] = b9;
            bArr[0] = (byte) (b9 | 16);
        } else if (this.dtr) {
            bArr[0] = (byte) (bArr[0] | 1);
        }
        UsbSerialPort$FlowControl usbSerialPort$FlowControl2 = UsbSerialPort$FlowControl.XON_XOFF;
        if (usbSerialPort$FlowControl == usbSerialPort$FlowControl2) {
            if (this.mConnection.controlTransfer(65, 25, 0, this.mPortNumber, new byte[]{0, 0, 0, 0, 17, 19}, 6, USB_WRITE_TIMEOUT_MILLIS) != 6) {
                b.A("Error setting XON/XOFF chars");
                return;
            }
            bArr[4] = (byte) (bArr[4] | 3);
            bArr[7] = (byte) (bArr[7] | ByteCompanionObject.MIN_VALUE);
            bArr[8] = ByteCompanionObject.MIN_VALUE;
            bArr[12] = ByteCompanionObject.MIN_VALUE;
        }
        if (usbSerialPort$FlowControl == UsbSerialPort$FlowControl.XON_XOFF_INLINE) {
            androidx.navigation.b.a();
        } else {
            if (this.mConnection.controlTransfer(65, 19, 0, this.mPortNumber, bArr, 16, USB_WRITE_TIMEOUT_MILLIS) != 16) {
                b.A("Error setting flow control");
                return;
            }
            if (usbSerialPort$FlowControl == usbSerialPort$FlowControl2) {
                setXON(true);
            }
            this.mFlowControl = usbSerialPort$FlowControl;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setParameters(int i9, int i10, int i11, int i12) throws IOException {
        int i13;
        if (i9 <= 0) {
            i.k(ai.onnxruntime.a.e(i9, "Invalid baud rate: "));
            return;
        }
        setBaudRate(i9);
        if (i10 != 5) {
            if (i10 != 6) {
                if (i10 != 7) {
                    if (i10 != 8) {
                        i.k(ai.onnxruntime.a.e(i10, "Invalid data bits: "));
                        return;
                    }
                    i13 = 2048;
                } else {
                    if (this.mIsRestrictedPort) {
                        androidx.navigation.b.g(ai.onnxruntime.a.e(i10, "Unsupported data bits: "));
                        return;
                    }
                    i13 = 1792;
                }
            } else {
                if (this.mIsRestrictedPort) {
                    androidx.navigation.b.g(ai.onnxruntime.a.e(i10, "Unsupported data bits: "));
                    return;
                }
                i13 = 1536;
            }
        } else {
            if (this.mIsRestrictedPort) {
                androidx.navigation.b.g(ai.onnxruntime.a.e(i10, "Unsupported data bits: "));
                return;
            }
            i13 = 1280;
        }
        if (i12 != 0) {
            if (i12 == 1) {
                i13 |= 16;
            } else if (i12 == 2) {
                i13 |= 32;
            } else if (i12 != 3) {
                if (i12 != 4) {
                    i.k(ai.onnxruntime.a.e(i12, "Invalid parity: "));
                    return;
                } else {
                    if (this.mIsRestrictedPort) {
                        androidx.navigation.b.g("Unsupported parity: space");
                        return;
                    }
                    i13 |= 64;
                }
            } else {
                if (this.mIsRestrictedPort) {
                    androidx.navigation.b.g("Unsupported parity: mark");
                    return;
                }
                i13 |= 48;
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
            if (this.mIsRestrictedPort) {
                androidx.navigation.b.g("Unsupported stop bits: 2");
                return;
            }
            i13 |= 2;
        }
        setConfigSingle(3, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setRTS(boolean z8) throws IOException {
        this.rts = z8;
        setConfigSingle(7, z8 ? RTS_ENABLE : 512);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setXON(boolean z8) throws IOException {
        setConfigSingle(z8 ? 9 : 10, 0);
    }
}
