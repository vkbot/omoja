package org.apache.commons.net.tftp;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketException;
import org.apache.commons.net.p162io.FromNetASCIIOutputStream;
import org.apache.commons.net.p162io.ToNetASCIIInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class TFTPClient extends TFTP {
    public static final int DEFAULT_MAX_TIMEOUTS = 5;
    private int maxTimeouts = 5;
    private long totalBytesReceived;
    private long totalBytesSent;

    public int getMaxTimeouts() {
        return this.maxTimeouts;
    }

    public long getTotalBytesReceived() {
        return this.totalBytesReceived;
    }

    public long getTotalBytesSent() {
        return this.totalBytesSent;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x01ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x019c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x01a3 A[LOOP:0: B:114:0x002f->B:88:0x01a3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:89:0x01a9 A[LOOP:1: B:104:0x0034->B:89:0x01a9, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r18v0, types: [org.apache.commons.net.tftp.TFTP, org.apache.commons.net.tftp.TFTPClient] */
    public int receiveFile(String str, int i10, OutputStream outputStream, InetAddress inetAddress, int i11) {
        ?? r1;
        ?? r9;
        TFTPDataPacket tFTPDataPacket;
        InetAddress inetAddress2;
        TFTPDataPacket tFTPDataPacket2;
        InetAddress inetAddress3;
        TFTPDataPacket tFTPDataPacket3;
        InetAddress inetAddress4 = inetAddress;
        int i12 = i11;
        this.totalBytesReceived = 0L;
        OutputStream fromNetASCIIOutputStream = i10 == 0 ? new FromNetASCIIOutputStream(outputStream) : outputStream;
        TFTPPacket tFTPReadRequestPacket = new TFTPReadRequestPacket(inetAddress4, i12, str, i10);
        int i13 = 0;
        TFTPAckPacket tFTPAckPacket = new TFTPAckPacket(inetAddress4, i12, 0);
        beginBufferedOps();
        int port = 0;
        int i14 = 0;
        int blockNumber = 0;
        int dataLength = 0;
        ?? r10 = 1;
        int i15 = 1;
        while (true) {
            try {
                bufferedSend(tFTPReadRequestPacket);
                int i16 = i13;
                boolean z9 = true;
                ?? r11 = r10;
                while (true) {
                    try {
                        try {
                            TFTPPacket tFTPPacketBufferedReceive = bufferedReceive();
                            port = tFTPPacketBufferedReceive.getPort();
                            InetAddress address = tFTPPacketBufferedReceive.getAddress();
                            boolean z10 = r11 == true ? 1 : 0;
                            try {
                                if (z10) {
                                    if (port != i12) {
                                        try {
                                            tFTPAckPacket.setPort(port);
                                            if (inetAddress4.equals(address)) {
                                                inetAddress2 = inetAddress4;
                                            } else {
                                                try {
                                                    tFTPAckPacket.setAddress(address);
                                                    tFTPReadRequestPacket.setAddress(address);
                                                    inetAddress2 = address;
                                                } catch (InterruptedIOException | SocketException unused) {
                                                    port = port;
                                                    inetAddress4 = address;
                                                    r9 = 0;
                                                }
                                            }
                                            tFTPDataPacket = null;
                                        } catch (InterruptedIOException | SocketException unused2) {
                                            port = port;
                                        }
                                    } else {
                                        try {
                                            InetAddress inetAddress5 = inetAddress4;
                                            try {
                                                bufferedSend(new TFTPErrorPacket(address, port, 5, "INCORRECT SOURCE PORT"));
                                                throw new IOException("Incorrect source port (" + port + ") in request reply.");
                                            } catch (InterruptedIOException | SocketException unused3) {
                                                inetAddress4 = inetAddress5;
                                            }
                                        } catch (InterruptedIOException | SocketException unused4) {
                                        }
                                    }
                                    r9 = 0;
                                    i16++;
                                    r1 = r9;
                                    if (i16 >= this.maxTimeouts) {
                                        throw new IOException("Connection timed out.");
                                    }
                                    if (!z9) {
                                        break;
                                    }
                                    i12 = i11;
                                    r11 = r1;
                                } else {
                                    InetAddress inetAddress6 = inetAddress4;
                                    tFTPDataPacket = z10 ? 1 : 0;
                                    inetAddress2 = inetAddress6;
                                }
                                if (inetAddress2.equals(address) && port == port) {
                                    try {
                                        int type = tFTPPacketBufferedReceive.getType();
                                        if (type != 3) {
                                            try {
                                                if (type != 5) {
                                                    throw new IOException("Received unexpected packet type (" + tFTPPacketBufferedReceive.getType() + ")");
                                                }
                                                TFTPErrorPacket tFTPErrorPacket = (TFTPErrorPacket) tFTPPacketBufferedReceive;
                                                throw new IOException("Error code " + tFTPErrorPacket.getError() + " received: " + tFTPErrorPacket.getMessage());
                                            } catch (InterruptedIOException | SocketException unused5) {
                                                r9 = tFTPDataPacket;
                                                inetAddress4 = inetAddress2;
                                            }
                                        } else {
                                            tFTPDataPacket3 = (TFTPDataPacket) tFTPPacketBufferedReceive;
                                            dataLength = tFTPDataPacket3.getDataLength();
                                            blockNumber = tFTPDataPacket3.getBlockNumber();
                                            if (blockNumber == i15) {
                                                try {
                                                    fromNetASCIIOutputStream.write(tFTPDataPacket3.getData(), tFTPDataPacket3.getDataOffset(), dataLength);
                                                    i15++;
                                                    if (i15 > 65535) {
                                                        i15 = 0;
                                                    }
                                                    tFTPDataPacket2 = tFTPDataPacket;
                                                    inetAddress3 = inetAddress2;
                                                    z9 = false;
                                                } catch (IOException e) {
                                                    tFTPDataPacket3 = tFTPDataPacket;
                                                    bufferedSend(new TFTPErrorPacket(inetAddress2, port, 3, "File write failed."));
                                                    throw e;
                                                }
                                            } else {
                                                try {
                                                    tFTPDataPacket2 = tFTPDataPacket;
                                                    discardPackets();
                                                    inetAddress3 = inetAddress2;
                                                    if (blockNumber == (i15 != 0 ? i15 - 1 : 65535)) {
                                                        z9 = false;
                                                    }
                                                } catch (InterruptedIOException | SocketException unused6) {
                                                    inetAddress4 = inetAddress2;
                                                    r9 = tFTPDataPacket3;
                                                    i16++;
                                                    r1 = r9;
                                                    if (i16 >= this.maxTimeouts) {
                                                        throw new IOException("Connection timed out.");
                                                    }
                                                }
                                            }
                                        }
                                    } catch (InterruptedIOException | SocketException unused7) {
                                        tFTPDataPacket3 = tFTPDataPacket;
                                    }
                                    inetAddress4 = inetAddress2;
                                    r9 = tFTPDataPacket3;
                                    i16++;
                                    r1 = r9;
                                    if (i16 >= this.maxTimeouts) {
                                        throw new IOException("Connection timed out.");
                                    }
                                    if (!z9) {
                                        break;
                                    }
                                    i12 = i11;
                                    r11 = r1;
                                } else {
                                    tFTPDataPacket2 = tFTPDataPacket;
                                    try {
                                        inetAddress3 = inetAddress2;
                                        try {
                                            bufferedSend(new TFTPErrorPacket(address, port, 5, "Unexpected host or port."));
                                        } catch (InterruptedIOException | SocketException unused8) {
                                            r9 = tFTPDataPacket2;
                                            inetAddress4 = inetAddress3;
                                            i16++;
                                            r1 = r9;
                                            if (i16 >= this.maxTimeouts) {
                                                throw new IOException("Connection timed out.");
                                            }
                                        }
                                    } catch (InterruptedIOException | SocketException unused9) {
                                        inetAddress3 = inetAddress2;
                                        r9 = tFTPDataPacket2;
                                        inetAddress4 = inetAddress3;
                                        i16++;
                                        r1 = r9;
                                        if (i16 >= this.maxTimeouts) {
                                            throw new IOException("Connection timed out.");
                                        }
                                        if (!z9) {
                                            tFTPAckPacket.setBlockNumber(blockNumber);
                                            i14 += dataLength;
                                            this.totalBytesReceived += (long) dataLength;
                                            if (dataLength != 512) {
                                                bufferedSend(tFTPAckPacket);
                                                endBufferedOps();
                                                return i14;
                                            }
                                            i12 = i11;
                                            tFTPReadRequestPacket = tFTPAckPacket;
                                            i13 = 0;
                                            r10 = r1;
                                        } else {
                                            i12 = i11;
                                            r11 = r1;
                                        }
                                    }
                                }
                                r1 = tFTPDataPacket2;
                                inetAddress4 = inetAddress3;
                            } catch (InterruptedIOException | SocketException unused10) {
                                tFTPDataPacket2 = tFTPDataPacket;
                            }
                        } catch (TFTPPacketException e6) {
                            throw new IOException("Bad packet: " + e6.getMessage());
                        }
                    } catch (InterruptedIOException | SocketException unused11) {
                        boolean z11 = r11 == true ? 1 : 0;
                        r9 = r11;
                    }
                    if (!z9) {
                        break;
                    }
                    i12 = i11;
                    r11 = r1;
                }
                tFTPAckPacket.setBlockNumber(blockNumber);
                i14 += dataLength;
                this.totalBytesReceived += (long) dataLength;
                if (dataLength != 512) {
                    bufferedSend(tFTPAckPacket);
                    endBufferedOps();
                    return i14;
                }
                i12 = i11;
                tFTPReadRequestPacket = tFTPAckPacket;
                i13 = 0;
                r10 = r1;
            } catch (Throwable th) {
                endBufferedOps();
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0144 A[LOOP:1: B:72:0x0039->B:62:0x0144, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:80:0x0148 A[SYNTHETIC] */
    public void sendFile(String str, int i10, InputStream inputStream, InetAddress inetAddress, int i11) {
        int i12 = i11;
        this.totalBytesSent = 0L;
        InputStream toNetASCIIInputStream = i10 == 0 ? new ToNetASCIIInputStream(inputStream) : inputStream;
        TFTPPacket tFTPWriteRequestPacket = new TFTPWriteRequestPacket(inetAddress, i12, str, i10);
        TFTPDataPacket tFTPDataPacket = new TFTPDataPacket(inetAddress, i12, 0, this.sendBuffer, 4, 0);
        beginBufferedOps();
        InetAddress inetAddress2 = inetAddress;
        boolean z9 = true;
        int i13 = 0;
        int i14 = 0;
        boolean z10 = false;
        while (true) {
            try {
                bufferedSend(tFTPWriteRequestPacket);
                boolean z11 = true;
                int i15 = 0;
                while (true) {
                    try {
                        try {
                            TFTPPacket tFTPPacketBufferedReceive = bufferedReceive();
                            InetAddress address = tFTPPacketBufferedReceive.getAddress();
                            int port = tFTPPacketBufferedReceive.getPort();
                            if (z9) {
                                if (port != i12) {
                                    try {
                                        tFTPDataPacket.setPort(port);
                                        if (!inetAddress2.equals(address)) {
                                            try {
                                                tFTPDataPacket.setAddress(address);
                                                tFTPWriteRequestPacket.setAddress(address);
                                                inetAddress2 = address;
                                            } catch (InterruptedIOException | SocketException unused) {
                                                inetAddress2 = address;
                                                i13 = port;
                                                z9 = false;
                                                i15++;
                                                if (i15 >= this.maxTimeouts) {
                                                    throw new IOException("Connection timed out.");
                                                }
                                            }
                                        }
                                        i13 = port;
                                        z9 = false;
                                    } catch (InterruptedIOException | SocketException unused2) {
                                    }
                                } else {
                                    try {
                                        bufferedSend(new TFTPErrorPacket(address, port, 5, "INCORRECT SOURCE PORT"));
                                        throw new IOException("Incorrect source port (" + port + ") in request reply.");
                                    } catch (InterruptedIOException | SocketException unused3) {
                                    }
                                }
                                z9 = false;
                                i15++;
                                if (i15 >= this.maxTimeouts) {
                                    throw new IOException("Connection timed out.");
                                }
                                if (!z11) {
                                    break;
                                } else {
                                    i12 = i11;
                                }
                            }
                            if (inetAddress2.equals(address) && port == i13) {
                                int type = tFTPPacketBufferedReceive.getType();
                                if (type != 4) {
                                    if (type != 5) {
                                        throw new IOException("Received unexpected packet type.");
                                    }
                                    TFTPErrorPacket tFTPErrorPacket = (TFTPErrorPacket) tFTPPacketBufferedReceive;
                                    throw new IOException("Error code " + tFTPErrorPacket.getError() + " received: " + tFTPErrorPacket.getMessage());
                                }
                                if (((TFTPAckPacket) tFTPPacketBufferedReceive).getBlockNumber() == i14) {
                                    i14++;
                                    if (i14 > 65535) {
                                        i14 = 0;
                                    }
                                    z11 = false;
                                } else {
                                    discardPackets();
                                }
                            } else {
                                bufferedSend(new TFTPErrorPacket(address, port, 5, "Unexpected host or port."));
                            }
                        } catch (TFTPPacketException e) {
                            throw new IOException("Bad packet: " + e.getMessage());
                        }
                    } catch (InterruptedIOException | SocketException unused4) {
                    }
                    if (!z11) {
                        break;
                    } else {
                        i12 = i11;
                    }
                }
                if (z10) {
                    endBufferedOps();
                    return;
                }
                int i16 = 512;
                int i17 = 4;
                int i18 = 0;
                while (i16 > 0) {
                    int i19 = toNetASCIIInputStream.read(this.sendBuffer, i17, i16);
                    if (i19 <= 0) {
                        break;
                    }
                    i17 += i19;
                    i16 -= i19;
                    i18 += i19;
                }
                if (i18 < 512) {
                    z10 = true;
                }
                tFTPDataPacket.setBlockNumber(i14);
                tFTPDataPacket.setData(this.sendBuffer, 4, i18);
                this.totalBytesSent += (long) i18;
                i12 = i11;
                tFTPWriteRequestPacket = tFTPDataPacket;
            } catch (Throwable th) {
                endBufferedOps();
                throw th;
            }
        }
    }

    public void setMaxTimeouts(int i10) {
        this.maxTimeouts = Math.max(i10, 1);
    }

    public void sendFile(String str, int i10, InputStream inputStream, InetAddress inetAddress) {
        sendFile(str, i10, inputStream, inetAddress, 69);
    }

    public void sendFile(String str, int i10, InputStream inputStream, String str2) {
        sendFile(str, i10, inputStream, InetAddress.getByName(str2), 69);
    }

    public void sendFile(String str, int i10, InputStream inputStream, String str2, int i11) {
        sendFile(str, i10, inputStream, InetAddress.getByName(str2), i11);
    }

    public int receiveFile(String str, int i10, OutputStream outputStream, InetAddress inetAddress) {
        return receiveFile(str, i10, outputStream, inetAddress, 69);
    }

    public int receiveFile(String str, int i10, OutputStream outputStream, String str2) {
        return receiveFile(str, i10, outputStream, InetAddress.getByName(str2), 69);
    }

    public int receiveFile(String str, int i10, OutputStream outputStream, String str2, int i11) {
        return receiveFile(str, i10, outputStream, InetAddress.getByName(str2), i11);
    }
}
