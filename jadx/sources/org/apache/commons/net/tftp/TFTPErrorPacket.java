package org.apache.commons.net.tftp;

import java.net.DatagramPacket;
import java.net.InetAddress;
import java.nio.charset.Charset;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class TFTPErrorPacket extends TFTPPacket {
    public static final int ACCESS_VIOLATION = 2;
    public static final int FILE_EXISTS = 6;
    public static final int FILE_NOT_FOUND = 1;
    public static final int ILLEGAL_OPERATION = 4;
    public static final int INVALID_OPTIONS_VALUE = 8;
    public static final int NO_SUCH_USER = 7;
    public static final int OUT_OF_SPACE = 3;
    public static final int UNDEFINED = 0;
    public static final int UNKNOWN_TID = 5;
    private final int error;
    private final String message;

    public TFTPErrorPacket(DatagramPacket datagramPacket) throws TFTPPacketException {
        super(5, datagramPacket.getAddress(), datagramPacket.getPort());
        byte[] data = datagramPacket.getData();
        int length = datagramPacket.getLength();
        if (getType() != data[1]) {
            throw new TFTPPacketException("TFTP operator code does not match type.");
        }
        this.error = ((data[2] & UByte.MAX_VALUE) << 8) | (data[3] & UByte.MAX_VALUE);
        if (length < 5) {
            throw new TFTPPacketException("Bad error packet. No message.");
        }
        StringBuilder sb = new StringBuilder();
        for (int i10 = 4; i10 < length; i10++) {
            byte b10 = data[i10];
            if (b10 == 0) {
                break;
            }
            sb.append((char) b10);
        }
        this.message = sb.toString();
    }

    public int getError() {
        return this.error;
    }

    public String getMessage() {
        return this.message;
    }

    @Override // org.apache.commons.net.tftp.TFTPPacket
    public DatagramPacket newDatagram(DatagramPacket datagramPacket, byte[] bArr) {
        int length = this.message.length();
        bArr[0] = 0;
        bArr[1] = (byte) this.type;
        int i10 = this.error;
        bArr[2] = (byte) ((65535 & i10) >> 8);
        bArr[3] = (byte) (i10 & 255);
        System.arraycopy(this.message.getBytes(Charset.defaultCharset()), 0, bArr, 4, length);
        int i11 = length + 4;
        bArr[i11] = 0;
        datagramPacket.setAddress(this.address);
        datagramPacket.setPort(this.port);
        datagramPacket.setData(bArr);
        datagramPacket.setLength(i11);
        return datagramPacket;
    }

    @Override // org.apache.commons.net.tftp.TFTPPacket
    public String toString() {
        return super.toString() + " ERR " + this.error + " " + this.message;
    }

    @Override // org.apache.commons.net.tftp.TFTPPacket
    public DatagramPacket newDatagram() {
        int length = this.message.length();
        int i10 = length + 5;
        byte[] bArr = new byte[i10];
        bArr[0] = 0;
        bArr[1] = (byte) this.type;
        int i11 = this.error;
        bArr[2] = (byte) ((65535 & i11) >> 8);
        bArr[3] = (byte) (i11 & 255);
        System.arraycopy(this.message.getBytes(Charset.defaultCharset()), 0, bArr, 4, length);
        bArr[length + 4] = 0;
        return new DatagramPacket(bArr, i10, this.address, this.port);
    }

    public TFTPErrorPacket(InetAddress inetAddress, int i10, int i11, String str) {
        super(5, inetAddress, i10);
        this.error = i11;
        this.message = str;
    }
}
