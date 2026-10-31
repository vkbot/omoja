package r7;

import b7.p;
import com.bumptech.glide.manager.t;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map$Entry;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import l9.a0;
import l9.l;
import l9.o;
import n7.e1;
import n7.f1;
import n7.v0;
import o7.c1;
import o7.d1;
import o7.i1;
import o7.k1;
import o7.o1;
import o7.v;
import o7.x0;
import p7.m;
import p7.n;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a0 f5022b;
    public final f c;
    public final c d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(a0 a0Var) {
        this.f5022b = a0Var;
        f fVar = new f(a0Var);
        this.c = fVar;
        this.d = new c(fVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S(m mVar, int i9, byte b9, int i10) throws IOException {
        f1 f1VarH = null;
        boolean z8 = false;
        if (i10 == 0) {
            j.c("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            throw null;
        }
        boolean z9 = (b9 & 1) != 0;
        short s5 = (b9 & 8) != 0 ? (short) (this.f5022b.readByte() & UByte.MAX_VALUE) : (short) 0;
        if ((b9 & 32) != 0) {
            a0 a0Var = this.f5022b;
            a0Var.readInt();
            a0Var.readByte();
            i9 -= 5;
        }
        ArrayList arrayListY = y(j.b(i9, b9, s5), s5, b9, i10);
        l.d dVar = mVar.f4658b;
        if (dVar.z()) {
            ((Logger) dVar.c).log((Level) dVar.d, "INBOUND HEADERS: streamId=" + i10 + " headers=" + arrayListY + " endStream=" + z9);
        }
        if (mVar.e.K != Integer.MAX_VALUE) {
            long jC = 0;
            for (int i11 = 0; i11 < arrayListY.size(); i11++) {
                b bVar = (b) arrayListY.get(i11);
                jC += (long) (bVar.f5007b.c() + bVar.f5006a.c() + 32);
            }
            int iMin = (int) Math.min(jC, 2147483647L);
            int i12 = mVar.e.K;
            if (iMin > i12) {
                f1 f1Var = f1.f3927j;
                Locale locale = Locale.US;
                f1VarH = f1Var.h("Response " + (z9 ? "trailer" : "header") + " metadata larger than " + i12 + ": " + iMin);
            }
        }
        synchronized (mVar.e.f4666k) {
            try {
                p7.k kVar = (p7.k) mVar.e.f4669n.get(Integer.valueOf(i10));
                if (kVar == null) {
                    if (mVar.e.l(i10)) {
                        mVar.e.f4664i.S(i10, a.STREAM_CLOSED);
                    } else {
                        z8 = true;
                    }
                } else if (f1VarH == null) {
                    w7.c cVar = kVar.f4654m.I;
                    w7.b.f5947a.getClass();
                    kVar.f4654m.o(arrayListY, z9);
                } else {
                    if (!z9) {
                        mVar.e.f4664i.S(i10, a.CANCEL);
                    }
                    kVar.f4654m.g(f1VarH, v.f4462b, false, new v0());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z8) {
            n.e(mVar.e, "Received header for unknown stream: " + i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void V(m mVar, int i9, byte b9, int i10) throws IOException {
        if (i10 == 0) {
            j.c("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }
        short s5 = (b9 & 8) != 0 ? (short) (this.f5022b.readByte() & UByte.MAX_VALUE) : (short) 0;
        int i11 = this.f5022b.readInt() & Integer.MAX_VALUE;
        ArrayList arrayListY = y(j.b(i9 - 4, b9, s5), s5, b9, i10);
        l.d dVar = mVar.f4658b;
        if (dVar.z()) {
            ((Logger) dVar.c).log((Level) dVar.d, "INBOUND PUSH_PROMISE: streamId=" + i10 + " promisedStreamId=" + i11 + " headers=" + arrayListY);
        }
        synchronized (mVar.e.f4666k) {
            mVar.e.f4664i.S(i10, a.PROTOCOL_ERROR);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b(m mVar) throws IOException {
        boolean z8;
        d1 d1Var;
        a aVar;
        p7.v vVar;
        int i9 = 0;
        try {
            this.f5022b.Y(9L);
            int iA = j.a(this.f5022b);
            if (iA < 0 || iA > 16384) {
                j.c("FRAME_SIZE_ERROR: %s", Integer.valueOf(iA));
                throw null;
            }
            byte b9 = (byte) (this.f5022b.readByte() & UByte.MAX_VALUE);
            byte b10 = (byte) (this.f5022b.readByte() & UByte.MAX_VALUE);
            int i10 = this.f5022b.readInt() & Integer.MAX_VALUE;
            Logger logger = j.f5025a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(g.a(true, i10, iA, b9, b10));
            }
            switch (b9) {
                case 0:
                    c(mVar, iA, b10, i10);
                    return true;
                case 1:
                    S(mVar, iA, b10, i10);
                    return true;
                case 2:
                    if (iA != 5) {
                        j.c("TYPE_PRIORITY length: %d != 5", Integer.valueOf(iA));
                        throw null;
                    }
                    if (i10 == 0) {
                        j.c("TYPE_PRIORITY streamId == 0", new Object[0]);
                        throw null;
                    }
                    a0 a0Var = this.f5022b;
                    a0Var.readInt();
                    a0Var.readByte();
                    return true;
                case 3:
                    c0(mVar, iA, i10);
                    return true;
                case 4:
                    d0(mVar, iA, b10, i10);
                    return true;
                case 5:
                    V(mVar, iA, b10, i10);
                    return true;
                case 6:
                    z8 = true;
                    if (iA != 8) {
                        j.c("TYPE_PING length != 8: %s", Integer.valueOf(iA));
                        throw null;
                    }
                    if (i10 != 0) {
                        j.c("TYPE_PING streamId != 0", new Object[0]);
                        throw null;
                    }
                    int i11 = this.f5022b.readInt();
                    int i12 = this.f5022b.readInt();
                    i9 = (b10 & 1) != 0 ? 1 : 0;
                    long j9 = (((long) i11) << 32) | (((long) i12) & 4294967295L);
                    mVar.f4658b.D(1, j9);
                    Object obj = mVar.e.f4666k;
                    if (i9 != 0) {
                        synchronized (obj) {
                            try {
                                n nVar = mVar.e;
                                d1Var = nVar.f4676x;
                                if (d1Var != null) {
                                    long j10 = d1Var.f4183a;
                                    if (j10 == j9) {
                                        nVar.f4676x = null;
                                    } else {
                                        Logger logger2 = n.Q;
                                        Level level = Level.WARNING;
                                        Locale locale = Locale.US;
                                        logger2.log(level, "Received unexpected ping ack. Expecting " + j10 + ", got " + j9);
                                    }
                                } else {
                                    n.Q.warning("Received unexpected ping ack. No ping outstanding");
                                }
                                d1Var = null;
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                        if (d1Var != null) {
                            synchronized (d1Var) {
                                try {
                                    if (!d1Var.d) {
                                        d1Var.d = true;
                                        long jA = d1Var.f4184b.a();
                                        d1Var.f4185f = jA;
                                        LinkedHashMap linkedHashMap = d1Var.c;
                                        d1Var.c = null;
                                        for (Map$Entry map$Entry : linkedHashMap.entrySet()) {
                                            try {
                                                ((Executor) map$Entry.getValue()).execute(new c1((o1) map$Entry.getKey(), jA));
                                            } catch (Throwable th2) {
                                                d1.f4182g.log(Level.SEVERE, "Failed to execute PingCallback", th2);
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
                            mVar.e.f4664i.y(true, i11, i12);
                            break;
                        }
                    }
                    return z8;
                case 7:
                    a0 a0Var2 = this.f5022b;
                    if (iA < 8) {
                        j.c("TYPE_GOAWAY length < 8: %s", Integer.valueOf(iA));
                        throw null;
                    }
                    if (i10 != 0) {
                        j.c("TYPE_GOAWAY streamId != 0", new Object[0]);
                        throw null;
                    }
                    int i13 = a0Var2.readInt();
                    int i14 = a0Var2.readInt();
                    int i15 = iA - 8;
                    a[] aVarArrValues = a.values();
                    int length = aVarArrValues.length;
                    while (true) {
                        if (i9 < length) {
                            aVar = aVarArrValues[i9];
                            if (aVar.f5002b != i14) {
                                i9++;
                            }
                        } else {
                            aVar = null;
                        }
                    }
                    if (aVar == null) {
                        j.c("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i14));
                        throw null;
                    }
                    o oVarF = o.e;
                    if (i15 > 0) {
                        oVarF = a0Var2.f(i15);
                    }
                    n nVar2 = mVar.e;
                    mVar.f4658b.C(1, i13, aVar, oVarF);
                    if (aVar == a.ENHANCE_YOUR_CALM) {
                        String strL = oVarF.l();
                        n.Q.log(Level.WARNING, mVar + ": Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: " + strL);
                        if ("too_many_pings".equals(strL)) {
                            nVar2.J.run();
                        }
                    }
                    long j11 = aVar.f5002b;
                    x0[] x0VarArr = x0.e;
                    x0 x0Var = (j11 >= ((long) x0VarArr.length) || j11 < 0) ? null : x0VarArr[(int) j11];
                    f1 f1VarB = (x0Var == null ? f1.d(x0.d.c.f3933a.f3918b).h("Unrecognized HTTP/2 error code: " + j11) : x0Var.c).b("Received Goaway");
                    if (oVarF.c() > 0) {
                        f1VarB = f1VarB.b(oVarF.l());
                    }
                    Map map = n.P;
                    nVar2.r(i13, null, f1VarB);
                    return true;
                case 8:
                    if (iA != 4) {
                        j.c("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(iA));
                        throw null;
                    }
                    long j12 = ((long) this.f5022b.readInt()) & 2147483647L;
                    if (j12 == 0) {
                        j.c("windowSizeIncrement was 0", new Object[0]);
                        throw null;
                    }
                    mVar.f4658b.G(j12, 1, i10);
                    n nVar3 = mVar.e;
                    if (j12 == 0) {
                        if (i10 == 0) {
                            n.e(nVar3, "Received 0 flow control window increment.");
                            return true;
                        }
                        nVar3.h(i10, f1.f3929l.h("Received 0 flow control window increment."), v.f4462b, false, a.PROTOCOL_ERROR, null);
                        return true;
                    }
                    z8 = true;
                    synchronized (nVar3.f4666k) {
                        n nVar4 = mVar.e;
                        try {
                            if (i10 == 0) {
                                nVar4.f4665j.e(null, (int) j12);
                                return true;
                            }
                            p7.k kVar = (p7.k) nVar4.f4669n.get(Integer.valueOf(i10));
                            n nVar5 = mVar.e;
                            if (kVar != null) {
                                p pVar = nVar5.f4665j;
                                p7.j jVar = kVar.f4654m;
                                synchronized (jVar.w) {
                                    vVar = jVar.J;
                                    break;
                                }
                                pVar.e(vVar, (int) j12);
                            } else if (!nVar5.l(i10)) {
                                i9 = 1;
                            }
                            if (i9 != 0) {
                                n.e(mVar.e, "Received window_update for unknown stream: " + i10);
                                return true;
                            }
                            return z8;
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                default:
                    this.f5022b.skip(iA);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(m mVar, int i9, byte b9, int i10) throws IOException {
        p7.k kVar;
        boolean z8 = (b9 & 1) != 0;
        if ((b9 & 32) != 0) {
            j.c("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            throw null;
        }
        short s5 = (b9 & 8) != 0 ? (short) (this.f5022b.readByte() & UByte.MAX_VALUE) : (short) 0;
        int iB = j.b(i9, b9, s5);
        a0 a0Var = this.f5022b;
        mVar.f4658b.B(1, i10, a0Var.c, iB, z8);
        n nVar = mVar.e;
        synchronized (nVar.f4666k) {
            kVar = (p7.k) nVar.f4669n.get(Integer.valueOf(i10));
        }
        if (kVar == null) {
            boolean zL = mVar.e.l(i10);
            n nVar2 = mVar.e;
            if (zL) {
                synchronized (nVar2.f4666k) {
                    mVar.e.f4664i.S(i10, a.STREAM_CLOSED);
                }
                a0Var.skip(iB);
            } else {
                n.e(nVar2, "Received data for unknown stream: " + i10);
            }
            this.f5022b.skip(s5);
        }
        long j9 = iB;
        a0Var.Y(j9);
        l lVar = new l();
        lVar.write(a0Var.c, j9);
        w7.c cVar = kVar.f4654m.I;
        w7.b.f5947a.getClass();
        synchronized (mVar.e.f4666k) {
            kVar.f4654m.n(i9 - iB, z8, lVar);
        }
        n nVar3 = mVar.e;
        int i11 = nVar3.f4673s + i9;
        nVar3.f4673s = i11;
        if (i11 >= nVar3.f4661f * 0.5f) {
            synchronized (nVar3.f4666k) {
                n nVar4 = mVar.e;
                nVar4.f4664i.V(0, nVar4.f4673s);
            }
            mVar.e.f4673s = 0;
        }
        this.f5022b.skip(s5);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c0(m mVar, int i9, int i10) throws IOException {
        a aVar;
        if (i9 != 4) {
            j.c("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i9));
            throw null;
        }
        if (i10 == 0) {
            j.c("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        }
        int i11 = this.f5022b.readInt();
        a[] aVarArrValues = a.values();
        int length = aVarArrValues.length;
        int i12 = 0;
        while (true) {
            if (i12 >= length) {
                aVar = null;
                break;
            }
            aVar = aVarArrValues[i12];
            if (aVar.f5002b == i11) {
                break;
            } else {
                i12++;
            }
        }
        if (aVar == null) {
            j.c("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i11));
            throw null;
        }
        boolean z8 = true;
        mVar.f4658b.E(1, i10, aVar);
        f1 f1VarB = n.v(aVar).b("Rst Stream");
        e1 e1Var = f1VarB.f3933a;
        if (e1Var != e1.CANCELLED && e1Var != e1.DEADLINE_EXCEEDED) {
            z8 = false;
        }
        synchronized (mVar.e.f4666k) {
            try {
                p7.k kVar = (p7.k) mVar.e.f4669n.get(Integer.valueOf(i10));
                if (kVar != null) {
                    w7.c cVar = kVar.f4654m.I;
                    w7.b.f5947a.getClass();
                    mVar.e.h(i10, f1VarB, aVar == a.REFUSED_STREAM ? v.c : v.f4462b, z8, null, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5022b.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d0(m mVar, int i9, byte b9, int i10) throws IOException {
        boolean z8;
        if (i10 != 0) {
            j.c("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        }
        if ((b9 & 1) != 0) {
            if (i9 == 0) {
                return;
            }
            j.c("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            throw null;
        }
        if (i9 % 6 != 0) {
            j.c("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i9));
            throw null;
        }
        j.i iVar = new j.i(4);
        int i11 = 0;
        while (true) {
            short s5 = 4;
            if (i11 >= i9) {
                mVar.f4658b.F(1, iVar);
                synchronized (mVar.e.f4666k) {
                    try {
                        if (iVar.b(4)) {
                            mVar.e.C = ((int[]) iVar.c)[4];
                        }
                        if (iVar.b(7)) {
                            int i12 = ((int[]) iVar.c)[7];
                            p pVar = mVar.e.f4665j;
                            if (i12 >= 0) {
                                int i13 = i12 - pVar.f385b;
                                pVar.f385b = i12;
                                z8 = false;
                                for (p7.v vVar : ((n) pVar.c).i()) {
                                    vVar.a(i13);
                                }
                                if (i13 > 0) {
                                    z8 = true;
                                }
                            } else {
                                pVar.getClass();
                                j1.i.k(ai.onnxruntime.a.e(i12, "Invalid initial window size: "));
                                z8 = false;
                            }
                        } else {
                            z8 = false;
                        }
                        if (mVar.d) {
                            n nVar = mVar.e;
                            t tVar = nVar.f4663h;
                            n7.b bVar = nVar.f4674u;
                            Iterator it = ((k1) tVar.e).f4312j.iterator();
                            if (it.hasNext()) {
                                it.next().getClass();
                                throw new ClassCastException();
                            }
                            nVar.f4674u = bVar;
                            t tVar2 = mVar.e.f4663h;
                            k1 k1Var = (k1) tVar2.e;
                            k1Var.f4311i.m(2, "READY");
                            k1Var.f4313k.execute(new i1(tVar2, 0));
                            mVar.d = false;
                        }
                        p7.d dVar = mVar.e.f4664i;
                        l.d dVar2 = dVar.d;
                        if (dVar2.z()) {
                            ((Logger) dVar2.c).log((Level) dVar2.d, "OUTBOUND".concat(" SETTINGS: ack=true"));
                        }
                        try {
                            dVar.c.b(iVar);
                        } catch (IOException e) {
                            dVar.f4618b.n(e);
                        }
                        if (z8) {
                            mVar.e.f4665j.f();
                        }
                        mVar.e.s();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                int i14 = iVar.f2793b;
                if (((i14 & 2) != 0 ? ((int[]) iVar.c)[1] : -1) >= 0) {
                    c cVar = this.d;
                    int i15 = (i14 & 2) != 0 ? ((int[]) iVar.c)[1] : -1;
                    cVar.c = i15;
                    cVar.d = i15;
                    int i16 = cVar.f5012h;
                    if (i15 < i16) {
                        if (i15 != 0) {
                            cVar.a(i16 - i15);
                            return;
                        }
                        Arrays.fill(cVar.e, (Object) null);
                        cVar.f5010f = cVar.e.length - 1;
                        cVar.f5011g = 0;
                        cVar.f5012h = 0;
                        return;
                    }
                    return;
                }
                return;
            }
            short s9 = this.f5022b.readShort();
            int i17 = this.f5022b.readInt();
            switch (s9) {
                case 1:
                case 6:
                    s5 = s9;
                    break;
                case 2:
                    if (i17 != 0 && i17 != 1) {
                        j.c("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        throw null;
                    }
                    s5 = s9;
                    break;
                    break;
                case 3:
                    break;
                case 4:
                    if (i17 < 0) {
                        j.c("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        throw null;
                    }
                    s5 = 7;
                    break;
                    break;
                case 5:
                    if (i17 < 16384 || i17 > 16777215) {
                        j.c("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i17));
                        throw null;
                    }
                    s5 = s9;
                    break;
                    break;
                default:
                    continue;
                    i11 += 6;
                    break;
            }
            iVar.c(s5, i17);
            i11 += 6;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList y(int i9, short s5, byte b9, int i10) throws IOException {
        f fVar = this.c;
        fVar.f5018f = i9;
        fVar.c = i9;
        fVar.f5019g = s5;
        fVar.d = b9;
        fVar.e = i10;
        c cVar = this.d;
        a0 a0Var = cVar.f5009b;
        ArrayList arrayList = cVar.f5008a;
        while (!a0Var.k()) {
            byte b10 = a0Var.readByte();
            int i11 = b10 & UByte.MAX_VALUE;
            if (i11 == 128) {
                n0.b.A("index == 0");
                return null;
            }
            if ((b10 & ByteCompanionObject.MIN_VALUE) == 128) {
                int iE = cVar.e(i11, 127);
                int i12 = iE - 1;
                if (i12 >= 0) {
                    b[] bVarArr = e.f5016b;
                    if (i12 <= bVarArr.length - 1) {
                        arrayList.add(bVarArr[i12]);
                    }
                }
                int length = cVar.f5010f + 1 + (i12 - e.f5016b.length);
                if (length >= 0) {
                    b[] bVarArr2 = cVar.e;
                    if (length <= bVarArr2.length - 1) {
                        arrayList.add(bVarArr2[length]);
                    }
                }
                n0.b.A(ai.onnxruntime.a.e(iE, "Header index too large "));
                return null;
            }
            if (i11 == 64) {
                o oVarD = cVar.d();
                e.a(oVarD);
                cVar.c(new b(oVarD, cVar.d()));
            } else if ((b10 & 64) == 64) {
                cVar.c(new b(cVar.b(cVar.e(i11, 63) - 1), cVar.d()));
            } else if ((b10 & 32) == 32) {
                int iE2 = cVar.e(i11, 31);
                cVar.d = iE2;
                if (iE2 < 0 || iE2 > cVar.c) {
                    n0.b.y(cVar.d, "Invalid dynamic table size update ");
                    return null;
                }
                int i13 = cVar.f5012h;
                if (iE2 < i13) {
                    if (iE2 == 0) {
                        Arrays.fill(cVar.e, (Object) null);
                        cVar.f5010f = cVar.e.length - 1;
                        cVar.f5011g = 0;
                        cVar.f5012h = 0;
                    } else {
                        cVar.a(i13 - iE2);
                    }
                }
            } else if (i11 == 16 || i11 == 0) {
                o oVarD2 = cVar.d();
                e.a(oVarD2);
                arrayList.add(new b(oVarD2, cVar.d()));
            } else {
                arrayList.add(new b(cVar.b(cVar.e(i11, 15) - 1), cVar.d()));
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList.clear();
        return arrayList2;
    }
}
