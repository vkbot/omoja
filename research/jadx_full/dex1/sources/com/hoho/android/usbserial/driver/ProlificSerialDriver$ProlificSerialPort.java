package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import androidx.navigation.b;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import j1.i;
import java.io.IOException;
import java.util.EnumSet;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ProlificSerialDriver$ProlificSerialPort extends CommonUsbSerialPort {
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
    protected ProlificSerialDriver$DeviceType mDeviceType;
    private UsbEndpoint mInterruptEndpoint;
    private int mParity;
    private Exception mReadStatusException;
    private volatile Thread mReadStatusThread;
    private final Object mReadStatusThreadLock;
    private int mStatus;
    private int mStopBits;
    private boolean mStopReadStatusThread;
    final /* synthetic */ ProlificSerialDriver this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProlificSerialDriver$ProlificSerialPort(ProlificSerialDriver prolificSerialDriver, UsbDevice usbDevice, int i9) {
        super(usbDevice, i9);
        this.this$0 = prolificSerialDriver;
        this.mDeviceType = ProlificSerialDriver$DeviceType.DEVICE_TYPE_HX;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(ProlificSerialDriver$ProlificSerialPort prolificSerialDriver$ProlificSerialPort) {
        prolificSerialDriver$ProlificSerialPort.readStatusThreadFunction();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ctrlOut(int i9, int i10, int i11, byte[] bArr) throws IOException {
        outControlTransfer(33, i9, i10, i11, bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void doBlackMagic() throws IOException {
        if (this.mDeviceType == ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN) {
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
        vendorOut(2, this.mDeviceType == ProlificSerialDriver$DeviceType.DEVICE_TYPE_01 ? 36 : 68, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int filterBaudRate(int i9) {
        int i10;
        int i11;
        if (i9 <= 0) {
            i.k(ai.onnxruntime.a.e(i9, "Invalid baud rate: "));
            return 0;
        }
        if (this.mDeviceType != ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN) {
            int i12 = 0;
            for (int i13 : ProlificSerialDriver.access$100()) {
                if (i13 != i9) {
                }
            }
            int i14 = 384000000 / i9;
            if (i14 == 0) {
                b.g("Baud rate to high");
                return 0;
            }
            if (this.mDeviceType == ProlificSerialDriver$DeviceType.DEVICE_TYPE_T) {
                while (i14 >= 2048) {
                    if (i12 >= 15) {
                        b.g("Baud rate to low");
                        return 0;
                    }
                    i14 >>= 1;
                    i12++;
                }
                i10 = ((((i12 & (-2)) << 12) + i14) + ((i12 & 1) << 16)) - Integer.MIN_VALUE;
                i11 = (384000000 / i14) >> i12;
            } else {
                while (i14 >= 512) {
                    if (i12 >= 7) {
                        b.g("Baud rate to low");
                        return 0;
                    }
                    i14 >>= 2;
                    i12++;
                }
                i10 = ((i12 << 9) + i14) - Integer.MIN_VALUE;
                i11 = (384000000 / i14) >> (i12 << 1);
            }
            double dAbs = Math.abs(1.0d - (((double) i11) / ((double) i9)));
            if (dAbs >= 0.031d) {
                throw new UnsupportedOperationException(String.format("Baud rate deviation %.1f%% is higher than allowed 3%%", Double.valueOf(dAbs * 100.0d)));
            }
            Log.d(ProlificSerialDriver.access$000(this.this$0), String.format("baud rate=%d, effective=%d, error=%.1f%%, value=0x%08x, mantissa=%d, exponent=%d", Integer.valueOf(i9), Integer.valueOf(i11), Double.valueOf(dAbs * 100.0d), Integer.valueOf(i10), Integer.valueOf(i14), Integer.valueOf(i12)));
            return i10;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getStatus() throws IOException {
        if (this.mReadStatusThread == null && this.mReadStatusException == null) {
            synchronized (this.mReadStatusThreadLock) {
                try {
                    if (this.mReadStatusThread == null) {
                        this.mStatus = 0;
                        if (this.mDeviceType == ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN) {
                            byte b9 = vendorIn(128, 0, 1)[0];
                            if ((b9 & 8) == 0) {
                                this.mStatus |= 128;
                            }
                            if ((b9 & 32) == 0) {
                                this.mStatus |= 2;
                            }
                            if ((b9 & 64) == 0) {
                                this.mStatus |= 1;
                            }
                            if ((b9 & ByteCompanionObject.MIN_VALUE) == 0) {
                                this.mStatus |= 8;
                            }
                        } else {
                            byte b10 = vendorIn(GET_CONTROL_REQUEST, 0, 1)[0];
                            if ((b10 & 8) == 0) {
                                this.mStatus |= 128;
                            }
                            if ((b10 & 4) == 0) {
                                this.mStatus |= 2;
                            }
                            if ((b10 & 2) == 0) {
                                this.mStatus |= 1;
                            }
                            if ((b10 & 1) == 0) {
                                this.mStatus |= 8;
                            }
                        }
                        this.mReadStatusThread = new Thread(new a(this));
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte[] inControlTransfer(int i9, int i10, int i11, int i12, int i13) throws IOException {
        byte[] bArr = new byte[i13];
        int iControlTransfer = this.mConnection.controlTransfer(i9, i10, i11, i12, bArr, i13, 1000);
        if (iControlTransfer == i13) {
            return bArr;
        }
        throw new IOException(String.format("ControlTransfer %s 0x%x failed: %d", this.mDeviceType.name(), Integer.valueOf(i11), Integer.valueOf(iControlTransfer)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void outControlTransfer(int i9, int i10, int i11, int i12, byte[] bArr) throws IOException {
        int length = bArr == null ? 0 : bArr.length;
        int iControlTransfer = this.mConnection.controlTransfer(i9, i10, i11, i12, bArr, length, USB_WRITE_TIMEOUT_MILLIS);
        if (iControlTransfer != length) {
            throw new IOException(String.format("ControlTransfer %s 0x%x failed: %d", this.mDeviceType.name(), Integer.valueOf(i11), Integer.valueOf(iControlTransfer)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void readStatusThreadFunction() {
        try {
            byte[] bArr = new byte[10];
            while (!this.mStopReadStatusThread) {
                long jA = a7.a.a() + 500;
                int iBulkTransfer = this.mConnection.bulkTransfer(this.mInterruptEndpoint, bArr, 10, 500);
                if (iBulkTransfer == -1) {
                    testConnection(a7.a.a() < jA);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resetDevice() throws IOException {
        purgeHwBuffers(true, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setControlLines(int i9) throws IOException {
        ctrlOut(34, i9, 0, null);
        this.mControlLinesValue = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean testHxStatus() {
        try {
            inControlTransfer(VENDOR_IN_REQTYPE, 1, 32896, 0, 1);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean testStatusFlag(int i9) {
        return (getStatus() & i9) == i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte[] vendorIn(int i9, int i10, int i11) {
        return inControlTransfer(VENDOR_IN_REQTYPE, this.mDeviceType == ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN ? 129 : 1, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void vendorOut(int i9, int i10, byte[] bArr) throws IOException {
        outControlTransfer(64, this.mDeviceType == ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN ? 128 : 1, i9, i10, bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void closeInt() {
        try {
            synchronized (this.mReadStatusThreadLock) {
                if (this.mReadStatusThread != null) {
                    try {
                        this.mStopReadStatusThread = true;
                        this.mReadStatusThread.join();
                    } catch (Exception e) {
                        Log.w(ProlificSerialDriver.access$000(this.this$0), "An error occured while waiting for status read thread", e);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCD() {
        return testStatusFlag(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCTS() {
        return testStatusFlag(128);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getControlLines() throws IOException {
        int status = getStatus();
        EnumSet<UsbSerialPort$ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort$ControlLine.class);
        if ((this.mControlLinesValue & 2) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.RTS);
        }
        if ((status & 128) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.CTS);
        }
        if ((this.mControlLinesValue & 1) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.DTR);
        }
        if ((status & 2) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.DSR);
        }
        if ((status & 1) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.CD);
        }
        if ((status & 8) != 0) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.RI);
        }
        return enumSetNoneOf;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDSR() {
        return testStatusFlag(2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDTR() {
        return (this.mControlLinesValue & 1) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbSerialDriver getDriver() {
        return this.this$0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getRI() {
        return testStatusFlag(8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getRTS() {
        return (this.mControlLinesValue & 2) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getSupportedControlLines() {
        return EnumSet.allOf(UsbSerialPort$ControlLine.class);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$FlowControl> getSupportedFlowControl() {
        return EnumSet.of(UsbSerialPort$FlowControl.NONE, UsbSerialPort$FlowControl.RTS_CTS, UsbSerialPort$FlowControl.XON_XOFF_INLINE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void openInt() throws IOException {
        UsbInterface usbInterface = this.mDevice.getInterface(0);
        if (!this.mConnection.claimInterface(usbInterface, true)) {
            n0.b.A("Error claiming Prolific interface 0");
            return;
        }
        for (int i9 = 0; i9 < usbInterface.getEndpointCount(); i9++) {
            UsbEndpoint endpoint = usbInterface.getEndpoint(i9);
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
            n0.b.A("Could not get device descriptors");
            return;
        }
        int i10 = (rawDescriptors[3] << 8) + rawDescriptors[2];
        int i11 = (rawDescriptors[13] << 8) + rawDescriptors[12];
        byte b9 = rawDescriptors[7];
        if (this.mDevice.getDeviceClass() == 2 || b9 != 64) {
            this.mDeviceType = ProlificSerialDriver$DeviceType.DEVICE_TYPE_01;
        } else if (i10 != 512) {
            this.mDeviceType = ProlificSerialDriver$DeviceType.DEVICE_TYPE_HX;
        } else if (i11 == 768 && testHxStatus()) {
            this.mDeviceType = ProlificSerialDriver$DeviceType.DEVICE_TYPE_T;
        } else if (i11 == 1280 && testHxStatus()) {
            this.mDeviceType = ProlificSerialDriver$DeviceType.DEVICE_TYPE_T;
        } else {
            this.mDeviceType = ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN;
        }
        Log.d(ProlificSerialDriver.access$000(this.this$0), String.format("usbVersion=%x, deviceVersion=%x, deviceClass=%d, packetSize=%d => deviceType=%s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(this.mDevice.getDeviceClass()), Byte.valueOf(b9), this.mDeviceType.name()));
        resetDevice();
        doBlackMagic();
        setControlLines(this.mControlLinesValue);
        setFlowControl(this.mFlowControl);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.hoho.android.usbserial.driver.ProlificSerialDriver$ProlificSerialPort] */
    /* JADX WARN: Type inference failed for: r4v3, types: [int] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void purgeHwBuffers(boolean z8, boolean z9) throws IOException {
        int i9;
        ?? r9 = z8;
        if (this.mDeviceType != ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN) {
            if (z8) {
                vendorOut(8, 0, null);
            }
            if (z9) {
                vendorOut(9, 0, null);
                return;
            }
            return;
        }
        if (z9) {
            i9 = (z8 ? 1 : 0) | 2;
        }
        if (r9 == 0) {
            r9 = i9;
            return;
        } else {
            r9 = i9;
            vendorOut(7, r9, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setBreak(boolean z8) throws IOException {
        ctrlOut(35, z8 ? 65535 : 0, 0, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setDTR(boolean z8) throws IOException {
        int i9 = this.mControlLinesValue;
        setControlLines(z8 ? i9 | 1 : i9 & (-2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setFlowControl(UsbSerialPort$FlowControl usbSerialPort$FlowControl) throws IOException {
        int i9 = ProlificSerialDriver$1.$SwitchMap$com$hoho$android$usbserial$driver$UsbSerialPort$FlowControl[usbSerialPort$FlowControl.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    b.a();
                    return;
                } else if (this.mDeviceType == ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN) {
                    vendorOut(10, 238, null);
                } else {
                    vendorOut(0, 193, null);
                }
            } else if (this.mDeviceType == ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN) {
                vendorOut(10, ItemTouchHelper$Callback.DEFAULT_SWIPE_ANIMATION_DURATION, null);
            } else {
                vendorOut(0, 97, null);
            }
        } else if (this.mDeviceType == ProlificSerialDriver$DeviceType.DEVICE_TYPE_HXN) {
            vendorOut(10, 255, null);
        } else {
            vendorOut(0, 0, null);
        }
        this.mFlowControl = usbSerialPort$FlowControl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setParameters(int i9, int i10, int i11, int i12) throws IOException {
        int iFilterBaudRate = filterBaudRate(i9);
        if (this.mBaudRate == iFilterBaudRate && this.mDataBits == i10 && this.mStopBits == i11 && this.mParity == i12) {
            return;
        }
        byte[] bArr = new byte[7];
        bArr[0] = (byte) (iFilterBaudRate & 255);
        bArr[1] = (byte) ((iFilterBaudRate >> 8) & 255);
        bArr[2] = (byte) ((iFilterBaudRate >> 16) & 255);
        bArr[3] = (byte) ((iFilterBaudRate >> 24) & 255);
        if (i11 == 1) {
            bArr[4] = 0;
        } else if (i11 == 2) {
            bArr[4] = 2;
        } else {
            if (i11 != 3) {
                i.k(ai.onnxruntime.a.e(i11, "Invalid stop bits: "));
                return;
            }
            bArr[4] = 1;
        }
        if (i12 == 0) {
            bArr[5] = 0;
        } else if (i12 == 1) {
            bArr[5] = 1;
        } else if (i12 == 2) {
            bArr[5] = 2;
        } else if (i12 == 3) {
            bArr[5] = 3;
        } else {
            if (i12 != 4) {
                i.k(ai.onnxruntime.a.e(i12, "Invalid parity: "));
                return;
            }
            bArr[5] = 4;
        }
        if (i10 < 5 || i10 > 8) {
            i.k(ai.onnxruntime.a.e(i10, "Invalid data bits: "));
            return;
        }
        bArr[6] = (byte) i10;
        ctrlOut(32, 0, 0, bArr);
        resetDevice();
        this.mBaudRate = iFilterBaudRate;
        this.mDataBits = i10;
        this.mStopBits = i11;
        this.mParity = i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setRTS(boolean z8) throws IOException {
        int i9 = this.mControlLinesValue;
        setControlLines(z8 ? i9 | 2 : i9 & (-3));
    }
}
