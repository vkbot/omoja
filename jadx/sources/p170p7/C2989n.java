package p170p7;

import ai.onnxruntime.AbstractC0074a;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.RunnableC1054m;
import com.bumptech.glide.manager.C1073s;
import com.bumptech.glide.manager.C1074t;
import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import kotlin.UByte;
import org.apache.commons.net.SocketClient;
import p022b7.C0920p;
import p028c3.RunnableC0979e;
import p032c7.C1008l;
import p050e3.C1461d;
import p094i7.C1760i;
import p097j.C1897i;
import p099j1.C1929i;
import p120l.C2187d;
import p130l9.AbstractC2223b;
import p130l9.C2242l;
import p130l9.C2245o;
import p130l9.C2256z;
import p130l9.InterfaceC2234g0;
import p141n.C2455p;
import p148n7.AbstractC2503e;
import p148n7.C2491a;
import p148n7.C2492a0;
import p148n7.C2494b;
import p148n7.C2497c;
import p148n7.C2508f1;
import p148n7.C2511g1;
import p148n7.C2544u;
import p148n7.C2547v0;
import p148n7.C2551x0;
import p148n7.EnumC2549w0;
import p155o4.AbstractC2587b;
import p157o7.AbstractC2694p4;
import p157o7.AbstractC2743y0;
import p157o7.C2619d1;
import p157o7.C2625e1;
import p157o7.C2685o1;
import p157o7.C2691p1;
import p157o7.C2718t4;
import p157o7.C2722u2;
import p157o7.C2736w4;
import p157o7.EnumC2725v;
import p157o7.ExecutorC2676m4;
import p157o7.InterfaceC2612c0;
import p157o7.InterfaceC2674m2;
import p157o7.InterfaceC2719u;
import p157o7.RunnableC2613c1;
import p173q0.C3043g;
import p179q7.C3076c;
import p186r7.C3117i;
import p186r7.C3118j;
import p186r7.EnumC3109a;
import p195s7.C3216a;

