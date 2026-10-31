package org.apache.commons.net.ntp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import n0.b;
import org.apache.commons.net.DatagramSocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class NTPUDPClient extends DatagramSocketClient {
    public static final int DEFAULT_PORT = 123;
    private int version = 3;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TimeInfo getTime(InetAddress inetAddress, int i) throws IOException {
        if (!isOpen()) {
            open();
        }
        NtpV3Impl ntpV3Impl = new NtpV3Impl();
        ntpV3Impl.setMode(3);
        ntpV3Impl.setVersion(this.version);
        DatagramPacket datagramPacket = ntpV3Impl.getDatagramPacket();
        datagramPacket.setAddress(inetAddress);
        datagramPacket.setPort(i);
        NtpV3Impl ntpV3Impl2 = new NtpV3Impl();
        DatagramPacket datagramPacket2 = ntpV3Impl2.getDatagramPacket();
        TimeStamp currentTime = TimeStamp.getCurrentTime();
        ntpV3Impl.setTransmitTime(currentTime);
        checkOpen().send(datagramPacket);
        checkOpen().receive(datagramPacket2);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (currentTime.equals(ntpV3Impl2.getOriginateTimeStamp())) {
            return new TimeInfo((NtpV3Packet) ntpV3Impl2, jCurrentTimeMillis, false);
        }
        b.A("Originate time does not match the request");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVersion() {
        return this.version;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVersion(int i) {
        this.version = i;
    }

    public TimeInfo getTime(InetAddress inetAddress) {
        return getTime(inetAddress, 123);
    }
}
