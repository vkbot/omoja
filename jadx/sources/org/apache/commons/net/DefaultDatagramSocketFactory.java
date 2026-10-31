package org.apache.commons.net;

import java.net.DatagramSocket;
import java.net.InetAddress;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class DefaultDatagramSocketFactory implements DatagramSocketFactory {
    @Override // org.apache.commons.net.DatagramSocketFactory
    public DatagramSocket createDatagramSocket() {
        return new DatagramSocket();
    }

    @Override // org.apache.commons.net.DatagramSocketFactory
    public DatagramSocket createDatagramSocket(int i10) {
        return new DatagramSocket(i10);
    }

    @Override // org.apache.commons.net.DatagramSocketFactory
    public DatagramSocket createDatagramSocket(int i10, InetAddress inetAddress) {
        return new DatagramSocket(i10, inetAddress);
    }
}
