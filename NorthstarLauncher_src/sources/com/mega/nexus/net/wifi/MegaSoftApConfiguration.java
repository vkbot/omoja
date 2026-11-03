package com.mega.nexus.net.wifi;

import android.net.MacAddress;
import android.net.wifi.SoftApConfiguration;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MegaSoftApConfiguration {
    public static List<MacAddress> getAllowedClientList(SoftApConfiguration softApConfiguration) {
        return softApConfiguration.getAllowedClientList();
    }

    public static List<MacAddress> getBlockedClientList(SoftApConfiguration softApConfiguration) {
        return softApConfiguration.getBlockedClientList();
    }
}
