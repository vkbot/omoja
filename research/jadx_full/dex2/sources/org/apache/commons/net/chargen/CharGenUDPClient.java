package org.apache.commons.net.chargen;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import org.apache.commons.net.DatagramSocketClient;
import org.apache.commons.net.util.NetConstants;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class CharGenUDPClient extends DatagramSocketClient {
    public static final int CHARGEN_PORT = 19;
    public static final int DEFAULT_PORT = 19;
    public static final int NETSTAT_PORT = 15;
    public static final int QUOTE_OF_DAY_PORT = 17;
    public static final int SYSTAT_PORT = 11;
    private final byte[] receiveData;
    private final DatagramPacket receivePacket;
    private final DatagramPacket sendPacket = new DatagramPacket(NetConstants.EMPTY_BTYE_ARRAY, 0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharGenUDPClient() {
        byte[] bArr = new byte[512];
        this.receiveData = bArr;
        this.receivePacket = new DatagramPacket(bArr, bArr.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] receive() throws IOException {
        checkOpen().receive(this.receivePacket);
        int length = this.receivePacket.getLength();
        byte[] bArr = new byte[length];
        System.arraycopy(this.receiveData, 0, bArr, 0, length);
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void send(InetAddress inetAddress, int i) throws IOException {
        this.sendPacket.setAddress(inetAddress);
        this.sendPacket.setPort(i);
        checkOpen().send(this.sendPacket);
    }

    public void send(InetAddress inetAddress) throws IOException {
        send(inetAddress, 19);
    }
}
