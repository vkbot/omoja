package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CdcAcmSerialDriver implements UsbSerialDriver {
    public static final int USB_SUBCLASS_ACM = 2;
    private final UsbDevice mDevice;
    private final String TAG = "CdcAcmSerialDriver";
    private final List<UsbSerialPort> mPorts = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CdcAcmSerialDriver(UsbDevice usbDevice) {
        List<UsbSerialPort> list;
        this.mDevice = usbDevice;
        int iCountPorts = countPorts(usbDevice);
        int i9 = 0;
        while (true) {
            list = this.mPorts;
            if (i9 >= iCountPorts) {
                break;
            }
            list.add(new CdcAcmSerialDriver$CdcAcmSerialPort(this, this.mDevice, i9));
            i9++;
        }
        if (list.size() == 0) {
            this.mPorts.add(new CdcAcmSerialDriver$CdcAcmSerialPort(this, this.mDevice, -1));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$000(CdcAcmSerialDriver cdcAcmSerialDriver) {
        return cdcAcmSerialDriver.TAG;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int countPorts(UsbDevice usbDevice) {
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < usbDevice.getInterfaceCount(); i11++) {
            if (usbDevice.getInterface(i11).getInterfaceClass() == 2 && usbDevice.getInterface(i11).getInterfaceSubclass() == 2) {
                i9++;
            }
            if (usbDevice.getInterface(i11).getInterfaceClass() == 10) {
                i10++;
            }
        }
        return Math.min(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Map<Integer, int[]> getSupportedDevices() {
        return new LinkedHashMap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean probe(UsbDevice usbDevice) {
        return countPorts(usbDevice) > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.hoho.android.usbserial.driver.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return this.mPorts;
    }
}
