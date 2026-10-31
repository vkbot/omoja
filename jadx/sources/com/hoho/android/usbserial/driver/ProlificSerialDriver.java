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
import kotlin.jvm.internal.ByteCompanionObject;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.telnet.TelnetCommand;
import p008a7.AbstractC0027a;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ProlificSerialDriver implements UsbSerialDriver {
    private static final int[] standardBaudRates = {75, FTPReply.FILE_STATUS_OK, 300, 600, 1200, 1800, 2400, 3600, 4800, 7200, 9600, 14400, 19200, 28800, 38400, 57600, 115200, 128000, 134400, 161280, 201600, 230400, 268800, 403200, 460800, 614400, 806400, 921600, 1228800, 2457600, 3000000, 6000000};
    private final String TAG = "ProlificSerialDriver";
    private final UsbDevice mDevice;
    private final UsbSerialPort mPort;

    /* JADX INFO: renamed from: com.hoho.android.usbserial.driver.ProlificSerialDriver$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static /* synthetic */ class C12091 {

        /* JADX INFO: renamed from: $SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl */
        static final /* synthetic */ int[] f2805xe252dabc;

        static {
            int[] iArr = new int[UsbSerialPort.FlowControl.values().length];
            f2805xe252dabc = iArr;
            try {
                iArr[UsbSerialPort.FlowControl.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2805xe252dabc[UsbSerialPort.FlowControl.RTS_CTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2805xe252dabc[UsbSerialPort.FlowControl.XON_XOFF_INLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum DeviceType {
        DEVICE_TYPE_01,
        DEVICE_TYPE_T,
        DEVICE_TYPE_HX,
        DEVICE_TYPE_HXN
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class ProlificSerialPort extends CommonUsbSerialPort {
        private static final int CONTROL_DTR = 1;
        private static final int CONTROL_RTS = 2;
        private static final int CTRL_OUT_REQTYPE = 33;
        private static final int FLUSH_RX_REQUEST = 8;
        private static final int FLUSH_TX_REQUEST = 9;
        private static final int GET_CONTROL_FLAG_CD = 2;
        private static final int GET_CONTROL_FLAG_CTS = 8;
        private static final int GET_CONTROL_FLAG_DSR = 4;
        private static final int GET_CONTROL_FLAG_RI = 1;
        private static final int GET_CONTROL_HXN_FLAG_CD = 64;
        private static final int GET_CONTROL_HXN_FLAG_CTS = 8;
        private static final int GET_CONTROL_HXN_FLAG_DSR = 32;
        private static final int GET_CONTROL_HXN_FLAG_RI = 128;
        private static final int GET_CONTROL_HXN_REQUEST = 128;
        private static final int GET_CONTROL_REQUEST = 135;
        private static final int INTERRUPT_ENDPOINT = 129;
        private static final int READ_ENDPOINT = 131;
        private static final int RESET_HXN_REQUEST = 7;
        private static final int RESET_HXN_RX_PIPE = 1;
        private static final int RESET_HXN_TX_PIPE = 2;
        private static final int SEND_BREAK_REQUEST = 35;
        private static final int SET_CONTROL_REQUEST = 34;
        private static final int SET_LINE_REQUEST = 32;
        private static final int STATUS_BUFFER_SIZE = 10;
        private static final int STATUS_BYTE_IDX = 8;
        private static final int STATUS_FLAG_CD = 1;
        private static final int STATUS_FLAG_CTS = 128;
        private static final int STATUS_FLAG_DSR = 2;
        private static final int STATUS_FLAG_RI = 8;
        private static final int STATUS_NOTIFICATION = 161;
        private static final int USB_READ_TIMEOUT_MILLIS = 1000;
        private static final int USB_RECIP_INTERFACE = 1;
        private static final int USB_WRITE_TIMEOUT_MILLIS = 5000;
        private static final int VENDOR_IN_REQTYPE = 192;
        private static final int VENDOR_OUT_REQTYPE = 64;
        private static final int VENDOR_READ_HXN_REQUEST = 129;
        private static final int VENDOR_READ_REQUEST = 1;
        private static final int VENDOR_WRITE_HXN_REQUEST = 128;
        private static final int VENDOR_WRITE_REQUEST = 1;
        private static final int WRITE_ENDPOINT = 2;
        private int mBaudRate;
        private int mControlLinesValue;
        private int mDataBits;
        protected DeviceType mDeviceType;
        private UsbEndpoint mInterruptEndpoint;
        private int mParity;
        private Exception mReadStatusException;
        private volatile Thread mReadStatusThread;
        private final Object mReadStatusThreadLock;
        private int mStatus;
        private int mStopBits;
        private boolean mStopReadStatusThread;

        public ProlificSerialPort(UsbDevice usbDevice, int i10) {
            super(usbDevice, i10);
            this.mDeviceType = DeviceType.DEVICE_TYPE_HX;
            this.mControlLinesValue = 0;
            this.mBaudRate = -1;
            this.mDataBits = -1;
            this.mStopBits = -1;
            this.mParity = -1;
            this.mStatus = 0;
            this.mReadStatusThread = null;
            this.mReadStatusThreadLock = new Object();
            this.mStopReadStatusThread = false;
            this.mReadStatusException = null;
        }

        private void ctrlOut(int i10, int i11, int i12, byte[] bArr) throws IOException {
            outControlTransfer(33, i10, i11, i12, bArr);
        }

        private void doBlackMagic() throws IOException {
            if (this.mDeviceType == DeviceType.DEVICE_TYPE_HXN) {
                return;
            }
            vendorIn(33924, 0, 1);
            vendorOut(1028, 0, null);
            vendorIn(33924, 0, 1);
            vendorIn(33667, 0, 1);
            vendorIn(33924, 0, 1);
            vendorOut(1028, 1, null);
            vendorIn(33924, 0, 1);
            vendorIn(33667, 0, 1);
            vendorOut(0, 1, null);
            vendorOut(1, 0, null);
            vendorOut(2, this.mDeviceType == DeviceType.DEVICE_TYPE_01 ? 36 : 68, null);
        }

        private int filterBaudRate(int i10) {
            int i11;
            int i12;
            if (i10 <= 0) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid baud rate: "));
                return 0;
            }
            if (this.mDeviceType != DeviceType.DEVICE_TYPE_HXN) {
                int i13 = 0;
                for (int i14 : ProlificSerialDriver.standardBaudRates) {
                    if (i14 != i10) {
                    }
                }
                int i15 = 384000000 / i10;
                if (i15 == 0) {
                    C0674b.m840g("Baud rate to high");
                    return 0;
                }
                if (this.mDeviceType == DeviceType.DEVICE_TYPE_T) {
                    while (i15 >= 2048) {
                        if (i13 >= 15) {
                            C0674b.m840g("Baud rate to low");
                            return 0;
                        }
                        i15 >>= 1;
                        i13++;
                    }
                    i11 = ((((i13 & (-2)) << 12) + i15) + ((i13 & 1) << 16)) - Integer.MIN_VALUE;
                    i12 = (384000000 / i15) >> i13;
                } else {
                    while (i15 >= 512) {
                        if (i13 >= 7) {
                            C0674b.m840g("Baud rate to low");
                            return 0;
                        }
                        i15 >>= 2;
                        i13++;
                    }
                    i11 = ((i13 << 9) + i15) - Integer.MIN_VALUE;
                    i12 = (384000000 / i15) >> (i13 << 1);
                }
                double dAbs = Math.abs(1.0d - (((double) i12) / ((double) i10)));
                if (dAbs >= 0.031d) {
                    throw new UnsupportedOperationException(String.format("Baud rate deviation %.1f%% is higher than allowed 3%%", Double.valueOf(dAbs * 100.0d)));
                }
                Log.d(ProlificSerialDriver.this.TAG, String.format("baud rate=%d, effective=%d, error=%.1f%%, value=0x%08x, mantissa=%d, exponent=%d", Integer.valueOf(i10), Integer.valueOf(i12), Double.valueOf(dAbs * 100.0d), Integer.valueOf(i11), Integer.valueOf(i15), Integer.valueOf(i13)));
                return i11;
            }
            return i10;
        }

        private int getStatus() throws IOException {
            if (this.mReadStatusThread == null && this.mReadStatusException == null) {
                synchronized (this.mReadStatusThreadLock) {
                    try {
                        if (this.mReadStatusThread == null) {
                            this.mStatus = 0;
                            if (this.mDeviceType == DeviceType.DEVICE_TYPE_HXN) {
                                byte b10 = vendorIn(128, 0, 1)[0];
                                if ((b10 & 8) == 0) {
                                    this.mStatus |= 128;
                                }
                                if ((b10 & 32) == 0) {
                                    this.mStatus |= 2;
                                }
                                if ((b10 & 64) == 0) {
                                    this.mStatus |= 1;
                                }
                                if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                                    this.mStatus |= 8;
                                }
                            } else {
                                byte b11 = vendorIn(GET_CONTROL_REQUEST, 0, 1)[0];
                                if ((b11 & 8) == 0) {
                                    this.mStatus |= 128;
                                }
                                if ((b11 & 4) == 0) {
                                    this.mStatus |= 2;
                                }
                                if ((b11 & 2) == 0) {
                                    this.mStatus |= 1;
                                }
                                if ((b11 & 1) == 0) {
                                    this.mStatus |= 8;
                                }
                            }
                            this.mReadStatusThread = new Thread(new Runnable() { // from class: com.hoho.android.usbserial.driver.a
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f2808b.readStatusThreadFunction();
                                }
                            });
                            this.mReadStatusThread.setDaemon(true);
                            this.mReadStatusThread.start();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            Exception exc = this.mReadStatusException;
            if (exc == null) {
                return this.mStatus;
            }
            this.mReadStatusException = null;
            throw new IOException(exc);
        }

        private byte[] inControlTransfer(int i10, int i11, int i12, int i13, int i14) throws IOException {
            byte[] bArr = new byte[i14];
            int iControlTransfer = this.mConnection.controlTransfer(i10, i11, i12, i13, bArr, i14, 1000);
            if (iControlTransfer == i14) {
                return bArr;
            }
            throw new IOException(String.format("ControlTransfer %s 0x%x failed: %d", this.mDeviceType.name(), Integer.valueOf(i12), Integer.valueOf(iControlTransfer)));
        }

        private void outControlTransfer(int i10, int i11, int i12, int i13, byte[] bArr) throws IOException {
            int length = bArr == null ? 0 : bArr.length;
            int iControlTransfer = this.mConnection.controlTransfer(i10, i11, i12, i13, bArr, length, 5000);
            if (iControlTransfer != length) {
                throw new IOException(String.format("ControlTransfer %s 0x%x failed: %d", this.mDeviceType.name(), Integer.valueOf(i12), Integer.valueOf(iControlTransfer)));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void readStatusThreadFunction() {
            try {
                byte[] bArr = new byte[10];
                while (!this.mStopReadStatusThread) {
                    long jM90a = AbstractC0027a.m90a() + 500;
                    int iBulkTransfer = this.mConnection.bulkTransfer(this.mInterruptEndpoint, bArr, 10, 500);
                    if (iBulkTransfer == -1) {
                        testConnection(AbstractC0027a.m90a() < jM90a);
                    }
                    if (iBulkTransfer > 0) {
                        if (iBulkTransfer != 10) {
                            throw new IOException("Invalid status notification, expected 10 bytes, got " + iBulkTransfer);
                        }
                        if (bArr[0] != -95) {
                            throw new IOException("Invalid status notification, expected 161 request, got " + ((int) bArr[0]));
                        }
                        this.mStatus = bArr[8] & UByte.MAX_VALUE;
                    }
                }
            } catch (Exception e) {
                if (isOpen()) {
                    this.mReadStatusException = e;
                }
            }
        }

        private void resetDevice() throws IOException {
            purgeHwBuffers(true, true);
        }

        private void setControlLines(int i10) throws IOException {
            ctrlOut(34, i10, 0, null);
            this.mControlLinesValue = i10;
        }

        private boolean testHxStatus() {
            try {
                inControlTransfer(VENDOR_IN_REQTYPE, 1, 32896, 0, 1);
                return true;
            } catch (IOException unused) {
                return false;
            }
        }

        private boolean testStatusFlag(int i10) {
            return (getStatus() & i10) == i10;
        }

        private byte[] vendorIn(int i10, int i11, int i12) {
            return inControlTransfer(VENDOR_IN_REQTYPE, this.mDeviceType == DeviceType.DEVICE_TYPE_HXN ? 129 : 1, i10, i11, i12);
        }

        private void vendorOut(int i10, int i11, byte[] bArr) throws IOException {
            outControlTransfer(64, this.mDeviceType == DeviceType.DEVICE_TYPE_HXN ? 128 : 1, i10, i11, bArr);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void closeInt() {
            try {
                synchronized (this.mReadStatusThreadLock) {
                    if (this.mReadStatusThread != null) {
                        try {
                            this.mStopReadStatusThread = true;
                            this.mReadStatusThread.join();
                        } catch (Exception e) {
                            Log.w(ProlificSerialDriver.this.TAG, "An error occured while waiting for status read thread", e);
                        }
                        this.mStopReadStatusThread = false;
                        this.mReadStatusThread = null;
                        this.mReadStatusException = null;
                    }
                }
                resetDevice();
            } catch (Exception unused) {
            }
            try {
                this.mConnection.releaseInterface(this.mDevice.getInterface(0));
            } catch (Exception unused2) {
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getCD() {
            return testStatusFlag(1);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getCTS() {
            return testStatusFlag(128);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException {
            int status = getStatus();
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if ((this.mControlLinesValue & 2) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if ((status & 128) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CTS);
            }
            if ((this.mControlLinesValue & 1) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            if ((status & 2) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DSR);
            }
            if ((status & 1) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CD);
            }
            if ((status & 8) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RI);
            }
            return enumSetNoneOf;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getDSR() {
            return testStatusFlag(2);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getDTR() {
            return (this.mControlLinesValue & 1) != 0;
        }

        @Override // com.hoho.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return ProlificSerialDriver.this;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getRI() {
            return testStatusFlag(8);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getRTS() {
            return (this.mControlLinesValue & 2) != 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getSupportedControlLines() {
            return EnumSet.allOf(UsbSerialPort.ControlLine.class);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.FlowControl> getSupportedFlowControl() {
            return EnumSet.of(UsbSerialPort.FlowControl.NONE, UsbSerialPort.FlowControl.RTS_CTS, UsbSerialPort.FlowControl.XON_XOFF_INLINE);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void openInt() throws IOException {
            UsbInterface usbInterface = this.mDevice.getInterface(0);
            if (!this.mConnection.claimInterface(usbInterface, true)) {
                C2467b.m3820A("Error claiming Prolific interface 0");
                return;
            }
            for (int i10 = 0; i10 < usbInterface.getEndpointCount(); i10++) {
                UsbEndpoint endpoint = usbInterface.getEndpoint(i10);
                int address = endpoint.getAddress();
                if (address == 2) {
                    this.mWriteEndpoint = endpoint;
                } else if (address == 129) {
                    this.mInterruptEndpoint = endpoint;
                } else if (address == READ_ENDPOINT) {
                    this.mReadEndpoint = endpoint;
                }
            }
            byte[] rawDescriptors = this.mConnection.getRawDescriptors();
            if (rawDescriptors == null || rawDescriptors.length < 14) {
                C2467b.m3820A("Could not get device descriptors");
                return;
            }
            int i11 = (rawDescriptors[3] << 8) + rawDescriptors[2];
            int i12 = (rawDescriptors[13] << 8) + rawDescriptors[12];
            byte b10 = rawDescriptors[7];
            if (this.mDevice.getDeviceClass() == 2 || b10 != 64) {
                this.mDeviceType = DeviceType.DEVICE_TYPE_01;
            } else if (i11 != 512) {
                this.mDeviceType = DeviceType.DEVICE_TYPE_HX;
            } else if (i12 == 768 && testHxStatus()) {
                this.mDeviceType = DeviceType.DEVICE_TYPE_T;
            } else if (i12 == 1280 && testHxStatus()) {
                this.mDeviceType = DeviceType.DEVICE_TYPE_T;
            } else {
                this.mDeviceType = DeviceType.DEVICE_TYPE_HXN;
            }
            Log.d(ProlificSerialDriver.this.TAG, String.format("usbVersion=%x, deviceVersion=%x, deviceClass=%d, packetSize=%d => deviceType=%s", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(this.mDevice.getDeviceClass()), Byte.valueOf(b10), this.mDeviceType.name()));
            resetDevice();
            doBlackMagic();
            setControlLines(this.mControlLinesValue);
            setFlowControl(this.mFlowControl);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [com.hoho.android.usbserial.driver.ProlificSerialDriver$ProlificSerialPort] */
        /* JADX WARN: Type inference failed for: r4v3, types: [int] */
        /* JADX WARN: Type inference failed for: r4v6 */
        /* JADX WARN: Type inference failed for: r4v7 */
        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void purgeHwBuffers(boolean z9, boolean z10) throws IOException {
            int i10;
            ?? r9 = z9;
            if (this.mDeviceType != DeviceType.DEVICE_TYPE_HXN) {
                if (z9) {
                    vendorOut(8, 0, null);
                }
                if (z10) {
                    vendorOut(9, 0, null);
                    return;
                }
                return;
            }
            if (z10) {
                i10 = (z9 ? 1 : 0) | 2;
            }
            if (r9 == 0) {
                r9 = i10;
                return;
            } else {
                r9 = i10;
                vendorOut(7, r9, null);
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z9) throws IOException {
            ctrlOut(35, z9 ? 65535 : 0, 0, null);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setDTR(boolean z9) throws IOException {
            int i10 = this.mControlLinesValue;
            setControlLines(z9 ? i10 | 1 : i10 & (-2));
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setFlowControl(UsbSerialPort.FlowControl flowControl) throws IOException {
            int i10 = C12091.f2805xe252dabc[flowControl.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        C0674b.m835a();
                        return;
                    } else if (this.mDeviceType == DeviceType.DEVICE_TYPE_HXN) {
                        vendorOut(10, TelnetCommand.ABORT, null);
                    } else {
                        vendorOut(0, 193, null);
                    }
                } else if (this.mDeviceType == DeviceType.DEVICE_TYPE_HXN) {
                    vendorOut(10, 250, null);
                } else {
                    vendorOut(0, 97, null);
                }
            } else if (this.mDeviceType == DeviceType.DEVICE_TYPE_HXN) {
                vendorOut(10, 255, null);
            } else {
                vendorOut(0, 0, null);
            }
            this.mFlowControl = flowControl;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i10, int i11, int i12, int i13) throws IOException {
            int iFilterBaudRate = filterBaudRate(i10);
            if (this.mBaudRate == iFilterBaudRate && this.mDataBits == i11 && this.mStopBits == i12 && this.mParity == i13) {
                return;
            }
            byte[] bArr = new byte[7];
            bArr[0] = (byte) (iFilterBaudRate & 255);
            bArr[1] = (byte) ((iFilterBaudRate >> 8) & 255);
            bArr[2] = (byte) ((iFilterBaudRate >> 16) & 255);
            bArr[3] = (byte) ((iFilterBaudRate >> 24) & 255);
            if (i12 == 1) {
                bArr[4] = 0;
            } else if (i12 == 2) {
                bArr[4] = 2;
            } else {
                if (i12 != 3) {
                    C1929i.m3029k(AbstractC0074a.m154e(i12, "Invalid stop bits: "));
                    return;
                }
                bArr[4] = 1;
            }
            if (i13 == 0) {
                bArr[5] = 0;
            } else if (i13 == 1) {
                bArr[5] = 1;
            } else if (i13 == 2) {
                bArr[5] = 2;
            } else if (i13 == 3) {
                bArr[5] = 3;
            } else {
                if (i13 != 4) {
                    C1929i.m3029k(AbstractC0074a.m154e(i13, "Invalid parity: "));
                    return;
                }
                bArr[5] = 4;
            }
            if (i11 < 5 || i11 > 8) {
                C1929i.m3029k(AbstractC0074a.m154e(i11, "Invalid data bits: "));
                return;
            }
            bArr[6] = (byte) i11;
            ctrlOut(32, 0, 0, bArr);
            resetDevice();
            this.mBaudRate = iFilterBaudRate;
            this.mDataBits = i11;
            this.mStopBits = i12;
            this.mParity = i13;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setRTS(boolean z9) throws IOException {
            int i10 = this.mControlLinesValue;
            setControlLines(z9 ? i10 | 2 : i10 & (-3));
        }
    }

    public ProlificSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        this.mPort = new ProlificSerialPort(usbDevice, 0);
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(UsbId.VENDOR_PROLIFIC), new int[]{UsbId.PROLIFIC_PL2303, UsbId.PROLIFIC_PL2303GC, UsbId.PROLIFIC_PL2303GB, UsbId.PROLIFIC_PL2303GT, UsbId.PROLIFIC_PL2303GL, UsbId.PROLIFIC_PL2303GE, UsbId.PROLIFIC_PL2303GS});
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
