package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.util.Pair;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;
import java.util.Map;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ProbeTable {
    private final Map<Pair<Integer, Integer>, Class<? extends UsbSerialDriver>> mVidPidProbeTable = new LinkedHashMap();
    private final Map<Method, Class<? extends UsbSerialDriver>> mMethodProbeTable = new LinkedHashMap();

    public void addDriver(Class<? extends UsbSerialDriver> cls) {
        try {
            try {
                for (Map.Entry entry : ((Map) cls.getMethod("getSupportedDevices", null).invoke(null, null)).entrySet()) {
                    int iIntValue = ((Integer) entry.getKey()).intValue();
                    for (int i10 : (int[]) entry.getValue()) {
                        addProduct(iIntValue, i10, cls);
                    }
                }
                try {
                    this.mMethodProbeTable.put(cls.getMethod("probe", UsbDevice.class), cls);
                } catch (NoSuchMethodException | SecurityException unused) {
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
                C2467b.m3833w(e);
            }
        } catch (NoSuchMethodException | SecurityException e6) {
            C2467b.m3833w(e6);
        }
    }

    public ProbeTable addProduct(int i10, int i11, Class<? extends UsbSerialDriver> cls) {
        this.mVidPidProbeTable.put(Pair.create(Integer.valueOf(i10), Integer.valueOf(i11)), cls);
        return this;
    }

    public Class<? extends UsbSerialDriver> findDriver(UsbDevice usbDevice) {
        Class<? extends UsbSerialDriver> cls = this.mVidPidProbeTable.get(Pair.create(Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId())));
        if (cls != null) {
            return cls;
        }
        for (Map.Entry<Method, Class<? extends UsbSerialDriver>> entry : this.mMethodProbeTable.entrySet()) {
            try {
                if (((Boolean) entry.getKey().invoke(null, usbDevice)).booleanValue()) {
                    return entry.getValue();
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
                C2467b.m3833w(e);
                return null;
            }
        }
        return null;
    }
}
