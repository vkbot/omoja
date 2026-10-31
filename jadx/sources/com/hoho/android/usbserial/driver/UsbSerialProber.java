package com.hoho.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class UsbSerialProber {
    private final ProbeTable mProbeTable;

    public UsbSerialProber(ProbeTable probeTable) {
        this.mProbeTable = probeTable;
    }

    public static ProbeTable getDefaultProbeTable() {
        ProbeTable probeTable = new ProbeTable();
        probeTable.addDriver(CdcAcmSerialDriver.class);
        probeTable.addDriver(Cp21xxSerialDriver.class);
        probeTable.addDriver(FtdiSerialDriver.class);
        probeTable.addDriver(ProlificSerialDriver.class);
        probeTable.addDriver(Ch34xSerialDriver.class);
        probeTable.addDriver(GsmModemSerialDriver.class);
        probeTable.addDriver(ChromeCcdSerialDriver.class);
        return probeTable;
    }

    public static UsbSerialProber getDefaultProber() {
        return new UsbSerialProber(getDefaultProbeTable());
    }

    public List<UsbSerialDriver> findAllDrivers(UsbManager usbManager) {
        ArrayList arrayList = new ArrayList();
        Iterator<UsbDevice> it = usbManager.getDeviceList().values().iterator();
        while (it.hasNext()) {
            UsbSerialDriver usbSerialDriverProbeDevice = probeDevice(it.next());
            if (usbSerialDriverProbeDevice != null) {
                arrayList.add(usbSerialDriverProbeDevice);
            }
        }
        return arrayList;
    }

    public UsbSerialDriver probeDevice(UsbDevice usbDevice) {
        Class<? extends UsbSerialDriver> clsFindDriver = this.mProbeTable.findDriver(usbDevice);
        if (clsFindDriver == null) {
            return null;
        }
        try {
            return clsFindDriver.getConstructor(UsbDevice.class).newInstance(usbDevice);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            C2467b.m3833w(e);
            return null;
        }
    }
}
