package org.apache.commons.net.ntp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import org.apache.commons.net.DatagramSocketClient;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class NTPUDPClient extends DatagramSocketClient {
    public static final int DEFAULT_PORT = 123;
    private int version = 3;

    public TimeInfo getTime(InetAddress inetAddress, int i10) throws IOException {
        if (!isOpen()) {
            open();
        }
        NtpV3Impl ntpV3Impl = new NtpV3Impl();
        ntpV3Impl.setMode(3);
        ntpV3Impl.setVersion(this.version);
        DatagramPacket datagramPacket = ntpV3Impl.getDatagramPacket();
        datagramPacket.setAddress(inetAddress);
        datagramPacket.setPort(i10);
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
        C2467b.m3820A("Originate time does not match the request");
        return null;
    }

    public int getVersion() {
        return this.version;
    }

    public void setVersion(int i10) {
        this.version = i10;
    }

    public TimeInfo getTime(InetAddress inetAddress) {
        return getTime(inetAddress, 123);
    }
}
