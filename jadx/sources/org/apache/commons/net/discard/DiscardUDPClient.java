package org.apache.commons.net.discard;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import org.apache.commons.net.DatagramSocketClient;
import org.apache.commons.net.util.NetConstants;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class DiscardUDPClient extends DatagramSocketClient {
    public static final int DEFAULT_PORT = 9;
    private final DatagramPacket sendPacket = new DatagramPacket(NetConstants.EMPTY_BTYE_ARRAY, 0);

    public void send(byte[] bArr, int i10, InetAddress inetAddress, int i11) throws IOException {
        this.sendPacket.setData(bArr);
        this.sendPacket.setLength(i10);
        this.sendPacket.setAddress(inetAddress);
        this.sendPacket.setPort(i11);
        checkOpen().send(this.sendPacket);
    }

    public void send(byte[] bArr, int i10, InetAddress inetAddress) throws IOException {
        send(bArr, i10, inetAddress, 9);
    }

    public void send(byte[] bArr, InetAddress inetAddress) throws IOException {
        send(bArr, bArr.length, inetAddress, 9);
    }
}
