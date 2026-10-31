package com.hoho.android.usbserial.driver;

import ai.onnxruntime.AbstractC0074a;
import android.hardware.usb.UsbDevice;
import android.util.Log;
import androidx.navigation.C0674b;
import java.io.IOException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p008a7.AbstractC0027a;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class FtdiSerialDriver implements UsbSerialDriver {
    private static final String TAG = FtdiSerialPort.class.getSimpleName();
    private final UsbDevice mDevice;
    private final List<UsbSerialPort> mPorts = new ArrayList();

    /* JADX INFO: renamed from: com.hoho.android.usbserial.driver.FtdiSerialDriver$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static /* synthetic */ class C12081 {

        /* JADX INFO: renamed from: $SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl */
        static final /* synthetic */ int[] f2804xe252dabc;

        static {
            int[] iArr = new int[UsbSerialPort.FlowControl.values().length];
            f2804xe252dabc = iArr;
            try {
                iArr[UsbSerialPort.FlowControl.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2804xe252dabc[UsbSerialPort.FlowControl.RTS_CTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2804xe252dabc[UsbSerialPort.FlowControl.DTR_DSR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2804xe252dabc[UsbSerialPort.FlowControl.XON_XOFF_INLINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public FtdiSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        for (int i10 = 0; i10 < usbDevice.getInterfaceCount(); i10++) {
            this.mPorts.add(new FtdiSerialPort(this.mDevice, i10));
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(UsbId.VENDOR_FTDI), new int[]{UsbId.FTDI_FT232R, UsbId.FTDI_FT232H, UsbId.FTDI_FT2232H, UsbId.FTDI_FT4232H, UsbId.FTDI_FT231X});
        return linkedHashMap;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return this.mPorts;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class FtdiSerialPort extends CommonUsbSerialPort {
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

        public FtdiSerialPort(UsbDevice usbDevice, int i10) {
            super(usbDevice, i10);
            this.baudRateWithPort = false;
            this.dtr = false;
            this.rts = false;
            this.breakConfig = 0;
        }

        private int getStatus() throws IOException {
            byte[] bArr = new byte[2];
            int iControlTransfer = this.mConnection.controlTransfer(REQTYPE_DEVICE_TO_HOST, 5, 0, this.mPortNumber + 1, bArr, 2, 5000);
            if (iControlTransfer == 2) {
                return bArr[0];
            }
            C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Get modem status failed: result="));
            return 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private void setBaudrate(int i10) throws IOException {
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            if (i10 > 3500000) {
                C0674b.m840g("Baud rate to high");
                return;
            }
            int i17 = 0;
            if (i10 >= 2500000) {
                i13 = 3000000;
                i12 = 0;
                i11 = 0;
            } else if (i10 >= 1750000) {
                i13 = 2000000;
                i11 = 0;
                i12 = 1;
            } else {
                int i18 = (48000000 / i10) + 1;
                i11 = (i18 >> 1) & 7;
                i12 = i18 >> 4;
                if (i12 > 16383) {
                    C0674b.m840g("Baud rate to low");
                    return;
                }
                i13 = ((48000000 / ((i12 << 3) + i11)) + 1) >> 1;
            }
            double dAbs = Math.abs(1.0d - (((double) i13) / ((double) i10)));
            if (dAbs >= 0.031d) {
                throw new UnsupportedOperationException(String.format("Baud rate deviation %.1f%% is higher than allowed 3%%", Double.valueOf(dAbs * 100.0d)));
            }
            switch (i11) {
                case 1:
                    i14 = i12 | 49152;
                    i15 = i14;
                    break;
                case 2:
                    i14 = 32768 | i12;
                    i15 = i14;
                    break;
                case 3:
                    i17 = 1;
                    i15 = i12;
                    break;
                case 4:
                    i14 = i12 | 16384;
                    i15 = i14;
                    break;
                case 5:
                    i16 = i12 | 16384;
                    i15 = i16;
                    i17 = 1;
                    break;
                case 6:
                    i16 = i12 | 32768;
                    i15 = i16;
                    i17 = 1;
                    break;
                case 7:
                    i16 = i12 | 49152;
                    i15 = i16;
                    i17 = 1;
                    break;
                default:
                    i15 = i12;
                    break;
            }
            if (this.baudRateWithPort) {
                i17 = (i17 << 8) | (this.mPortNumber + 1);
            }
            int i19 = i17;
            Log.d(FtdiSerialDriver.TAG, String.format("baud rate=%d, effective=%d, error=%.1f%%, value=0x%04x, index=0x%04x, divisor=%d, subdivisor=%d", Integer.valueOf(i10), Integer.valueOf(i13), Double.valueOf(dAbs * 100.0d), Integer.valueOf(i15), Integer.valueOf(i19), Integer.valueOf(i12), Integer.valueOf(i11)));
            int iControlTransfer = this.mConnection.controlTransfer(64, 3, i15, i19, null, 0, 5000);
            if (iControlTransfer == 0) {
                return;
            }
            C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Setting baudrate failed: result="));
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void closeInt() {
            try {
                this.mConnection.releaseInterface(this.mDevice.getInterface(this.mPortNumber));
            } catch (Exception unused) {
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getCD() {
            return (getStatus() & 128) != 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getCTS() {
            return (getStatus() & 16) != 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException {
            int status = getStatus();
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if (this.rts) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if ((status & 16) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CTS);
            }
            if (this.dtr) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            if ((status & 32) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DSR);
            }
            if ((status & 128) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CD);
            }
            if ((status & 64) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RI);
            }
            return enumSetNoneOf;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getDSR() {
            return (getStatus() & 32) != 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getDTR() {
            return this.dtr;
        }

        @Override // com.hoho.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return FtdiSerialDriver.this;
        }

        public int getLatencyTimer() throws IOException {
            byte[] bArr = new byte[1];
            int iControlTransfer = this.mConnection.controlTransfer(REQTYPE_DEVICE_TO_HOST, 10, 0, this.mPortNumber + 1, bArr, 1, 5000);
            if (iControlTransfer == 1) {
                return bArr[0];
            }
            C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Get latency timer failed: result="));
            return 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getRI() {
            return (getStatus() & 64) != 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getRTS() {
            return this.rts;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getSupportedControlLines() {
            return EnumSet.allOf(UsbSerialPort.ControlLine.class);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.FlowControl> getSupportedFlowControl() {
            return EnumSet.of(UsbSerialPort.FlowControl.NONE, UsbSerialPort.FlowControl.RTS_CTS, UsbSerialPort.FlowControl.DTR_DSR, UsbSerialPort.FlowControl.XON_XOFF_INLINE);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void openInt() throws IOException {
            boolean z9 = true;
            if (!this.mConnection.claimInterface(this.mDevice.getInterface(this.mPortNumber), true)) {
                C2467b.m3835y(this.mPortNumber, "Could not claim interface ");
                return;
            }
            if (this.mDevice.getInterface(this.mPortNumber).getEndpointCount() < 2) {
                C2467b.m3820A("Not enough endpoints");
                return;
            }
            this.mReadEndpoint = this.mDevice.getInterface(this.mPortNumber).getEndpoint(0);
            this.mWriteEndpoint = this.mDevice.getInterface(this.mPortNumber).getEndpoint(1);
            int iControlTransfer = this.mConnection.controlTransfer(64, 0, 0, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer != 0) {
                C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Reset failed: result="));
                return;
            }
            int iControlTransfer2 = this.mConnection.controlTransfer(64, 1, (this.dtr ? 257 : 256) | (this.rts ? 514 : 512), this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer2 != 0) {
                C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer2, "Init RTS,DTR failed: result="));
                return;
            }
            setFlowControl(this.mFlowControl);
            byte[] rawDescriptors = this.mConnection.getRawDescriptors();
            if (rawDescriptors == null || rawDescriptors.length < 14) {
                C2467b.m3820A("Could not get device descriptors");
                return;
            }
            byte b10 = rawDescriptors[13];
            if (b10 != 7 && b10 != 8 && b10 != 9 && this.mDevice.getInterfaceCount() <= 1) {
                z9 = false;
            }
            this.baudRateWithPort = z9;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void purgeHwBuffers(boolean z9, boolean z10) throws IOException {
            int iControlTransfer;
            int iControlTransfer2;
            if (z9 && (iControlTransfer2 = this.mConnection.controlTransfer(64, 0, 1, this.mPortNumber + 1, null, 0, 5000)) != 0) {
                C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer2, "Purge write buffer failed: result="));
            } else {
                if (!z10 || (iControlTransfer = this.mConnection.controlTransfer(64, 0, 2, this.mPortNumber + 1, null, 0, 5000)) == 0) {
                    return;
                }
                C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Purge read buffer failed: result="));
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int i12;
            int i13;
            if (i10 <= 2) {
                C1929i.m3029k("Read length too small");
                return 0;
            }
            int iMin = Math.min(i10, bArr.length);
            if (i11 != 0) {
                long jM90a = AbstractC0027a.m90a() + ((long) i11);
                do {
                    i13 = super.read(bArr, iMin, Math.max(1, (int) (jM90a - AbstractC0027a.m90a())), false);
                    if (i13 != 2) {
                        break;
                    }
                } while (AbstractC0027a.m90a() < jM90a);
                if (i13 <= 0) {
                    testConnection(AbstractC0027a.m90a() < jM90a);
                }
            } else {
                do {
                    i12 = super.read(bArr, iMin, i11);
                } while (i12 == 2);
                i13 = i12;
            }
            return readFilter(bArr, i13);
        }

        public int readFilter(byte[] bArr, int i10) throws IOException {
            int maxPacketSize = this.mReadEndpoint.getMaxPacketSize();
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int i13 = i11 + maxPacketSize;
                int i14 = i11 + 2;
                int iMin = Math.min(i13, i10) - i14;
                if (iMin < 0) {
                    C2467b.m3820A("Expected at least 2 bytes");
                    return 0;
                }
                System.arraycopy(bArr, i14, bArr, i12, iMin);
                i12 += iMin;
                i11 = i13;
            }
            return i12;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z9) throws IOException {
            int i10 = this.breakConfig;
            if (z9) {
                i10 |= 16384;
            }
            int iControlTransfer = this.mConnection.controlTransfer(64, 4, i10, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer == 0) {
                return;
            }
            C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Setting BREAK failed: result="));
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setDTR(boolean z9) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(64, 1, z9 ? 257 : 256, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer == 0) {
                this.dtr = z9;
            } else {
                C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Set DTR failed: result="));
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setFlowControl(UsbSerialPort.FlowControl flowControl) throws IOException {
            int i10 = this.mPortNumber + 1;
            int i11 = C12081.f2804xe252dabc[flowControl.ordinal()];
            int i12 = 0;
            if (i11 != 1) {
                if (i11 == 2) {
                    i10 |= 256;
                } else if (i11 == 3) {
                    i10 |= 512;
                } else if (i11 != 4) {
                    C0674b.m835a();
                    return;
                } else {
                    i10 |= 1024;
                    i12 = 4881;
                }
            }
            int iControlTransfer = this.mConnection.controlTransfer(64, 2, i12, i10, null, 0, 5000);
            if (iControlTransfer == 0) {
                this.mFlowControl = flowControl;
            } else {
                C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Set flow control failed: result="));
            }
        }

        public void setLatencyTimer(int i10) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(64, 9, i10, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer == 0) {
                return;
            }
            C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Set latency timer failed: result="));
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i10, int i11, int i12, int i13) throws IOException {
            if (i10 <= 0) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid baud rate: "));
                return;
            }
            setBaudrate(i10);
            if (i11 == 5 || i11 == 6) {
                C0674b.m840g(AbstractC0074a.m154e(i11, "Unsupported data bits: "));
                return;
            }
            if (i11 != 7 && i11 != 8) {
                C1929i.m3029k(AbstractC0074a.m154e(i11, "Invalid data bits: "));
                return;
            }
            if (i13 != 0) {
                if (i13 == 1) {
                    i11 |= 256;
                } else if (i13 == 2) {
                    i11 |= 512;
                } else if (i13 == 3) {
                    i11 |= 768;
                } else {
                    if (i13 != 4) {
                        C1929i.m3029k(AbstractC0074a.m154e(i13, "Invalid parity: "));
                        return;
                    }
                    i11 |= 1024;
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
                i11 |= 4096;
            }
            int i14 = i11;
            int iControlTransfer = this.mConnection.controlTransfer(64, 4, i14, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer == 0) {
                this.breakConfig = i14;
            } else {
                C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Setting parameters failed: result="));
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setRTS(boolean z9) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(64, 1, z9 ? 514 : 512, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer == 0) {
                this.rts = z9;
            } else {
                C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Set DTR failed: result="));
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public int read(byte[] bArr, int i10) {
            if (bArr.length > 2) {
                return read(bArr, bArr.length, i10);
            }
            C1929i.m3029k("Read buffer too small");
            return 0;
        }
    }
}
