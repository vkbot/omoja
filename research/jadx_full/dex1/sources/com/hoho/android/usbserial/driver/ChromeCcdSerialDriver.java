package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChromeCcdSerialDriver implements UsbSerialDriver {
    private final UsbDevice mDevice;
    private final String TAG = "ChromeCcdSerialDriver";
    private final List<UsbSerialPort> mPorts = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChromeCcdSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        for (int i9 = 0; i9 < 3; i9++) {
            this.mPorts.add(new ChromeCcdSerialDriver$ChromeCcdSerialPort(this, usbDevice, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$000(ChromeCcdSerialDriver chromeCcdSerialDriver) {
        return chromeCcdSerialDriver.TAG;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(UsbId.VENDOR_GOOGLE), new int[]{UsbId.GOOGLE_CR50});
        return linkedHashMap;
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
