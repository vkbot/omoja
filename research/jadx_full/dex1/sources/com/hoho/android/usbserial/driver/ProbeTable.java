package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.util.Pair;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map$Entry;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ProbeTable {
    private final Map<Pair<Integer, Integer>, Class<? extends UsbSerialDriver>> mVidPidProbeTable = new LinkedHashMap();
    private final Map<Method, Class<? extends UsbSerialDriver>> mMethodProbeTable = new LinkedHashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addDriver(Class<? extends UsbSerialDriver> cls) {
        try {
            try {
                for (Map$Entry map$Entry : ((Map) cls.getMethod("getSupportedDevices", null).invoke(null, null)).entrySet()) {
                    int iIntValue = ((Integer) map$Entry.getKey()).intValue();
                    for (int i9 : (int[]) map$Entry.getValue()) {
                        addProduct(iIntValue, i9, cls);
                    }
                }
                try {
                    this.mMethodProbeTable.put(cls.getMethod("probe", UsbDevice.class), cls);
                } catch (NoSuchMethodException | SecurityException unused) {
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
                b.w(e);
            }
        } catch (NoSuchMethodException | SecurityException e6) {
            b.w(e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ProbeTable addProduct(int i9, int i10, Class<? extends UsbSerialDriver> cls) {
        this.mVidPidProbeTable.put(Pair.create(Integer.valueOf(i9), Integer.valueOf(i10)), cls);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Class<? extends UsbSerialDriver> findDriver(UsbDevice usbDevice) {
        Class<? extends UsbSerialDriver> cls = this.mVidPidProbeTable.get(Pair.create(Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId())));
        if (cls != null) {
            return cls;
        }
        for (Map$Entry<Method, Class<? extends UsbSerialDriver>> map$Entry : this.mMethodProbeTable.entrySet()) {
            try {
                if (((Boolean) map$Entry.getKey().invoke(null, usbDevice)).booleanValue()) {
                    return map$Entry.getValue();
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
                b.w(e);
                return null;
            }
        }
        return null;
    }
}
