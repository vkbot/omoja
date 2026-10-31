package org.apache.commons.net.daytime;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import org.apache.commons.net.DatagramSocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class DaytimeUDPClient extends DatagramSocketClient {
    public static final int DEFAULT_PORT = 13;
    private final byte[] dummyData = new byte[1];
    private final byte[] timeData = new byte[256];

    public String getTime(InetAddress inetAddress, int i10) throws IOException {
        byte[] bArr = this.dummyData;
        DatagramPacket datagramPacket = new DatagramPacket(bArr, bArr.length, inetAddress, i10);
        byte[] bArr2 = this.timeData;
        DatagramPacket datagramPacket2 = new DatagramPacket(bArr2, bArr2.length);
        checkOpen().send(datagramPacket);
        checkOpen().receive(datagramPacket2);
        return new String(datagramPacket2.getData(), 0, datagramPacket2.getLength(), getCharset());
    }

    public String getTime(InetAddress inetAddress) {
        return getTime(inetAddress, 13);
    }
}
