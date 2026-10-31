package org.apache.commons.net.echo;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import org.apache.commons.net.discard.DiscardUDPClient;
import org.apache.commons.net.util.NetConstants;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class EchoUDPClient extends DiscardUDPClient {
    public static final int DEFAULT_PORT = 7;
    private final DatagramPacket receivePacket = new DatagramPacket(NetConstants.EMPTY_BTYE_ARRAY, 0);

    public int receive(byte[] bArr, int i10) throws IOException {
        this.receivePacket.setData(bArr);
        this.receivePacket.setLength(i10);
        checkOpen().receive(this.receivePacket);
        return this.receivePacket.getLength();
    }

    @Override // org.apache.commons.net.discard.DiscardUDPClient
    public void send(byte[] bArr, InetAddress inetAddress) throws IOException {
        send(bArr, bArr.length, inetAddress, 7);
    }

    @Override // org.apache.commons.net.discard.DiscardUDPClient
    public void send(byte[] bArr, int i10, InetAddress inetAddress) throws IOException {
        send(bArr, i10, inetAddress, 7);
    }

    public int receive(byte[] bArr) {
        return receive(bArr, bArr.length);
    }
}
