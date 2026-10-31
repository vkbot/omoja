package p173q0;

import android.content.Context;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
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
import org.apache.commons.net.ftp.C2930a;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p097j.C1897i;
import p142n0.C2467b;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: q0.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3054r implements InterfaceC3044h {

    /* JADX INFO: renamed from: a */
    public final Context f8631a;

    /* JADX INFO: renamed from: b */
    public final MockGpsService f8632b;

    /* JADX INFO: renamed from: e */
    public final String f8635e;

    /* JADX INFO: renamed from: f */
    public final String f8636f;

    /* JADX INFO: renamed from: h */
    public final String f8638h;

    /* JADX INFO: renamed from: i */
    public final String f8639i;

    /* JADX INFO: renamed from: j */
    public final String f8640j;

    /* JADX INFO: renamed from: k */
    public final C2930a f8641k;

    /* JADX INFO: renamed from: l */
    public final C3050n f8642l;

    /* JADX INFO: renamed from: m */
    public volatile String f8643m;

    /* JADX INFO: renamed from: o */
    public volatile Socket f8645o;

    /* JADX INFO: renamed from: p */
    public volatile boolean f8646p;

    /* JADX INFO: renamed from: c */
    public final ExecutorService f8633c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d */
    public final AtomicBoolean f8634d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g */
    public final int f8637g = 11010;

    /* JADX INFO: renamed from: n */
    public volatile int f8644n = 11010;

    public AbstractC3054r(MockGpsService mockGpsService, MockGpsService mockGpsService2, String str, String str2, String str3, String str4, String str5, C2930a c2930a, String str6) {
        this.f8631a = mockGpsService.getApplicationContext();
        this.f8632b = mockGpsService2;
        this.f8635e = str;
        this.f8636f = str2;
        this.f8638h = str3;
        this.f8639i = str4;
        this.f8640j = str5;
        this.f8641k = c2930a;
        this.f8642l = new C3050n(str6);
    }

    /* JADX INFO: renamed from: c */
    public static Boolean m4890c() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{101}, new byte[]{85, 118, -111, 22, -120, 104, 29, 100}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    @Override // p173q0.InterfaceC3044h
    /* JADX INFO: renamed from: a */
    public final String mo4863a() {
        String strM4894g = m4894g();
        if (strM4894g == null) {
            return this.f8631a.getString(R.string.mock_gps_target_with_port, this.f8638h, Integer.valueOf(this.f8644n > 0 ? this.f8644n : this.f8637g));
        }
        return m4893f(this.f8644n > 0 ? this.f8644n : this.f8637g, strM4894g);
    }

    @Override // p173q0.InterfaceC3044h
    /* JADX INFO: renamed from: b */
    public final void mo4864b(C1897i c1897i) {
        String str = this.f8643m;
        int i10 = this.f8644n;
        this.f8643m = (String) c1897i.f4930c;
        int i11 = c1897i.f4929b;
        if (i11 > 0 && i11 <= 65535) {
            this.f8644n = i11;
        }
        if (this.f8634d.get()) {
            if (i10 == this.f8644n) {
                String str2 = this.f8643m;
                if ((str == null ? "" : str.trim()).equals(str2 != null ? str2.trim() : "")) {
                    return;
                }
            }
            m4891d();
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m4891d() {
        Socket socket = this.f8645o;
        this.f8645o = null;
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m4892e(String str, String str2) throws IOException {
        Socket socket = new Socket();
        this.f8645o = socket;
        socket.connect(new InetSocketAddress(str, this.f8644n > 0 ? this.f8644n : this.f8637g), 1200);
        socket.setSoTimeout(1200);
        MockGpsService mockGpsService = this.f8632b;
        String string = this.f8631a.getString(R.string.mock_gps_connected);
        mockGpsService.getClass();
        MockGpsService.m1454j(string, str2, true);
        long jCurrentTimeMillis = System.currentTimeMillis();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream(), StandardCharsets.UTF_8));
        long jCurrentTimeMillis2 = 0;
        while (this.f8634d.get() && !socket.isClosed()) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    throw new IOException(this.f8631a.getString(R.string.mock_gps_source_connection_closed));
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    jCurrentTimeMillis = System.currentTimeMillis();
                    C3053q c3053qM4883c = this.f8642l.m4883c(strTrim);
                    if (c3053qM4883c != null) {
                        jCurrentTimeMillis2 = System.currentTimeMillis();
                        this.f8632b.m1461i(c3053qM4883c);
                    }
                }
            } catch (SocketTimeoutException unused) {
                long jCurrentTimeMillis3 = System.currentTimeMillis();
                if (jCurrentTimeMillis2 > 0 && jCurrentTimeMillis3 - jCurrentTimeMillis2 > 4000) {
                    this.f8632b.m1459g();
                    MockGpsService mockGpsService2 = this.f8632b;
                    String string2 = this.f8631a.getString(R.string.mock_gps_connected_stale);
                    mockGpsService2.getClass();
                    MockGpsService.m1454j(string2, str2, true);
                    jCurrentTimeMillis2 = 0;
                }
                if (jCurrentTimeMillis3 - jCurrentTimeMillis > 8000) {
                    C2467b.m3820A(this.f8631a.getString(R.string.mock_gps_no_nmea_data));
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public final String m4893f(int i10, String str) {
        if (str.trim().isEmpty()) {
            return this.f8631a.getString(R.string.mock_gps_target_with_port, this.f8638h, Integer.valueOf(i10));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.trim());
        return AbstractC1178q.m2076j(new byte[]{5}, new byte[]{63, 108, 122, -84, -45, 8, 78, -59}, sb, i10);
    }

    /* JADX INFO: renamed from: g */
    public final String m4894g() {
        if (this.f8643m != null && !this.f8643m.trim().isEmpty()) {
            return this.f8643m.trim();
        }
        C2930a c2930a = this.f8641k;
        if (c2930a == null) {
            return null;
        }
        Context context = this.f8631a;
        c2930a.getClass();
        String strM5861g = AbstractC3656k.m5861g(context);
        return strM5861g != null ? strM5861g : AbstractC3656k.m5859e(context);
    }

    @Override // p173q0.InterfaceC3044h
    public final String getTitle() {
        return this.f8636f;
    }

    @Override // p173q0.InterfaceC3044h
    public final String getType() {
        return this.f8635e;
    }

    @Override // p173q0.InterfaceC3044h
    public final void start() {
        if (this.f8634d.compareAndSet(false, true)) {
            if (!this.f8646p) {
                try {
                    if (m4890c().booleanValue()) {
                        this.f8646p = true;
                    }
                } catch (Exception unused) {
                }
            }
            this.f8633c.execute(new RunnableC1556j(13, this));
        }
    }

    @Override // p173q0.InterfaceC3044h
    public final void stop() {
        this.f8634d.set(false);
        m4891d();
        this.f8633c.shutdownNow();
    }
}
