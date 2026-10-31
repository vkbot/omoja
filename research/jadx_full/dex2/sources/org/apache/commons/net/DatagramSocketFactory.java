package org.apache.commons.net;

import java.net.DatagramSocket;
import java.net.InetAddress;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface DatagramSocketFactory {
    DatagramSocket createDatagramSocket();

    DatagramSocket createDatagramSocket(int i);

    DatagramSocket createDatagramSocket(int i, InetAddress inetAddress);
}