/* JADX INFO: renamed from: p7.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2989n implements InterfaceC2612c0 {

    /* JADX INFO: renamed from: P */
    public static final Map f8370P;

    /* JADX INFO: renamed from: Q */
    public static final Logger f8371Q;

    /* JADX INFO: renamed from: A */
    public final SocketFactory f8372A;

    /* JADX INFO: renamed from: B */
    public final SSLSocketFactory f8373B;

    /* JADX INFO: renamed from: C */
    public int f8374C;

    /* JADX INFO: renamed from: D */
    public final LinkedList f8375D;

    /* JADX INFO: renamed from: E */
    public final C3076c f8376E;

    /* JADX INFO: renamed from: F */
    public C2691p1 f8377F;

    /* JADX INFO: renamed from: G */
    public boolean f8378G;

    /* JADX INFO: renamed from: H */
    public long f8379H;

    /* JADX INFO: renamed from: I */
    public long f8380I;

    /* JADX INFO: renamed from: J */
    public final RunnableC1054m f8381J;

    /* JADX INFO: renamed from: K */
    public final int f8382K;

    /* JADX INFO: renamed from: L */
    public final C2736w4 f8383L;

    /* JADX INFO: renamed from: M */
    public final C2625e1 f8384M;

    /* JADX INFO: renamed from: N */
    public final C2544u f8385N;

    /* JADX INFO: renamed from: O */
    public final int f8386O;

    /* JADX INFO: renamed from: a */
    public final InetSocketAddress f8387a;

    /* JADX INFO: renamed from: b */
    public final String f8388b;

    /* JADX INFO: renamed from: c */
    public final String f8389c;

    /* JADX INFO: renamed from: d */
    public final Random f8390d;

    /* JADX INFO: renamed from: e */
    public final C2722u2 f8391e;

    /* JADX INFO: renamed from: f */
    public final int f8392f;

    /* JADX INFO: renamed from: g */
    public final C3118j f8393g;

    /* JADX INFO: renamed from: h */
    public C1074t f8394h;

    /* JADX INFO: renamed from: i */
    public C2979d f8395i;

    /* JADX INFO: renamed from: j */
    public C0920p f8396j;

    /* JADX INFO: renamed from: k */
    public final Object f8397k;

    /* JADX INFO: renamed from: l */
    public final C2492a0 f8398l;

    /* JADX INFO: renamed from: m */
    public int f8399m;

    /* JADX INFO: renamed from: n */
    public final HashMap f8400n;

    /* JADX INFO: renamed from: o */
    public final Executor f8401o;

    /* JADX INFO: renamed from: p */
    public final ExecutorC2676m4 f8402p;

    /* JADX INFO: renamed from: q */
    public final ScheduledExecutorService f8403q;

    /* JADX INFO: renamed from: r */
    public final int f8404r;

    /* JADX INFO: renamed from: s */
    public int f8405s;

    /* JADX INFO: renamed from: t */
    public RunnableC2988m f8406t;

    /* JADX INFO: renamed from: u */
    public C2494b f8407u;

    /* JADX INFO: renamed from: v */
    public C2508f1 f8408v;

    /* JADX INFO: renamed from: w */
    public boolean f8409w;

    /* JADX INFO: renamed from: x */
    public C2619d1 f8410x;

    /* JADX INFO: renamed from: y */
    public boolean f8411y;

    /* JADX INFO: renamed from: z */
    public boolean f8412z;

    static {
        EnumMap enumMap = new EnumMap(EnumC3109a.class);
        C2508f1 c2508f1 = C2508f1.f6944l;
        enumMap.put(EnumC3109a.NO_ERROR, c2508f1.m3934h("No error: A GRPC status of OK should have been sent"));
        enumMap.put(EnumC3109a.PROTOCOL_ERROR, c2508f1.m3934h("Protocol error"));
        enumMap.put(EnumC3109a.INTERNAL_ERROR, c2508f1.m3934h("Internal error"));
        enumMap.put(EnumC3109a.FLOW_CONTROL_ERROR, c2508f1.m3934h("Flow control error"));
        enumMap.put(EnumC3109a.STREAM_CLOSED, c2508f1.m3934h("Stream closed"));
        enumMap.put(EnumC3109a.FRAME_TOO_LARGE, c2508f1.m3934h("Frame too large"));
        enumMap.put(EnumC3109a.REFUSED_STREAM, C2508f1.f6945m.m3934h("Refused stream"));
        enumMap.put(EnumC3109a.CANCEL, C2508f1.f6938f.m3934h("Cancelled"));
        enumMap.put(EnumC3109a.COMPRESSION_ERROR, c2508f1.m3934h("Compression error"));
        enumMap.put(EnumC3109a.CONNECT_ERROR, c2508f1.m3934h("Connect error"));
        enumMap.put(EnumC3109a.ENHANCE_YOUR_CALM, C2508f1.f6942j.m3934h("Enhance your calm"));
        enumMap.put(EnumC3109a.INADEQUATE_SECURITY, C2508f1.f6941i.m3934h("Inadequate security"));
        f8370P = Collections.unmodifiableMap(enumMap);
        f8371Q = Logger.getLogger(C2989n.class.getName());
    }

    public C2989n(C2982g c2982g, InetSocketAddress inetSocketAddress, String str, C2494b c2494b, C2544u c2544u, RunnableC1054m runnableC1054m) {
        C2722u2 c2722u2 = AbstractC2743y0.f7892r;
        C3118j c3118j = new C3118j();
        this.f8390d = new Random();
        Object obj = new Object();
        this.f8397k = obj;
        this.f8400n = new HashMap();
        this.f8374C = 0;
        this.f8375D = new LinkedList();
        this.f8384M = new C2625e1(this, 2);
        this.f8386O = 30000;
        AbstractC2587b.m4042i(inetSocketAddress, "address");
        this.f8387a = inetSocketAddress;
        this.f8388b = str;
        this.f8404r = c2982g.f8319i;
        this.f8392f = c2982g.f8323m;
        Executor executor = c2982g.f8313c;
        AbstractC2587b.m4042i(executor, "executor");
        this.f8401o = executor;
        this.f8402p = new ExecutorC2676m4(c2982g.f8313c);
        ScheduledExecutorService scheduledExecutorService = c2982g.f8315e;
        AbstractC2587b.m4042i(scheduledExecutorService, "scheduledExecutorService");
        this.f8403q = scheduledExecutorService;
        this.f8399m = 3;
        this.f8372A = SocketFactory.getDefault();
        this.f8373B = c2982g.f8317g;
        C3076c c3076c = c2982g.f8318h;
        AbstractC2587b.m4042i(c3076c, "connectionSpec");
        this.f8376E = c3076c;
        AbstractC2587b.m4042i(c2722u2, "stopwatchFactory");
        this.f8391e = c2722u2;
        this.f8393g = c3118j;
        this.f8389c = "grpc-java-okhttp/1.62.2";
        this.f8385N = c2544u;
        this.f8381J = runnableC1054m;
        this.f8382K = c2982g.f8324n;
        c2982g.f8316f.getClass();
        this.f8383L = new C2736w4();
        this.f8398l = C2492a0.m3881a(C2989n.class, inetSocketAddress.toString());
        C2494b c2494b2 = C2494b.f6881b;
        C2491a c2491a = AbstractC2694p4.f7704b;
        IdentityHashMap identityHashMap = new IdentityHashMap(1);
        identityHashMap.put(c2491a, c2494b);
        for (Map.Entry entry : c2494b2.f6882a.entrySet()) {
            if (!identityHashMap.containsKey(entry.getKey())) {
                identityHashMap.put((C2491a) entry.getKey(), entry.getValue());
            }
        }
        this.f8407u = new C2494b(identityHashMap);
        synchronized (obj) {
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m4785e(C2989n c2989n, String str) {
        EnumC3109a enumC3109a = EnumC3109a.PROTOCOL_ERROR;
        c2989n.m4799r(0, enumC3109a, m4788v(enumC3109a).m3931b(str));
    }

    /* JADX INFO: renamed from: f */
    public static Socket m4786f(C2989n c2989n, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) throws C2511g1 {
        Socket socket = null;
        try {
            InetAddress address = inetSocketAddress2.getAddress();
            SocketFactory socketFactory = c2989n.f8372A;
            Socket socketCreateSocket = address != null ? socketFactory.createSocket(inetSocketAddress2.getAddress(), inetSocketAddress2.getPort()) : socketFactory.createSocket(inetSocketAddress2.getHostName(), inetSocketAddress2.getPort());
            try {
                socketCreateSocket.setTcpNoDelay(true);
                socketCreateSocket.setSoTimeout(c2989n.f8386O);
                InterfaceC2234g0 interfaceC2234g0M3575h = AbstractC2223b.m3575h(socketCreateSocket);
                C2256z c2256zM3568a = AbstractC2223b.m3568a(AbstractC2223b.m3574g(socketCreateSocket));
                C2187d c2187dM4789g = c2989n.m4789g(inetSocketAddress, str, str2);
                C2455p c2455p = (C2455p) c2187dM4789g.f5706d;
                C3216a c3216a = (C3216a) c2187dM4789g.f5705c;
                Locale locale = Locale.US;
                c2256zM3568a.mo3602A("CONNECT " + c3216a.f9398a + ":" + c3216a.f9399b + " HTTP/1.1");
                c2256zM3568a.mo3602A(SocketClient.NETASCII_EOL);
                String[] strArr = (String[]) c2455p.f6648c;
                String[] strArr2 = (String[]) c2455p.f6648c;
                int length = strArr.length / 2;
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = i10 * 2;
                    c2256zM3568a.mo3602A((i11 < 0 || i11 >= strArr2.length) ? null : strArr2[i11]);
                    c2256zM3568a.mo3602A(": ");
                    int i12 = i11 + 1;
                    c2256zM3568a.mo3602A((i12 < 0 || i12 >= strArr2.length) ? null : strArr2[i12]);
                    c2256zM3568a.mo3602A(SocketClient.NETASCII_EOL);
                }
                c2256zM3568a.mo3602A(SocketClient.NETASCII_EOL);
                c2256zM3568a.flush();
                C1008l c1008lM1213b = C1008l.m1213b(m4787o(interfaceC2234g0M3575h));
                int i13 = c1008lM1213b.f1008b;
                while (!m4787o(interfaceC2234g0M3575h).equals("")) {
                }
                if (i13 >= 200 && i13 < 300) {
                    socketCreateSocket.setSoTimeout(0);
                    return socketCreateSocket;
                }
                C2242l c2242l = new C2242l();
                try {
                    socketCreateSocket.shutdownOutput();
                    interfaceC2234g0M3575h.read(c2242l, 1024L);
                } catch (IOException e) {
                    c2242l.m3630u0("Unable to read body: " + e.toString());
                }
                try {
                    socketCreateSocket.close();
                } catch (IOException unused) {
                }
                Locale locale2 = Locale.US;
                throw new C2511g1(C2508f1.f6945m.m3934h("Response returned from proxy was not successful (expected 2xx, got " + i13 + " " + ((String) c1008lM1213b.f1010d) + "). Response body:\n" + c2242l.m3616h0()));
            } catch (IOException e6) {
                e = e6;
                socket = socketCreateSocket;
                if (socket != null) {
                    AbstractC2743y0.m4258b(socket);
                }
                throw new C2511g1(C2508f1.f6945m.m3934h("Failed trying to connect with proxy").m3933g(e));
            }
        } catch (IOException e10) {
            e = e10;
        }
    }

    /* JADX INFO: renamed from: o */
    public static String m4787o(InterfaceC2234g0 interfaceC2234g0) throws EOFException {
        long j10;
        C2242l c2242l = new C2242l();
        do {
            long j11 = interfaceC2234g0.read(c2242l, 1L);
            j10 = c2242l.f5878c;
            if (j11 == -1) {
                throw new EOFException("\\n not found: " + c2242l.mo3562f(j10).mo3586d());
            }
        } while (c2242l.m3606V(j10 - 1) != 10);
        return c2242l.mo3566p(Long.MAX_VALUE);
    }

    /* JADX INFO: renamed from: v */
    public static C2508f1 m4788v(EnumC3109a enumC3109a) {
        C2508f1 c2508f1 = (C2508f1) f8370P.get(enumC3109a);
        if (c2508f1 != null) {
            return c2508f1;
        }
        return C2508f1.f6939g.m3934h("Unknown http2 error code: " + enumC3109a.f8886b);
    }

    @Override // p157o7.InterfaceC2680n2
    /* JADX INFO: renamed from: a */
    public final void mo4170a(C2508f1 c2508f1) {
        synchronized (this.f8397k) {
            try {
                if (this.f8408v != null) {
                    return;
                }
                this.f8408v = c2508f1;
                this.f8394h.m1365k(c2508f1);
                m4802u();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p157o7.InterfaceC2680n2
    /* JADX INFO: renamed from: b */
    public final Runnable mo4181b(InterfaceC2674m2 interfaceC2674m2) {
        this.f8394h = (C1074t) interfaceC2674m2;
        if (this.f8378G) {
            C2691p1 c2691p1 = new C2691p1(new C2455p(3, this), this.f8403q, this.f8379H, this.f8380I);
            this.f8377F = c2691p1;
            synchronized (c2691p1) {
            }
        }
        C2978c c2978c = new C2978c(this.f8402p, this);
        C3118j c3118j = this.f8393g;
        C2256z c2256z = new C2256z(c2978c);
        c3118j.getClass();
        C2977b c2977b = new C2977b(c2978c, new C3117i(c2256z));
        synchronized (this.f8397k) {
            C2979d c2979d = new C2979d(this, c2977b);
            this.f8395i = c2979d;
            this.f8396j = new C0920p(this, c2979d);
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f8402p.execute(new RunnableC0979e(this, countDownLatch, c2978c, 5));
        try {
            m4797p();
            countDownLatch.countDown();
            this.f8402p.execute(new RunnableC1054m(25, this));
            return null;
        } catch (Throwable th) {
            countDownLatch.countDown();
            throw th;
        }
    }

    @Override // p148n7.InterfaceC2554z
    /* JADX INFO: renamed from: c */
    public final C2492a0 mo3995c() {
        return this.f8398l;
    }

    @Override // p157o7.InterfaceC2737x
    /* JADX INFO: renamed from: d */
    public final InterfaceC2719u mo4156d(C2551x0 c2551x0, C2547v0 c2547v0, C2497c c2497c, AbstractC2503e[] abstractC2503eArr) {
        C2986k c2986k;
        AbstractC2587b.m4042i(c2551x0, "method");
        AbstractC2587b.m4042i(c2547v0, "headers");
        C2494b c2494b = this.f8407u;
        C2718t4 c2718t4 = new C2718t4(abstractC2503eArr);
        for (AbstractC2503e abstractC2503e : abstractC2503eArr) {
            abstractC2503e.mo3891C(c2494b, c2547v0);
        }
        synchronized (this.f8397k) {
            c2986k = new C2986k(c2551x0, c2547v0, this.f8395i, this, this.f8396j, this.f8397k, this.f8404r, this.f8392f, this.f8388b, this.f8389c, c2718t4, this.f8383L, c2497c);
        }
        return c2986k;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x019c A[EDGE_INSN: B:107:0x019c->B:159:0x0248 BREAK  A[LOOP:9: B:146:0x0225->B:157:0x0244], PHI: r18
  0x019c: PHI (r18v3 java.lang.String) = 
  (r18v1 java.lang.String)
  (r18v1 java.lang.String)
  (r18v1 java.lang.String)
  (r18v1 java.lang.String)
  (r18v1 java.lang.String)
  (r18v6 java.lang.String)
 binds: [B:188:0x019c, B:233:0x019c, B:152:0x0237, B:235:0x019c, B:144:0x0222, B:106:0x019a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:108:0x019f  */
    /* JADX WARN: Code duplicated, block: B:110:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:113:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:115:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:122:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:127:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:134:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:137:0x0203  */
    /* JADX WARN: Code duplicated, block: B:19:0x005d  */
    /* JADX WARN: Code duplicated, block: B:201:0x0134 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x0157 A[EDGE_INSN: B:208:0x0157->B:92:0x0157 BREAK  A[LOOP:3: B:87:0x0141->B:91:0x014f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x01c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x01e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:0x01df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:0x01d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x01d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0143  */
    /* JADX WARN: Code duplicated, block: B:91:0x014f A[LOOP:3: B:87:0x0141->B:91:0x014f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:94:0x015b  */
    /* JADX INFO: renamed from: g */
    public final C2187d m4789g(InetSocketAddress inetSocketAddress, String str, String str2) {
        String strSubstring;
        String str3;
        String strM3616h0;
        int i10;
        int i11;
        InetAddress byAddress;
        byte[] address;
        int i12;
        int i13;
        int i14;
        int i15;
        C2242l c2242l;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int iM5154a;
        int i21;
        C3043g c3043g = new C3043g();
        c3043g.f8560d = -1;
        c3043g.f8558b = "https";
        String hostName = inetSocketAddress.getHostName();
        String str4 = "host == null";
        if (hostName == null) {
            C1929i.m3029k("host == null");
            return null;
        }
        int length = hostName.length();
        int i22 = 0;
        int iCharCount = 0;
        while (true) {
            if (iCharCount >= length) {
                strSubstring = hostName.substring(0, length);
                break;
            }
            if (hostName.charAt(iCharCount) == '%') {
                C2242l c2242l2 = new C2242l();
                c2242l2.m3629t0(0, iCharCount, hostName);
                while (iCharCount < length) {
                    int iCodePointAt = hostName.codePointAt(iCharCount);
                    if (iCodePointAt != 37 || (i21 = iCharCount + 2) >= length) {
                        c2242l2.m3631v0(iCodePointAt);
                    } else {
                        int iM5154a2 = C3216a.m5154a(hostName.charAt(iCharCount + 1));
                        int iM5154a3 = C3216a.m5154a(hostName.charAt(i21));
                        if (iM5154a2 == -1 || iM5154a3 == -1) {
                            c2242l2.m3631v0(iCodePointAt);
                        } else {
                            c2242l2.m3621m0((iM5154a2 << 4) + iM5154a3);
                            iCharCount = i21;
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt);
                }
                strSubstring = c2242l2.m3616h0();
                break;
            }
            iCharCount++;
        }
        if (!strSubstring.startsWith("[") || !strSubstring.endsWith("]")) {
            str3 = "host == null";
            try {
                String lowerCase = IDN.toASCII(strSubstring).toLowerCase(Locale.US);
                if (!lowerCase.isEmpty()) {
                    int i23 = 0;
                    while (true) {
                        if (i23 >= lowerCase.length()) {
                            strM3616h0 = lowerCase;
                            break;
                        }
                        char cCharAt = lowerCase.charAt(i23);
                        if (cCharAt > 31 && cCharAt < 127 && " #%/:?@[\\]".indexOf(cCharAt) == -1) {
                            i23++;
                        }
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            strM3616h0 = null;
            break;
        }
        int length2 = strSubstring.length() - 1;
        int i24 = 16;
        byte[] bArr = new byte[16];
        int i25 = -1;
        int i26 = -1;
        int i27 = 0;
        int i28 = 1;
        while (true) {
            try {
                if (i28 < length2) {
                    if (i27 != i24) {
                        int i29 = i28 + 2;
                        if (i29 > length2 || !strSubstring.regionMatches(i28, "::", i22, 2)) {
                            if (i27 == 0) {
                                str3 = str4;
                                i18 = i28;
                                i19 = 0;
                                while (i18 < length2) {
                                    iM5154a = C3216a.m5154a(strSubstring.charAt(i18));
                                    if (iM5154a == -1) {
                                        break;
                                        break;
                                    }
                                    i19 = (i19 << 4) + iM5154a;
                                    i18++;
                                }
                                i20 = i18 - i28;
                                if (i20 == 0) {
                                }
                            } else if (strSubstring.regionMatches(i28, ":", i22, 1)) {
                                i28++;
                                str3 = str4;
                                i18 = i28;
                                i19 = 0;
                                while (i18 < length2) {
                                    iM5154a = C3216a.m5154a(strSubstring.charAt(i18));
                                    if (iM5154a == -1) {
                                        break;
                                    }
                                    i19 = (i19 << 4) + iM5154a;
                                    i18++;
                                }
                                i20 = i18 - i28;
                                if (i20 == 0 && i20 <= 4) {
                                    int i30 = i27 + 1;
                                    bArr[i27] = (byte) ((i19 >>> 8) & 255);
                                    i27 += 2;
                                    bArr[i30] = (byte) (i19 & 255);
                                    i26 = i28;
                                    i22 = 0;
                                    i24 = 16;
                                    i28 = i18;
                                    str4 = str3;
                                }
                            } else {
                                if (strSubstring.regionMatches(i28, ".", i22, 1)) {
                                    int i31 = i27 - 2;
                                    int i32 = i31;
                                    int i33 = i26;
                                    while (true) {
                                        if (i33 < length2) {
                                            if (i32 != 16) {
                                                if (i32 != i31) {
                                                    if (strSubstring.charAt(i33) == '.') {
                                                        i33++;
                                                    }
                                                }
                                                int i34 = i33;
                                                int i35 = 0;
                                                while (true) {
                                                    int i36 = i31;
                                                    if (i34 < length2) {
                                                        char cCharAt2 = strSubstring.charAt(i34);
                                                        str3 = str4;
                                                        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                                                            if ((i35 != 0 || i33 == i34) && (i35 = ((i35 * 10) + cCharAt2) - 48) <= 255) {
                                                                i34++;
                                                                i31 = i36;
                                                                str4 = str3;
                                                            }
                                                        }
                                                    } else {
                                                        str3 = str4;
                                                    }
                                                    if (i34 - i33 != 0) {
                                                        bArr[i32] = (byte) i35;
                                                        i32++;
                                                        i33 = i34;
                                                        i31 = i36;
                                                        str4 = str3;
                                                    }
                                                }
                                            }
                                            str3 = str4;
                                        } else {
                                            str3 = str4;
                                            if (i32 == i27 + 2) {
                                                i27 += 2;
                                                i10 = 16;
                                            }
                                        }
                                    }
                                }
                                byAddress = null;
                                if (byAddress == null) {
                                    strM3616h0 = null;
                                    break;
                                }
                                address = byAddress.getAddress();
                                i12 = 16;
                                if (address.length == 16) {
                                    throw new AssertionError();
                                }
                                i13 = i11;
                                i14 = i13;
                                i15 = -1;
                                while (i13 < address.length) {
                                    i16 = i13;
                                    while (i16 < i12 && address[i16] == 0 && address[i16 + 1] == 0) {
                                        i16 += 2;
                                        i12 = 16;
                                    }
                                    i17 = i16 - i13;
                                    if (i17 > i14) {
                                        i15 = i13;
                                        i14 = i17;
                                    }
                                    i13 = i16 + 2;
                                    i12 = 16;
                                }
                                c2242l = new C2242l();
                                while (i11 < address.length) {
                                    if (i11 == i15) {
                                        c2242l.m3621m0(58);
                                        i11 += i14;
                                        if (i11 == 16) {
                                            c2242l.m3621m0(58);
                                        }
                                    } else {
                                        if (i11 > 0) {
                                            c2242l.m3621m0(58);
                                        }
                                        c2242l.m3624o0(((address[i11] & UByte.MAX_VALUE) << 8) | (address[i11 + 1] & UByte.MAX_VALUE));
                                        i11 += 2;
                                    }
                                }
                                strM3616h0 = c2242l.m3616h0();
                            }
                            i11 = 0;
                            byAddress = null;
                            if (byAddress == null) {
                                strM3616h0 = null;
                                break;
                            }
                            address = byAddress.getAddress();
                            i12 = 16;
                            if (address.length == 16) {
                                throw new AssertionError();
                            }
                            i13 = i11;
                            i14 = i13;
                            i15 = -1;
                            while (i13 < address.length) {
                                i16 = i13;
                                while (i16 < i12) {
                                    i16 += 2;
                                    i12 = 16;
                                }
                                i17 = i16 - i13;
                                if (i17 > i14) {
                                    i15 = i13;
                                    i14 = i17;
                                }
                                i13 = i16 + 2;
                                i12 = 16;
                            }
                            c2242l = new C2242l();
                            while (i11 < address.length) {
                                if (i11 == i15) {
                                    c2242l.m3621m0(58);
                                    i11 += i14;
                                    if (i11 == 16) {
                                        c2242l.m3621m0(58);
                                    }
                                } else {
                                    if (i11 > 0) {
                                        c2242l.m3621m0(58);
                                    }
                                    c2242l.m3624o0(((address[i11] & UByte.MAX_VALUE) << 8) | (address[i11 + 1] & UByte.MAX_VALUE));
                                    i11 += 2;
                                }
                            }
                            strM3616h0 = c2242l.m3616h0();
                        } else if (i25 == -1) {
                            i27 += 2;
                            str3 = str4;
                            if (i29 == length2) {
                                i25 = i27;
                                i10 = 16;
                            } else {
                                i28 = i29;
                                i25 = i27;
                                i18 = i28;
                                i19 = 0;
                                while (i18 < length2) {
                                    iM5154a = C3216a.m5154a(strSubstring.charAt(i18));
                                    if (iM5154a == -1) {
                                        break;
                                        break;
                                    }
                                    i19 = (i19 << 4) + iM5154a;
                                    i18++;
                                }
                                i20 = i18 - i28;
                                if (i20 == 0) {
                                }
                                i11 = 0;
                                byAddress = null;
                                if (byAddress == null) {
                                    strM3616h0 = null;
                                    break;
                                }
                                address = byAddress.getAddress();
                                i12 = 16;
                                if (address.length == 16) {
                                    throw new AssertionError();
                                }
                                i13 = i11;
                                i14 = i13;
                                i15 = -1;
                                while (i13 < address.length) {
                                    i16 = i13;
                                    while (i16 < i12) {
                                        i16 += 2;
                                        i12 = 16;
                                    }
                                    i17 = i16 - i13;
                                    if (i17 > i14) {
                                        i15 = i13;
                                        i14 = i17;
                                    }
                                    i13 = i16 + 2;
                                    i12 = 16;
                                }
                                c2242l = new C2242l();
                                while (i11 < address.length) {
                                    if (i11 == i15) {
                                        c2242l.m3621m0(58);
                                        i11 += i14;
                                        if (i11 == 16) {
                                            c2242l.m3621m0(58);
                                        }
                                    } else {
                                        if (i11 > 0) {
                                            c2242l.m3621m0(58);
                                        }
                                        c2242l.m3624o0(((address[i11] & UByte.MAX_VALUE) << 8) | (address[i11 + 1] & UByte.MAX_VALUE));
                                        i11 += 2;
                                    }
                                }
                                strM3616h0 = c2242l.m3616h0();
                            }
                        }
                    }
                    str3 = str4;
                    i11 = i22;
                    byAddress = null;
                    if (byAddress == null) {
                        strM3616h0 = null;
                        break;
                    }
                    address = byAddress.getAddress();
                    i12 = 16;
                    if (address.length == 16) {
                        throw new AssertionError();
                    }
                    i13 = i11;
                    i14 = i13;
                    i15 = -1;
                    while (i13 < address.length) {
                        i16 = i13;
                        while (i16 < i12) {
                            i16 += 2;
                            i12 = 16;
                        }
                        i17 = i16 - i13;
                        if (i17 > i14) {
                            i15 = i13;
                            i14 = i17;
                        }
                        i13 = i16 + 2;
                        i12 = 16;
                    }
                    c2242l = new C2242l();
                    while (i11 < address.length) {
                        if (i11 == i15) {
                            c2242l.m3621m0(58);
                            i11 += i14;
                            if (i11 == 16) {
                                c2242l.m3621m0(58);
                            }
                        } else {
                            if (i11 > 0) {
                                c2242l.m3621m0(58);
                            }
                            c2242l.m3624o0(((address[i11] & UByte.MAX_VALUE) << 8) | (address[i11 + 1] & UByte.MAX_VALUE));
                            i11 += 2;
                        }
                    }
                    strM3616h0 = c2242l.m3616h0();
                } else {
                    str3 = str4;
                    i10 = i24;
                }
                if (i27 != i10) {
                    if (i25 != -1) {
                        int i37 = i27 - i25;
                        System.arraycopy(bArr, i25, bArr, 16 - i37, i37);
                        i11 = 0;
                        Arrays.fill(bArr, i25, (16 - i27) + i25, (byte) 0);
                    }
                    i11 = 0;
                    byAddress = null;
                    if (byAddress == null) {
                        strM3616h0 = null;
                        break;
                    }
                    address = byAddress.getAddress();
                    i12 = 16;
                    if (address.length == 16) {
                        throw new AssertionError();
                    }
                    i13 = i11;
                    i14 = i13;
                    i15 = -1;
                    while (i13 < address.length) {
                        i16 = i13;
                        while (i16 < i12) {
                            i16 += 2;
                            i12 = 16;
                        }
                        i17 = i16 - i13;
                        if (i17 > i14) {
                            i15 = i13;
                            i14 = i17;
                        }
                        i13 = i16 + 2;
                        i12 = 16;
                    }
                    c2242l = new C2242l();
                    while (i11 < address.length) {
                        if (i11 == i15) {
                            c2242l.m3621m0(58);
                            i11 += i14;
                            if (i11 == 16) {
                                c2242l.m3621m0(58);
                            }
                        } else {
                            if (i11 > 0) {
                                c2242l.m3621m0(58);
                            }
                            c2242l.m3624o0(((address[i11] & UByte.MAX_VALUE) << 8) | (address[i11 + 1] & UByte.MAX_VALUE));
                            i11 += 2;
                        }
                    }
                    strM3616h0 = c2242l.m3616h0();
                } else {
                    i11 = 0;
                }
                byAddress = InetAddress.getByAddress(bArr);
                if (byAddress == null) {
                    strM3616h0 = null;
                    break;
                }
                address = byAddress.getAddress();
                i12 = 16;
                if (address.length == 16) {
                    throw new AssertionError();
                }
                i13 = i11;
                i14 = i13;
                i15 = -1;
                while (i13 < address.length) {
                    i16 = i13;
                    while (i16 < i12) {
                        i16 += 2;
                        i12 = 16;
                    }
                    i17 = i16 - i13;
                    if (i17 > i14) {
                        i15 = i13;
                        i14 = i17;
                    }
                    i13 = i16 + 2;
                    i12 = 16;
                }
                c2242l = new C2242l();
                while (i11 < address.length) {
                    if (i11 == i15) {
                        c2242l.m3621m0(58);
                        i11 += i14;
                        if (i11 == 16) {
                            c2242l.m3621m0(58);
                        }
                    } else {
                        if (i11 > 0) {
                            c2242l.m3621m0(58);
                        }
                        c2242l.m3624o0(((address[i11] & UByte.MAX_VALUE) << 8) | (address[i11 + 1] & UByte.MAX_VALUE));
                        i11 += 2;
                    }
                }
                strM3616h0 = c2242l.m3616h0();
            } catch (UnknownHostException unused2) {
                throw new AssertionError();
            }
        }
        if (strM3616h0 == null) {
            C1929i.m3029k("unexpected host: ".concat(hostName));
            return null;
        }
        c3043g.f8559c = strM3616h0;
        int port = inetSocketAddress.getPort();
        if (port <= 0 || port > 65535) {
            C1929i.m3029k(AbstractC0074a.m154e(port, "unexpected port: "));
            return null;
        }
        c3043g.f8560d = port;
        if (c3043g.f8559c == null) {
            C1929i.m3030l(str3);
            return null;
        }
        C3216a c3216a = new C3216a(c3043g);
        C2187d c2187d = new C2187d(15);
        c2187d.f5706d = new C1760i(2);
        c2187d.f5705c = c3216a;
        c2187d.m3494w("Host", c3216a.f9398a + ":" + c3216a.f9399b);
        c2187d.m3494w("User-Agent", this.f8389c);
        if (str != null && str2 != null) {
            try {
                c2187d.m3494w("Proxy-Authorization", "Basic " + C2245o.m3635g((str + ":" + str2).getBytes("ISO-8859-1")).mo3583a());
            } catch (UnsupportedEncodingException unused3) {
                throw new AssertionError();
            }
        }
        if (((C3216a) c2187d.f5705c) != null) {
            return new C2187d(c2187d);
        }
        C1929i.m3030l("url == null");
        return null;
    }

    @Override // p157o7.InterfaceC2612c0
    public final C2494b getAttributes() {
        return this.f8407u;
    }

    /* JADX INFO: renamed from: h */
    public final void m4790h(int i10, C2508f1 c2508f1, EnumC2725v enumC2725v, boolean z9, EnumC3109a enumC3109a, C2547v0 c2547v0) {
        synchronized (this.f8397k) {
            try {
                C2986k c2986k = (C2986k) this.f8400n.remove(Integer.valueOf(i10));
                if (c2986k != null) {
                    if (enumC3109a != null) {
                        this.f8395i.m4774S(i10, EnumC3109a.CANCEL);
                    }
                    if (c2508f1 != null) {
                        C2985j c2985j = c2986k.f8362m;
                        if (c2547v0 == null) {
                            c2547v0 = new C2547v0();
                        }
                        c2985j.m4123g(c2508f1, enumC2725v, z9, c2547v0);
                    }
                    if (!m4800s()) {
                        m4802u();
                        m4795m(c2986k);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public final C2997v[] m4791i() {
        C2997v[] c2997vArr;
        C2997v c2997v;
        synchronized (this.f8397k) {
            c2997vArr = new C2997v[this.f8400n.size()];
            Iterator it = this.f8400n.values().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                int i11 = i10 + 1;
                C2985j c2985j = ((C2986k) it.next()).f8362m;
                synchronized (c2985j.f8353w) {
                    c2997v = c2985j.f8349J;
                }
                c2997vArr[i10] = c2997v;
                i10 = i11;
            }
        }
        return c2997vArr;
    }

    /* JADX INFO: renamed from: j */
    public final int m4792j() {
        URI uriM4257a = AbstractC2743y0.m4257a(this.f8388b);
        return uriM4257a.getPort() != -1 ? uriM4257a.getPort() : this.f8387a.getPort();
    }

    /* JADX INFO: renamed from: k */
    public final C2511g1 m4793k() {
        synchronized (this.f8397k) {
            try {
                C2508f1 c2508f1 = this.f8408v;
                if (c2508f1 != null) {
                    return new C2511g1(c2508f1);
                }
                return new C2511g1(C2508f1.f6945m.m3934h("Connection closed"));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000c  */
    /* JADX INFO: renamed from: l */
    public final boolean m4794l(int i10) {
        boolean z9;
        synchronized (this.f8397k) {
            if (i10 < this.f8399m) {
                z9 = true;
                if ((i10 & 1) != 1) {
                    z9 = false;
                }
            } else {
                z9 = false;
            }
        }
        return z9;
    }

    /* JADX INFO: renamed from: m */
    public final void m4795m(C2986k c2986k) {
        if (this.f8412z && this.f8375D.isEmpty() && this.f8400n.isEmpty()) {
            this.f8412z = false;
            C2691p1 c2691p1 = this.f8377F;
            if (c2691p1 != null) {
                synchronized (c2691p1) {
                    int i10 = c2691p1.f7686d;
                    if (i10 == 2 || i10 == 3) {
                        c2691p1.f7686d = 1;
                    }
                    if (c2691p1.f7686d == 4) {
                        c2691p1.f7686d = 5;
                    }
                }
            }
        }
        if (c2986k.f7276d) {
            this.f8384M.m3098d(c2986k, false);
        }
    }

    /* JADX INFO: renamed from: n */
    public final void m4796n(Exception exc) {
        m4799r(0, EnumC3109a.INTERNAL_ERROR, C2508f1.f6945m.m3933g(exc));
    }

    /* JADX INFO: renamed from: p */
    public final void m4797p() {
        synchronized (this.f8397k) {
            try {
                C2979d c2979d = this.f8395i;
                c2979d.getClass();
                try {
                    c2979d.f8303c.m4769c();
                } catch (IOException e) {
                    c2979d.f8302b.m4796n(e);
                }
                C1897i c1897i = new C1897i(4);
                c1897i.m2944c(7, this.f8392f);
                C2979d c2979d2 = this.f8395i;
                c2979d2.f8304d.m3465F(2, c1897i);
                try {
                    c2979d2.f8303c.m4770c0(c1897i);
                } catch (IOException e6) {
                    c2979d2.f8302b.m4796n(e6);
                }
                int i10 = this.f8392f;
                if (i10 > 65535) {
                    this.f8395i.m4775V(0, i10 - 65535);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: q */
    public final void m4798q(C2508f1 c2508f1) {
        mo4170a(c2508f1);
        synchronized (this.f8397k) {
            try {
                Iterator it = this.f8400n.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    it.remove();
                    ((C2986k) entry.getValue()).f8362m.m4124h(c2508f1, false, new C2547v0());
                    m4795m((C2986k) entry.getValue());
                }
                for (C2986k c2986k : this.f8375D) {
                    c2986k.f8362m.m4123g(c2508f1, EnumC2725v.f7804e, true, new C2547v0());
                    m4795m(c2986k);
                }
                this.f8375D.clear();
                m4802u();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m4799r(int i10, EnumC3109a enumC3109a, C2508f1 c2508f1) {
        synchronized (this.f8397k) {
            try {
                if (this.f8408v == null) {
                    this.f8408v = c2508f1;
                    this.f8394h.m1365k(c2508f1);
                }
                if (enumC3109a != null && !this.f8409w) {
                    this.f8409w = true;
                    this.f8395i.m4777c(enumC3109a, new byte[0]);
                }
                Iterator it = this.f8400n.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (((Integer) entry.getKey()).intValue() > i10) {
                        it.remove();
                        ((C2986k) entry.getValue()).f8362m.m4123g(c2508f1, EnumC2725v.f7802c, false, new C2547v0());
                        m4795m((C2986k) entry.getValue());
                    }
                }
                for (C2986k c2986k : this.f8375D) {
                    c2986k.f8362m.m4123g(c2508f1, EnumC2725v.f7804e, true, new C2547v0());
                    m4795m(c2986k);
                }
                this.f8375D.clear();
                m4802u();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: s */
    public final boolean m4800s() {
        boolean z9 = false;
        while (true) {
            LinkedList linkedList = this.f8375D;
            if (linkedList.isEmpty() || this.f8400n.size() >= this.f8374C) {
                break;
            }
            m4801t((C2986k) linkedList.poll());
            z9 = true;
        }
        return z9;
    }

    /* JADX INFO: renamed from: t */
    public final void m4801t(C2986k c2986k) {
        boolean zM4122f;
        AbstractC2587b.m4046m(c2986k.f8362m.f8350K == -1, "StreamId already assigned");
        this.f8400n.put(Integer.valueOf(this.f8399m), c2986k);
        if (!this.f8412z) {
            this.f8412z = true;
            C2691p1 c2691p1 = this.f8377F;
            if (c2691p1 != null) {
                c2691p1.m4204b();
            }
        }
        if (c2986k.f7276d) {
            this.f8384M.m3098d(c2986k, true);
        }
        C2985j c2985j = c2986k.f8362m;
        int i10 = this.f8399m;
        if (!(c2985j.f8350K == -1)) {
            C1929i.m3030l(C1461d.m2512l("the stream has been started with id %s", Integer.valueOf(i10)));
            return;
        }
        c2985j.f8350K = i10;
        C0920p c0920p = c2985j.f8345F;
        c2985j.f8349J = new C2997v(c0920p, i10, c0920p.f768b, c2985j);
        C2985j c2985j2 = c2985j.f8351L.f8362m;
        if (c2985j2.f7299j == null) {
            throw new IllegalStateException();
        }
        synchronized (c2985j2.f7291b) {
            AbstractC2587b.m4046m(!c2985j2.f7295f, "Already allocated");
            c2985j2.f7295f = true;
        }
        synchronized (c2985j2.f7291b) {
            zM4122f = c2985j2.m4122f();
        }
        if (zM4122f) {
            c2985j2.f7299j.mo75j();
        }
        C2736w4 c2736w4 = c2985j2.f7292c;
        c2736w4.getClass();
        ((C2722u2) c2736w4.f7859c).m4245q();
        if (c2985j.f8347H) {
            C2979d c2979d = c2985j.f8344E;
            boolean z9 = c2985j.f8351L.f8365p;
            int i11 = c2985j.f8350K;
            ArrayList arrayList = c2985j.f8354x;
            c2979d.getClass();
            try {
                C3117i c3117i = c2979d.f8303c.f8286b;
                synchronized (c3117i) {
                    if (c3117i.f8927f) {
                        throw new IOException("closed");
                    }
                    c3117i.m4966c(z9, i11, arrayList);
                }
            } catch (IOException e) {
                c2979d.f8302b.m4796n(e);
            }
            for (AbstractC2503e abstractC2503e : c2985j.f8351L.f8360k.f7794a) {
                abstractC2503e.mo3911s();
            }
            c2985j.f8354x = null;
            C2242l c2242l = c2985j.f8355y;
            if (c2242l.f5878c > 0) {
                c2985j.f8345F.m1056c(c2985j.f8356z, c2985j.f8349J, c2242l, c2985j.f8340A);
            }
            c2985j.f8347H = false;
        }
        EnumC2549w0 enumC2549w0 = c2986k.f8358i.f7054a;
        if ((enumC2549w0 != EnumC2549w0.f7046b && enumC2549w0 != EnumC2549w0.f7047c) || c2986k.f8365p) {
            this.f8395i.flush();
        }
        int i12 = this.f8399m;
        if (i12 < 2147483645) {
            this.f8399m = i12 + 2;
        } else {
            this.f8399m = Integer.MAX_VALUE;
            m4799r(Integer.MAX_VALUE, EnumC3109a.NO_ERROR, C2508f1.f6945m.m3934h("Stream ids exhausted"));
        }
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1346b(this.f8398l.f6880c, "logId");
        c1073sM1263t.m1347c(this.f8387a, "address");
        return c1073sM1263t.toString();
    }

    /* JADX INFO: renamed from: u */
    public final void m4802u() {
        if (this.f8408v == null || !this.f8400n.isEmpty() || !this.f8375D.isEmpty() || this.f8411y) {
            return;
        }
        this.f8411y = true;
        C2691p1 c2691p1 = this.f8377F;
        if (c2691p1 != null) {
            synchronized (c2691p1) {
                try {
                    if (c2691p1.f7686d != 6) {
                        c2691p1.f7686d = 6;
                        ScheduledFuture scheduledFuture = c2691p1.f7687e;
                        if (scheduledFuture != null) {
                            scheduledFuture.cancel(false);
                        }
                        ScheduledFuture scheduledFuture2 = c2691p1.f7688f;
                        if (scheduledFuture2 != null) {
                            scheduledFuture2.cancel(false);
                            c2691p1.f7688f = null;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        C2619d1 c2619d1 = this.f8410x;
        if (c2619d1 != null) {
            C2511g1 c2511g1M4793k = m4793k();
            synchronized (c2619d1) {
                try {
                    if (!c2619d1.f7348d) {
                        c2619d1.f7348d = true;
                        c2619d1.f7349e = c2511g1M4793k;
                        LinkedHashMap linkedHashMap = c2619d1.f7347c;
                        c2619d1.f7347c = null;
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            try {
                                ((Executor) entry.getValue()).execute(new RunnableC2613c1((C2685o1) entry.getKey(), c2511g1M4793k));
                            } catch (Throwable th2) {
                                C2619d1.f7344g.log(Level.SEVERE, "Failed to execute PingCallback", th2);
                            }
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            this.f8410x = null;
        }
        if (!this.f8409w) {
            this.f8409w = true;
            this.f8395i.m4777c(EnumC3109a.NO_ERROR, new byte[0]);
        }
        this.f8395i.close();
    }
}
