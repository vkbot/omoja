package org.apache.commons.net.tftp;

import java.net.DatagramPacket;
import java.net.InetAddress;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class TFTPAckPacket extends TFTPPacket {
    int blockNumber;

    public TFTPAckPacket(DatagramPacket datagramPacket) throws TFTPPacketException {
        super(4, datagramPacket.getAddress(), datagramPacket.getPort());
        byte[] data = datagramPacket.getData();
        if (getType() != data[1]) {
            throw new TFTPPacketException("TFTP operator code does not match type.");
        }
        this.blockNumber = (data[3] & UByte.MAX_VALUE) | ((data[2] & UByte.MAX_VALUE) << 8);
    }

    public int getBlockNumber() {
        return this.blockNumber;
    }

    @Override // org.apache.commons.net.tftp.TFTPPacket
    public DatagramPacket newDatagram(DatagramPacket datagramPacket, byte[] bArr) {
        bArr[0] = 0;
        bArr[1] = (byte) this.type;
        int i10 = this.blockNumber;
        bArr[2] = (byte) ((65535 & i10) >> 8);
        bArr[3] = (byte) (i10 & 255);
        datagramPacket.setAddress(this.address);
        datagramPacket.setPort(this.port);
        datagramPacket.setData(bArr);
        datagramPacket.setLength(4);
        return datagramPacket;
    }

    public void setBlockNumber(int i10) {
        this.blockNumber = i10;
    }

    @Override // org.apache.commons.net.tftp.TFTPPacket
    public String toString() {
        return super.toString() + " ACK " + this.blockNumber;
    }

    @Override // org.apache.commons.net.tftp.TFTPPacket
    public DatagramPacket newDatagram() {
        byte b10 = (byte) this.type;
        int i10 = this.blockNumber;
        return new DatagramPacket(new byte[]{0, b10, (byte) ((65535 & i10) >> 8), (byte) (i10 & 255)}, 4, this.address, this.port);
    }

    public TFTPAckPacket(InetAddress inetAddress, int i10, int i11) {
        super(4, inetAddress, i10);
        this.blockNumber = i11;
    }
}
