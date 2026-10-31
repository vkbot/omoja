package f5;

import android.net.Network;
import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import com.google.protobuf.i1;
import com.google.protobuf.x0;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class x implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2253b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ x(int i9, Object obj, Object obj2) {
        this.f2253b = i9;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Callable
    public final Object call() throws Throwable {
        com.google.protobuf.j iVar;
        Socket socket;
        switch (this.f2253b) {
            case 0:
                y yVar = (y) this.c;
                x0 x0Var = (x0) this.d;
                synchronized (yVar) {
                    try {
                        try {
                            FileInputStream fileInputStreamOpenFileInput = yVar.f2254a.openFileInput(yVar.f2255b);
                            try {
                                com.google.protobuf.x xVar = (com.google.protobuf.x) x0Var;
                                xVar.getClass();
                                com.google.protobuf.p pVar = com.google.protobuf.x.f1581b;
                                if (fileInputStreamOpenFileInput == null) {
                                    byte[] bArr = com.google.protobuf.b0.f1474b;
                                    iVar = com.google.protobuf.j.d(bArr, 0, bArr.length, false);
                                } else {
                                    iVar = new com.google.protobuf.i(fileInputStreamOpenFileInput);
                                }
                                com.google.protobuf.y yVarA = xVar.a(iVar, pVar);
                                iVar.a(0);
                                if (!com.google.protobuf.y.h(yVarA, true)) {
                                    throw new com.google.protobuf.d0(new i1().getMessage());
                                }
                                if (fileInputStreamOpenFileInput != null) {
                                    fileInputStreamOpenFileInput.close();
                                }
                                return yVarA;
                            } catch (Throwable th) {
                                if (fileInputStreamOpenFileInput != null) {
                                    try {
                                        fileInputStreamOpenFileInput.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    break;
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    } catch (com.google.protobuf.d0 | FileNotFoundException e) {
                        e3.d.n("Recoverable exception while reading cache: " + e.getMessage());
                        return null;
                    }
                }
            case 1:
                y yVar2 = (y) this.c;
                com.google.protobuf.a aVar = (com.google.protobuf.a) this.d;
                synchronized (yVar2) {
                    FileOutputStream fileOutputStreamOpenFileOutput = yVar2.f2254a.openFileOutput(yVar2.f2255b, 0);
                    try {
                        fileOutputStreamOpenFileOutput.write(aVar.b());
                        fileOutputStreamOpenFileOutput.close();
                    } catch (Throwable th4) {
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (Throwable th5) {
                                th4.addSuppressed(th5);
                            }
                            break;
                        }
                        throw th4;
                    }
                }
                return aVar;
            default:
                q0.d dVar = (q0.d) this.c;
                q0.c cVar = (q0.c) this.d;
                Socket socket2 = null;
                if (!dVar.e.get()) {
                    return null;
                }
                try {
                    Network network = cVar.f4764b;
                    socket = network == null ? new Socket() : network.getSocketFactory().createSocket();
                    try {
                        socket.setTcpNoDelay(true);
                        socket.connect(new InetSocketAddress(cVar.f4763a, dVar.f4771h), 220);
                        socket.setSoTimeout(TypedValues$TransitionType.TYPE_DURATION);
                        OutputStream outputStream = socket.getOutputStream();
                        outputStream.write(1);
                        outputStream.flush();
                        DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
                        int i9 = dataInputStream.readInt();
                        if (i9 > 0 && i9 <= 65536) {
                            byte[] bArr2 = new byte[i9];
                            dataInputStream.readFully(bArr2);
                            if (!j4.b.c(bArr2).c) {
                                cVar = null;
                            }
                            try {
                                socket.close();
                                break;
                            } catch (IOException unused) {
                            }
                            return cVar;
                        }
                    } catch (IOException | RuntimeException unused2) {
                        if (socket == null) {
                            return null;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        socket2 = socket;
                        if (socket2 != null) {
                            try {
                                socket2.close();
                                break;
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException | RuntimeException unused4) {
                    socket = null;
                } catch (Throwable th7) {
                    th = th7;
                }
                try {
                    socket.close();
                    return null;
                } catch (IOException unused5) {
                    return null;
                }
        }
    }
}
