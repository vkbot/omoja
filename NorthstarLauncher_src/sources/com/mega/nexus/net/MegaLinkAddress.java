package com.mega.nexus.net;

import android.net.LinkAddress;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes2.dex */
public class MegaLinkAddress {
    public static LinkAddress create(InetAddress inetAddress, int i) {
        return new LinkAddress(inetAddress, i);
    }
}
