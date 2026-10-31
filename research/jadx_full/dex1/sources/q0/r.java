package q0;

import android.content.Context;
import com.example.navistart.MockGPS.MockGpsService;
import e0.p3;
import e0.x1;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class r implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MockGpsService f4835b;
    public final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f4836f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f4838h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f4839i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f4840j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final org.apache.commons.net.ftp.a f4841k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final n f4842l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile String f4843m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile Socket f4845o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile boolean f4846p;
    public final ExecutorService c = Executors.newSingleThreadExecutor();
    public final AtomicBoolean d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f4837g = 11010;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile int f4844n = 11010;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(MockGpsService mockGpsService, MockGpsService mockGpsService2, String str, String str2, String str3, String str4, String str5, org.apache.commons.net.ftp.a aVar, String str6) {
        this.f4834a = mockGpsService.getApplicationContext();
        this.f4835b = mockGpsService2;
        this.e = str;
        this.f4836f = str2;
        this.f4838h = str3;
        this.f4839i = str4;
        this.f4840j = str5;
        this.f4841k = aVar;
        this.f4842l = new n(str6);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean c() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = e0.m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = com.google.protobuf.q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = e0.m.f1892f;
        if (com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{101}, new byte[]{85, 118, -111, 22, -120, 104, 29, 100}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String a() {
        String strG = g();
        if (strG == null) {
            return this.f4834a.getString(2131952276, this.f4838h, Integer.valueOf(this.f4844n > 0 ? this.f4844n : this.f4837g));
        }
        return f(this.f4844n > 0 ? this.f4844n : this.f4837g, strG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void b(j.i iVar) {
        String str = this.f4843m;
        int i9 = this.f4844n;
        this.f4843m = (String) iVar.c;
        int i10 = iVar.f2793b;
        if (i10 > 0 && i10 <= 65535) {
            this.f4844n = i10;
        }
        if (this.d.get()) {
            if (i9 == this.f4844n) {
                String str2 = this.f4843m;
                if ((str == null ? "" : str.trim()).equals(str2 != null ? str2.trim() : "")) {
                    return;
                }
            }
            d();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        Socket socket = this.f4845o;
        this.f4845o = null;
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(String str, String str2) throws IOException {
        Socket socket = new Socket();
        this.f4845o = socket;
        socket.connect(new InetSocketAddress(str, this.f4844n > 0 ? this.f4844n : this.f4837g), 1200);
        socket.setSoTimeout(1200);
        MockGpsService mockGpsService = this.f4835b;
        String string = this.f4834a.getString(2131952215);
        mockGpsService.getClass();
        MockGpsService.j(string, str2, true);
        long jCurrentTimeMillis = System.currentTimeMillis();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream(), StandardCharsets.UTF_8));
        long jCurrentTimeMillis2 = 0;
        while (this.d.get() && !socket.isClosed()) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    throw new IOException(this.f4834a.getString(2131952258));
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    jCurrentTimeMillis = System.currentTimeMillis();
                    q qVarC = this.f4842l.c(strTrim);
                    if (qVarC != null) {
                        jCurrentTimeMillis2 = System.currentTimeMillis();
                        this.f4835b.i(qVarC);
                    }
                }
            } catch (SocketTimeoutException unused) {
                long jCurrentTimeMillis3 = System.currentTimeMillis();
                if (jCurrentTimeMillis2 > 0 && jCurrentTimeMillis3 - jCurrentTimeMillis2 > 4000) {
                    this.f4835b.g();
                    MockGpsService mockGpsService2 = this.f4835b;
                    String string2 = this.f4834a.getString(2131952216);
                    mockGpsService2.getClass();
                    MockGpsService.j(string2, str2, true);
                    jCurrentTimeMillis2 = 0;
                }
                if (jCurrentTimeMillis3 - jCurrentTimeMillis > 8000) {
                    n0.b.A(this.f4834a.getString(2131952245));
                    return;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String f(int i9, String str) {
        if (str.trim().isEmpty()) {
            return this.f4834a.getString(2131952276, this.f4838h, Integer.valueOf(i9));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.trim());
        return com.google.protobuf.q.j(new byte[]{5}, new byte[]{63, 108, 122, -84, -45, 8, 78, -59}, sb, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String g() {
        if (this.f4843m != null && !this.f4843m.trim().isEmpty()) {
            return this.f4843m.trim();
        }
        org.apache.commons.net.ftp.a aVar = this.f4841k;
        if (aVar == null) {
            return null;
        }
        Context context = this.f4834a;
        aVar.getClass();
        String strG = y5.k.g(context);
        return strG != null ? strG : y5.k.e(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String getTitle() {
        return this.f4836f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String getType() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void start() {
        if (this.d.compareAndSet(false, true)) {
            if (!this.f4846p) {
                try {
                    if (c().booleanValue()) {
                        this.f4846p = true;
                    }
                } catch (Exception unused) {
                }
            }
            this.c.execute(new f5.j(13, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void stop() {
        this.d.set(false);
        d();
        this.c.shutdownNow();
    }
}
