package p7;

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
import java.util.Map$Entry;
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
import l9.g0;
import l9.z;
import n7.a0;
import n7.f1;
import n7.g1;
import n7.v0;
import n7.w0;
import n7.x0;
import o7.c0;
import o7.c1;
import o7.d1;
import o7.e1;
import o7.m2;
import o7.m4;
import o7.o1;
import o7.p1;
import o7.p4;
import o7.t4;
import o7.u2;
import o7.w4;
import o7.y0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n implements c0 {
    public static final Map P;
    public static final Logger Q;
    public final SocketFactory A;
    public final SSLSocketFactory B;
    public int C;
    public final LinkedList D;
    public final q7.c E;
    public p1 F;
    public boolean G;
    public long H;
    public long I;
    public final com.bumptech.glide.m J;
    public final int K;
    public final w4 L;
    public final e1 M;
    public final n7.u N;
    public final int O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InetSocketAddress f4659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4660b;
    public final String c;
    public final Random d;
    public final u2 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r7.j f4662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.bumptech.glide.manager.t f4663h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public d f4664i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public b7.p f4665j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f4666k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final a0 f4667l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4668m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final HashMap f4669n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Executor f4670o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final m4 f4671p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ScheduledExecutorService f4672q;
    public final int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f4673s;
    public m t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public n7.b f4674u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public f1 f4675v;
    public boolean w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public d1 f4676x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f4677y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f4678z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        EnumMap enumMap = new EnumMap(r7.a.class);
        f1 f1Var = f1.f3929l;
        enumMap.put(r7.a.NO_ERROR, f1Var.h("No error: A GRPC status of OK should have been sent"));
        enumMap.put(r7.a.PROTOCOL_ERROR, f1Var.h("Protocol error"));
        enumMap.put(r7.a.INTERNAL_ERROR, f1Var.h("Internal error"));
        enumMap.put(r7.a.FLOW_CONTROL_ERROR, f1Var.h("Flow control error"));
        enumMap.put(r7.a.STREAM_CLOSED, f1Var.h("Stream closed"));
        enumMap.put(r7.a.FRAME_TOO_LARGE, f1Var.h("Frame too large"));
        enumMap.put(r7.a.REFUSED_STREAM, f1.f3930m.h("Refused stream"));
        enumMap.put(r7.a.CANCEL, f1.f3923f.h("Cancelled"));
        enumMap.put(r7.a.COMPRESSION_ERROR, f1Var.h("Compression error"));
        enumMap.put(r7.a.CONNECT_ERROR, f1Var.h("Connect error"));
        enumMap.put(r7.a.ENHANCE_YOUR_CALM, f1.f3927j.h("Enhance your calm"));
        enumMap.put(r7.a.INADEQUATE_SECURITY, f1.f3926i.h("Inadequate security"));
        P = Collections.unmodifiableMap(enumMap);
        Q = Logger.getLogger(n.class.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(g gVar, InetSocketAddress inetSocketAddress, String str, n7.b bVar, n7.u uVar, com.bumptech.glide.m mVar) {
        u2 u2Var = y0.r;
        r7.j jVar = new r7.j();
        this.d = new Random();
        Object obj = new Object();
        this.f4666k = obj;
        this.f4669n = new HashMap();
        this.C = 0;
        this.D = new LinkedList();
        this.M = new e1(this, 2);
        this.O = 30000;
        o4.b.i(inetSocketAddress, "address");
        this.f4659a = inetSocketAddress;
        this.f4660b = str;
        this.r = gVar.f4627i;
        this.f4661f = gVar.f4631m;
        Executor executor = gVar.c;
        o4.b.i(executor, "executor");
        this.f4670o = executor;
        this.f4671p = new m4(gVar.c);
        ScheduledExecutorService scheduledExecutorService = gVar.e;
        o4.b.i(scheduledExecutorService, "scheduledExecutorService");
        this.f4672q = scheduledExecutorService;
        this.f4668m = 3;
        this.A = SocketFactory.getDefault();
        this.B = gVar.f4625g;
        q7.c cVar = gVar.f4626h;
        o4.b.i(cVar, "connectionSpec");
        this.E = cVar;
        o4.b.i(u2Var, "stopwatchFactory");
        this.e = u2Var;
        this.f4662g = jVar;
        this.c = "grpc-java-okhttp/1.62.2";
        this.N = uVar;
        this.J = mVar;
        this.K = gVar.f4632n;
        gVar.f4624f.getClass();
        this.L = new w4();
        this.f4667l = a0.a(n.class, inetSocketAddress.toString());
        n7.b bVar2 = n7.b.f3886b;
        n7.a aVar = p4.f4394b;
        IdentityHashMap identityHashMap = new IdentityHashMap(1);
        identityHashMap.put(aVar, bVar);
        for (Map$Entry map$Entry : bVar2.f3887a.entrySet()) {
            if (!identityHashMap.containsKey(map$Entry.getKey())) {
                identityHashMap.put((n7.a) map$Entry.getKey(), map$Entry.getValue());
            }
        }
        this.f4674u = new n7.b(identityHashMap);
        synchronized (obj) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(n nVar, String str) {
        r7.a aVar = r7.a.PROTOCOL_ERROR;
        nVar.r(0, aVar, v(aVar).b(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Socket f(n nVar, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) throws g1 {
        Socket socket = null;
        try {
            InetAddress address = inetSocketAddress2.getAddress();
            SocketFactory socketFactory = nVar.A;
            Socket socketCreateSocket = address != null ? socketFactory.createSocket(inetSocketAddress2.getAddress(), inetSocketAddress2.getPort()) : socketFactory.createSocket(inetSocketAddress2.getHostName(), inetSocketAddress2.getPort());
            try {
                socketCreateSocket.setTcpNoDelay(true);
                socketCreateSocket.setSoTimeout(nVar.O);
                g0 g0VarH = l9.b.h(socketCreateSocket);
                z zVarA = l9.b.a(l9.b.g(socketCreateSocket));
                l.d dVarG = nVar.g(inetSocketAddress, str, str2);
                n.p pVar = (n.p) dVarG.d;
                s7.a aVar = (s7.a) dVarG.c;
                Locale locale = Locale.US;
                zVarA.A("CONNECT " + aVar.f5314a + ":" + aVar.f5315b + " HTTP/1.1");
                zVarA.A("\r\n");
                String[] strArr = (String[]) pVar.c;
                String[] strArr2 = (String[]) pVar.c;
                int length = strArr.length / 2;
                for (int i9 = 0; i9 < length; i9++) {
                    int i10 = i9 * 2;
                    zVarA.A((i10 < 0 || i10 >= strArr2.length) ? null : strArr2[i10]);
                    zVarA.A(": ");
                    int i11 = i10 + 1;
                    zVarA.A((i11 < 0 || i11 >= strArr2.length) ? null : strArr2[i11]);
                    zVarA.A("\r\n");
                }
                zVarA.A("\r\n");
                zVarA.flush();
                c7.l lVarB = c7.l.b(o(g0VarH));
                int i12 = lVarB.f540b;
                while (!o(g0VarH).equals("")) {
                }
                if (i12 >= 200 && i12 < 300) {
                    socketCreateSocket.setSoTimeout(0);
                    return socketCreateSocket;
                }
                l9.l lVar = new l9.l();
                try {
                    socketCreateSocket.shutdownOutput();
                    g0VarH.read(lVar, 1024L);
                } catch (IOException e) {
                    lVar.u0("Unable to read body: " + e.toString());
                }
                try {
                    socketCreateSocket.close();
                } catch (IOException unused) {
                }
                Locale locale2 = Locale.US;
                throw new g1(f1.f3930m.h("Response returned from proxy was not successful (expected 2xx, got " + i12 + " " + ((String) lVarB.d) + "). Response body:\n" + lVar.h0()));
            } catch (IOException e6) {
                e = e6;
                socket = socketCreateSocket;
                if (socket != null) {
                    y0.b(socket);
                }
                throw new g1(f1.f3930m.h("Failed trying to connect with proxy").g(e));
            }
        } catch (IOException e9) {
            e = e9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String o(g0 g0Var) throws EOFException {
        long j9;
        l9.l lVar = new l9.l();
        do {
            long j10 = g0Var.read(lVar, 1L);
            j9 = lVar.c;
            if (j10 == -1) {
                throw new EOFException("\\n not found: " + lVar.f(j9).d());
            }
        } while (lVar.V(j9 - 1) != 10);
        return lVar.p(Long.MAX_VALUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f1 v(r7.a aVar) {
        f1 f1Var = (f1) P.get(aVar);
        if (f1Var != null) {
            return f1Var;
        }
        return f1.f3924g.h("Unknown http2 error code: " + aVar.f5002b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.n2
    public final void a(f1 f1Var) {
        synchronized (this.f4666k) {
            try {
                if (this.f4675v != null) {
                    return;
                }
                this.f4675v = f1Var;
                this.f4663h.k(f1Var);
                u();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.n2
    public final Runnable b(m2 m2Var) {
        this.f4663h = (com.bumptech.glide.manager.t) m2Var;
        if (this.G) {
            p1 p1Var = new p1(new n.p(3, this), this.f4672q, this.H, this.I);
            this.F = p1Var;
            synchronized (p1Var) {
            }
        }
        c cVar = new c(this.f4671p, this);
        r7.j jVar = this.f4662g;
        z zVar = new z(cVar);
        jVar.getClass();
        b bVar = new b(cVar, new r7.i(zVar));
        synchronized (this.f4666k) {
            d dVar = new d(this, bVar);
            this.f4664i = dVar;
            this.f4665j = new b7.p(this, dVar);
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f4671p.execute(new c3.e(this, countDownLatch, cVar, 5));
        try {
            p();
            countDownLatch.countDown();
            this.f4671p.execute(new com.bumptech.glide.m(25, this));
            return null;
        } catch (Throwable th) {
            countDownLatch.countDown();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.z
    public final a0 c() {
        return this.f4667l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.x
    public final o7.u d(x0 x0Var, v0 v0Var, n7.c cVar, n7.e[] eVarArr) {
        k kVar;
        o4.b.i(x0Var, "method");
        o4.b.i(v0Var, "headers");
        n7.b bVar = this.f4674u;
        t4 t4Var = new t4(eVarArr);
        for (n7.e eVar : eVarArr) {
            eVar.C(bVar, v0Var);
        }
        synchronized (this.f4666k) {
            kVar = new k(x0Var, v0Var, this.f4664i, this, this.f4665j, this.f4666k, this.r, this.f4661f, this.f4660b, this.c, t4Var, this.L, cVar);
        }
        return kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final l.d g(InetSocketAddress inetSocketAddress, String str, String str2) {
        String strSubstring;
        String str3;
        String strH0;
        int i9;
        int i10;
        InetAddress byAddress;
        byte[] address;
        int i11;
        int i12;
        int i13;
        int i14;
        l9.l lVar;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int iA;
        int i20;
        q0.g gVar = new q0.g();
        gVar.d = -1;
        gVar.f4781b = "https";
        String hostName = inetSocketAddress.getHostName();
        String str4 = "host == null";
        if (hostName == null) {
            j1.i.k("host == null");
            return null;
        }
        int length = hostName.length();
        int i21 = 0;
        int iCharCount = 0;
        while (true) {
            if (iCharCount >= length) {
                strSubstring = hostName.substring(0, length);
                break;
            }
            if (hostName.charAt(iCharCount) == '%') {
                l9.l lVar2 = new l9.l();
                lVar2.t0(0, iCharCount, hostName);
                while (iCharCount < length) {
                    int iCodePointAt = hostName.codePointAt(iCharCount);
                    if (iCodePointAt != 37 || (i20 = iCharCount + 2) >= length) {
                        lVar2.v0(iCodePointAt);
                    } else {
                        int iA2 = s7.a.a(hostName.charAt(iCharCount + 1));
                        int iA3 = s7.a.a(hostName.charAt(i20));
                        if (iA2 == -1 || iA3 == -1) {
                            lVar2.v0(iCodePointAt);
                        } else {
                            lVar2.m0((iA2 << 4) + iA3);
                            iCharCount = i20;
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt);
                }
                strSubstring = lVar2.h0();
                break;
            }
            iCharCount++;
        }
        if (!strSubstring.startsWith("[") || !strSubstring.endsWith("]")) {
            str3 = "host == null";
            try {
                String lowerCase = IDN.toASCII(strSubstring).toLowerCase(Locale.US);
                if (!lowerCase.isEmpty()) {
                    int i22 = 0;
                    while (true) {
                        if (i22 >= lowerCase.length()) {
                            strH0 = lowerCase;
                            break;
                        }
                        char cCharAt = lowerCase.charAt(i22);
                        if (cCharAt > 31 && cCharAt < 127 && " #%/:?@[\\]".indexOf(cCharAt) == -1) {
                            i22++;
                        }
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            strH0 = null;
            break;
        }
        int length2 = strSubstring.length() - 1;
        int i23 = 16;
        byte[] bArr = new byte[16];
        int i24 = -1;
        int i25 = -1;
        int i26 = 0;
        int i27 = 1;
        while (true) {
            try {
                if (i27 < length2) {
                    if (i26 != i23) {
                        int i28 = i27 + 2;
                        if (i28 > length2 || !strSubstring.regionMatches(i27, "::", i21, 2)) {
                            if (i26 == 0) {
                                str3 = str4;
                                i17 = i27;
                                i18 = 0;
                                while (i17 < length2) {
                                    iA = s7.a.a(strSubstring.charAt(i17));
                                    if (iA == -1) {
                                        break;
                                        break;
                                    }
                                    i18 = (i18 << 4) + iA;
                                    i17++;
                                }
                                i19 = i17 - i27;
                                if (i19 == 0) {
                                }
                            } else if (strSubstring.regionMatches(i27, ":", i21, 1)) {
                                i27++;
                                str3 = str4;
                                i17 = i27;
                                i18 = 0;
                                while (i17 < length2) {
                                    iA = s7.a.a(strSubstring.charAt(i17));
                                    if (iA == -1) {
                                        break;
                                    }
                                    i18 = (i18 << 4) + iA;
                                    i17++;
                                }
                                i19 = i17 - i27;
                                if (i19 == 0 && i19 <= 4) {
                                    int i29 = i26 + 1;
                                    bArr[i26] = (byte) ((i18 >>> 8) & 255);
                                    i26 += 2;
                                    bArr[i29] = (byte) (i18 & 255);
                                    i25 = i27;
                                    i21 = 0;
                                    i23 = 16;
                                    i27 = i17;
                                    str4 = str3;
                                }
                            } else {
                                if (strSubstring.regionMatches(i27, ".", i21, 1)) {
                                    int i30 = i26 - 2;
                                    int i31 = i30;
                                    int i32 = i25;
                                    while (true) {
                                        if (i32 < length2) {
                                            if (i31 != 16) {
                                                if (i31 != i30) {
                                                    if (strSubstring.charAt(i32) == '.') {
                                                        i32++;
                                                    }
                                                }
                                                int i33 = i32;
                                                int i34 = 0;
                                                while (true) {
                                                    int i35 = i30;
                                                    if (i33 < length2) {
                                                        char cCharAt2 = strSubstring.charAt(i33);
                                                        str3 = str4;
                                                        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                                                            if ((i34 != 0 || i32 == i33) && (i34 = ((i34 * 10) + cCharAt2) - 48) <= 255) {
                                                                i33++;
                                                                i30 = i35;
                                                                str4 = str3;
                                                            }
                                                        }
                                                    } else {
                                                        str3 = str4;
                                                    }
                                                    if (i33 - i32 != 0) {
                                                        bArr[i31] = (byte) i34;
                                                        i31++;
                                                        i32 = i33;
                                                        i30 = i35;
                                                        str4 = str3;
                                                    }
                                                }
                                            }
                                            str3 = str4;
                                        } else {
                                            str3 = str4;
                                            if (i31 == i26 + 2) {
                                                i26 += 2;
                                                i9 = 16;
                                            }
                                        }
                                    }
                                }
                                byAddress = null;
                                if (byAddress == null) {
                                    strH0 = null;
                                    break;
                                }
                                address = byAddress.getAddress();
                                i11 = 16;
                                if (address.length == 16) {
                                    throw new AssertionError();
                                }
                                i12 = i10;
                                i13 = i12;
                                i14 = -1;
                                while (i12 < address.length) {
                                    i15 = i12;
                                    while (i15 < i11 && address[i15] == 0 && address[i15 + 1] == 0) {
                                        i15 += 2;
                                        i11 = 16;
                                    }
                                    i16 = i15 - i12;
                                    if (i16 > i13) {
                                        i14 = i12;
                                        i13 = i16;
                                    }
                                    i12 = i15 + 2;
                                    i11 = 16;
                                }
                                lVar = new l9.l();
                                while (i10 < address.length) {
                                    if (i10 == i14) {
                                        lVar.m0(58);
                                        i10 += i13;
                                        if (i10 == 16) {
                                            lVar.m0(58);
                                        }
                                    } else {
                                        if (i10 > 0) {
                                            lVar.m0(58);
                                        }
                                        lVar.o0(((address[i10] & UByte.MAX_VALUE) << 8) | (address[i10 + 1] & UByte.MAX_VALUE));
                                        i10 += 2;
                                    }
                                }
                                strH0 = lVar.h0();
                            }
                            i10 = 0;
                            byAddress = null;
                            if (byAddress == null) {
                                strH0 = null;
                                break;
                            }
                            address = byAddress.getAddress();
                            i11 = 16;
                            if (address.length == 16) {
                                throw new AssertionError();
                            }
                            i12 = i10;
                            i13 = i12;
                            i14 = -1;
                            while (i12 < address.length) {
                                i15 = i12;
                                while (i15 < i11) {
                                    i15 += 2;
                                    i11 = 16;
                                }
                                i16 = i15 - i12;
                                if (i16 > i13) {
                                    i14 = i12;
                                    i13 = i16;
                                }
                                i12 = i15 + 2;
                                i11 = 16;
                            }
                            lVar = new l9.l();
                            while (i10 < address.length) {
                                if (i10 == i14) {
                                    lVar.m0(58);
                                    i10 += i13;
                                    if (i10 == 16) {
                                        lVar.m0(58);
                                    }
                                } else {
                                    if (i10 > 0) {
                                        lVar.m0(58);
                                    }
                                    lVar.o0(((address[i10] & UByte.MAX_VALUE) << 8) | (address[i10 + 1] & UByte.MAX_VALUE));
                                    i10 += 2;
                                }
                            }
                            strH0 = lVar.h0();
                        } else if (i24 == -1) {
                            i26 += 2;
                            str3 = str4;
                            if (i28 == length2) {
                                i24 = i26;
                                i9 = 16;
                            } else {
                                i27 = i28;
                                i24 = i26;
                                i17 = i27;
                                i18 = 0;
                                while (i17 < length2) {
                                    iA = s7.a.a(strSubstring.charAt(i17));
                                    if (iA == -1) {
                                        break;
                                        break;
                                    }
                                    i18 = (i18 << 4) + iA;
                                    i17++;
                                }
                                i19 = i17 - i27;
                                if (i19 == 0) {
                                }
                                i10 = 0;
                                byAddress = null;
                                if (byAddress == null) {
                                    strH0 = null;
                                    break;
                                }
                                address = byAddress.getAddress();
                                i11 = 16;
                                if (address.length == 16) {
                                    throw new AssertionError();
                                }
                                i12 = i10;
                                i13 = i12;
                                i14 = -1;
                                while (i12 < address.length) {
                                    i15 = i12;
                                    while (i15 < i11) {
                                        i15 += 2;
                                        i11 = 16;
                                    }
                                    i16 = i15 - i12;
                                    if (i16 > i13) {
                                        i14 = i12;
                                        i13 = i16;
                                    }
                                    i12 = i15 + 2;
                                    i11 = 16;
                                }
                                lVar = new l9.l();
                                while (i10 < address.length) {
                                    if (i10 == i14) {
                                        lVar.m0(58);
                                        i10 += i13;
                                        if (i10 == 16) {
                                            lVar.m0(58);
                                        }
                                    } else {
                                        if (i10 > 0) {
                                            lVar.m0(58);
                                        }
                                        lVar.o0(((address[i10] & UByte.MAX_VALUE) << 8) | (address[i10 + 1] & UByte.MAX_VALUE));
                                        i10 += 2;
                                    }
                                }
                                strH0 = lVar.h0();
                            }
                        }
                    }
                    str3 = str4;
                    i10 = i21;
                    byAddress = null;
                    if (byAddress == null) {
                        strH0 = null;
                        break;
                    }
                    address = byAddress.getAddress();
                    i11 = 16;
                    if (address.length == 16) {
                        throw new AssertionError();
                    }
                    i12 = i10;
                    i13 = i12;
                    i14 = -1;
                    while (i12 < address.length) {
                        i15 = i12;
                        while (i15 < i11) {
                            i15 += 2;
                            i11 = 16;
                        }
                        i16 = i15 - i12;
                        if (i16 > i13) {
                            i14 = i12;
                            i13 = i16;
                        }
                        i12 = i15 + 2;
                        i11 = 16;
                    }
                    lVar = new l9.l();
                    while (i10 < address.length) {
                        if (i10 == i14) {
                            lVar.m0(58);
                            i10 += i13;
                            if (i10 == 16) {
                                lVar.m0(58);
                            }
                        } else {
                            if (i10 > 0) {
                                lVar.m0(58);
                            }
                            lVar.o0(((address[i10] & UByte.MAX_VALUE) << 8) | (address[i10 + 1] & UByte.MAX_VALUE));
                            i10 += 2;
                        }
                    }
                    strH0 = lVar.h0();
                } else {
                    str3 = str4;
                    i9 = i23;
                }
                if (i26 != i9) {
                    if (i24 != -1) {
                        int i36 = i26 - i24;
                        System.arraycopy(bArr, i24, bArr, 16 - i36, i36);
                        i10 = 0;
                        Arrays.fill(bArr, i24, (16 - i26) + i24, (byte) 0);
                    }
                    i10 = 0;
                    byAddress = null;
                    if (byAddress == null) {
                        strH0 = null;
                        break;
                    }
                    address = byAddress.getAddress();
                    i11 = 16;
                    if (address.length == 16) {
                        throw new AssertionError();
                    }
                    i12 = i10;
                    i13 = i12;
                    i14 = -1;
                    while (i12 < address.length) {
                        i15 = i12;
                        while (i15 < i11) {
                            i15 += 2;
                            i11 = 16;
                        }
                        i16 = i15 - i12;
                        if (i16 > i13) {
                            i14 = i12;
                            i13 = i16;
                        }
                        i12 = i15 + 2;
                        i11 = 16;
                    }
                    lVar = new l9.l();
                    while (i10 < address.length) {
                        if (i10 == i14) {
                            lVar.m0(58);
                            i10 += i13;
                            if (i10 == 16) {
                                lVar.m0(58);
                            }
                        } else {
                            if (i10 > 0) {
                                lVar.m0(58);
                            }
                            lVar.o0(((address[i10] & UByte.MAX_VALUE) << 8) | (address[i10 + 1] & UByte.MAX_VALUE));
                            i10 += 2;
                        }
                    }
                    strH0 = lVar.h0();
                } else {
                    i10 = 0;
                }
                byAddress = InetAddress.getByAddress(bArr);
                if (byAddress == null) {
                    strH0 = null;
                    break;
                }
                address = byAddress.getAddress();
                i11 = 16;
                if (address.length == 16) {
                    throw new AssertionError();
                }
                i12 = i10;
                i13 = i12;
                i14 = -1;
                while (i12 < address.length) {
                    i15 = i12;
                    while (i15 < i11) {
                        i15 += 2;
                        i11 = 16;
                    }
                    i16 = i15 - i12;
                    if (i16 > i13) {
                        i14 = i12;
                        i13 = i16;
                    }
                    i12 = i15 + 2;
                    i11 = 16;
                }
                lVar = new l9.l();
                while (i10 < address.length) {
                    if (i10 == i14) {
                        lVar.m0(58);
                        i10 += i13;
                        if (i10 == 16) {
                            lVar.m0(58);
                        }
                    } else {
                        if (i10 > 0) {
                            lVar.m0(58);
                        }
                        lVar.o0(((address[i10] & UByte.MAX_VALUE) << 8) | (address[i10 + 1] & UByte.MAX_VALUE));
                        i10 += 2;
                    }
                }
                strH0 = lVar.h0();
            } catch (UnknownHostException unused2) {
                throw new AssertionError();
            }
        }
        if (strH0 == null) {
            j1.i.k("unexpected host: ".concat(hostName));
            return null;
        }
        gVar.c = strH0;
        int port = inetSocketAddress.getPort();
        if (port <= 0 || port > 65535) {
            j1.i.k(ai.onnxruntime.a.e(port, "unexpected port: "));
            return null;
        }
        gVar.d = port;
        if (gVar.c == null) {
            j1.i.l(str3);
            return null;
        }
        s7.a aVar = new s7.a(gVar);
        l.d dVar = new l.d(15);
        dVar.d = new i7.i(2);
        dVar.c = aVar;
        dVar.w("Host", aVar.f5314a + ":" + aVar.f5315b);
        dVar.w("User-Agent", this.c);
        if (str != null && str2 != null) {
            try {
                dVar.w("Proxy-Authorization", "Basic " + l9.o.g((str + ":" + str2).getBytes("ISO-8859-1")).a());
            } catch (UnsupportedEncodingException unused3) {
                throw new AssertionError();
            }
        }
        if (((s7.a) dVar.c) != null) {
            return new l.d(dVar);
        }
        j1.i.l("url == null");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.c0
    public final n7.b getAttributes() {
        return this.f4674u;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(int i9, f1 f1Var, o7.v vVar, boolean z8, r7.a aVar, v0 v0Var) {
        synchronized (this.f4666k) {
            try {
                k kVar = (k) this.f4669n.remove(Integer.valueOf(i9));
                if (kVar != null) {
                    if (aVar != null) {
                        this.f4664i.S(i9, r7.a.CANCEL);
                    }
                    if (f1Var != null) {
                        j jVar = kVar.f4654m;
                        if (v0Var == null) {
                            v0Var = new v0();
                        }
                        jVar.g(f1Var, vVar, z8, v0Var);
                    }
                    if (!s()) {
                        u();
                        m(kVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final v[] i() {
        v[] vVarArr;
        v vVar;
        synchronized (this.f4666k) {
            vVarArr = new v[this.f4669n.size()];
            Iterator it = this.f4669n.values().iterator();
            int i9 = 0;
            while (it.hasNext()) {
                int i10 = i9 + 1;
                j jVar = ((k) it.next()).f4654m;
                synchronized (jVar.w) {
                    vVar = jVar.J;
                }
                vVarArr[i9] = vVar;
                i9 = i10;
            }
        }
        return vVarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int j() {
        URI uriA = y0.a(this.f4660b);
        return uriA.getPort() != -1 ? uriA.getPort() : this.f4659a.getPort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final g1 k() {
        synchronized (this.f4666k) {
            try {
                f1 f1Var = this.f4675v;
                if (f1Var != null) {
                    return new g1(f1Var);
                }
                return new g1(f1.f3930m.h("Connection closed"));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x000c  */
    public final boolean l(int i9) {
        boolean z8;
        synchronized (this.f4666k) {
            if (i9 < this.f4668m) {
                z8 = true;
                if ((i9 & 1) != 1) {
                    z8 = false;
                }
            } else {
                z8 = false;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(k kVar) {
        if (this.f4678z && this.D.isEmpty() && this.f4669n.isEmpty()) {
            this.f4678z = false;
            p1 p1Var = this.F;
            if (p1Var != null) {
                synchronized (p1Var) {
                    int i9 = p1Var.d;
                    if (i9 == 2 || i9 == 3) {
                        p1Var.d = 1;
                    }
                    if (p1Var.d == 4) {
                        p1Var.d = 5;
                    }
                }
            }
        }
        if (kVar.d) {
            this.M.d(kVar, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(Exception exc) {
        r(0, r7.a.INTERNAL_ERROR, f1.f3930m.g(exc));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p() {
        synchronized (this.f4666k) {
            try {
                d dVar = this.f4664i;
                dVar.getClass();
                try {
                    dVar.c.c();
                } catch (IOException e) {
                    dVar.f4618b.n(e);
                }
                j.i iVar = new j.i(4);
                iVar.c(7, this.f4661f);
                d dVar2 = this.f4664i;
                dVar2.d.F(2, iVar);
                try {
                    dVar2.c.c0(iVar);
                } catch (IOException e6) {
                    dVar2.f4618b.n(e6);
                }
                int i9 = this.f4661f;
                if (i9 > 65535) {
                    this.f4664i.V(0, i9 - 65535);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void q(f1 f1Var) {
        a(f1Var);
        synchronized (this.f4666k) {
            try {
                Iterator it = this.f4669n.entrySet().iterator();
                while (it.hasNext()) {
                    Map$Entry map$Entry = (Map$Entry) it.next();
                    it.remove();
                    ((k) map$Entry.getValue()).f4654m.h(f1Var, false, new v0());
                    m((k) map$Entry.getValue());
                }
                for (k kVar : this.D) {
                    kVar.f4654m.g(f1Var, o7.v.e, true, new v0());
                    m(kVar);
                }
                this.D.clear();
                u();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r(int i9, r7.a aVar, f1 f1Var) {
        synchronized (this.f4666k) {
            try {
                if (this.f4675v == null) {
                    this.f4675v = f1Var;
                    this.f4663h.k(f1Var);
                }
                if (aVar != null && !this.w) {
                    this.w = true;
                    this.f4664i.c(aVar, new byte[0]);
                }
                Iterator it = this.f4669n.entrySet().iterator();
                while (it.hasNext()) {
                    Map$Entry map$Entry = (Map$Entry) it.next();
                    if (((Integer) map$Entry.getKey()).intValue() > i9) {
                        it.remove();
                        ((k) map$Entry.getValue()).f4654m.g(f1Var, o7.v.c, false, new v0());
                        m((k) map$Entry.getValue());
                    }
                }
                for (k kVar : this.D) {
                    kVar.f4654m.g(f1Var, o7.v.e, true, new v0());
                    m(kVar);
                }
                this.D.clear();
                u();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean s() {
        boolean z8 = false;
        while (true) {
            LinkedList linkedList = this.D;
            if (linkedList.isEmpty() || this.f4669n.size() >= this.C) {
                break;
            }
            t((k) linkedList.poll());
            z8 = true;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(k kVar) {
        boolean zF;
        o4.b.m(kVar.f4654m.K == -1, "StreamId already assigned");
        this.f4669n.put(Integer.valueOf(this.f4668m), kVar);
        if (!this.f4678z) {
            this.f4678z = true;
            p1 p1Var = this.F;
            if (p1Var != null) {
                p1Var.b();
            }
        }
        if (kVar.d) {
            this.M.d(kVar, true);
        }
        j jVar = kVar.f4654m;
        int i9 = this.f4668m;
        if (!(jVar.K == -1)) {
            j1.i.l(e3.d.l("the stream has been started with id %s", Integer.valueOf(i9)));
            return;
        }
        jVar.K = i9;
        b7.p pVar = jVar.F;
        jVar.J = new v(pVar, i9, pVar.f385b, jVar);
        j jVar2 = jVar.L.f4654m;
        if (jVar2.f4149j == null) {
            throw new IllegalStateException();
        }
        synchronized (jVar2.f4144b) {
            o4.b.m(!jVar2.f4145f, "Already allocated");
            jVar2.f4145f = true;
        }
        synchronized (jVar2.f4144b) {
            zF = jVar2.f();
        }
        if (zF) {
            jVar2.f4149j.j();
        }
        w4 w4Var = jVar2.c;
        w4Var.getClass();
        ((u2) w4Var.c).q();
        if (jVar.H) {
            d dVar = jVar.E;
            boolean z8 = jVar.L.f4657p;
            int i10 = jVar.K;
            ArrayList arrayList = jVar.f4646x;
            dVar.getClass();
            try {
                r7.i iVar = dVar.c.f4607b;
                synchronized (iVar) {
                    if (iVar.f5024f) {
                        throw new IOException("closed");
                    }
                    iVar.c(z8, i10, arrayList);
                }
            } catch (IOException e) {
                dVar.f4618b.n(e);
            }
            for (n7.e eVar : jVar.L.f4652k.f4457a) {
                eVar.s();
            }
            jVar.f4646x = null;
            l9.l lVar = jVar.f4647y;
            if (lVar.c > 0) {
                jVar.F.c(jVar.f4648z, jVar.J, lVar, jVar.A);
            }
            jVar.H = false;
        }
        w0 w0Var = kVar.f4650i.f3984a;
        if ((w0Var != w0.f3981b && w0Var != w0.c) || kVar.f4657p) {
            this.f4664i.flush();
        }
        int i11 = this.f4668m;
        if (i11 < 2147483645) {
            this.f4668m = i11 + 2;
        } else {
            this.f4668m = Integer.MAX_VALUE;
            r(Integer.MAX_VALUE, r7.a.NO_ERROR, f1.f3930m.h("Stream ids exhausted"));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.b(this.f4667l.c, "logId");
        sVarT.c(this.f4659a, "address");
        return sVarT.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        if (this.f4675v == null || !this.f4669n.isEmpty() || !this.D.isEmpty() || this.f4677y) {
            return;
        }
        this.f4677y = true;
        p1 p1Var = this.F;
        if (p1Var != null) {
            synchronized (p1Var) {
                try {
                    if (p1Var.d != 6) {
                        p1Var.d = 6;
                        ScheduledFuture scheduledFuture = p1Var.e;
                        if (scheduledFuture != null) {
                            scheduledFuture.cancel(false);
                        }
                        ScheduledFuture scheduledFuture2 = p1Var.f4384f;
                        if (scheduledFuture2 != null) {
                            scheduledFuture2.cancel(false);
                            p1Var.f4384f = null;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        d1 d1Var = this.f4676x;
        if (d1Var != null) {
            g1 g1VarK = k();
            synchronized (d1Var) {
                try {
                    if (!d1Var.d) {
                        d1Var.d = true;
                        d1Var.e = g1VarK;
                        LinkedHashMap linkedHashMap = d1Var.c;
                        d1Var.c = null;
                        for (Map$Entry map$Entry : linkedHashMap.entrySet()) {
                            try {
                                ((Executor) map$Entry.getValue()).execute(new c1((o1) map$Entry.getKey(), g1VarK));
                            } catch (Throwable th2) {
                                d1.f4182g.log(Level.SEVERE, "Failed to execute PingCallback", th2);
                            }
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            this.f4676x = null;
        }
        if (!this.w) {
            this.w = true;
            this.f4664i.c(r7.a.NO_ERROR, new byte[0]);
        }
        this.f4664i.close();
    }
}
