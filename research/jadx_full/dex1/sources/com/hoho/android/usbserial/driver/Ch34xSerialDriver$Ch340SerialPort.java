package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import j1.i;
import java.io.IOException;
import java.util.EnumSet;
import kotlin.UByte;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Ch34xSerialDriver$Ch340SerialPort extends CommonUsbSerialPort {
    private static final int USB_TIMEOUT_MILLIS = 5000;
    private final int DEFAULT_BAUD_RATE;
    private boolean dtr;
    private boolean rts;
    final /* synthetic */ Ch34xSerialDriver this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ch34xSerialDriver$Ch340SerialPort(Ch34xSerialDriver ch34xSerialDriver, UsbDevice usbDevice, int i9) {
        super(usbDevice, i9);
        this.this$0 = ch34xSerialDriver;
        this.DEFAULT_BAUD_RATE = 9600;
        this.dtr = false;
        this.rts = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkState(String str, int i9, int i10, int[] iArr) throws IOException {
        int i11;
        byte[] bArr = new byte[iArr.length];
        int iControlIn = controlIn(i9, i10, 0, bArr);
        if (iControlIn < 0) {
            b.A(ai.onnxruntime.a.m("Failed send cmd [", str, "]"));
            return;
        }
        if (iControlIn != iArr.length) {
            StringBuilder sb = new StringBuilder("Expected ");
            sb.append(iArr.length);
            sb.append(" bytes, but get ");
            sb.append(iControlIn);
            sb.append(" [");
            b.A(ai.onnxruntime.a.p(sb, str, "]"));
            return;
        }
        for (int i12 = 0; i12 < iArr.length; i12++) {
            int i13 = iArr[i12];
            if (i13 != -1 && i13 != (i11 = bArr[i12] & UByte.MAX_VALUE)) {
                StringBuilder sb2 = new StringBuilder("Expected 0x");
                sb2.append(Integer.toHexString(iArr[i12]));
                sb2.append(" byte, but get 0x");
                sb2.append(Integer.toHexString(i11));
                sb2.append(" [");
                b.A(ai.onnxruntime.a.p(sb2, str, "]"));
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int controlIn(int i9, int i10, int i11, byte[] bArr) {
        return this.mConnection.controlTransfer(192, i9, i10, i11, bArr, bArr.length, USB_TIMEOUT_MILLIS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int controlOut(int i9, int i10, int i11) {
        return this.mConnection.controlTransfer(64, i9, i10, i11, null, 0, USB_TIMEOUT_MILLIS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte getStatus() throws IOException {
        byte[] bArr = new byte[2];
        if (controlIn(149, 1798, 0, bArr) >= 0) {
            return bArr[0];
        }
        b.A("Error getting control lines");
        return (byte) 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initialize() throws IOException {
        checkState("init #1", 95, 0, new int[]{-1, 0});
        if (controlOut(161, 0, 0) < 0) {
            b.A("Init failed: #2");
            return;
        }
        setBaudRate(9600);
        checkState("init #4", 149, 9496, new int[]{-1, 0});
        if (controlOut(154, 9496, 195) < 0) {
            b.A("Init failed: #5");
            return;
        }
        checkState("init #6", 149, 1798, new int[]{-1, -1});
        if (controlOut(161, 20511, 55562) < 0) {
            b.A("Init failed: #7");
            return;
        }
        setBaudRate(9600);
        setControlLines();
        checkState("init #10", 149, 1798, new int[]{-1, -1});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setBaudRate(int i9) throws IOException {
        long j9;
        long j10;
        if (i9 == 921600) {
            j10 = 7;
            j9 = 62208;
        } else {
            long j11 = 1532620800 / ((long) i9);
            long j12 = 3;
            while (j11 > 65520 && j12 > 0) {
                j11 >>= 3;
                j12--;
            }
            if (j11 > 65520) {
                androidx.navigation.b.g(ai.onnxruntime.a.e(i9, "Unsupported baud rate: "));
                return;
            } else {
                long j13 = j12;
                j9 = 65536 - j11;
                j10 = j13;
            }
        }
        int i10 = (int) (j10 | 128 | (65280 & j9));
        int i11 = (int) (j9 & 255);
        Log.d(Ch34xSerialDriver.access$000(), String.format("baud rate=%d, 0x1312=0x%04x, 0x0f2c=0x%04x", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11)));
        if (controlOut(154, 4882, i10) < 0) {
            b.A("Error setting baud rate: #1)");
        } else {
            if (controlOut(154, 3884, i11) >= 0) {
                return;
            }
            b.A("Error setting baud rate: #2");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setControlLines() throws IOException {
        if (controlOut(164, ~((this.dtr ? 32 : 0) | (this.rts ? 64 : 0)), 0) >= 0) {
            return;
        }
        b.A("Failed to set control lines");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void closeInt() {
        for (int i9 = 0; i9 < this.mDevice.getInterfaceCount(); i9++) {
            try {
                this.mConnection.releaseInterface(this.mDevice.getInterface(i9));
            } catch (Exception unused) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCD() {
        return (getStatus() & 8) == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCTS() {
        return (getStatus() & 1) == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getControlLines() throws IOException {
        byte status = getStatus();
        EnumSet<UsbSerialPort$ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort$ControlLine.class);
        if (this.rts) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.RTS);
        }
        if ((status & 1) == 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.CTS);
        }
        if (this.dtr) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.DTR);
        }
        if ((status & 2) == 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.DSR);
        }
        if ((status & 8) == 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.CD);
        }
        if ((status & 4) == 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.RI);
        }
        return enumSetNoneOf;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDSR() {
        return (getStatus() & 2) == 0;
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
        return (getStatus() & 4) == 0;
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
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void openInt() throws IOException {
        int i9 = 0;
        while (true) {
            int interfaceCount = this.mDevice.getInterfaceCount();
            UsbDevice usbDevice = this.mDevice;
            if (i9 >= interfaceCount) {
                UsbInterface usbInterface = usbDevice.getInterface(usbDevice.getInterfaceCount() - 1);
                for (int i10 = 0; i10 < usbInterface.getEndpointCount(); i10++) {
                    UsbEndpoint endpoint = usbInterface.getEndpoint(i10);
                    if (endpoint.getType() == 2) {
                        if (endpoint.getDirection() == 128) {
                            this.mReadEndpoint = endpoint;
                        } else {
                            this.mWriteEndpoint = endpoint;
                        }
                    }
                }
                initialize();
                setBaudRate(9600);
                return;
            }
            if (!this.mConnection.claimInterface(usbDevice.getInterface(i9), true)) {
                b.A("Could not claim data interface");
                return;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setBreak(boolean z8) throws IOException {
        byte[] bArr = new byte[2];
        if (controlIn(149, 6149, 0, bArr) < 0) {
            b.A("Error getting BREAK condition");
            return;
        }
        if (z8) {
            bArr[0] = (byte) (bArr[0] & (-2));
            bArr[1] = (byte) (bArr[1] & (-65));
        } else {
            bArr[0] = (byte) (bArr[0] | 1);
            bArr[1] = (byte) (bArr[1] | 64);
        }
        if (controlOut(154, 6149, ((bArr[1] & UByte.MAX_VALUE) << 8) | (bArr[0] & UByte.MAX_VALUE)) >= 0) {
            return;
        }
        b.A("Error setting BREAK condition");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setDTR(boolean z8) throws IOException {
        this.dtr = z8;
        setControlLines();
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
        if (i10 == 5) {
            i13 = 192;
        } else if (i10 == 6) {
            i13 = 193;
        } else if (i10 == 7) {
            i13 = 194;
        } else {
            if (i10 != 8) {
                i.k(ai.onnxruntime.a.e(i10, "Invalid data bits: "));
                return;
            }
            i13 = 195;
        }
        if (i12 != 0) {
            if (i12 == 1) {
                i13 |= 8;
            } else if (i12 == 2) {
                i13 |= 24;
            } else if (i12 == 3) {
                i13 |= 40;
            } else {
                if (i12 != 4) {
                    i.k(ai.onnxruntime.a.e(i12, "Invalid parity: "));
                    return;
                }
                i13 |= 56;
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
            i13 |= 4;
        }
        if (controlOut(154, 9496, i13) >= 0) {
            return;
        }
        b.A("Error setting control byte");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setRTS(boolean z8) throws IOException {
        this.rts = z8;
        setControlLines();
    }
}
