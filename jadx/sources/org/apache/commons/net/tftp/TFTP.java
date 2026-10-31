package org.apache.commons.net.tftp;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.DatagramPacket;
import java.net.SocketException;
import java.time.Duration;
import org.apache.commons.net.DatagramSocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class TFTP extends DatagramSocketClient {
    public static final int ASCII_MODE = 0;
    public static final int BINARY_MODE = 1;
    public static final int DEFAULT_PORT = 69;

    @Deprecated
    public static final int DEFAULT_TIMEOUT = 5000;
    public static final Duration DEFAULT_TIMEOUT_DURATION = Duration.ofSeconds(5);
    private static final int HEADER_SIZE = 4;
    public static final int IMAGE_MODE = 1;
    public static final int NETASCII_MODE = 0;
    public static final int OCTET_MODE = 1;
    static final int PACKET_SIZE = 516;
    private boolean buffersInitialized;
    private int packetSize = PACKET_SIZE;
    private byte[] receiveBuffer;
    private DatagramPacket receiveDatagram;
    byte[] sendBuffer;
    private DatagramPacket sendDatagram;

    public TFTP() {
        setDefaultTimeout(DEFAULT_TIMEOUT_DURATION);
        this.receiveBuffer = null;
        this.receiveDatagram = null;
    }

    public static final String getModeName(int i10) {
        return TFTPRequestPacket.modeStrings[i10];
    }

    public final void beginBufferedOps() {
        this.receiveBuffer = new byte[this.packetSize];
        byte[] bArr = this.receiveBuffer;
        this.receiveDatagram = new DatagramPacket(bArr, bArr.length);
        this.sendBuffer = new byte[this.packetSize];
        byte[] bArr2 = this.sendBuffer;
        this.sendDatagram = new DatagramPacket(bArr2, bArr2.length);
        this.buffersInitialized = true;
    }

    public final TFTPPacket bufferedReceive() throws TFTPPacketException, IOException {
        this.receiveDatagram.setData(this.receiveBuffer);
        this.receiveDatagram.setLength(this.receiveBuffer.length);
        checkOpen().receive(this.receiveDatagram);
        TFTPPacket tFTPPacketNewTFTPPacket = TFTPPacket.newTFTPPacket(this.receiveDatagram);
        trace("<", tFTPPacketNewTFTPPacket);
        return tFTPPacketNewTFTPPacket;
    }

    public final void bufferedSend(TFTPPacket tFTPPacket) throws IOException {
        trace(">", tFTPPacket);
        checkOpen().send(tFTPPacket.newDatagram(this.sendDatagram, this.sendBuffer));
    }

    public final void discardPackets() throws SocketException {
        int i10 = this.packetSize;
        DatagramPacket datagramPacket = new DatagramPacket(new byte[i10], i10);
        Duration soTimeoutDuration = getSoTimeoutDuration();
        setSoTimeout(Duration.ofMillis(1L));
        while (true) {
            try {
                checkOpen().receive(datagramPacket);
            } catch (InterruptedIOException | SocketException unused) {
                setSoTimeout(soTimeoutDuration);
                return;
            }
        }
    }

    public final void endBufferedOps() {
        this.receiveBuffer = null;
        this.receiveDatagram = null;
        this.sendBuffer = null;
        this.sendDatagram = null;
        this.buffersInitialized = false;
    }

    public int getPacketSize() {
        return this.packetSize;
    }

    public final TFTPPacket receive() throws TFTPPacketException, IOException {
        int i10 = this.packetSize;
        DatagramPacket datagramPacket = new DatagramPacket(new byte[i10], i10);
        checkOpen().receive(datagramPacket);
        TFTPPacket tFTPPacketNewTFTPPacket = TFTPPacket.newTFTPPacket(datagramPacket);
        trace("<", tFTPPacketNewTFTPPacket);
        return tFTPPacketNewTFTPPacket;
    }

    public final void resetBuffersToSize(int i10) {
        this.packetSize = Math.min(Math.max(i10, 8), 65464) + 4;
        if (this.buffersInitialized) {
            endBufferedOps();
            beginBufferedOps();
        }
    }

    public final void send(TFTPPacket tFTPPacket) throws IOException {
        trace(">", tFTPPacket);
        checkOpen().send(tFTPPacket.newDatagram());
    }

    public void trace(String str, TFTPPacket tFTPPacket) {
    }
}
