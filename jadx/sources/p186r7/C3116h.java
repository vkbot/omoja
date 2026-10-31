package p186r7;

import ai.onnxruntime.AbstractC0074a;
import com.bumptech.glide.manager.C1074t;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import p022b7.C0920p;
import p097j.C1897i;
import p099j1.C1929i;
import p120l.C2187d;
import p130l9.C2222a0;
import p130l9.C2242l;
import p130l9.C2245o;
import p142n0.C2467b;
import p148n7.C2494b;
import p148n7.C2508f1;
import p148n7.C2547v0;
import p148n7.EnumC2505e1;
import p157o7.C2619d1;
import p157o7.C2661k1;
import p157o7.C2685o1;
import p157o7.EnumC2725v;
import p157o7.EnumC2738x0;
import p157o7.RunnableC2613c1;
import p157o7.RunnableC2649i1;
import p170p7.C2979d;
import p170p7.C2985j;
import p170p7.C2986k;
import p170p7.C2989n;
import p170p7.C2997v;
import p170p7.RunnableC2988m;
import p232w7.AbstractC3536b;
import p232w7.C3537c;

/* JADX INFO: renamed from: r7.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3116h implements Closeable {

    /* JADX INFO: renamed from: b */
    public final C2222a0 f8920b;

    /* JADX INFO: renamed from: c */
    public final C3114f f8921c;

    /* JADX INFO: renamed from: d */
    public final C3111c f8922d;

    public C3116h(C2222a0 c2222a0) {
        this.f8920b = c2222a0;
        C3114f c3114f = new C3114f(c2222a0);
        this.f8921c = c3114f;
        this.f8922d = new C3111c(c3114f);
    }

    /* JADX INFO: renamed from: S */
    public final void m4958S(RunnableC2988m runnableC2988m, int i10, byte b10, int i11) throws IOException {
        C2508f1 c2508f1M3934h = null;
        boolean z9 = false;
        if (i11 == 0) {
            C3118j.m4969c("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            throw null;
        }
        boolean z10 = (b10 & 1) != 0;
        short s5 = (b10 & 8) != 0 ? (short) (this.f8920b.readByte() & UByte.MAX_VALUE) : (short) 0;
        if ((b10 & 32) != 0) {
            C2222a0 c2222a0 = this.f8920b;
            c2222a0.readInt();
            c2222a0.readByte();
            i10 -= 5;
        }
        ArrayList arrayListM4964y = m4964y(C3118j.m4968b(i10, b10, s5), s5, b10, i11);
        C2187d c2187d = runnableC2988m.f8366b;
        if (c2187d.m3497z()) {
            ((Logger) c2187d.f5705c).log((Level) c2187d.f5706d, "INBOUND HEADERS: streamId=" + i11 + " headers=" + arrayListM4964y + " endStream=" + z10);
        }
        if (runnableC2988m.f8369e.f8382K != Integer.MAX_VALUE) {
            long jMo3585c = 0;
            for (int i12 = 0; i12 < arrayListM4964y.size(); i12++) {
                C3110b c3110b = (C3110b) arrayListM4964y.get(i12);
                jMo3585c += (long) (c3110b.f8893b.mo3585c() + c3110b.f8892a.mo3585c() + 32);
            }
            int iMin = (int) Math.min(jMo3585c, 2147483647L);
            int i13 = runnableC2988m.f8369e.f8382K;
            if (iMin > i13) {
                C2508f1 c2508f1 = C2508f1.f6942j;
                Locale locale = Locale.US;
                c2508f1M3934h = c2508f1.m3934h("Response " + (z10 ? "trailer" : "header") + " metadata larger than " + i13 + ": " + iMin);
            }
        }
        synchronized (runnableC2988m.f8369e.f8397k) {
            try {
                C2986k c2986k = (C2986k) runnableC2988m.f8369e.f8400n.get(Integer.valueOf(i11));
                if (c2986k == null) {
                    if (runnableC2988m.f8369e.m4794l(i11)) {
                        runnableC2988m.f8369e.f8395i.m4774S(i11, EnumC3109a.STREAM_CLOSED);
                    } else {
                        z9 = true;
                    }
                } else if (c2508f1M3934h == null) {
                    C3537c c3537c = c2986k.f8362m.f8348I;
                    AbstractC3536b.f10507a.getClass();
                    c2986k.f8362m.m4784o(arrayListM4964y, z10);
                } else {
                    if (!z10) {
                        runnableC2988m.f8369e.f8395i.m4774S(i11, EnumC3109a.CANCEL);
                    }
                    c2986k.f8362m.m4123g(c2508f1M3934h, EnumC2725v.f7801b, false, new C2547v0());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z9) {
            C2989n.m4785e(runnableC2988m.f8369e, "Received header for unknown stream: " + i11);
        }
    }

    /* JADX INFO: renamed from: V */
    public final void m4959V(RunnableC2988m runnableC2988m, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            C3118j.m4969c("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }
        short s5 = (b10 & 8) != 0 ? (short) (this.f8920b.readByte() & UByte.MAX_VALUE) : (short) 0;
        int i12 = this.f8920b.readInt() & Integer.MAX_VALUE;
        ArrayList arrayListM4964y = m4964y(C3118j.m4968b(i10 - 4, b10, s5), s5, b10, i11);
        C2187d c2187d = runnableC2988m.f8366b;
        if (c2187d.m3497z()) {
            ((Logger) c2187d.f5705c).log((Level) c2187d.f5706d, "INBOUND PUSH_PROMISE: streamId=" + i11 + " promisedStreamId=" + i12 + " headers=" + arrayListM4964y);
        }
        synchronized (runnableC2988m.f8369e.f8397k) {
            runnableC2988m.f8369e.f8395i.m4774S(i11, EnumC3109a.PROTOCOL_ERROR);
        }
    }

    /* JADX INFO: renamed from: b */
    public final boolean m4960b(RunnableC2988m runnableC2988m) throws IOException {
        boolean z9;
        C2619d1 c2619d1;
        EnumC3109a enumC3109a;
        C2997v c2997v;
        int i10 = 0;
        try {
            this.f8920b.mo3555Y(9L);
            int iM4967a = C3118j.m4967a(this.f8920b);
            if (iM4967a < 0 || iM4967a > 16384) {
                C3118j.m4969c("FRAME_SIZE_ERROR: %s", Integer.valueOf(iM4967a));
                throw null;
            }
            byte b10 = (byte) (this.f8920b.readByte() & UByte.MAX_VALUE);
            byte b11 = (byte) (this.f8920b.readByte() & UByte.MAX_VALUE);
            int i11 = this.f8920b.readInt() & Integer.MAX_VALUE;
            Logger logger = C3118j.f8928a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(AbstractC3115g.m4957a(true, i11, iM4967a, b10, b11));
            }
            switch (b10) {
                case 0:
                    m4961c(runnableC2988m, iM4967a, b11, i11);
                    return true;
                case 1:
                    m4958S(runnableC2988m, iM4967a, b11, i11);
                    return true;
                case 2:
                    if (iM4967a != 5) {
                        C3118j.m4969c("TYPE_PRIORITY length: %d != 5", Integer.valueOf(iM4967a));
                        throw null;
                    }
                    if (i11 == 0) {
                        C3118j.m4969c("TYPE_PRIORITY streamId == 0", new Object[0]);
                        throw null;
                    }
                    C2222a0 c2222a0 = this.f8920b;
                    c2222a0.readInt();
                    c2222a0.readByte();
                    return true;
                case 3:
                    m4962c0(runnableC2988m, iM4967a, i11);
                    return true;
                case 4:
                    m4963d0(runnableC2988m, iM4967a, b11, i11);
                    return true;
                case 5:
                    m4959V(runnableC2988m, iM4967a, b11, i11);
                    return true;
                case 6:
                    z9 = true;
                    if (iM4967a != 8) {
                        C3118j.m4969c("TYPE_PING length != 8: %s", Integer.valueOf(iM4967a));
                        throw null;
                    }
                    if (i11 != 0) {
                        C3118j.m4969c("TYPE_PING streamId != 0", new Object[0]);
                        throw null;
                    }
                    int i12 = this.f8920b.readInt();
                    int i13 = this.f8920b.readInt();
                    i10 = (b11 & 1) != 0 ? 1 : 0;
                    long j10 = (((long) i12) << 32) | (((long) i13) & 4294967295L);
                    runnableC2988m.f8366b.m3463D(1, j10);
                    Object obj = runnableC2988m.f8369e.f8397k;
                    if (i10 != 0) {
                        synchronized (obj) {
                            try {
                                C2989n c2989n = runnableC2988m.f8369e;
                                c2619d1 = c2989n.f8410x;
                                if (c2619d1 != null) {
                                    long j11 = c2619d1.f7345a;
                                    if (j11 == j10) {
                                        c2989n.f8410x = null;
                                    } else {
                                        Logger logger2 = C2989n.f8371Q;
                                        Level level = Level.WARNING;
                                        Locale locale = Locale.US;
                                        logger2.log(level, "Received unexpected ping ack. Expecting " + j11 + ", got " + j10);
                                    }
                                } else {
                                    C2989n.f8371Q.warning("Received unexpected ping ack. No ping outstanding");
                                }
                                c2619d1 = null;
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                        if (c2619d1 != null) {
                            synchronized (c2619d1) {
                                try {
                                    if (!c2619d1.f7348d) {
                                        c2619d1.f7348d = true;
                                        long jM2872a = c2619d1.f7346b.m2872a();
                                        c2619d1.f7350f = jM2872a;
                                        LinkedHashMap linkedHashMap = c2619d1.f7347c;
                                        c2619d1.f7347c = null;
                                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                                            try {
                                                ((Executor) entry.getValue()).execute(new RunnableC2613c1((C2685o1) entry.getKey(), jM2872a));
                                            } catch (Throwable th2) {
                                                C2619d1.f7344g.log(Level.SEVERE, "Failed to execute PingCallback", th2);
                                            }
                                        }
                                    }
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            }
                        }
                        break;
                    } else {
                        synchronized (obj) {
                            runnableC2988m.f8369e.f8395i.m4778y(true, i12, i13);
                            break;
                        }
                    }
                    return z9;
                case 7:
                    C2222a0 c2222a1 = this.f8920b;
                    if (iM4967a < 8) {
                        C3118j.m4969c("TYPE_GOAWAY length < 8: %s", Integer.valueOf(iM4967a));
                        throw null;
                    }
                    if (i11 != 0) {
                        C3118j.m4969c("TYPE_GOAWAY streamId != 0", new Object[0]);
                        throw null;
                    }
                    int i14 = c2222a1.readInt();
                    int i15 = c2222a1.readInt();
                    int i16 = iM4967a - 8;
                    EnumC3109a[] enumC3109aArrValues = EnumC3109a.values();
                    int length = enumC3109aArrValues.length;
                    while (true) {
                        if (i10 < length) {
                            enumC3109a = enumC3109aArrValues[i10];
                            if (enumC3109a.f8886b != i15) {
                                i10++;
                            }
                        } else {
                            enumC3109a = null;
                        }
                    }
                    if (enumC3109a == null) {
                        C3118j.m4969c("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i15));
                        throw null;
                    }
                    C2245o c2245oMo3562f = C2245o.f5879e;
                    if (i16 > 0) {
                        c2245oMo3562f = c2222a1.mo3562f(i16);
                    }
                    C2989n c2989n2 = runnableC2988m.f8369e;
                    runnableC2988m.f8366b.m3462C(1, i14, enumC3109a, c2245oMo3562f);
                    if (enumC3109a == EnumC3109a.ENHANCE_YOUR_CALM) {
                        String strM3636l = c2245oMo3562f.m3636l();
                        C2989n.f8371Q.log(Level.WARNING, runnableC2988m + ": Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: " + strM3636l);
                        if ("too_many_pings".equals(strM3636l)) {
                            c2989n2.f8381J.run();
                        }
                    }
                    long j12 = enumC3109a.f8886b;
                    EnumC2738x0[] enumC2738x0Arr = EnumC2738x0.f7862e;
                    EnumC2738x0 enumC2738x0 = (j12 >= ((long) enumC2738x0Arr.length) || j12 < 0) ? null : enumC2738x0Arr[(int) j12];
                    C2508f1 c2508f1M3931b = (enumC2738x0 == null ? C2508f1.m3928d(EnumC2738x0.f7861d.f7865c.f6948a.f6927b).m3934h("Unrecognized HTTP/2 error code: " + j12) : enumC2738x0.f7865c).m3931b("Received Goaway");
                    if (c2245oMo3562f.mo3585c() > 0) {
                        c2508f1M3931b = c2508f1M3931b.m3931b(c2245oMo3562f.m3636l());
                    }
                    Map map = C2989n.f8370P;
                    c2989n2.m4799r(i14, null, c2508f1M3931b);
                    return true;
                case 8:
                    if (iM4967a != 4) {
                        C3118j.m4969c("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(iM4967a));
                        throw null;
                    }
                    long j13 = ((long) this.f8920b.readInt()) & 2147483647L;
                    if (j13 == 0) {
                        C3118j.m4969c("windowSizeIncrement was 0", new Object[0]);
                        throw null;
                    }
                    runnableC2988m.f8366b.m3466G(j13, 1, i11);
                    C2989n c2989n3 = runnableC2988m.f8369e;
                    if (j13 == 0) {
                        if (i11 == 0) {
                            C2989n.m4785e(c2989n3, "Received 0 flow control window increment.");
                            return true;
                        }
                        c2989n3.m4790h(i11, C2508f1.f6944l.m3934h("Received 0 flow control window increment."), EnumC2725v.f7801b, false, EnumC3109a.PROTOCOL_ERROR, null);
                        return true;
                    }
                    z9 = true;
                    synchronized (c2989n3.f8397k) {
                        C2989n c2989n4 = runnableC2988m.f8369e;
                        try {
                            if (i11 == 0) {
                                c2989n4.f8396j.m1058e(null, (int) j13);
                                return true;
                            }
                            C2986k c2986k = (C2986k) c2989n4.f8400n.get(Integer.valueOf(i11));
                            C2989n c2989n5 = runnableC2988m.f8369e;
                            if (c2986k != null) {
                                C0920p c0920p = c2989n5.f8396j;
                                C2985j c2985j = c2986k.f8362m;
                                synchronized (c2985j.f8353w) {
                                    c2997v = c2985j.f8349J;
                                    break;
                                }
                                c0920p.m1058e(c2997v, (int) j13);
                            } else if (!c2989n5.m4794l(i11)) {
                                i10 = 1;
                            }
                            if (i10 != 0) {
                                C2989n.m4785e(runnableC2988m.f8369e, "Received window_update for unknown stream: " + i11);
                                return true;
                            }
                            return z9;
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                default:
                    this.f8920b.skip(iM4967a);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m4961c(RunnableC2988m runnableC2988m, int i10, byte b10, int i11) throws EOFException {
        C2986k c2986k;
        boolean z9 = (b10 & 1) != 0;
        if ((b10 & 32) != 0) {
            C3118j.m4969c("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            throw null;
        }
        short s5 = (b10 & 8) != 0 ? (short) (this.f8920b.readByte() & UByte.MAX_VALUE) : (short) 0;
        int iM4968b = C3118j.m4968b(i10, b10, s5);
        C2222a0 c2222a0 = this.f8920b;
        runnableC2988m.f8366b.m3461B(1, i11, c2222a0.f5846c, iM4968b, z9);
        C2989n c2989n = runnableC2988m.f8369e;
        synchronized (c2989n.f8397k) {
            c2986k = (C2986k) c2989n.f8400n.get(Integer.valueOf(i11));
        }
        if (c2986k == null) {
            boolean zM4794l = runnableC2988m.f8369e.m4794l(i11);
            C2989n c2989n2 = runnableC2988m.f8369e;
            if (zM4794l) {
                synchronized (c2989n2.f8397k) {
                    runnableC2988m.f8369e.f8395i.m4774S(i11, EnumC3109a.STREAM_CLOSED);
                }
                c2222a0.skip(iM4968b);
            } else {
                C2989n.m4785e(c2989n2, "Received data for unknown stream: " + i11);
            }
            this.f8920b.skip(s5);
        }
        long j10 = iM4968b;
        c2222a0.mo3555Y(j10);
        C2242l c2242l = new C2242l();
        c2242l.write(c2222a0.f5846c, j10);
        C3537c c3537c = c2986k.f8362m.f8348I;
        AbstractC3536b.f10507a.getClass();
        synchronized (runnableC2988m.f8369e.f8397k) {
            c2986k.f8362m.m4783n(i10 - iM4968b, z9, c2242l);
        }
        C2989n c2989n3 = runnableC2988m.f8369e;
        int i12 = c2989n3.f8405s + i10;
        c2989n3.f8405s = i12;
        if (i12 >= c2989n3.f8392f * 0.5f) {
            synchronized (c2989n3.f8397k) {
                C2989n c2989n4 = runnableC2988m.f8369e;
                c2989n4.f8395i.m4775V(0, c2989n4.f8405s);
            }
            runnableC2988m.f8369e.f8405s = 0;
        }
        this.f8920b.skip(s5);
    }

    /* JADX INFO: renamed from: c0 */
    public final void m4962c0(RunnableC2988m runnableC2988m, int i10, int i11) throws EOFException {
        EnumC3109a enumC3109a;
        if (i10 != 4) {
            C3118j.m4969c("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i10));
            throw null;
        }
        if (i11 == 0) {
            C3118j.m4969c("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        }
        int i12 = this.f8920b.readInt();
        EnumC3109a[] enumC3109aArrValues = EnumC3109a.values();
        int length = enumC3109aArrValues.length;
        int i13 = 0;
        while (true) {
            if (i13 >= length) {
                enumC3109a = null;
                break;
            }
            enumC3109a = enumC3109aArrValues[i13];
            if (enumC3109a.f8886b == i12) {
                break;
            } else {
                i13++;
            }
        }
        if (enumC3109a == null) {
            C3118j.m4969c("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i12));
            throw null;
        }
        boolean z9 = true;
        runnableC2988m.f8366b.m3464E(1, i11, enumC3109a);
        C2508f1 c2508f1M3931b = C2989n.m4788v(enumC3109a).m3931b("Rst Stream");
        EnumC2505e1 enumC2505e1 = c2508f1M3931b.f6948a;
        if (enumC2505e1 != EnumC2505e1.CANCELLED && enumC2505e1 != EnumC2505e1.DEADLINE_EXCEEDED) {
            z9 = false;
        }
        synchronized (runnableC2988m.f8369e.f8397k) {
            try {
                C2986k c2986k = (C2986k) runnableC2988m.f8369e.f8400n.get(Integer.valueOf(i11));
                if (c2986k != null) {
                    C3537c c3537c = c2986k.f8362m.f8348I;
                    AbstractC3536b.f10507a.getClass();
                    runnableC2988m.f8369e.m4790h(i11, c2508f1M3931b, enumC3109a == EnumC3109a.REFUSED_STREAM ? EnumC2725v.f7802c : EnumC2725v.f7801b, z9, null, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f8920b.close();
    }

    /* JADX INFO: renamed from: d0 */
    public final void m4963d0(RunnableC2988m runnableC2988m, int i10, byte b10, int i11) throws EOFException {
        boolean z9;
        if (i11 != 0) {
            C3118j.m4969c("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        }
        if ((b10 & 1) != 0) {
            if (i10 == 0) {
                return;
            }
            C3118j.m4969c("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            throw null;
        }
        if (i10 % 6 != 0) {
            C3118j.m4969c("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i10));
            throw null;
        }
        C1897i c1897i = new C1897i(4);
        int i12 = 0;
        while (true) {
            short s5 = 4;
            if (i12 >= i10) {
                runnableC2988m.f8366b.m3465F(1, c1897i);
                synchronized (runnableC2988m.f8369e.f8397k) {
                    try {
                        if (c1897i.m2943b(4)) {
                            runnableC2988m.f8369e.f8374C = ((int[]) c1897i.f4930c)[4];
                        }
                        if (c1897i.m2943b(7)) {
                            int i13 = ((int[]) c1897i.f4930c)[7];
                            C0920p c0920p = runnableC2988m.f8369e.f8396j;
                            if (i13 >= 0) {
                                int i14 = i13 - c0920p.f768b;
                                c0920p.f768b = i13;
                                z9 = false;
                                for (C2997v c2997v : ((C2989n) c0920p.f769c).m4791i()) {
                                    c2997v.m4809a(i14);
                                }
                                if (i14 > 0) {
                                    z9 = true;
                                }
                            } else {
                                c0920p.getClass();
                                C1929i.m3029k(AbstractC0074a.m154e(i13, "Invalid initial window size: "));
                                z9 = false;
                            }
                        } else {
                            z9 = false;
                        }
                        if (runnableC2988m.f8368d) {
                            C2989n c2989n = runnableC2988m.f8369e;
                            C1074t c1074t = c2989n.f8394h;
                            C2494b c2494b = c2989n.f8407u;
                            Iterator it = ((C2661k1) c1074t.f1185e).f7577j.iterator();
                            if (it.hasNext()) {
                                it.next().getClass();
                                throw new ClassCastException();
                            }
                            c2989n.f8407u = c2494b;
                            C1074t c1074t2 = runnableC2988m.f8369e.f8394h;
                            C2661k1 c2661k1 = (C2661k1) c1074t2.f1185e;
                            c2661k1.f7576i.mo3905m(2, "READY");
                            c2661k1.f7578k.execute(new RunnableC2649i1(c1074t2, 0));
                            runnableC2988m.f8368d = false;
                        }
                        C2979d c2979d = runnableC2988m.f8369e.f8395i;
                        C2187d c2187d = c2979d.f8304d;
                        if (c2187d.m3497z()) {
                            ((Logger) c2187d.f5705c).log((Level) c2187d.f5706d, "OUTBOUND".concat(" SETTINGS: ack=true"));
                        }
                        try {
                            c2979d.f8303c.m4768b(c1897i);
                        } catch (IOException e) {
                            c2979d.f8302b.m4796n(e);
                        }
                        if (z9) {
                            runnableC2988m.f8369e.f8396j.m1059f();
                        }
                        runnableC2988m.f8369e.m4800s();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                int i15 = c1897i.f4929b;
                if (((i15 & 2) != 0 ? ((int[]) c1897i.f4930c)[1] : -1) >= 0) {
                    C3111c c3111c = this.f8922d;
                    int i16 = (i15 & 2) != 0 ? ((int[]) c1897i.f4930c)[1] : -1;
                    c3111c.f8897c = i16;
                    c3111c.f8898d = i16;
                    int i17 = c3111c.f8902h;
                    if (i16 < i17) {
                        if (i16 != 0) {
                            c3111c.m4948a(i17 - i16);
                            return;
                        }
                        Arrays.fill(c3111c.f8899e, (Object) null);
                        c3111c.f8900f = c3111c.f8899e.length - 1;
                        c3111c.f8901g = 0;
                        c3111c.f8902h = 0;
                        return;
                    }
                    return;
                }
                return;
            }
            short s9 = this.f8920b.readShort();
            int i18 = this.f8920b.readInt();
            switch (s9) {
                case 1:
                case 6:
                    s5 = s9;
                    break;
                case 2:
                    if (i18 != 0 && i18 != 1) {
                        C3118j.m4969c("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        throw null;
                    }
                    s5 = s9;
                    break;
                    break;
                case 3:
                    break;
                case 4:
                    if (i18 < 0) {
                        C3118j.m4969c("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        throw null;
                    }
                    s5 = 7;
                    break;
                    break;
                case 5:
                    if (i18 < 16384 || i18 > 16777215) {
                        C3118j.m4969c("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i18));
                        throw null;
                    }
                    s5 = s9;
                    break;
                    break;
                default:
                    continue;
                    i12 += 6;
                    break;
            }
            c1897i.m2944c(s5, i18);
            i12 += 6;
        }
    }

    /* JADX INFO: renamed from: y */
    public final ArrayList m4964y(int i10, short s5, byte b10, int i11) throws IOException {
        C3114f c3114f = this.f8921c;
        c3114f.f8915f = i10;
        c3114f.f8912c = i10;
        c3114f.f8916g = s5;
        c3114f.f8913d = b10;
        c3114f.f8914e = i11;
        C3111c c3111c = this.f8922d;
        C2222a0 c2222a0 = c3111c.f8896b;
        ArrayList arrayList = c3111c.f8895a;
        while (!c2222a0.mo3564k()) {
            byte b11 = c2222a0.readByte();
            int i12 = b11 & UByte.MAX_VALUE;
            if (i12 == 128) {
                C2467b.m3820A("index == 0");
                return null;
            }
            if ((b11 & ByteCompanionObject.MIN_VALUE) == 128) {
                int iM4952e = c3111c.m4952e(i12, 127);
                int i13 = iM4952e - 1;
                if (i13 >= 0) {
                    C3110b[] c3110bArr = AbstractC3113e.f8909b;
                    if (i13 <= c3110bArr.length - 1) {
                        arrayList.add(c3110bArr[i13]);
                    }
                }
                int length = c3111c.f8900f + 1 + (i13 - AbstractC3113e.f8909b.length);
                if (length >= 0) {
                    C3110b[] c3110bArr2 = c3111c.f8899e;
                    if (length <= c3110bArr2.length - 1) {
                        arrayList.add(c3110bArr2[length]);
                    }
                }
                C2467b.m3820A(AbstractC0074a.m154e(iM4952e, "Header index too large "));
                return null;
            }
            if (i12 == 64) {
                C2245o c2245oM4951d = c3111c.m4951d();
                AbstractC3113e.m4956a(c2245oM4951d);
                c3111c.m4950c(new C3110b(c2245oM4951d, c3111c.m4951d()));
            } else if ((b11 & 64) == 64) {
                c3111c.m4950c(new C3110b(c3111c.m4949b(c3111c.m4952e(i12, 63) - 1), c3111c.m4951d()));
            } else if ((b11 & 32) == 32) {
                int iM4952e2 = c3111c.m4952e(i12, 31);
                c3111c.f8898d = iM4952e2;
                if (iM4952e2 < 0 || iM4952e2 > c3111c.f8897c) {
                    C2467b.m3835y(c3111c.f8898d, "Invalid dynamic table size update ");
                    return null;
                }
                int i14 = c3111c.f8902h;
                if (iM4952e2 < i14) {
                    if (iM4952e2 == 0) {
                        Arrays.fill(c3111c.f8899e, (Object) null);
                        c3111c.f8900f = c3111c.f8899e.length - 1;
                        c3111c.f8901g = 0;
                        c3111c.f8902h = 0;
                    } else {
                        c3111c.m4948a(i14 - iM4952e2);
                    }
                }
            } else if (i12 == 16 || i12 == 0) {
                C2245o c2245oM4951d2 = c3111c.m4951d();
                AbstractC3113e.m4956a(c2245oM4951d2);
                arrayList.add(new C3110b(c2245oM4951d2, c3111c.m4951d()));
            } else {
                arrayList.add(new C3110b(c3111c.m4949b(c3111c.m4952e(i12, 15) - 1), c3111c.m4951d()));
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList.clear();
        return arrayList2;
    }
}
