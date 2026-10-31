package com.hoho.android.usbserial.driver;

import ai.onnxruntime.AbstractC0074a;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbRequest;
import android.os.Build;
import android.util.Log;
import androidx.navigation.C0674b;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import p008a7.AbstractC0027a;
import p008a7.InterfaceC0028b;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
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
    protected UsbSerialPort.FlowControl mFlowControl = UsbSerialPort.FlowControl.NONE;
    protected InterfaceC0028b mUsbRequestSupplier = new C0674b(7);
    protected final Object mWriteBufferLock = new Object();

    public CommonUsbSerialPort(UsbDevice usbDevice, int i10) {
        this.mDevice = usbDevice;
        this.mPortNumber = i10;
    }

    private boolean useReadQueue() {
        return this.mReadQueueBufferCount != 0;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.mConnection == null) {
            C2467b.m3820A("Already closed");
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

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCD() {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getCTS() {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort.ControlLine> getControlLines() {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDSR() {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDTR() {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbSerialPort.FlowControl getFlowControl() {
        return this.mFlowControl;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int getPortNumber() {
        return this.mPortNumber;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getRI() {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getRTS() {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbEndpoint getReadEndpoint() {
        return this.mReadEndpoint;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int getReadQueueBufferCount() {
        return this.mReadQueueBufferCount;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int getReadQueueBufferSize() {
        return this.mReadQueueBufferSize;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public String getSerial() {
        return this.mConnection.getSerial();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort.ControlLine> getSupportedControlLines() {
        return EnumSet.noneOf(UsbSerialPort.ControlLine.class);
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort.FlowControl> getSupportedFlowControl() {
        return EnumSet.of(UsbSerialPort.FlowControl.NONE);
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbEndpoint getWriteEndpoint() {
        return this.mWriteEndpoint;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getXON() {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean isOpen() {
        return this.mReadRequest != null;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void open(UsbDeviceConnection usbDeviceConnection) throws IOException {
        if (this.mConnection != null) {
            C2467b.m3820A("Already open");
            return;
        }
        if (usbDeviceConnection == null) {
            C1929i.m3029k("Connection is null");
            return;
        }
        this.mConnection = usbDeviceConnection;
        try {
            openInt();
            if (this.mReadEndpoint == null || this.mWriteEndpoint == null) {
                throw new IOException("Could not get read & write endpoints");
            }
            ((C0674b) this.mUsbRequestSupplier).getClass();
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

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void purgeHwBuffers(boolean z9, boolean z10) {
        throw new UnsupportedOperationException();
    }

    public int read(byte[] bArr, int i10, int i11, boolean z9) throws IOException {
        ByteBuffer byteBuffer;
        int iPosition;
        testConnection(false);
        if (i10 <= 0) {
            C1929i.m3029k("Read length too small");
            return 0;
        }
        int iMin = Math.min(i10, bArr.length);
        if (i11 == 0) {
            if (!useReadQueue()) {
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, 0, iMin);
                if (!this.mReadRequest.queue(byteBufferWrap, iMin)) {
                    C2467b.m3820A("Queueing USB request failed");
                    return 0;
                }
                byteBuffer = byteBufferWrap;
            } else {
                if (iMin != this.mReadQueueBufferSize) {
                    C1929i.m3030l("Cannot use different length if readQueue is enabled");
                    return 0;
                }
                byteBuffer = null;
            }
            UsbRequest usbRequestRequestWait = this.mConnection.requestWait();
            if (usbRequestRequestWait == null) {
                C2467b.m3820A("Waiting for USB request failed");
                return 0;
            }
            if (useReadQueue()) {
                byteBuffer = (ByteBuffer) usbRequestRequestWait.getClientData();
                System.arraycopy(byteBuffer.array(), 0, bArr, 0, byteBuffer.position());
                if (this.mReadRequest != null && !usbRequestRequestWait.queue(byteBuffer, byteBuffer.capacity())) {
                    C2467b.m3820A("Queueing USB request failed");
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
                C1929i.m3030l("Cannot use timeout!=0 if readQueue is enabled");
                return 0;
            }
            long jM90a = z9 ? AbstractC0027a.m90a() + ((long) i11) : 0L;
            if (Build.VERSION.SDK_INT < 28) {
                iMin = Math.min(iMin, 16384);
            }
            iPosition = this.mConnection.bulkTransfer(this.mReadEndpoint, bArr, iMin, i11);
            if (iPosition == -1 && z9) {
                testConnection(AbstractC0027a.m90a() < jM90a);
            }
        }
        return Math.max(iPosition, 0);
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setBreak(boolean z9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setDTR(boolean z9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setFlowControl(UsbSerialPort.FlowControl flowControl) {
        if (flowControl == UsbSerialPort.FlowControl.NONE) {
            return;
        }
        C0674b.m835a();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public abstract void setParameters(int i10, int i11, int i12, int i13);

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setRTS(boolean z9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void setReadQueue(int i10, int i11) {
        if (i10 < 0) {
            C1929i.m3029k("Invalid bufferCount");
            return;
        }
        if (i11 < 0) {
            C1929i.m3029k("Invalid bufferSize");
            return;
        }
        if (isOpen()) {
            if (i10 < this.mReadQueueBufferCount) {
                C1929i.m3030l("Cannot reduce bufferCount when port is open");
                return;
            }
            if (i11 == 0) {
                i11 = this.mReadEndpoint.getMaxPacketSize();
            }
            if (this.mReadQueueBufferSize == 0) {
                this.mReadQueueBufferSize = this.mReadEndpoint.getMaxPacketSize();
            }
            if (this.mReadQueueBufferCount != 0 && i11 != this.mReadQueueBufferSize) {
                C1929i.m3030l("Cannot change bufferSize when port is open");
                return;
            }
            if (i10 > 0) {
                if (this.mReadQueueRequests == null) {
                    this.mReadQueueRequests = new LinkedList<>();
                }
                for (int size = this.mReadQueueRequests.size(); size < i10; size++) {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i11);
                    ((C0674b) this.mUsbRequestSupplier).getClass();
                    UsbRequest usbRequest = new UsbRequest();
                    usbRequest.initialize(this.mConnection, this.mReadEndpoint);
                    usbRequest.setClientData(byteBufferAllocate);
                    usbRequest.queue(byteBufferAllocate, i11);
                    this.mReadQueueRequests.add(usbRequest);
                }
            }
        }
        this.mReadQueueBufferCount = i10;
        this.mReadQueueBufferSize = i11;
    }

    public final void setWriteBufferSize(int i10) {
        synchronized (this.mWriteBufferLock) {
            if (i10 <= 0) {
                try {
                    UsbEndpoint usbEndpoint = this.mWriteEndpoint;
                    if (usbEndpoint == null) {
                        this.mWriteBuffer = null;
                        return;
                    }
                    i10 = usbEndpoint.getMaxPacketSize();
                } catch (Throwable th) {
                    throw th;
                }
            }
            byte[] bArr = this.mWriteBuffer;
            if (bArr == null || i10 != bArr.length) {
                this.mWriteBuffer = new byte[i10];
            }
        }
    }

    public void testConnection(boolean z9, String str) throws IOException {
        if (this.mReadRequest == null) {
            C2467b.m3820A("Connection closed");
        } else if (z9) {
            if (this.mConnection.controlTransfer(128, 0, 0, 0, new byte[2], 2, 200) >= 0) {
                return;
            }
            C2467b.m3820A(str);
        }
    }

    public String toString() {
        return "<" + getClass().getSimpleName() + " device_name=" + this.mDevice.getDeviceName() + " device_id=" + this.mDevice.getDeviceId() + " port_number=" + this.mPortNumber + ">";
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        int iMin;
        byte[] bArr2;
        int iM90a;
        int iBulkTransfer;
        long jM90a = AbstractC0027a.m90a();
        int iMin2 = Math.min(i10, bArr.length);
        int i12 = 0;
        testConnection(false);
        int i13 = 0;
        while (i13 < iMin2) {
            synchronized (this.mWriteBufferLock) {
                try {
                    if (this.mWriteBuffer == null) {
                        this.mWriteBuffer = new byte[this.mWriteEndpoint.getMaxPacketSize()];
                    }
                    iMin = Math.min(iMin2 - i13, this.mWriteBuffer.length);
                    if (i13 == 0) {
                        bArr2 = bArr;
                    } else {
                        System.arraycopy(bArr, i13, this.mWriteBuffer, i12, iMin);
                        bArr2 = this.mWriteBuffer;
                    }
                    if (i11 == 0 || i13 == 0) {
                        iM90a = i11;
                    } else {
                        iM90a = (int) ((((long) i11) + jM90a) - AbstractC0027a.m90a());
                        if (iM90a == 0) {
                            iM90a = -1;
                        }
                    }
                    iBulkTransfer = iM90a < 0 ? -2 : this.mConnection.bulkTransfer(this.mWriteEndpoint, bArr2, iMin, iM90a);
                } catch (Throwable th) {
                    throw th;
                }
            }
            long jM90a2 = AbstractC0027a.m90a() - jM90a;
            if (DEBUG) {
                String str = TAG;
                StringBuilder sbM171v = AbstractC0074a.m171v("Wrote ", iBulkTransfer, iMin, "/", " offset ");
                sbM171v.append(i13);
                sbM171v.append("/");
                sbM171v.append(iMin2);
                sbM171v.append(" time ");
                sbM171v.append(jM90a2);
                sbM171v.append("/");
                sbM171v.append(iM90a);
                Log.d(str, sbM171v.toString());
            }
            if (iBulkTransfer <= 0) {
                StringBuilder sbM171v2 = AbstractC0074a.m171v("Error writing ", iMin, i13, " bytes at offset ", " of total ");
                sbM171v2.append(bArr.length);
                sbM171v2.append(" after ");
                sbM171v2.append(jM90a2);
                sbM171v2.append("msec, rc=");
                sbM171v2.append(iBulkTransfer);
                String string = sbM171v2.toString();
                if (i11 != 0) {
                    testConnection(jM90a2 < ((long) i11), string);
                    throw new SerialTimeoutException(string, i13);
                }
                C2467b.m3820A(string);
                return;
            }
            i13 += iBulkTransfer;
            i12 = 0;
        }
    }

    public void testConnection(boolean z9) throws IOException {
        testConnection(z9, "USB get_status request failed");
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int read(byte[] bArr, int i10, int i11) {
        return read(bArr, i10, i11, true);
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public int read(byte[] bArr, int i10) {
        if (bArr.length != 0) {
            return read(bArr, bArr.length, i10);
        }
        C1929i.m3029k("Read buffer too small");
        return 0;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public void write(byte[] bArr, int i10) throws IOException {
        write(bArr, bArr.length, i10);
    }
}
