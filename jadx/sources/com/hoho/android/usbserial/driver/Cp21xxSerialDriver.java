package com.hoho.android.usbserial.driver;

import ai.onnxruntime.AbstractC0074a;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import androidx.navigation.C0674b;
import java.io.IOException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Cp21xxSerialDriver implements UsbSerialDriver {
    private static final String TAG = "Cp21xxSerialDriver";
    private final UsbDevice mDevice;
    private final List<UsbSerialPort> mPorts = new ArrayList();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class Cp21xxSerialPort extends CommonUsbSerialPort {
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

        public Cp21xxSerialPort(UsbDevice usbDevice, int i10) {
            super(usbDevice, i10);
            this.dtr = false;
            this.rts = false;
        }

        private byte getStatus() throws IOException {
            byte[] bArr = new byte[1];
            int iControlTransfer = this.mConnection.controlTransfer(REQTYPE_DEVICE_TO_HOST, 8, 0, this.mPortNumber, bArr, 1, 5000);
            if (iControlTransfer == 1) {
                return bArr[0];
            }
            C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Control transfer failed: 8 / 0 -> "));
            return (byte) 0;
        }

        private void setBaudRate(int i10) throws IOException {
            if (this.mConnection.controlTransfer(65, 30, 0, this.mPortNumber, new byte[]{(byte) (i10 & 255), (byte) ((i10 >> 8) & 255), (byte) ((i10 >> 16) & 255), (byte) ((i10 >> 24) & 255)}, 4, 5000) >= 0) {
                return;
            }
            C2467b.m3820A("Error setting baud rate");
        }

        private void setConfigSingle(int i10, int i11) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(65, i10, i11, this.mPortNumber, null, 0, 5000);
            if (iControlTransfer == 0) {
                return;
            }
            StringBuilder sbM171v = AbstractC0074a.m171v("Control transfer failed: ", i10, i11, " / ", " -> ");
            sbM171v.append(iControlTransfer);
            throw new IOException(sbM171v.toString());
        }

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

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getCD() {
            return (getStatus() & ByteCompanionObject.MIN_VALUE) != 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getCTS() {
            return (getStatus() & 16) != 0;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException {
            byte status = getStatus();
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if ((status & 2) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if ((status & 16) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CTS);
            }
            if ((status & 1) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            if ((status & 32) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DSR);
            }
            if ((status & ByteCompanionObject.MIN_VALUE) != 0) {
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
            return Cp21xxSerialDriver.this;
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
            return EnumSet.of(UsbSerialPort.FlowControl.NONE, UsbSerialPort.FlowControl.RTS_CTS, UsbSerialPort.FlowControl.DTR_DSR, UsbSerialPort.FlowControl.XON_XOFF);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public boolean getXON() throws IOException {
            byte[] bArr = new byte[19];
            int iControlTransfer = this.mConnection.controlTransfer(REQTYPE_DEVICE_TO_HOST, 16, 0, this.mPortNumber, bArr, 19, 5000);
            if (iControlTransfer == 19) {
                return (bArr[4] & 8) == 0;
            }
            C2467b.m3820A(AbstractC0074a.m154e(iControlTransfer, "Control transfer failed: 16 -> "));
            return false;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void openInt() throws IOException {
            this.mIsRestrictedPort = this.mDevice.getInterfaceCount() == 2 && this.mPortNumber == 1;
            if (this.mPortNumber >= this.mDevice.getInterfaceCount()) {
                C2467b.m3820A("Unknown port number");
                return;
            }
            UsbInterface usbInterface = this.mDevice.getInterface(this.mPortNumber);
            if (!this.mConnection.claimInterface(usbInterface, true)) {
                C2467b.m3835y(this.mPortNumber, "Could not claim interface ");
                return;
            }
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
            setConfigSingle(0, 1);
            setConfigSingle(7, (this.dtr ? 257 : 256) | (this.rts ? 514 : 512));
            setFlowControl(this.mFlowControl);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void purgeHwBuffers(boolean z9, boolean z10) throws IOException {
            int i10 = (z10 ? 10 : 0) | (z9 ? 5 : 0);
            if (i10 != 0) {
                setConfigSingle(18, i10);
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z9) throws IOException {
            setConfigSingle(5, z9 ? 1 : 0);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setDTR(boolean z9) throws IOException {
            this.dtr = z9;
            setConfigSingle(7, z9 ? 257 : 256);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setFlowControl(UsbSerialPort.FlowControl flowControl) throws IOException {
            byte[] bArr = new byte[16];
            if (flowControl == UsbSerialPort.FlowControl.RTS_CTS) {
                bArr[4] = (byte) (bArr[4] | ByteCompanionObject.MIN_VALUE);
                bArr[0] = (byte) (bArr[0] | 8);
            } else if (this.rts) {
                bArr[4] = (byte) (bArr[4] | 64);
            }
            if (flowControl == UsbSerialPort.FlowControl.DTR_DSR) {
                byte b10 = (byte) (bArr[0] | 2);
                bArr[0] = b10;
                bArr[0] = (byte) (b10 | 16);
            } else if (this.dtr) {
                bArr[0] = (byte) (bArr[0] | 1);
            }
            UsbSerialPort.FlowControl flowControl2 = UsbSerialPort.FlowControl.XON_XOFF;
            if (flowControl == flowControl2) {
                if (this.mConnection.controlTransfer(65, 25, 0, this.mPortNumber, new byte[]{0, 0, 0, 0, 17, 19}, 6, 5000) != 6) {
                    C2467b.m3820A("Error setting XON/XOFF chars");
                    return;
                }
                bArr[4] = (byte) (bArr[4] | 3);
                bArr[7] = (byte) (bArr[7] | ByteCompanionObject.MIN_VALUE);
                bArr[8] = ByteCompanionObject.MIN_VALUE;
                bArr[12] = ByteCompanionObject.MIN_VALUE;
            }
            if (flowControl == UsbSerialPort.FlowControl.XON_XOFF_INLINE) {
                C0674b.m835a();
            } else {
                if (this.mConnection.controlTransfer(65, 19, 0, this.mPortNumber, bArr, 16, 5000) != 16) {
                    C2467b.m3820A("Error setting flow control");
                    return;
                }
                if (flowControl == flowControl2) {
                    setXON(true);
                }
                this.mFlowControl = flowControl;
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i10, int i11, int i12, int i13) throws IOException {
            int i14;
            if (i10 <= 0) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid baud rate: "));
                return;
            }
            setBaudRate(i10);
            if (i11 != 5) {
                if (i11 != 6) {
                    if (i11 != 7) {
                        if (i11 != 8) {
                            C1929i.m3029k(AbstractC0074a.m154e(i11, "Invalid data bits: "));
                            return;
                        }
                        i14 = 2048;
                    } else {
                        if (this.mIsRestrictedPort) {
                            C0674b.m840g(AbstractC0074a.m154e(i11, "Unsupported data bits: "));
                            return;
                        }
                        i14 = 1792;
                    }
                } else {
                    if (this.mIsRestrictedPort) {
                        C0674b.m840g(AbstractC0074a.m154e(i11, "Unsupported data bits: "));
                        return;
                    }
                    i14 = 1536;
                }
            } else {
                if (this.mIsRestrictedPort) {
                    C0674b.m840g(AbstractC0074a.m154e(i11, "Unsupported data bits: "));
                    return;
                }
                i14 = 1280;
            }
            if (i13 != 0) {
                if (i13 == 1) {
                    i14 |= 16;
                } else if (i13 == 2) {
                    i14 |= 32;
                } else if (i13 != 3) {
                    if (i13 != 4) {
                        C1929i.m3029k(AbstractC0074a.m154e(i13, "Invalid parity: "));
                        return;
                    } else {
                        if (this.mIsRestrictedPort) {
                            C0674b.m840g("Unsupported parity: space");
                            return;
                        }
                        i14 |= 64;
                    }
                } else {
                    if (this.mIsRestrictedPort) {
                        C0674b.m840g("Unsupported parity: mark");
                        return;
                    }
                    i14 |= 48;
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
                if (this.mIsRestrictedPort) {
                    C0674b.m840g("Unsupported stop bits: 2");
                    return;
                }
                i14 |= 2;
            }
            setConfigSingle(3, i14);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setRTS(boolean z9) throws IOException {
            this.rts = z9;
            setConfigSingle(7, z9 ? 514 : 512);
        }

        public void setXON(boolean z9) throws IOException {
            setConfigSingle(z9 ? 9 : 10, 0);
        }
    }

    public Cp21xxSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        for (int i10 = 0; i10 < usbDevice.getInterfaceCount(); i10++) {
            this.mPorts.add(new Cp21xxSerialPort(this.mDevice, i10));
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(UsbId.VENDOR_SILABS), new int[]{UsbId.SILABS_CP2102, UsbId.SILABS_CP2105, UsbId.SILABS_CP2108});
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
}
