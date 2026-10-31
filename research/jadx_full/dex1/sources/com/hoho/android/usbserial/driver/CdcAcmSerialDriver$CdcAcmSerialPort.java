package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import j1.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.EnumSet;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CdcAcmSerialDriver$CdcAcmSerialPort extends CommonUsbSerialPort {
    private static final int GET_LINE_CODING = 33;
    private static final int SEND_BREAK = 35;
    private static final int SET_CONTROL_LINE_STATE = 34;
    private static final int SET_LINE_CODING = 32;
    private static final int USB_RECIP_INTERFACE = 1;
    private static final int USB_RT_ACM = 33;
    private UsbEndpoint mControlEndpoint;
    private int mControlIndex;
    private UsbInterface mControlInterface;
    private UsbInterface mDataInterface;
    private boolean mDtr;
    private boolean mRts;
    final /* synthetic */ CdcAcmSerialDriver this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CdcAcmSerialDriver$CdcAcmSerialPort(CdcAcmSerialDriver cdcAcmSerialDriver, UsbDevice usbDevice, int i9) {
        super(usbDevice, i9);
        this.this$0 = cdcAcmSerialDriver;
        this.mRts = false;
        this.mDtr = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getInterfaceIdFromDescriptors() {
        int length;
        UsbDeviceConnection usbDeviceConnection = this.mConnection;
        ArrayList arrayList = new ArrayList();
        byte[] rawDescriptors = usbDeviceConnection.getRawDescriptors();
        if (rawDescriptors != null) {
            int i9 = 0;
            while (i9 < rawDescriptors.length && (length = rawDescriptors[i9] & 255) != 0) {
                if (i9 + length > rawDescriptors.length) {
                    length = rawDescriptors.length - i9;
                }
                byte[] bArr = new byte[length];
                System.arraycopy(rawDescriptors, i9, bArr, 0, length);
                arrayList.add(bArr);
                i9 += length;
            }
        }
        Log.d(CdcAcmSerialDriver.access$000(this.this$0), "USB descriptor:");
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            byte[] bArr2 = (byte[]) obj;
            String strAccess$000 = CdcAcmSerialDriver.access$000(this.this$0);
            int length2 = bArr2.length;
            char[] cArr = new char[length2 > 0 ? (length2 * 3) - 1 : 0];
            int i11 = 0;
            for (int i12 = 0; i12 < length2; i12++) {
                if (i12 > 0) {
                    cArr[i11] = ' ';
                    i11++;
                }
                byte b9 = bArr2[i12];
                int i13 = i11 + 1;
                char[] cArr2 = a7.a.f53a;
                cArr[i11] = cArr2[(b9 >>> 4) & 15];
                i11 += 2;
                cArr[i13] = cArr2[b9 & 15];
            }
            Log.d(strAccess$000, new String(cArr));
        }
        if (arrayList.size() > 0 && ((byte[]) arrayList.get(0)).length == 18 && ((byte[]) arrayList.get(0))[1] == 1 && ((byte[]) arrayList.get(0))[4] == -17 && ((byte[]) arrayList.get(0))[5] == 2 && ((byte[]) arrayList.get(0))[6] == 1) {
            int i14 = -1;
            for (int i15 = 1; i15 < arrayList.size(); i15++) {
                if (((byte[]) arrayList.get(i15)).length == 8 && ((byte[]) arrayList.get(i15))[1] == 11 && ((byte[]) arrayList.get(i15))[4] == 2 && ((byte[]) arrayList.get(i15))[5] == 2 && (i14 = i14 + 1) == this.mPortNumber && ((byte[]) arrayList.get(i15))[3] == 2) {
                    return ((byte[]) arrayList.get(i15))[2];
                }
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void openInterface() throws IOException {
        this.mControlInterface = null;
        this.mDataInterface = null;
        int interfaceIdFromDescriptors = getInterfaceIdFromDescriptors();
        Log.d(CdcAcmSerialDriver.access$000(this.this$0), "interface count=" + this.mDevice.getInterfaceCount() + ", IAD=" + interfaceIdFromDescriptors);
        if (interfaceIdFromDescriptors >= 0) {
            for (int i9 = 0; i9 < this.mDevice.getInterfaceCount(); i9++) {
                UsbInterface usbInterface = this.mDevice.getInterface(i9);
                if (usbInterface.getId() == interfaceIdFromDescriptors || usbInterface.getId() == interfaceIdFromDescriptors + 1) {
                    if (usbInterface.getInterfaceClass() == 2 && usbInterface.getInterfaceSubclass() == 2) {
                        this.mControlIndex = usbInterface.getId();
                        this.mControlInterface = usbInterface;
                    }
                    if (usbInterface.getInterfaceClass() == 10) {
                        this.mDataInterface = usbInterface;
                    }
                }
            }
        }
        if (this.mControlInterface == null || this.mDataInterface == null) {
            Log.d(CdcAcmSerialDriver.access$000(this.this$0), "no IAD fallback");
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < this.mDevice.getInterfaceCount(); i12++) {
                UsbInterface usbInterface2 = this.mDevice.getInterface(i12);
                if (usbInterface2.getInterfaceClass() == 2 && usbInterface2.getInterfaceSubclass() == 2) {
                    if (i10 == this.mPortNumber) {
                        this.mControlIndex = usbInterface2.getId();
                        this.mControlInterface = usbInterface2;
                    }
                    i10++;
                }
                if (usbInterface2.getInterfaceClass() == 10) {
                    if (i11 == this.mPortNumber) {
                        this.mDataInterface = usbInterface2;
                    }
                    i11++;
                }
            }
        }
        if (this.mControlInterface == null) {
            b.A("No control interface");
            return;
        }
        Log.d(CdcAcmSerialDriver.access$000(this.this$0), "Control interface id " + this.mControlInterface.getId());
        if (!this.mConnection.claimInterface(this.mControlInterface, true)) {
            b.A("Could not claim control interface");
            return;
        }
        UsbEndpoint endpoint = this.mControlInterface.getEndpoint(0);
        this.mControlEndpoint = endpoint;
        if (endpoint.getDirection() != 128 || this.mControlEndpoint.getType() != 3) {
            b.A("Invalid control endpoint");
            return;
        }
        if (this.mDataInterface == null) {
            b.A("No data interface");
            return;
        }
        Log.d(CdcAcmSerialDriver.access$000(this.this$0), "data interface id " + this.mDataInterface.getId());
        if (!this.mConnection.claimInterface(this.mDataInterface, true)) {
            b.A("Could not claim data interface");
            return;
        }
        for (int i13 = 0; i13 < this.mDataInterface.getEndpointCount(); i13++) {
            UsbEndpoint endpoint2 = this.mDataInterface.getEndpoint(i13);
            if (endpoint2.getDirection() == 128 && endpoint2.getType() == 2) {
                this.mReadEndpoint = endpoint2;
            }
            if (endpoint2.getDirection() == 0 && endpoint2.getType() == 2) {
                this.mWriteEndpoint = endpoint2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void openSingleInterface() throws IOException {
        this.mControlIndex = 0;
        this.mControlInterface = this.mDevice.getInterface(0);
        this.mDataInterface = this.mDevice.getInterface(0);
        if (!this.mConnection.claimInterface(this.mControlInterface, true)) {
            b.A("Could not claim shared control/data interface");
            return;
        }
        for (int i9 = 0; i9 < this.mControlInterface.getEndpointCount(); i9++) {
            UsbEndpoint endpoint = this.mControlInterface.getEndpoint(i9);
            if (endpoint.getDirection() == 128 && endpoint.getType() == 3) {
                this.mControlEndpoint = endpoint;
            } else if (endpoint.getDirection() == 128 && endpoint.getType() == 2) {
                this.mReadEndpoint = endpoint;
            } else if (endpoint.getDirection() == 0 && endpoint.getType() == 2) {
                this.mWriteEndpoint = endpoint;
            }
        }
        if (this.mControlEndpoint != null) {
            return;
        }
        b.A("No control endpoint");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int sendAcmControlMessage(int i9, int i10, byte[] bArr) throws IOException {
        int iControlTransfer = this.mConnection.controlTransfer(33, i9, i10, this.mControlIndex, bArr, bArr != null ? bArr.length : 0, 5000);
        if (iControlTransfer >= 0) {
            return iControlTransfer;
        }
        b.A("controlTransfer failed");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setDtrRts() throws IOException {
        sendAcmControlMessage(34, (this.mRts ? 2 : 0) | (this.mDtr ? 1 : 0), null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void closeInt() {
        try {
            this.mConnection.releaseInterface(this.mControlInterface);
            this.mConnection.releaseInterface(this.mDataInterface);
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getControlLines() {
        EnumSet<UsbSerialPort$ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort$ControlLine.class);
        if (this.mRts) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.RTS);
        }
        if (this.mDtr) {
            enumSetNoneOf.add(UsbSerialPort$ControlLine.DTR);
        }
        return enumSetNoneOf;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getDTR() {
        return this.mDtr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialPort
    public UsbSerialDriver getDriver() {
        return this.this$0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public boolean getRTS() {
        return this.mRts;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public EnumSet<UsbSerialPort$ControlLine> getSupportedControlLines() {
        return EnumSet.of(UsbSerialPort$ControlLine.RTS, UsbSerialPort$ControlLine.DTR);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
    public void openInt() throws IOException {
        Log.d(CdcAcmSerialDriver.access$000(this.this$0), "interfaces:");
        for (int i9 = 0; i9 < this.mDevice.getInterfaceCount(); i9++) {
            Log.d(CdcAcmSerialDriver.access$000(this.this$0), this.mDevice.getInterface(i9).toString());
        }
        int i10 = this.mPortNumber;
        CdcAcmSerialDriver cdcAcmSerialDriver = this.this$0;
        if (i10 == -1) {
            Log.d(CdcAcmSerialDriver.access$000(cdcAcmSerialDriver), "device might be castrated ACM device, trying single interface logic");
            openSingleInterface();
        } else {
            Log.d(CdcAcmSerialDriver.access$000(cdcAcmSerialDriver), "trying default interface logic");
            openInterface();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setBreak(boolean z8) throws IOException {
        sendAcmControlMessage(35, z8 ? 65535 : 0, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setDTR(boolean z8) throws IOException {
        this.mDtr = z8;
        setDtrRts();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setParameters(int i9, int i10, int i11, int i12) throws IOException {
        byte b9;
        byte b10;
        if (i9 <= 0) {
            i.k(ai.onnxruntime.a.e(i9, "Invalid baud rate: "));
            return;
        }
        if (i10 < 5 || i10 > 8) {
            i.k(ai.onnxruntime.a.e(i10, "Invalid data bits: "));
            return;
        }
        if (i11 == 1) {
            b9 = 0;
        } else if (i11 == 2) {
            b9 = 2;
        } else {
            if (i11 != 3) {
                i.k(ai.onnxruntime.a.e(i11, "Invalid stop bits: "));
                return;
            }
            b9 = 1;
        }
        if (i12 == 0) {
            b10 = 0;
        } else if (i12 == 1) {
            b10 = 1;
        } else if (i12 == 2) {
            b10 = 2;
        } else if (i12 == 3) {
            b10 = 3;
        } else {
            if (i12 != 4) {
                i.k(ai.onnxruntime.a.e(i12, "Invalid parity: "));
                return;
            }
            b10 = 4;
        }
        sendAcmControlMessage(32, 0, new byte[]{(byte) (i9 & 255), (byte) ((i9 >> 8) & 255), (byte) ((i9 >> 16) & 255), (byte) ((i9 >> 24) & 255), b9, b10, (byte) i10});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
    public void setRTS(boolean z8) throws IOException {
        this.mRts = z8;
        setDtrRts();
    }
}
