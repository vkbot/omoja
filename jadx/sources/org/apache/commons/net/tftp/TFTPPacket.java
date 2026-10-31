package org.apache.commons.net.tftp;

import java.net.DatagramPacket;
import java.net.InetAddress;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class TFTPPacket {
    public static final int ACKNOWLEDGEMENT = 4;
    public static final int DATA = 3;
    public static final int ERROR = 5;
    static final int MIN_PACKET_SIZE = 4;
    public static final int OACK = 6;
    public static final int READ_REQUEST = 1;
    public static final int SEGMENT_SIZE = 512;
    public static final int WRITE_REQUEST = 2;
    InetAddress address;
    int port;
    int type;

    public TFTPPacket(int i10, InetAddress inetAddress, int i11) {
        this.type = i10;
        this.address = inetAddress;
        this.port = i11;
    }

    public static final TFTPPacket newTFTPPacket(DatagramPacket datagramPacket) throws TFTPPacketException {
        if (datagramPacket.getLength() < 4) {
            throw new TFTPPacketException("Bad packet. Datagram data length is too short.");
        }
        byte b10 = datagramPacket.getData()[1];
        if (b10 == 1) {
            return new TFTPReadRequestPacket(datagramPacket);
        }
        if (b10 == 2) {
            return new TFTPWriteRequestPacket(datagramPacket);
        }
        if (b10 == 3) {
            return new TFTPDataPacket(datagramPacket);
        }
        if (b10 == 4) {
            return new TFTPAckPacket(datagramPacket);
        }
        if (b10 == 5) {
            return new TFTPErrorPacket(datagramPacket);
        }
        throw new TFTPPacketException("Bad packet.  Invalid TFTP operator code.");
    }

    public final InetAddress getAddress() {
        return this.address;
    }

    public final int getPort() {
        return this.port;
    }

    public final int getType() {
        return this.type;
    }

    public abstract DatagramPacket newDatagram();

    public abstract DatagramPacket newDatagram(DatagramPacket datagramPacket, byte[] bArr);

    public final void setAddress(InetAddress inetAddress) {
        this.address = inetAddress;
    }

    public final void setPort(int i10) {
        this.port = i10;
    }

    public String toString() {
        return this.address + " " + this.port + " " + this.type;
    }
}
