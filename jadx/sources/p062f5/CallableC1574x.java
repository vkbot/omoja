package p062f5;

import android.net.Network;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.protobuf.AbstractC1128a;
import com.google.protobuf.AbstractC1133b0;
import com.google.protobuf.AbstractC1157j;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1140d0;
import com.google.protobuf.C1154i;
import com.google.protobuf.C1156i1;
import com.google.protobuf.C1175p;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.concurrent.Callable;
import p050e3.C1461d;
import p102j4.C1963b;
import p173q0.C3039c;
import p173q0.C3040d;

/* JADX INFO: renamed from: f5.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CallableC1574x implements Callable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3892b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3893c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3894d;

    public /* synthetic */ CallableC1574x(int i10, Object obj, Object obj2) {
        this.f3892b = i10;
        this.f3893c = obj;
        this.f3894d = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Throwable {
        AbstractC1157j c1154i;
        Socket socket;
        switch (this.f3892b) {
            case 0:
                C1575y c1575y = (C1575y) this.f3893c;
                InterfaceC1200x0 interfaceC1200x0 = (InterfaceC1200x0) this.f3894d;
                synchronized (c1575y) {
                    try {
                        try {
                            FileInputStream fileInputStreamOpenFileInput = c1575y.f3895a.openFileInput(c1575y.f3896b);
                            try {
                                C1199x c1199x = (C1199x) interfaceC1200x0;
                                c1199x.getClass();
                                C1175p c1175p = C1199x.f2793b;
                                if (fileInputStreamOpenFileInput == null) {
                                    byte[] bArr = AbstractC1133b0.f2635b;
                                    c1154i = AbstractC1157j.m2005d(bArr, 0, bArr.length, false);
                                } else {
                                    c1154i = new C1154i(fileInputStreamOpenFileInput);
                                }
                                AbstractC1202y abstractC1202yM2168a = c1199x.m2168a(c1154i, c1175p);
                                c1154i.mo1963a(0);
                                if (!AbstractC1202y.m2171h(abstractC1202yM2168a, true)) {
                                    throw new C1140d0(new C1156i1().getMessage());
                                }
                                if (fileInputStreamOpenFileInput != null) {
                                    fileInputStreamOpenFileInput.close();
                                }
                                return abstractC1202yM2168a;
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
                        } catch (C1140d0 | FileNotFoundException e) {
                            C1461d.m2514n("Recoverable exception while reading cache: " + e.getMessage());
                            return null;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            case 1:
                C1575y c1575y2 = (C1575y) this.f3893c;
                AbstractC1128a abstractC1128a = (AbstractC1128a) this.f3894d;
                synchronized (c1575y2) {
                    FileOutputStream fileOutputStreamOpenFileOutput = c1575y2.f3895a.openFileOutput(c1575y2.f3896b, 0);
                    try {
                        fileOutputStreamOpenFileOutput.write(abstractC1128a.m1894b());
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
                return abstractC1128a;
            default:
                C3040d c3040d = (C3040d) this.f3893c;
                C3039c c3039c = (C3039c) this.f3894d;
                Socket socket2 = null;
                if (!c3040d.f8542e.get()) {
                    return null;
                }
                try {
                    Network network = c3039c.f8535b;
                    socket = network == null ? new Socket() : network.getSocketFactory().createSocket();
                    try {
                        socket.setTcpNoDelay(true);
                        socket.connect(new InetSocketAddress(c3039c.f8534a, c3040d.f8545h), 220);
                        socket.setSoTimeout(TypedValues.TransitionType.TYPE_DURATION);
                        OutputStream outputStream = socket.getOutputStream();
                        outputStream.write(1);
                        outputStream.flush();
                        DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
                        int i10 = dataInputStream.readInt();
                        if (i10 > 0 && i10 <= 65536) {
                            byte[] bArr2 = new byte[i10];
                            dataInputStream.readFully(bArr2);
                            if (!C1963b.m3064c(bArr2).f5346c) {
                                c3039c = null;
                            }
                            try {
                                socket.close();
                                break;
                            } catch (IOException unused) {
                            }
                            return c3039c;
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
