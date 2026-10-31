package org.apache.commons.net.time;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.util.Date;
import kotlin.UByte;
import org.apache.commons.net.DatagramSocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class TimeUDPClient extends DatagramSocketClient {
    public static final int DEFAULT_PORT = 37;
    public static final long SECONDS_1900_TO_1970 = 2208988800L;

    public static long toTime(byte[] bArr) {
        return (((long) ((bArr[0] & UByte.MAX_VALUE) << 24)) & 4294967295L) | (((long) ((bArr[1] & UByte.MAX_VALUE) << 16)) & 4294967295L) | (((long) ((bArr[2] & UByte.MAX_VALUE) << 8)) & 4294967295L) | (4294967295L & ((long) (bArr[3] & UByte.MAX_VALUE)));
    }

    public Date getDate(InetAddress inetAddress) {
        return new Date((getTime(inetAddress, 37) - 2208988800L) * 1000);
    }

    public long getTime(InetAddress inetAddress, int i10) throws IOException {
        byte[] bArr = new byte[4];
        DatagramPacket datagramPacket = new DatagramPacket(new byte[1], 1, inetAddress, i10);
        DatagramPacket datagramPacket2 = new DatagramPacket(bArr, 4);
        checkOpen().send(datagramPacket);
        checkOpen().receive(datagramPacket2);
        return toTime(bArr);
    }

    public Date getDate(InetAddress inetAddress, int i10) {
        return new Date((getTime(inetAddress, i10) - 2208988800L) * 1000);
    }

    public long getTime(InetAddress inetAddress) {
        return getTime(inetAddress, 37);
    }
}
