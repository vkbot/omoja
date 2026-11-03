package com.mega.nexus.net.wifi;

import android.net.wifi.ScanResult;

/* JADX INFO: loaded from: classes2.dex */
public class MegaScanResult {
    public static boolean isCarrierAp(ScanResult scanResult) {
        return MegaScanResultAdapter.isCarrierAp(scanResult);
    }

    public static int carrierApEapType(ScanResult scanResult) {
        return MegaScanResultAdapter.carrierApEapType(scanResult);
    }

    public static String carrierName(ScanResult scanResult) {
        return MegaScanResultAdapter.carrierName(scanResult);
    }
}
