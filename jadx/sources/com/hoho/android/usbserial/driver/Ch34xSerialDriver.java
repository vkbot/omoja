package com.hoho.android.usbserial.driver;

import ai.onnxruntime.AbstractC0074a;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import androidx.navigation.C0674b;
import java.io.IOException;
import java.util.Collections;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.UByte;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Ch34xSerialDriver implements UsbSerialDriver {
    private static final int GCL_CD = 8;
    private static final int GCL_CTS = 1;
    private static final int GCL_DSR = 2;
    private static final int GCL_RI = 4;
    private static final int LCR_CS5 = 0;
    private static final int LCR_CS6 = 1;
    private static final int LCR_CS7 = 2;
    private static final int LCR_CS8 = 3;
    private static final int LCR_ENABLE_PAR = 8;
    private static final int LCR_ENABLE_RX = 128;
    private static final int LCR_ENABLE_TX = 64;
    private static final int LCR_MARK_SPACE = 32;
    private static final int LCR_PAR_EVEN = 16;
    private static final int LCR_STOP_BITS_2 = 4;
    private static final int SCL_DTR = 32;
    private static final int SCL_RTS = 64;
    private static final String TAG = "Ch34xSerialDriver";
    private final UsbDevice mDevice;
    private final UsbSerialPort mPort;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class Ch340SerialPort extends CommonUsbSerialPort {
        private static final int USB_TIMEOUT_MILLIS = 5000;
        private final int DEFAULT_BAUD_RATE;
        private boolean dtr;
        private boolean rts;

        public Ch340SerialPort(UsbDevice usbDevice, int i10) {
            super(usbDevice, i10);
            this.DEFAULT_BAUD_RATE = 9600;
            this.dtr = false;
            this.rts = false;
        }

        private void checkState(String str, int i10, int i11, int[] iArr) throws IOException {
            int i12;
            byte[] bArr = new byte[iArr.length];
            int iControlIn = controlIn(i10, i11, 0, bArr);
            if (iControlIn < 0) {
                C2467b.m3820A(AbstractC0074a.m162m("Failed send cmd [", str, "]"));
                return;
            }
            if (iControlIn != iArr.length) {
                StringBuilder sb = new StringBuilder("Expected ");
                sb.append(iArr.length);
                sb.append(" bytes, but get ");
                sb.append(iControlIn);
                sb.append(" [");
                C2467b.m3820A(AbstractC0074a.m165p(sb, str, "]"));
                return;
            }
            for (int i13 = 0; i13 < iArr.length; i13++) {
                int i14 = iArr[i13];
                if (i14 != -1 && i14 != (i12 = bArr[i13] & UByte.MAX_VALUE)) {
                    StringBuilder sb2 = new StringBuilder("Expected 0x");
                    sb2.append(Integer.toHexString(iArr[i13]));
                    sb2.append(" byte, but get 0x");
                    sb2.append(Integer.toHexString(i12));
                    sb2.append(" [");
                    C2467b.m3820A(AbstractC0074a.m165p(sb2, str, "]"));
                    return;
                }
            }
        }

        private int controlIn(int i10, int i11, int i12, byte[] bArr) {
            return this.mConnection.controlTransfer(192, i10, i11, i12, bArr, bArr.length, 5000);
        }

        private int controlOut(int i10, int i11, int i12) {
            return this.mConnection.controlTransfer(64, i10, i11, i12, null, 0, 5000);
        }

        private byte getStatus() throws IOException {
            byte[] bArr = new byte[2];
            if (controlIn(149, 1798, 0, bArr) >= 0) {
                return bArr[0];
            }
            C2467b.m3820A("Error getting control lines");
            return (byte) 0;
        }

        private void initialize() throws IOException {
            checkState("init #1", 95, 0, new int[]{-1, 0});
            if (controlOut(161, 0, 0) < 0) {
                C2467b.m3820A("Init failed: #2");
                return;
            }
            setBaudRate(9600);
            checkState("init #4", 149, 9496, new int[]{-1, 0});
            if (controlOut(154, 9496, 195) < 0) {
                C2467b.m3820A("Init failed: #5");
                return;
            }
            checkState("init #6", 149, 1798, new int[]{-1, -1});
            if (controlOut(161, 20511, 55562) < 0) {
                C2467b.m3820A("Init failed: #7");
                return;
            }
            setBaudRate(9600);
            setControlLines();
            checkState("init #10", 149, 1798, new int[]{-1, -1});
        }

        private void setBaudRate(int i10) throws IOException {
            long j10;
            long j11;
            if (i10 == 921600) {
                j11 = 7;
                j10 = 62208;
            } else {
                long j12 = 1532620800 / ((long) i10);
                long j13 = 3;
                while (j12 > 65520 && j13 > 0) {
                    j12 >>= 3;
                    j13--;
                }
                if (j12 > 65520) {
                    C0674b.m840g(AbstractC0074a.m154e(i10, "Unsupported baud rate: "));
                    return;
                } else {
                    long j14 = j13;
                    j10 = 65536 - j12;
                    j11 = j14;
                }
            }
            int i11 = (int) (j11 | 128 | (65280 & j10));
            int i12 = (int) (j10 & 255);
            Log.d(Ch34xSerialDriver.TAG, String.format("baud rate=%d, 0x1312=0x%04x, 0x0f2c=0x%04x", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)));
            if (controlOut(154, 4882, i11) < 0) {
                C2467b.m3820A("Error setting baud rate: #1)");
            } else {
                if (controlOut(154, 3884, i12) >= 0) {
                    return;
                }
                C2467b.m3820A("Error setting baud rate: #2");
            }
        }

        private void setControlLines() throws IOException {
            if (controlOut(164, ~((this.dtr ? 32 : 0) | (this.rts ? 64 : 0)), 0) >= 0) {
                return;
            }
            C2467b.m3820A("Failed to set control lines");
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void closeInt() {
            for (int i10 = 0; i10 < this.mDevice.getInterfaceCount(); i10++) {
                try {
                    this.mConnection.releaseInterface(this.mDevice.getInterface(i10));
                } catch (Exception unused) {
                    return;
                }
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getCD() {
            return (getStatus() & 8) == 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getCTS() {
            return (getStatus() & 1) == 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException {
            byte status = getStatus();
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if (this.rts) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if ((status & 1) == 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CTS);
            }
            if (this.dtr) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            if ((status & 2) == 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DSR);
            }
            if ((status & 8) == 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CD);
            }
            if ((status & 4) == 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RI);
            }
            return enumSetNoneOf;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getDSR() {
            return (getStatus() & 2) == 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getDTR() {
            return this.dtr;
        }

        @Override // com.hoho.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return Ch34xSerialDriver.this;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getRI() {
            return (getStatus() & 4) == 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getRTS() {
            return this.rts;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getSupportedControlLines() {
            return EnumSet.allOf(UsbSerialPort.ControlLine.class);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void openInt() throws IOException {
            int i10 = 0;
            while (true) {
                int interfaceCount = this.mDevice.getInterfaceCount();
                UsbDevice usbDevice = this.mDevice;
                if (i10 >= interfaceCount) {
                    UsbInterface usbInterface = usbDevice.getInterface(usbDevice.getInterfaceCount() - 1);
                    for (int i11 = 0; i11 < usbInterface.getEndpointCount(); i11++) {
                        UsbEndpoint endpoint = usbInterface.getEndpoint(i11);
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
                if (!this.mConnection.claimInterface(usbDevice.getInterface(i10), true)) {
                    C2467b.m3820A("Could not claim data interface");
                    return;
                }
                i10++;
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z9) throws IOException {
            byte[] bArr = new byte[2];
            if (controlIn(149, 6149, 0, bArr) < 0) {
                C2467b.m3820A("Error getting BREAK condition");
                return;
            }
            if (z9) {
                bArr[0] = (byte) (bArr[0] & (-2));
                bArr[1] = (byte) (bArr[1] & (-65));
            } else {
                bArr[0] = (byte) (bArr[0] | 1);
                bArr[1] = (byte) (bArr[1] | 64);
            }
            if (controlOut(154, 6149, ((bArr[1] & UByte.MAX_VALUE) << 8) | (bArr[0] & UByte.MAX_VALUE)) >= 0) {
                return;
            }
            C2467b.m3820A("Error setting BREAK condition");
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setDTR(boolean z9) throws IOException {
            this.dtr = z9;
            setControlLines();
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i10, int i11, int i12, int i13) throws IOException {
            int i14;
            if (i10 <= 0) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid baud rate: "));
                return;
            }
            setBaudRate(i10);
            if (i11 == 5) {
                i14 = 192;
            } else if (i11 == 6) {
                i14 = 193;
            } else if (i11 == 7) {
                i14 = 194;
            } else {
                if (i11 != 8) {
                    C1929i.m3029k(AbstractC0074a.m154e(i11, "Invalid data bits: "));
                    return;
                }
                i14 = 195;
            }
            if (i13 != 0) {
                if (i13 == 1) {
                    i14 |= 8;
                } else if (i13 == 2) {
                    i14 |= 24;
                } else if (i13 == 3) {
                    i14 |= 40;
                } else {
                    if (i13 != 4) {
                        C1929i.m3029k(AbstractC0074a.m154e(i13, "Invalid parity: "));
                        return;
                    }
                    i14 |= 56;
                }
            }
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        C1929i.m3029k(AbstractC0074a.m154e(i12, "Invalid stop bits: "));
                        return;
                    } else {
                        C0674b.m840g("Unsupported stop bits: 1.5");
                        return;
                    }
                }
                i14 |= 4;
            }
            if (controlOut(154, 9496, i14) >= 0) {
                return;
            }
            C2467b.m3820A("Error setting control byte");
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setRTS(boolean z9) throws IOException {
            this.rts = z9;
            setControlLines();
        }
    }

    public Ch34xSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        this.mPort = new Ch340SerialPort(usbDevice, 0);
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(UsbId.VENDOR_QINHENG), new int[]{UsbId.QINHENG_CH340, UsbId.QINHENG_CH341A});
        return linkedHashMap;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return Collections.singletonList(this.mPort);
    }
}
