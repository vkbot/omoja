package org.apache.commons.net.tftp;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketException;
import okhttp3.internal.http2.Settings;
import org.apache.commons.net.io.FromNetASCIIOutputStream;
import org.apache.commons.net.io.ToNetASCIIInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class TFTPClient extends TFTP {
    public static final int DEFAULT_MAX_TIMEOUTS = 5;
    private int maxTimeouts = 5;
    private long totalBytesReceived;
    private long totalBytesSent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxTimeouts() {
        return this.maxTimeouts;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getTotalBytesReceived() {
        return this.totalBytesReceived;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getTotalBytesSent() {
        return this.totalBytesSent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public int receiveFile(String str, int i, OutputStream outputStream, InetAddress inetAddress, int i2) {
        ?? r0;
        ?? r1;
        TFTPDataPacket tFTPDataPacket;
        InetAddress inetAddress2;
        TFTPDataPacket tFTPDataPacket2;
        InetAddress inetAddress3;
        TFTPDataPacket tFTPDataPacket3;
        InetAddress inetAddress4 = inetAddress;
        int i3 = i2;
        this.totalBytesReceived = 0L;
        OutputStream fromNetASCIIOutputStream = i == 0 ? new FromNetASCIIOutputStream(outputStream) : outputStream;
        TFTPPacket tFTPReadRequestPacket = new TFTPReadRequestPacket(inetAddress4, i3, str, i);
        int i4 = 0;
        TFTPAckPacket tFTPAckPacket = new TFTPAckPacket(inetAddress4, i3, 0);
        beginBufferedOps();
        int port = 0;
        int i5 = 0;
        int blockNumber = 0;
        int dataLength = 0;
        ?? r2 = 1;
        int i6 = 1;
        while (true) {
            try {
                bufferedSend(tFTPReadRequestPacket);
                int i7 = i4;
                boolean z = true;
                ?? r3 = r2;
                while (true) {
                    try {
                        try {
                            TFTPPacket tFTPPacketBufferedReceive = bufferedReceive();
                            port = tFTPPacketBufferedReceive.getPort();
                            InetAddress address = tFTPPacketBufferedReceive.getAddress();
                            boolean z2 = r3 == true ? 1 : 0;
                            try {
                                if (z2) {
                                    if (port != i3) {
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
                                                    r1 = 0;
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
                                    r1 = 0;
                                    i7++;
                                    r0 = r1;
                                    if (i7 >= this.maxTimeouts) {
                                        throw new IOException("Connection timed out.");
                                    }
                                    if (!z) {
                                        break;
                                    }
                                    i3 = i2;
                                    r3 = r0;
                                } else {
                                    InetAddress inetAddress6 = inetAddress4;
                                    tFTPDataPacket = z2 ? 1 : 0;
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
                                                r1 = tFTPDataPacket;
                                                inetAddress4 = inetAddress2;
                                            }
                                        } else {
                                            tFTPDataPacket3 = (TFTPDataPacket) tFTPPacketBufferedReceive;
                                            dataLength = tFTPDataPacket3.getDataLength();
                                            blockNumber = tFTPDataPacket3.getBlockNumber();
                                            int i8 = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
                                            if (blockNumber == i6) {
                                                try {
                                                    fromNetASCIIOutputStream.write(tFTPDataPacket3.getData(), tFTPDataPacket3.getDataOffset(), dataLength);
                                                    i6++;
                                                    if (i6 > 65535) {
                                                        i6 = 0;
                                                    }
                                                    tFTPDataPacket2 = tFTPDataPacket;
                                                    inetAddress3 = inetAddress2;
                                                    z = false;
                                                } catch (IOException e) {
                                                    tFTPDataPacket3 = tFTPDataPacket;
                                                    bufferedSend(new TFTPErrorPacket(inetAddress2, port, 3, "File write failed."));
                                                    throw e;
                                                }
                                            } else {
                                                try {
                                                    tFTPDataPacket2 = tFTPDataPacket;
                                                    discardPackets();
                                                    if (i6 != 0) {
                                                        i8 = i6 - 1;
                                                    }
                                                    inetAddress3 = inetAddress2;
                                                    if (blockNumber == i8) {
                                                        z = false;
                                                    }
                                                } catch (InterruptedIOException | SocketException unused6) {
                                                    inetAddress4 = inetAddress2;
                                                    r1 = tFTPDataPacket3;
                                                    i7++;
                                                    r0 = r1;
                                                    if (i7 >= this.maxTimeouts) {
                                                        throw new IOException("Connection timed out.");
                                                    }
                                                }
                                            }
                                        }
                                    } catch (InterruptedIOException | SocketException unused7) {
                                        tFTPDataPacket3 = tFTPDataPacket;
                                    }
                                    inetAddress4 = inetAddress2;
                                    r1 = tFTPDataPacket3;
                                    i7++;
                                    r0 = r1;
                                    if (i7 >= this.maxTimeouts) {
                                        throw new IOException("Connection timed out.");
                                    }
                                    if (!z) {
                                        break;
                                    }
                                    i3 = i2;
                                    r3 = r0;
                                } else {
                                    tFTPDataPacket2 = tFTPDataPacket;
                                    try {
                                        inetAddress3 = inetAddress2;
                                        try {
                                            bufferedSend(new TFTPErrorPacket(address, port, 5, "Unexpected host or port."));
                                        } catch (InterruptedIOException | SocketException unused8) {
                                            r1 = tFTPDataPacket2;
                                            inetAddress4 = inetAddress3;
                                            i7++;
                                            r0 = r1;
                                            if (i7 >= this.maxTimeouts) {
                                                throw new IOException("Connection timed out.");
                                            }
                                        }
                                    } catch (InterruptedIOException | SocketException unused9) {
                                        inetAddress3 = inetAddress2;
                                        r1 = tFTPDataPacket2;
                                        inetAddress4 = inetAddress3;
                                        i7++;
                                        r0 = r1;
                                        if (i7 >= this.maxTimeouts) {
                                            throw new IOException("Connection timed out.");
                                        }
                                        if (!z) {
                                            tFTPAckPacket.setBlockNumber(blockNumber);
                                            i5 += dataLength;
                                            this.totalBytesReceived += (long) dataLength;
                                            if (dataLength != 512) {
                                                bufferedSend(tFTPAckPacket);
                                                endBufferedOps();
                                                return i5;
                                            }
                                            i3 = i2;
                                            tFTPReadRequestPacket = tFTPAckPacket;
                                            i4 = 0;
                                            r2 = r0;
                                        } else {
                                            i3 = i2;
                                            r3 = r0;
                                        }
                                    }
                                }
                                r0 = tFTPDataPacket2;
                                inetAddress4 = inetAddress3;
                            } catch (InterruptedIOException | SocketException unused10) {
                                tFTPDataPacket2 = tFTPDataPacket;
                            }
                        } catch (InterruptedIOException | SocketException unused11) {
                            boolean z3 = r3 == true ? 1 : 0;
                            r1 = r3;
                        }
                        if (!z) {
                            break;
                        }
                        i3 = i2;
                        r3 = r0;
                    } catch (TFTPPacketException e2) {
                        throw new IOException("Bad packet: " + e2.getMessage());
                    }
                }
                tFTPAckPacket.setBlockNumber(blockNumber);
                i5 += dataLength;
                this.totalBytesReceived += (long) dataLength;
                if (dataLength != 512) {
                    bufferedSend(tFTPAckPacket);
                    endBufferedOps();
                    return i5;
                }
                i3 = i2;
                tFTPReadRequestPacket = tFTPAckPacket;
                i4 = 0;
                r2 = r0;
            } catch (Throwable th) {
                endBufferedOps();
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:62:0x0144 A[LOOP:1: B:72:0x0039->B:62:0x0144, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:80:0x0148 A[SYNTHETIC] */
    public void sendFile(String str, int i, InputStream inputStream, InetAddress inetAddress, int i2) {
        int i3 = i2;
        this.totalBytesSent = 0L;
        InputStream toNetASCIIInputStream = i == 0 ? new ToNetASCIIInputStream(inputStream) : inputStream;
        TFTPPacket tFTPWriteRequestPacket = new TFTPWriteRequestPacket(inetAddress, i3, str, i);
        TFTPDataPacket tFTPDataPacket = new TFTPDataPacket(inetAddress, i3, 0, this.sendBuffer, 4, 0);
        beginBufferedOps();
        InetAddress inetAddress2 = inetAddress;
        boolean z = true;
        int i4 = 0;
        int i5 = 0;
        boolean z2 = false;
        while (true) {
            try {
                bufferedSend(tFTPWriteRequestPacket);
                boolean z3 = true;
                int i6 = 0;
                while (true) {
                    try {
                        try {
                            TFTPPacket tFTPPacketBufferedReceive = bufferedReceive();
                            InetAddress address = tFTPPacketBufferedReceive.getAddress();
                            int port = tFTPPacketBufferedReceive.getPort();
                            if (z) {
                                if (port != i3) {
                                    try {
                                        tFTPDataPacket.setPort(port);
                                        if (!inetAddress2.equals(address)) {
                                            try {
                                                tFTPDataPacket.setAddress(address);
                                                tFTPWriteRequestPacket.setAddress(address);
                                                inetAddress2 = address;
                                            } catch (InterruptedIOException | SocketException unused) {
                                                inetAddress2 = address;
                                                i4 = port;
                                                z = false;
                                                i6++;
                                                if (i6 >= this.maxTimeouts) {
                                                    throw new IOException("Connection timed out.");
                                                }
                                            }
                                        }
                                        i4 = port;
                                        z = false;
                                    } catch (InterruptedIOException | SocketException unused2) {
                                    }
                                } else {
                                    try {
                                        bufferedSend(new TFTPErrorPacket(address, port, 5, "INCORRECT SOURCE PORT"));
                                        throw new IOException("Incorrect source port (" + port + ") in request reply.");
                                    } catch (InterruptedIOException | SocketException unused3) {
                                    }
                                }
                                z = false;
                                i6++;
                                if (i6 >= this.maxTimeouts) {
                                    throw new IOException("Connection timed out.");
                                }
                                if (!z3) {
                                    break;
                                } else {
                                    i3 = i2;
                                }
                            }
                            if (inetAddress2.equals(address) && port == i4) {
                                int type = tFTPPacketBufferedReceive.getType();
                                if (type != 4) {
                                    if (type != 5) {
                                        throw new IOException("Received unexpected packet type.");
                                    }
                                    TFTPErrorPacket tFTPErrorPacket = (TFTPErrorPacket) tFTPPacketBufferedReceive;
                                    throw new IOException("Error code " + tFTPErrorPacket.getError() + " received: " + tFTPErrorPacket.getMessage());
                                }
                                if (((TFTPAckPacket) tFTPPacketBufferedReceive).getBlockNumber() == i5) {
                                    i5++;
                                    if (i5 > 65535) {
                                        i5 = 0;
                                    }
                                    z3 = false;
                                } else {
                                    discardPackets();
                                }
                            } else {
                                bufferedSend(new TFTPErrorPacket(address, port, 5, "Unexpected host or port."));
                            }
                        } catch (InterruptedIOException | SocketException unused4) {
                        }
                        if (!z3) {
                            break;
                        } else {
                            i3 = i2;
                        }
                    } catch (TFTPPacketException e) {
                        throw new IOException("Bad packet: " + e.getMessage());
                    }
                }
                if (z2) {
                    endBufferedOps();
                    return;
                }
                int i7 = 512;
                int i8 = 4;
                int i10 = 0;
                while (i7 > 0) {
                    int i11 = toNetASCIIInputStream.read(this.sendBuffer, i8, i7);
                    if (i11 <= 0) {
                        break;
                    }
                    i8 += i11;
                    i7 -= i11;
                    i10 += i11;
                }
                if (i10 < 512) {
                    z2 = true;
                }
                tFTPDataPacket.setBlockNumber(i5);
                tFTPDataPacket.setData(this.sendBuffer, 4, i10);
                this.totalBytesSent += (long) i10;
                i3 = i2;
                tFTPWriteRequestPacket = tFTPDataPacket;
            } catch (Throwable th) {
                endBufferedOps();
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxTimeouts(int i) {
        this.maxTimeouts = Math.max(i, 1);
    }

    public void sendFile(String str, int i, InputStream inputStream, InetAddress inetAddress) {
        sendFile(str, i, inputStream, inetAddress, 69);
    }

    public void sendFile(String str, int i, InputStream inputStream, String str2) {
        sendFile(str, i, inputStream, InetAddress.getByName(str2), 69);
    }

    public void sendFile(String str, int i, InputStream inputStream, String str2, int i2) {
        sendFile(str, i, inputStream, InetAddress.getByName(str2), i2);
    }

    public int receiveFile(String str, int i, OutputStream outputStream, InetAddress inetAddress) {
        return receiveFile(str, i, outputStream, inetAddress, 69);
    }

    public int receiveFile(String str, int i, OutputStream outputStream, String str2) {
        return receiveFile(str, i, outputStream, InetAddress.getByName(str2), 69);
    }

    public int receiveFile(String str, int i, OutputStream outputStream, String str2, int i2) {
        return receiveFile(str, i, outputStream, InetAddress.getByName(str2), i2);
    }
}
