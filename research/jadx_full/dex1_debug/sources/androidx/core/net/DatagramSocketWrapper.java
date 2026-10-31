package androidx.core.net;

import java.io.FileDescriptor;
import java.net.DatagramSocket;
import java.net.Socket;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class DatagramSocketWrapper extends Socket {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DatagramSocketWrapper(DatagramSocket datagramSocket, FileDescriptor fileDescriptor) {
        super(new DatagramSocketWrapper$DatagramSocketImplWrapper(datagramSocket, fileDescriptor));
    }
}
