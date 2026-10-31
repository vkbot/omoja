package org.apache.commons.net.tftp;

import java.net.DatagramPacket;
import java.net.InetAddress;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class TFTPWriteRequestPacket extends TFTPRequestPacket {
    public TFTPWriteRequestPacket(InetAddress inetAddress, int i10, String str, int i11) {
        super(inetAddress, i10, 2, str, i11);
    }

    @Override // org.apache.commons.net.tftp.TFTPPacket
    public String toString() {
        return super.toString() + " WRQ " + getFilename() + " " + TFTP.getModeName(getMode());
    }

    public TFTPWriteRequestPacket(DatagramPacket datagramPacket) {
        super(2, datagramPacket);
    }
}
