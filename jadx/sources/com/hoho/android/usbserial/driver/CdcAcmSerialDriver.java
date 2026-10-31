package com.hoho.android.usbserial.driver;

import ai.onnxruntime.AbstractC0074a;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.net.tftp.TFTP;
import p008a7.AbstractC0027a;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class CdcAcmSerialDriver implements UsbSerialDriver {
    public static final int USB_SUBCLASS_ACM = 2;
    private final UsbDevice mDevice;
    private final String TAG = "CdcAcmSerialDriver";
    private final List<UsbSerialPort> mPorts = new ArrayList();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class CdcAcmSerialPort extends CommonUsbSerialPort {
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

        public CdcAcmSerialPort(UsbDevice usbDevice, int i10) {
            super(usbDevice, i10);
            this.mRts = false;
            this.mDtr = false;
        }

        private int getInterfaceIdFromDescriptors() {
            int length;
            UsbDeviceConnection usbDeviceConnection = this.mConnection;
            ArrayList arrayList = new ArrayList();
            byte[] rawDescriptors = usbDeviceConnection.getRawDescriptors();
            if (rawDescriptors != null) {
                int i10 = 0;
                while (i10 < rawDescriptors.length && (length = rawDescriptors[i10] & 255) != 0) {
                    if (i10 + length > rawDescriptors.length) {
                        length = rawDescriptors.length - i10;
                    }
                    byte[] bArr = new byte[length];
                    System.arraycopy(rawDescriptors, i10, bArr, 0, length);
                    arrayList.add(bArr);
                    i10 += length;
                }
            }
            Log.d(CdcAcmSerialDriver.this.TAG, "USB descriptor:");
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                byte[] bArr2 = (byte[]) obj;
                String str = CdcAcmSerialDriver.this.TAG;
                int length2 = bArr2.length;
                char[] cArr = new char[length2 > 0 ? (length2 * 3) - 1 : 0];
                int i12 = 0;
                for (int i13 = 0; i13 < length2; i13++) {
                    if (i13 > 0) {
                        cArr[i12] = ' ';
                        i12++;
                    }
                    byte b10 = bArr2[i13];
                    int i14 = i12 + 1;
                    char[] cArr2 = AbstractC0027a.f93a;
                    cArr[i12] = cArr2[(b10 >>> 4) & 15];
                    i12 += 2;
                    cArr[i14] = cArr2[b10 & 15];
                }
                Log.d(str, new String(cArr));
            }
            if (arrayList.size() > 0 && ((byte[]) arrayList.get(0)).length == 18 && ((byte[]) arrayList.get(0))[1] == 1 && ((byte[]) arrayList.get(0))[4] == -17 && ((byte[]) arrayList.get(0))[5] == 2 && ((byte[]) arrayList.get(0))[6] == 1) {
                int i15 = -1;
                for (int i16 = 1; i16 < arrayList.size(); i16++) {
                    if (((byte[]) arrayList.get(i16)).length == 8 && ((byte[]) arrayList.get(i16))[1] == 11 && ((byte[]) arrayList.get(i16))[4] == 2 && ((byte[]) arrayList.get(i16))[5] == 2 && (i15 = i15 + 1) == this.mPortNumber && ((byte[]) arrayList.get(i16))[3] == 2) {
                        return ((byte[]) arrayList.get(i16))[2];
                    }
                }
            }
            return -1;
        }

        private void openInterface() throws IOException {
            this.mControlInterface = null;
            this.mDataInterface = null;
            int interfaceIdFromDescriptors = getInterfaceIdFromDescriptors();
            Log.d(CdcAcmSerialDriver.this.TAG, "interface count=" + this.mDevice.getInterfaceCount() + ", IAD=" + interfaceIdFromDescriptors);
            if (interfaceIdFromDescriptors >= 0) {
                for (int i10 = 0; i10 < this.mDevice.getInterfaceCount(); i10++) {
                    UsbInterface usbInterface = this.mDevice.getInterface(i10);
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
                Log.d(CdcAcmSerialDriver.this.TAG, "no IAD fallback");
                int i11 = 0;
                int i12 = 0;
                for (int i13 = 0; i13 < this.mDevice.getInterfaceCount(); i13++) {
                    UsbInterface usbInterface2 = this.mDevice.getInterface(i13);
                    if (usbInterface2.getInterfaceClass() == 2 && usbInterface2.getInterfaceSubclass() == 2) {
                        if (i11 == this.mPortNumber) {
                            this.mControlIndex = usbInterface2.getId();
                            this.mControlInterface = usbInterface2;
                        }
                        i11++;
                    }
                    if (usbInterface2.getInterfaceClass() == 10) {
                        if (i12 == this.mPortNumber) {
                            this.mDataInterface = usbInterface2;
                        }
                        i12++;
                    }
                }
            }
            if (this.mControlInterface == null) {
                C2467b.m3820A("No control interface");
                return;
            }
            Log.d(CdcAcmSerialDriver.this.TAG, "Control interface id " + this.mControlInterface.getId());
            if (!this.mConnection.claimInterface(this.mControlInterface, true)) {
                C2467b.m3820A("Could not claim control interface");
                return;
            }
            UsbEndpoint endpoint = this.mControlInterface.getEndpoint(0);
            this.mControlEndpoint = endpoint;
            if (endpoint.getDirection() != 128 || this.mControlEndpoint.getType() != 3) {
                C2467b.m3820A("Invalid control endpoint");
                return;
            }
            if (this.mDataInterface == null) {
                C2467b.m3820A("No data interface");
                return;
            }
            Log.d(CdcAcmSerialDriver.this.TAG, "data interface id " + this.mDataInterface.getId());
            if (!this.mConnection.claimInterface(this.mDataInterface, true)) {
                C2467b.m3820A("Could not claim data interface");
                return;
            }
            for (int i14 = 0; i14 < this.mDataInterface.getEndpointCount(); i14++) {
                UsbEndpoint endpoint2 = this.mDataInterface.getEndpoint(i14);
                if (endpoint2.getDirection() == 128 && endpoint2.getType() == 2) {
                    this.mReadEndpoint = endpoint2;
                }
                if (endpoint2.getDirection() == 0 && endpoint2.getType() == 2) {
                    this.mWriteEndpoint = endpoint2;
                }
            }
        }

        private void openSingleInterface() throws IOException {
            this.mControlIndex = 0;
            this.mControlInterface = this.mDevice.getInterface(0);
            this.mDataInterface = this.mDevice.getInterface(0);
            if (!this.mConnection.claimInterface(this.mControlInterface, true)) {
                C2467b.m3820A("Could not claim shared control/data interface");
                return;
            }
            for (int i10 = 0; i10 < this.mControlInterface.getEndpointCount(); i10++) {
                UsbEndpoint endpoint = this.mControlInterface.getEndpoint(i10);
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
            C2467b.m3820A("No control endpoint");
        }

        private int sendAcmControlMessage(int i10, int i11, byte[] bArr) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(33, i10, i11, this.mControlIndex, bArr, bArr != null ? bArr.length : 0, TFTP.DEFAULT_TIMEOUT);
            if (iControlTransfer >= 0) {
                return iControlTransfer;
            }
            C2467b.m3820A("controlTransfer failed");
            return 0;
        }

        private void setDtrRts() throws IOException {
            sendAcmControlMessage(34, (this.mRts ? 2 : 0) | (this.mDtr ? 1 : 0), null);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void closeInt() {
            try {
                this.mConnection.releaseInterface(this.mControlInterface);
                this.mConnection.releaseInterface(this.mDataInterface);
            } catch (Exception unused) {
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() {
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if (this.mRts) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if (this.mDtr) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            return enumSetNoneOf;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getDTR() {
            return this.mDtr;
        }

        @Override // com.hoho.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return CdcAcmSerialDriver.this;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getRTS() {
            return this.mRts;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getSupportedControlLines() {
            return EnumSet.of(UsbSerialPort.ControlLine.RTS, UsbSerialPort.ControlLine.DTR);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void openInt() throws IOException {
            Log.d(CdcAcmSerialDriver.this.TAG, "interfaces:");
            for (int i10 = 0; i10 < this.mDevice.getInterfaceCount(); i10++) {
                Log.d(CdcAcmSerialDriver.this.TAG, this.mDevice.getInterface(i10).toString());
            }
            int i11 = this.mPortNumber;
            CdcAcmSerialDriver cdcAcmSerialDriver = CdcAcmSerialDriver.this;
            if (i11 == -1) {
                Log.d(cdcAcmSerialDriver.TAG, "device might be castrated ACM device, trying single interface logic");
                openSingleInterface();
            } else {
                Log.d(cdcAcmSerialDriver.TAG, "trying default interface logic");
                openInterface();
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z9) throws IOException {
            sendAcmControlMessage(35, z9 ? 65535 : 0, null);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setDTR(boolean z9) throws IOException {
            this.mDtr = z9;
            setDtrRts();
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i10, int i11, int i12, int i13) throws IOException {
            byte b10;
            byte b11;
            if (i10 <= 0) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid baud rate: "));
                return;
            }
            if (i11 < 5 || i11 > 8) {
                C1929i.m3029k(AbstractC0074a.m154e(i11, "Invalid data bits: "));
                return;
            }
            if (i12 == 1) {
                b10 = 0;
            } else if (i12 == 2) {
                b10 = 2;
            } else {
                if (i12 != 3) {
                    C1929i.m3029k(AbstractC0074a.m154e(i12, "Invalid stop bits: "));
                    return;
                }
                b10 = 1;
            }
            if (i13 == 0) {
                b11 = 0;
            } else if (i13 == 1) {
                b11 = 1;
            } else if (i13 == 2) {
                b11 = 2;
            } else if (i13 == 3) {
                b11 = 3;
            } else {
                if (i13 != 4) {
                    C1929i.m3029k(AbstractC0074a.m154e(i13, "Invalid parity: "));
                    return;
                }
                b11 = 4;
            }
            sendAcmControlMessage(32, 0, new byte[]{(byte) (i10 & 255), (byte) ((i10 >> 8) & 255), (byte) ((i10 >> 16) & 255), (byte) ((i10 >> 24) & 255), b10, b11, (byte) i11});
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setRTS(boolean z9) throws IOException {
            this.mRts = z9;
            setDtrRts();
        }
    }

    public CdcAcmSerialDriver(UsbDevice usbDevice) {
        List<UsbSerialPort> list;
        this.mDevice = usbDevice;
        int iCountPorts = countPorts(usbDevice);
        int i10 = 0;
        while (true) {
            list = this.mPorts;
            if (i10 >= iCountPorts) {
                break;
            }
            list.add(new CdcAcmSerialPort(this.mDevice, i10));
            i10++;
        }
        if (list.size() == 0) {
            this.mPorts.add(new CdcAcmSerialPort(this.mDevice, -1));
        }
    }

    private static int countPorts(UsbDevice usbDevice) {
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < usbDevice.getInterfaceCount(); i12++) {
            if (usbDevice.getInterface(i12).getInterfaceClass() == 2 && usbDevice.getInterface(i12).getInterfaceSubclass() == 2) {
                i10++;
            }
            if (usbDevice.getInterface(i12).getInterfaceClass() == 10) {
                i11++;
            }
        }
        return Math.min(i10, i11);
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        return new LinkedHashMap();
    }

    public static boolean probe(UsbDevice usbDevice) {
        return countPorts(usbDevice) > 0;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // com.hoho.android.usbserial.driver.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return this.mPorts;
    }
}
