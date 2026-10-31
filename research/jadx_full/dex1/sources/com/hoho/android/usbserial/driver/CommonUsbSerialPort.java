package com.hoho.android.usbserial.driver;

import a7.b;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbRequest;
import android.os.Build$VERSION;
import android.util.Log;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import j1.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class CommonUsbSerialPort implements UsbSerialPort {
    public static boolean DEBUG = false;
    private static final int MAX_READ_SIZE = 16384;
    private static final String TAG = "CommonUsbSerialPort";
    protected UsbDeviceConnection mConnection;
    protected final UsbDevice mDevice;
    protected final int mPortNumber;
    protected UsbEndpoint mReadEndpoint;
    private int mReadQueueBufferCount;
    private int mReadQueueBufferSize;
    protected LinkedList<UsbRequest> mReadQueueRequests;
    protected UsbRequest mReadRequest;
    protected byte[] mWriteBuffer;
    protected UsbEndpoint mWriteEndpoint;
    protected UsbSerialPort$FlowControl mFlowControl = UsbSerialPort$FlowControl.NONE;
    protected b mUsbRequestSupplier = new androidx.navigation.b(7);
    protected final Object mWriteBufferLock = new Object();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CommonUsbSerialPort(UsbDevice usbDevice, int i9) {
        this.mDevice = usbDevice;
        this.mPortNumber = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean useReadQueue() {
        return this.mReadQueueBufferCount != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.mConnection == null) {
            n0.b.A("Already closed");
            return;
        }
        UsbRequest usbRequest = this.mReadRequest;
        this.mReadRequest = null;
        try {
            usbRequest.cancel();
        } catch (Exception unused) {
        }
        LinkedList<UsbRequest> linkedList = this.mReadQueueRequests;
        if (linkedList != null) {
            Iterator<UsbRequest> it = linkedList.iterator();
            while (it.hasNext()) {
                try {
                    it.next().cancel();
                } catch (Exception unused2) {
                }
            }
            this.mReadQueueRequests = null;
        }
        try {
            closeInt();
        } catch (Exception unused3) {
        }
        try {
            this.mConnection.close();
        } catch (Exception unused4) {
        }
        this.mConnection = null;
    }

    public abstract void closeInt();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCD() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCTS() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getControlLines() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDSR() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDTR() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbSerialPort$FlowControl getFlowControl() {
        return this.mFlowControl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int getPortNumber() {
        return this.mPortNumber;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getRI() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getRTS() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbEndpoint getReadEndpoint() {
        return this.mReadEndpoint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int getReadQueueBufferCount() {
        return this.mReadQueueBufferCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int getReadQueueBufferSize() {
        return this.mReadQueueBufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public String getSerial() {
        return this.mConnection.getSerial();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getSupportedControlLines() {
        return EnumSet.noneOf(UsbSerialPort$ControlLine.class);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$FlowControl> getSupportedFlowControl() {
        return EnumSet.of(UsbSerialPort$FlowControl.NONE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbEndpoint getWriteEndpoint() {
        return this.mWriteEndpoint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getXON() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean isOpen() {
        return this.mReadRequest != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void open(UsbDeviceConnection usbDeviceConnection) throws IOException {
        if (this.mConnection != null) {
            n0.b.A("Already open");
            return;
        }
        if (usbDeviceConnection == null) {
            i.k("Connection is null");
            return;
        }
        this.mConnection = usbDeviceConnection;
        try {
            openInt();
            if (this.mReadEndpoint == null || this.mWriteEndpoint == null) {
                throw new IOException("Could not get read & write endpoints");
            }
            ((androidx.navigation.b) this.mUsbRequestSupplier).getClass();
            UsbRequest usbRequest = new UsbRequest();
            this.mReadRequest = usbRequest;
            usbRequest.initialize(this.mConnection, this.mReadEndpoint);
            setReadQueue(this.mReadQueueBufferCount, this.mReadQueueBufferSize);
        } catch (Throwable th) {
            try {
                close();
            } catch (Exception unused) {
            }
            throw th;
        }
    }

    public abstract void openInt();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void purgeHwBuffers(boolean z8, boolean z9) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int read(byte[] bArr, int i9, int i10, boolean z8) throws IOException {
        ByteBuffer byteBuffer;
        int iPosition;
        testConnection(false);
        if (i9 <= 0) {
            i.k("Read length too small");
            return 0;
        }
        int iMin = Math.min(i9, bArr.length);
        if (i10 == 0) {
            if (!useReadQueue()) {
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, 0, iMin);
                if (!this.mReadRequest.queue(byteBufferWrap, iMin)) {
                    n0.b.A("Queueing USB request failed");
                    return 0;
                }
                byteBuffer = byteBufferWrap;
            } else {
                if (iMin != this.mReadQueueBufferSize) {
                    i.l("Cannot use different length if readQueue is enabled");
                    return 0;
                }
                byteBuffer = null;
            }
            UsbRequest usbRequestRequestWait = this.mConnection.requestWait();
            if (usbRequestRequestWait == null) {
                n0.b.A("Waiting for USB request failed");
                return 0;
            }
            if (useReadQueue()) {
                byteBuffer = (ByteBuffer) usbRequestRequestWait.getClientData();
                System.arraycopy(byteBuffer.array(), 0, bArr, 0, byteBuffer.position());
                if (this.mReadRequest != null && !usbRequestRequestWait.queue(byteBuffer, byteBuffer.capacity())) {
                    n0.b.A("Queueing USB request failed");
                    return 0;
                }
            }
            Objects.requireNonNull(byteBuffer);
            iPosition = byteBuffer.position();
            if (iPosition == 0) {
                testConnection(true);
            }
        } else {
            if (useReadQueue()) {
                i.l("Cannot use timeout!=0 if readQueue is enabled");
                return 0;
            }
            long jA = z8 ? a7.a.a() + ((long) i10) : 0L;
            if (Build$VERSION.SDK_INT < 28) {
                iMin = Math.min(iMin, 16384);
            }
            iPosition = this.mConnection.bulkTransfer(this.mReadEndpoint, bArr, iMin, i10);
            if (iPosition == -1 && z8) {
                testConnection(a7.a.a() < jA);
            }
        }
        return Math.max(iPosition, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setBreak(boolean z8) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setDTR(boolean z8) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setFlowControl(UsbSerialPort$FlowControl usbSerialPort$FlowControl) {
        if (usbSerialPort$FlowControl == UsbSerialPort$FlowControl.NONE) {
            return;
        }
        androidx.navigation.b.a();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public abstract void setParameters(int i9, int i10, int i11, int i12);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setRTS(boolean z8) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setReadQueue(int i9, int i10) {
        if (i9 < 0) {
            i.k("Invalid bufferCount");
            return;
        }
        if (i10 < 0) {
            i.k("Invalid bufferSize");
            return;
        }
        if (isOpen()) {
            if (i9 < this.mReadQueueBufferCount) {
                i.l("Cannot reduce bufferCount when port is open");
                return;
            }
            if (i10 == 0) {
                i10 = this.mReadEndpoint.getMaxPacketSize();
            }
            if (this.mReadQueueBufferSize == 0) {
                this.mReadQueueBufferSize = this.mReadEndpoint.getMaxPacketSize();
            }
            if (this.mReadQueueBufferCount != 0 && i10 != this.mReadQueueBufferSize) {
                i.l("Cannot change bufferSize when port is open");
                return;
            }
            if (i9 > 0) {
                if (this.mReadQueueRequests == null) {
                    this.mReadQueueRequests = new LinkedList<>();
                }
                for (int size = this.mReadQueueRequests.size(); size < i9; size++) {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
                    ((androidx.navigation.b) this.mUsbRequestSupplier).getClass();
                    UsbRequest usbRequest = new UsbRequest();
                    usbRequest.initialize(this.mConnection, this.mReadEndpoint);
                    usbRequest.setClientData(byteBufferAllocate);
                    usbRequest.queue(byteBufferAllocate, i10);
                    this.mReadQueueRequests.add(usbRequest);
                }
            }
        }
        this.mReadQueueBufferCount = i9;
        this.mReadQueueBufferSize = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setWriteBufferSize(int i9) {
        synchronized (this.mWriteBufferLock) {
            if (i9 <= 0) {
                try {
                    UsbEndpoint usbEndpoint = this.mWriteEndpoint;
                    if (usbEndpoint == null) {
                        this.mWriteBuffer = null;
                        return;
                    }
                    i9 = usbEndpoint.getMaxPacketSize();
                } catch (Throwable th) {
                    throw th;
                }
            }
            byte[] bArr = this.mWriteBuffer;
            if (bArr == null || i9 != bArr.length) {
                this.mWriteBuffer = new byte[i9];
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void testConnection(boolean z8, String str) throws IOException {
        if (this.mReadRequest == null) {
            n0.b.A("Connection closed");
        } else if (z8) {
            if (this.mConnection.controlTransfer(128, 0, 0, 0, new byte[2], 2, ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION) >= 0) {
                return;
            }
            n0.b.A(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "<" + getClass().getSimpleName() + " device_name=" + this.mDevice.getDeviceName() + " device_id=" + this.mDevice.getDeviceId() + " port_number=" + this.mPortNumber + ">";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void write(byte[] bArr, int i9, int i10) throws IOException {
        int iMin;
        byte[] bArr2;
        int iA;
        int iBulkTransfer;
        long jA = a7.a.a();
        int iMin2 = Math.min(i9, bArr.length);
        int i11 = 0;
        testConnection(false);
        int i12 = 0;
        while (i12 < iMin2) {
            synchronized (this.mWriteBufferLock) {
                try {
                    if (this.mWriteBuffer == null) {
                        this.mWriteBuffer = new byte[this.mWriteEndpoint.getMaxPacketSize()];
                    }
                    iMin = Math.min(iMin2 - i12, this.mWriteBuffer.length);
                    if (i12 == 0) {
                        bArr2 = bArr;
                    } else {
                        System.arraycopy(bArr, i12, this.mWriteBuffer, i11, iMin);
                        bArr2 = this.mWriteBuffer;
                    }
                    if (i10 == 0 || i12 == 0) {
                        iA = i10;
                    } else {
                        iA = (int) ((((long) i10) + jA) - a7.a.a());
                        if (iA == 0) {
                            iA = -1;
                        }
                    }
                    iBulkTransfer = iA < 0 ? -2 : this.mConnection.bulkTransfer(this.mWriteEndpoint, bArr2, iMin, iA);
                } catch (Throwable th) {
                    throw th;
                }
            }
            long jA2 = a7.a.a() - jA;
            if (DEBUG) {
                String str = TAG;
                StringBuilder sbV = ai.onnxruntime.a.v("Wrote ", iBulkTransfer, iMin, "/", " offset ");
                sbV.append(i12);
                sbV.append("/");
                sbV.append(iMin2);
                sbV.append(" time ");
                sbV.append(jA2);
                sbV.append("/");
                sbV.append(iA);
                Log.d(str, sbV.toString());
            }
            if (iBulkTransfer <= 0) {
                StringBuilder sbV2 = ai.onnxruntime.a.v("Error writing ", iMin, i12, " bytes at offset ", " of total ");
                sbV2.append(bArr.length);
                sbV2.append(" after ");
                sbV2.append(jA2);
                sbV2.append("msec, rc=");
                sbV2.append(iBulkTransfer);
                String string = sbV2.toString();
                if (i10 != 0) {
                    testConnection(jA2 < ((long) i10), string);
                    throw new SerialTimeoutException(string, i12);
                }
                n0.b.A(string);
                return;
            }
            i12 += iBulkTransfer;
            i11 = 0;
        }
    }

    public void testConnection(boolean z8) throws IOException {
        testConnection(z8, "USB get_status request failed");
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int read(byte[] bArr, int i9, int i10) {
        return read(bArr, i9, i10, true);
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int read(byte[] bArr, int i9) {
        if (bArr.length != 0) {
            return read(bArr, bArr.length, i9);
        }
        i.k("Read buffer too small");
        return 0;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void write(byte[] bArr, int i9) throws IOException {
        write(bArr, bArr.length, i9);
    }
}
