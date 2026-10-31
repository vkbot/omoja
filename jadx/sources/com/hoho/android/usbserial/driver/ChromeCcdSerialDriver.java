package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ChromeCcdSerialDriver implements UsbSerialDriver {
    private final UsbDevice mDevice;
    private final String TAG = "ChromeCcdSerialDriver";
    private final List<UsbSerialPort> mPorts = new ArrayList();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class ChromeCcdSerialPort extends CommonUsbSerialPort {
        private UsbInterface mDataInterface;

        public ChromeCcdSerialPort(UsbDevice usbDevice, int i10) {
            super(usbDevice, i10);
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void closeInt() {
            try {
                this.mConnection.releaseInterface(this.mDataInterface);
            } catch (Exception unused) {
            }
        }

        @Override // com.hoho.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return ChromeCcdSerialDriver.this;
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort
        public void openInt() throws IOException {
            Log.d(ChromeCcdSerialDriver.this.TAG, "claiming interfaces, count=" + this.mDevice.getInterfaceCount());
            UsbInterface usbInterface = this.mDevice.getInterface(this.mPortNumber);
            this.mDataInterface = usbInterface;
            if (!this.mConnection.claimInterface(usbInterface, true)) {
                C2467b.m3820A("Could not claim shared control/data interface");
                return;
            }
            Log.d(ChromeCcdSerialDriver.this.TAG, "endpoint count=" + this.mDataInterface.getEndpointCount());
            for (int i10 = 0; i10 < this.mDataInterface.getEndpointCount(); i10++) {
                UsbEndpoint endpoint = this.mDataInterface.getEndpoint(i10);
                if (endpoint.getDirection() == 128 && endpoint.getType() == 2) {
                    this.mReadEndpoint = endpoint;
                } else if (endpoint.getDirection() == 0 && endpoint.getType() == 2) {
                    this.mWriteEndpoint = endpoint;
                }
            }
        }

        @Override // com.hoho.android.usbserial.driver.CommonUsbSerialPort, com.hoho.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i10, int i11, int i12, int i13) {
            throw new UnsupportedOperationException();
        }
    }

    public ChromeCcdSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        for (int i10 = 0; i10 < 3; i10++) {
            this.mPorts.add(new ChromeCcdSerialPort(usbDevice, i10));
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(UsbId.VENDOR_GOOGLE), new int[]{UsbId.GOOGLE_CR50});
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
