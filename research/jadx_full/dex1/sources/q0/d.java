package q0;

import android.content.Context;
import android.net.Network;
import com.example.navistart.MockGPS.MockGpsService;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Inet4Address;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.UByte;
import kotlin.io.encoding.Base64;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f4765n = e0.m.h(new byte[]{-103, 78, 13, -84, 67, 70, 31, 91, -101, 76, 33, -102, 95, 80}, new byte[]{-2, 62, 126, -13, 48, 35, 109, 45});

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f4766o = e0.m.h(new byte[]{-41, 39, -7, -7, -63, -92, -67, 50, -30, 4, -27, -33, -42, -75, -82}, new byte[]{-112, 87, -118, -86, -92, -42, -53, 87});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MockGpsService f4768b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile String f4770g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile Socket f4772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile long f4773j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile long f4774k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile boolean f4775l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile c f4776m;
    public final ExecutorService c = Executors.newSingleThreadExecutor();
    public final ScheduledExecutorService d = Executors.newSingleThreadScheduledExecutor();
    public final AtomicBoolean e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f4769f = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile int f4771h = 8887;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(MockGpsService mockGpsService, MockGpsService mockGpsService2) {
        this.f4767a = mockGpsService.getApplicationContext();
        this.f4768b = mockGpsService2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(LinkedHashMap linkedHashMap, c cVar) {
        Network network = cVar.f4764b;
        StringBuilder sbU = ai.onnxruntime.a.u(network == null ? e0.m.h(new byte[]{76, -106, -85, 97, 2, -121, 118}, new byte[]{40, -13, -51, 0, 119, -21, 2, 54}) : network.toString());
        sbU.append(e0.m.h(new byte[]{11}, new byte[]{119, -22, -8, 104, -57, 34, -106, 73}));
        sbU.append(cVar.f4763a);
        linkedHashMap.putIfAbsent(sbU.toString(), cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(LinkedHashMap linkedHashMap, Inet4Address inet4Address, Network network) {
        byte[] address = inet4Address.getAddress();
        int i9 = address[3] & UByte.MAX_VALUE;
        StringBuilder sb = new StringBuilder();
        sb.append(address[0] & UByte.MAX_VALUE);
        sb.append(e0.m.h(new byte[]{64}, new byte[]{110, 45, -60, 25, -62, 94, -31, -15}));
        sb.append(address[1] & UByte.MAX_VALUE);
        sb.append(e0.m.h(new byte[]{126}, new byte[]{80, -7, 122, 121, -104, 83, 69, 2}));
        sb.append(address[2] & UByte.MAX_VALUE);
        String strI = com.google.protobuf.q.i(new byte[]{65}, new byte[]{111, Base64.padSymbol, -3, -69, -118, 81, 117, 62}, sb);
        for (int i10 = 1; i10 <= 254; i10++) {
            if (i10 != i9) {
                c(linkedHashMap, new c(strI + i10, network));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String g(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return null;
        }
        return strTrim;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String a() {
        String strG = g(this.f4770g);
        if (strG == null && this.f4776m != null) {
            strG = this.f4776m.f4763a;
        }
        if (strG == null) {
            return this.f4767a.getString(2131952213, Integer.valueOf(this.f4771h));
        }
        StringBuilder sbU = ai.onnxruntime.a.u(strG);
        sbU.append(e0.m.h(new byte[]{34}, new byte[]{24, -12, 54, 40, 97, -61, 54, 75}));
        sbU.append(this.f4771h);
        return sbU.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void b(j.i iVar) {
        boolean zEquals;
        String str = this.f4770g;
        int i9 = this.f4771h;
        this.f4770g = g((String) iVar.c);
        int i10 = iVar.f2793b;
        if (i10 <= 0 || i10 > 65535) {
            i10 = 8887;
        }
        this.f4771h = i10;
        String str2 = this.f4770g;
        String strG = g(str);
        String strG2 = g(str2);
        boolean zEquals2 = false;
        if (strG == null) {
            zEquals = strG2 == null;
        } else {
            zEquals = strG.equals(strG2);
        }
        if (!zEquals) {
            this.f4776m = null;
        }
        if (this.e.get()) {
            if (i9 == this.f4771h) {
                String str3 = this.f4770g;
                String strG3 = g(str);
                String strG4 = g(str3);
                if (strG3 != null) {
                    zEquals2 = strG3.equals(strG4);
                } else if (strG4 == null) {
                    zEquals2 = true;
                }
                if (zEquals2) {
                    return;
                }
            }
            e(this.f4772i);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(Socket socket) {
        if (socket == null) {
            return;
        }
        if (this.f4772i == socket) {
            this.f4772i = null;
        }
        try {
            socket.close();
        } catch (IOException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(c cVar, String str) throws IOException {
        Network network = cVar.f4764b;
        Socket socket = network == null ? new Socket() : network.getSocketFactory().createSocket();
        this.f4772i = socket;
        boolean z8 = true;
        socket.setTcpNoDelay(true);
        socket.setKeepAlive(true);
        socket.connect(new InetSocketAddress(cVar.f4763a, this.f4771h), 1200);
        this.f4773j = System.currentTimeMillis();
        this.f4774k = 0L;
        this.f4775l = false;
        MockGpsService mockGpsService = this.f4768b;
        int i9 = 2131952215;
        String string = this.f4767a.getString(2131952215);
        mockGpsService.getClass();
        MockGpsService.j(string, str, true);
        synchronized (this.f4769f) {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(1);
            outputStream.flush();
        }
        DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
        while (this.e.get() && !socket.isClosed()) {
            try {
                int i10 = dataInputStream.readInt();
                if (i10 <= 0 || i10 > 65536) {
                    n0.b.A(this.f4767a.getString(2131952231));
                    return;
                }
                byte[] bArr = new byte[i10];
                dataInputStream.readFully(bArr);
                this.f4773j = System.currentTimeMillis();
                j4.b bVarC = j4.b.c(bArr);
                MockGpsService mockGpsService2 = this.f4768b;
                String string2 = this.f4767a.getString(i9);
                mockGpsService2.getClass();
                MockGpsService.j(string2, str, z8);
                b bVar = (b) bVarC.d;
                if (bVar != null) {
                    try {
                        double d = bVar.f4755b;
                        double d9 = bVar.c;
                        long j9 = bVar.f4754a;
                        Double dValueOf = bVar.f4759i ? Double.valueOf(bVar.d) : null;
                        Float fValueOf = bVar.f4760j ? Float.valueOf(bVar.e) : null;
                        Float fValueOf2 = bVar.f4761k ? Float.valueOf(bVar.f4756f) : null;
                        Float fValueOf3 = bVar.f4762l ? Float.valueOf(bVar.f4757g) : null;
                        int i11 = bVarC.f3046b;
                        q qVarA = q.a(d, d9, j9, dValueOf, fValueOf, fValueOf2, fValueOf3, i11, i11, 0, null, null, bVar.f4758h);
                        this.f4774k = System.currentTimeMillis();
                        this.f4775l = false;
                        this.f4768b.i(qVarA);
                    } catch (JSONException e) {
                        throw new IOException(this.f4767a.getString(2131952231), e);
                    }
                }
                z8 = true;
                i9 = 2131952215;
            } catch (EOFException e6) {
                throw new IOException(this.f4767a.getString(2131952253), e6);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String getTitle() {
        return this.f4767a.getString(2131952259);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String getType() {
        return f4765n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void start() {
        if (this.e.compareAndSet(false, true)) {
            this.d.scheduleAtFixedRate(new a(this, 0), 1000L, 1000L, TimeUnit.MILLISECONDS);
            this.c.execute(new a(this, 1));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void stop() {
        this.e.set(false);
        e(this.f4772i);
        this.d.shutdownNow();
        this.c.shutdownNow();
    }
}
