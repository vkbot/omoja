package p120l;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.bumptech.glide.AbstractC1034g;
import com.example.navistart.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Formatter;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.unsigned.AbstractC2082a;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.apache.commons.p161io.C2786e;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.AbstractC0000a;
import p025c0.AbstractC0938g;
import p025c0.C0936e;
import p063f6.C1578b;
import p070g3.C1613b;
import p077h.C1646h;
import p077h.InterfaceC1649k;
import p094i7.C1760i;
import p097j.C1897i;
import p097j.InterfaceC1889d0;
import p099j1.C1929i;
import p108k.InterfaceC2014b;
import p130l9.C2237i;
import p130l9.C2242l;
import p130l9.C2245o;
import p136m5.C2399b;
import p141n.C2455p;
import p142n0.C2467b;
import p148n7.C2491a;
import p148n7.C2494b;
import p148n7.C2508f1;
import p148n7.RunnableC2520j1;
import p155o4.AbstractC2587b;
import p155o4.C2591f;
import p163p.C2946b;
import p170p7.C2989n;
import p170p7.EnumC2990o;
import p172q.AbstractC3009c;
import p172q.C3006a0;
import p172q.C3007b;
import p172q.C3013e;
import p172q.C3034x;
import p172q.InterfaceC3026p;
import p181r2.AbstractC3093a;
import p186r7.EnumC3109a;
import p194s6.C3209a;
import p194s6.C3211c;
import p195s7.C3216a;
import p202t6.C3264a;
import p209u3.p210p.c00008;
import p224v8.AbstractC3436y;
import p234x.C3545c;
import p241x6.C3579a;
import p241x6.C3580b;
import p241x6.C3581c;
import p243x8.AbstractC3603g;
import p243x8.InterfaceC3613q;
import p253y8.C3665b;
import p253y8.InterfaceC3669f;
import p253y8.InterfaceC3670g;
import p260z5.C3753i;
import p260z5.InterfaceC3760p;
import p263z8.C3766d;

/* JADX INFO: renamed from: l.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2187d implements InterfaceC1649k, InterfaceC3026p, OnApplyWindowInsetsListener, InterfaceC3669f {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5704b;

    /* JADX INFO: renamed from: c */
    public Object f5705c;

    /* JADX INFO: renamed from: d */
    public Object f5706d;

    public C2187d(int i10) {
        this.f5704b = i10;
        switch (i10) {
            case 6:
                Level level = Level.FINE;
                Logger logger = Logger.getLogger(C2989n.class.getName());
                AbstractC2587b.m4042i(level, "level");
                this.f5706d = level;
                AbstractC2587b.m4042i(logger, "logger");
                this.f5705c = logger;
                break;
            case 15:
                break;
            case 20:
                this.f5705c = new AtomicLong();
                this.f5706d = new AtomicLong();
                break;
            case 21:
                this.f5705c = new AtomicReference();
                this.f5706d = new ArrayMap();
                break;
            case 22:
                this.f5706d = new ArrayList();
                this.f5705c = new HashMap();
                break;
            default:
                this.f5705c = new HashMap();
                this.f5706d = new C2186c(0);
                break;
        }
    }

    /* JADX INFO: renamed from: Q */
    public static String m3457Q(C2242l c2242l) {
        long j10 = c2242l.f5878c;
        if (j10 <= 64) {
            return c2242l.m3617i0().mo3586d();
        }
        return c2242l.m3618j0((int) Math.min(j10, 64L)).mo3586d() + "...";
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: a */
    public static C2187d m3458a(Context context) {
        FileChannel channel;
        FileLock fileLockLock;
        try {
            channel = new RandomAccessFile(new File(context.getFilesDir(), "generatefid.lock"), "rw").getChannel();
            try {
                fileLockLock = channel.lock();
                try {
                    return new C2187d(1, channel, fileLockLock);
                } catch (IOException e) {
                    e = e;
                    Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused) {
                        }
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                } catch (Error e6) {
                    e = e6;
                    Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    return null;
                } catch (OverlappingFileLockException e10) {
                    e = e10;
                    Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    return null;
                }
            } catch (IOException | Error | OverlappingFileLockException e11) {
                e = e11;
                fileLockLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e12) {
            e = e12;
            channel = null;
            fileLockLock = null;
        }
    }

    /* JADX INFO: renamed from: m */
    public static C3006a0 m3459m(ImageDecoder.Source source, int i10, int i11, C1646h c1646h) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new C2946b(i10, i11, c1646h));
        if (AbstractC3009c.m4830l(drawableDecodeDrawable)) {
            return new C3006a0(2, AbstractC3009c.m4825g(drawableDecodeDrawable));
        }
        C2786e.m4354f(drawableDecodeDrawable, "Received unexpected drawable type for animated image, failing: ");
        return null;
    }

    /* JADX INFO: renamed from: A */
    public boolean m3460A() {
        return ((int[]) this.f5706d)[0] == 0;
    }

    /* JADX INFO: renamed from: B */
    public void m3461B(int i10, int i11, C2242l c2242l, int i12, boolean z9) {
        if (m3497z()) {
            ((Logger) this.f5705c).log((Level) this.f5706d, AbstractC2082a.m3243i(i10) + " DATA: streamId=" + i11 + " endStream=" + z9 + " length=" + i12 + " bytes=" + m3457Q(c2242l));
        }
    }

    /* JADX INFO: renamed from: C */
    public void m3462C(int i10, int i11, EnumC3109a enumC3109a, C2245o c2245o) {
        if (m3497z()) {
            Logger logger = (Logger) this.f5705c;
            Level level = (Level) this.f5706d;
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC2082a.m3243i(i10));
            sb.append(" GO_AWAY: lastStreamId=");
            sb.append(i11);
            sb.append(" errorCode=");
            sb.append(enumC3109a);
            sb.append(" length=");
            sb.append(c2245o.mo3585c());
            sb.append(" bytes=");
            C2242l c2242l = new C2242l();
            c2242l.m3620l0(c2245o);
            sb.append(m3457Q(c2242l));
            logger.log(level, sb.toString());
        }
    }

    /* JADX INFO: renamed from: D */
    public void m3463D(int i10, long j10) {
        if (m3497z()) {
            ((Logger) this.f5705c).log((Level) this.f5706d, AbstractC2082a.m3243i(i10) + " PING: ack=false bytes=" + j10);
        }
    }

    /* JADX INFO: renamed from: E */
    public void m3464E(int i10, int i11, EnumC3109a enumC3109a) {
        if (m3497z()) {
            ((Logger) this.f5705c).log((Level) this.f5706d, AbstractC2082a.m3243i(i10) + " RST_STREAM: streamId=" + i11 + " errorCode=" + enumC3109a);
        }
    }

    /* JADX INFO: renamed from: F */
    public void m3465F(int i10, C1897i c1897i) {
        if (m3497z()) {
            Logger logger = (Logger) this.f5705c;
            Level level = (Level) this.f5706d;
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC2082a.m3243i(i10));
            sb.append(" SETTINGS: ack=false settings=");
            EnumMap enumMap = new EnumMap(EnumC2990o.class);
            for (EnumC2990o enumC2990o : EnumC2990o.values()) {
                if (c1897i.m2943b(enumC2990o.f8414b)) {
                    enumMap.put(enumC2990o, Integer.valueOf(((int[]) c1897i.f4930c)[enumC2990o.f8414b]));
                }
            }
            sb.append(enumMap.toString());
            logger.log(level, sb.toString());
        }
    }

    /* JADX INFO: renamed from: G */
    public void m3466G(long j10, int i10, int i11) {
        if (m3497z()) {
            ((Logger) this.f5705c).log((Level) this.f5706d, AbstractC2082a.m3243i(i10) + " WINDOW_UPDATE: streamId=" + i11 + " windowSizeIncrement=" + j10);
        }
    }

    /* JADX INFO: renamed from: H */
    public C2187d m3467H(int i10) {
        int[] iArr = (int[]) this.f5706d;
        C3264a c3264a = (C3264a) this.f5705c;
        if (i10 == 0) {
            return c3264a.f9553c;
        }
        if (i10 == 1) {
            return this;
        }
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr2[i11] = c3264a.m5208c(iArr[i11], i10);
        }
        return new C2187d(c3264a, iArr2);
    }

    /* JADX INFO: renamed from: I */
    public C2187d m3468I(C2187d c2187d) {
        C3264a c3264a = (C3264a) this.f5705c;
        if (!c3264a.equals((C3264a) c2187d.f5705c)) {
            C1929i.m3029k("ModulusPolys do not have same ModulusGF field");
            return null;
        }
        if (m3460A() || c2187d.m3460A()) {
            return c3264a.f9553c;
        }
        int[] iArr = (int[]) this.f5706d;
        int length = iArr.length;
        int[] iArr2 = (int[]) c2187d.f5706d;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = iArr[i10];
            for (int i12 = 0; i12 < length2; i12++) {
                int i13 = i10 + i12;
                iArr3[i13] = c3264a.m5206a(iArr3[i13], c3264a.m5208c(i11, iArr2[i12]));
            }
        }
        return new C2187d(c3264a, iArr3);
    }

    /* JADX INFO: renamed from: J */
    public C2399b m3469J() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(m3489r());
            while (true) {
                try {
                    int i10 = fileInputStream.read(bArr, 0, 16384);
                    if (i10 < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String strOptString = jSONObject.optString("Fid", null);
        int iOptInt = jSONObject.optInt("Status", 0);
        String strOptString2 = jSONObject.optString("AuthToken", null);
        String strOptString3 = jSONObject.optString("RefreshToken", null);
        long jOptLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String strOptString4 = jSONObject.optString("FisError", null);
        int i11 = AbstractC1034g.m1297d(5)[iOptInt];
        if (i11 == 0) {
            C2467b.m3828n("Null registrationStatus");
            return null;
        }
        String str = i11 == 0 ? " registrationStatus" : "";
        if (str.isEmpty()) {
            return new C2399b(strOptString, i11, strOptString2, strOptString3, jOptLong2, jOptLong, strOptString4);
        }
        C1929i.m3030l("Missing required properties:".concat(str));
        return null;
    }

    /* JADX INFO: renamed from: K */
    public void m3470K(String str) {
        C2185b c2185b;
        synchronized (this) {
            try {
                Object obj = ((HashMap) this.f5705c).get(str);
                AbstractC0938g.m1072c(obj, "Argument must not be null");
                c2185b = (C2185b) obj;
                int i10 = c2185b.f5702b;
                if (i10 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + c2185b.f5702b);
                }
                int i11 = i10 - 1;
                c2185b.f5702b = i11;
                if (i11 == 0) {
                    C2185b c2185b2 = (C2185b) ((HashMap) this.f5705c).remove(str);
                    if (!c2185b2.equals(c2185b)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + c2185b + ", but actually removed: " + c2185b2 + ", safeKey: " + str);
                    }
                    C2186c c2186c = (C2186c) this.f5706d;
                    synchronized (c2186c.f5703a) {
                        try {
                            if (c2186c.f5703a.size() < 10) {
                                c2186c.f5703a.offer(c2185b2);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        c2185b.f5701a.unlock();
    }

    /* JADX INFO: renamed from: L */
    public void m3471L() {
        try {
            ((FileLock) this.f5706d).release();
            ((FileChannel) this.f5705c).close();
        } catch (IOException e) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e);
        }
    }

    /* JADX INFO: renamed from: M */
    public void m3472M(C2491a c2491a, Object obj) {
        if (((IdentityHashMap) this.f5706d) == null) {
            this.f5706d = new IdentityHashMap(1);
        }
        ((IdentityHashMap) this.f5706d).put(c2491a, obj);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0088  */
    /* JADX WARN: Code duplicated, block: B:44:0x008d A[RETURN] */
    /* JADX INFO: renamed from: N */
    public float m3473N(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = 1;
        boolean z9 = Math.abs(i13 - i11) > Math.abs(i12 - i10);
        if (z9) {
            i15 = i10;
            i14 = i11;
            i17 = i12;
            i16 = i13;
        } else {
            i14 = i10;
            i15 = i11;
            i16 = i12;
            i17 = i13;
        }
        int iAbs = Math.abs(i16 - i14);
        int iAbs2 = Math.abs(i17 - i15);
        int i20 = 2;
        int i21 = (-iAbs) / 2;
        int i22 = i14 < i16 ? 1 : -1;
        int i23 = i15 < i17 ? 1 : -1;
        int i24 = i16 + i22;
        int i25 = i14;
        int i26 = i15;
        int i27 = 0;
        while (i25 != i24) {
            boolean z10 = z9;
            if ((i27 == i19 ? i19 : 0) == ((C1578b) this.f5705c).m2658b(z9 ? i26 : i25, z9 ? i25 : i26)) {
                if (i27 == 2) {
                    return AbstractC0000a.m8h(i25, i26, i14, i15);
                }
                i27++;
            }
            i21 += iAbs2;
            if (i21 > 0) {
                if (i26 == i17) {
                    i18 = 2;
                    if (i27 == i18) {
                        return AbstractC0000a.m8h(i24, i17, i14, i15);
                    }
                    return Float.NaN;
                }
                i26 += i23;
                i21 -= iAbs;
            }
            i25 += i22;
            iAbs = iAbs;
            z9 = z10;
            i19 = 1;
            i20 = 2;
        }
        i18 = i20;
        if (i27 == i18) {
            return AbstractC0000a.m8h(i24, i17, i14, i15);
        }
        return Float.NaN;
    }

    /* JADX INFO: renamed from: O */
    public float m3474O(int i10, int i11, int i12, int i13) {
        float f8;
        float f10;
        C1578b c1578b = (C1578b) this.f5705c;
        float fM3473N = m3473N(i10, i11, i12, i13);
        int i14 = i10 - (i12 - i10);
        int i15 = 0;
        if (i14 < 0) {
            f8 = i10 / (i10 - i14);
            i14 = 0;
        } else {
            int i16 = c1578b.f3900b;
            if (i14 >= i16) {
                float f11 = ((i16 - 1) - i10) / (i14 - i10);
                int i17 = i16 - 1;
                f8 = f11;
                i14 = i17;
            } else {
                f8 = 1.0f;
            }
        }
        float f12 = i11;
        int i18 = (int) (f12 - ((i13 - i11) * f8));
        if (i18 < 0) {
            f10 = f12 / (i11 - i18);
        } else {
            int i19 = c1578b.f3901c;
            if (i18 >= i19) {
                f10 = ((i19 - 1) - i11) / (i18 - i11);
                i15 = i19 - 1;
            } else {
                i15 = i18;
                f10 = 1.0f;
            }
        }
        return (m3473N(i10, i11, (int) (((i14 - i10) * f10) + i10), i15) + fM3473N) - 1.0f;
    }

    /* JADX INFO: renamed from: P */
    public C2187d m3475P(C2187d c2187d) {
        if (!((C3264a) this.f5705c).equals((C3264a) c2187d.f5705c)) {
            C1929i.m3029k("ModulusPolys do not have same ModulusGF field");
            return null;
        }
        if (c2187d.m3460A()) {
            return this;
        }
        int[] iArr = (int[]) c2187d.f5706d;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i10 = 0;
        while (true) {
            C3264a c3264a = (C3264a) c2187d.f5705c;
            if (i10 >= length) {
                return m3477c(new C2187d(c3264a, iArr2));
            }
            int i11 = iArr[i10];
            c3264a.getClass();
            iArr2[i10] = (929 - i11) % 929;
            i10++;
        }
    }

    /* JADX INFO: renamed from: R */
    public String m3476R() {
        ArrayList arrayList = new ArrayList(4);
        CoroutineContext coroutineContext = (CoroutineContext) this.f5705c;
        if (coroutineContext != EmptyCoroutineContext.INSTANCE) {
            arrayList.add("context=" + coroutineContext);
        }
        arrayList.add("capacity=-2");
        return getClass().getSimpleName() + '[' + CollectionsKt___CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }

    /* JADX INFO: renamed from: c */
    public C2187d m3477c(C2187d c2187d) {
        C3264a c3264a = (C3264a) this.f5705c;
        if (!c3264a.equals((C3264a) c2187d.f5705c)) {
            C1929i.m3029k("ModulusPolys do not have same ModulusGF field");
            return null;
        }
        if (m3460A()) {
            return c2187d;
        }
        if (c2187d.m3460A()) {
            return this;
        }
        int[] iArr = (int[]) this.f5706d;
        int[] iArr2 = (int[]) c2187d.f5706d;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i10 = length; i10 < iArr.length; i10++) {
            iArr3[i10] = c3264a.m5206a(iArr2[i10 - length], iArr[i10]);
        }
        return new C2187d(c3264a, iArr3);
    }

    @Override // p253y8.InterfaceC3669f
    public Object collect(InterfaceC3670g interfaceC3670g, Continuation continuation) {
        Object objM5359a = AbstractC3436y.m5359a(new C3766d(interfaceC3670g, this, null), continuation);
        return objM5359a == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM5359a : Unit.INSTANCE;
    }

    @Override // p172q.InterfaceC3026p
    /* JADX INFO: renamed from: d */
    public void mo3478d() {
        C3034x c3034x = (C3034x) this.f5705c;
        synchronized (c3034x) {
            c3034x.f8514d = c3034x.f8512b.length;
        }
    }

    @Override // p077h.InterfaceC1649k
    /* JADX INFO: renamed from: e */
    public int mo1143e(C1646h c1646h) {
        return 2;
    }

    /* JADX INFO: renamed from: f */
    public void m3479f(Object obj, String str) {
        ((ArrayList) this.f5705c).add(AbstractC0074a.m149D(str, "=", String.valueOf(obj)));
    }

    /* JADX INFO: renamed from: g */
    public C2494b m3480g() {
        if (((IdentityHashMap) this.f5706d) != null) {
            for (Map.Entry entry : ((C2494b) this.f5705c).f6882a.entrySet()) {
                if (!((IdentityHashMap) this.f5706d).containsKey(entry.getKey())) {
                    ((IdentityHashMap) this.f5706d).put((C2491a) entry.getKey(), entry.getValue());
                }
            }
            this.f5705c = new C2494b((IdentityHashMap) this.f5706d);
            this.f5706d = null;
        }
        return (C2494b) this.f5705c;
    }

    @Override // p077h.InterfaceC1640b
    /* JADX INFO: renamed from: h */
    public boolean mo1146h(Object obj, File file, C1646h c1646h) {
        return ((C3007b) this.f5706d).mo1146h(new C3013e(((BitmapDrawable) ((InterfaceC1889d0) obj).get()).getBitmap(), (InterfaceC2014b) this.f5705c), file, c1646h);
    }

    /* JADX INFO: renamed from: i */
    public float m3481i(C3581c c3581c, C3581c c3581c2) {
        int i10 = (int) c3581c.f11214a;
        int i11 = (int) c3581c.f11215b;
        int i12 = (int) c3581c2.f11214a;
        int i13 = (int) c3581c2.f11215b;
        float fM3474O = m3474O(i10, i11, i12, i13);
        float fM3474O2 = m3474O((int) c3581c2.f11214a, i13, (int) c3581c.f11214a, i11);
        if (Float.isNaN(fM3474O)) {
            return fM3474O2 / 7.0f;
        }
        return Float.isNaN(fM3474O2) ? fM3474O / 7.0f : (fM3474O + fM3474O2) / 14.0f;
    }

    /* JADX INFO: renamed from: j */
    public void m3482j() {
        ((RunnableC2520j1) this.f5705c).f6980c = true;
        ((ScheduledFuture) this.f5706d).cancel(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, x8.q] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10, types: [x8.q] */
    /* JADX WARN: Type inference failed for: r6v3, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    /* JADX INFO: renamed from: k */
    public Object m3483k(InterfaceC3613q interfaceC3613q, ContinuationImpl continuationImpl) {
        C3665b c3665b;
        if (continuationImpl instanceof C3665b) {
            c3665b = (C3665b) continuationImpl;
            int i10 = c3665b.f10862e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c3665b.f10862e = i10 - Integer.MIN_VALUE;
            } else {
                c3665b = new C3665b(this, continuationImpl);
            }
        } else {
            c3665b = new C3665b(this, continuationImpl);
        }
        Object obj = c3665b.f10860c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = c3665b.f10862e;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            c3665b.f10859b = interfaceC3613q;
            c3665b.f10862e = 1;
            Object objInvoke = ((SuspendLambda) this.f5706d).invoke(interfaceC3613q, c3665b);
            if (objInvoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objInvoke = Unit.INSTANCE;
            }
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            interfaceC3613q = c3665b.f10859b;
            ResultKt.throwOnFailure(obj);
        }
        if (((AbstractC3603g) interfaceC3613q).f10693e.m5744r()) {
            return Unit.INSTANCE;
        }
        C1929i.m3030l("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
        return null;
    }

    @Override // p172q.InterfaceC3026p
    /* JADX INFO: renamed from: l */
    public void mo3484l(Bitmap bitmap, InterfaceC2014b interfaceC2014b) throws IOException {
        IOException iOException = ((C0936e) this.f5706d).f792c;
        if (iOException != null) {
            if (bitmap == null) {
                throw iOException;
            }
            interfaceC2014b.mo1141c(bitmap);
            throw iOException;
        }
    }

    /* JADX INFO: renamed from: n */
    public int m3485n(int i10) {
        C3264a c3264a = (C3264a) this.f5705c;
        int[] iArr = (int[]) this.f5706d;
        if (i10 == 0) {
            return m3488q(0);
        }
        if (i10 == 1) {
            int iM5206a = 0;
            for (int i11 : iArr) {
                iM5206a = c3264a.m5206a(iM5206a, i11);
            }
            return iM5206a;
        }
        int iM5206a2 = iArr[0];
        int length = iArr.length;
        for (int i12 = 1; i12 < length; i12++) {
            iM5206a2 = c3264a.m5206a(c3264a.m5208c(i10, iM5206a2), iArr[i12]);
        }
        return iM5206a2;
    }

    /* JADX INFO: renamed from: o */
    public C3579a m3486o(float f8, float f10, int i10, int i11) throws C3753i {
        C3579a c3579aM5706b;
        C3579a c3579aM5706b2;
        int i12 = (int) (f10 * f8);
        int iMax = Math.max(0, i10 - i12);
        C1578b c1578b = (C1578b) this.f5705c;
        int iMin = Math.min(c1578b.f3900b - 1, i10 + i12) - iMax;
        float f11 = 3.0f * f8;
        if (iMin < f11) {
            throw C3753i.f11192d;
        }
        int iMax2 = Math.max(0, i11 - i12);
        int iMin2 = Math.min(c1578b.f3901c - 1, i11 + i12) - iMax2;
        if (iMin2 < f11) {
            throw C3753i.f11192d;
        }
        C1578b c1578b2 = (C1578b) this.f5705c;
        C3580b c3580b = new C3580b(c1578b2, iMax, iMax2, iMin, iMin2, f8, (InterfaceC3760p) this.f5706d);
        int i13 = c3580b.f10640e;
        int i14 = c3580b.f10638c;
        int i15 = i13 + i14;
        int i16 = c3580b.f10641f;
        int i17 = (i16 / 2) + c3580b.f10639d;
        int[] iArr = new int[3];
        for (int i18 = 0; i18 < i16; i18++) {
            int i19 = ((i18 & 1) == 0 ? (i18 + 1) / 2 : -((i18 + 1) / 2)) + i17;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i20 = i14;
            while (i20 < i15 && !c1578b2.m2658b(i20, i19)) {
                i20++;
            }
            int i21 = 0;
            while (i20 < i15) {
                if (!c1578b2.m2658b(i20, i19)) {
                    if (i21 == 1) {
                        i21++;
                    }
                    iArr[i21] = iArr[i21] + 1;
                } else if (i21 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i21 != 2) {
                    i21++;
                    iArr[i21] = iArr[i21] + 1;
                } else {
                    if (c3580b.m5705a(iArr) && (c3579aM5706b2 = c3580b.m5706b(i19, i20, iArr)) != null) {
                        return c3579aM5706b2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i21 = 1;
                }
                i20++;
            }
            if (c3580b.m5705a(iArr) && (c3579aM5706b = c3580b.m5706b(i19, i15, iArr)) != null) {
                return c3579aM5706b;
            }
        }
        ArrayList arrayList = c3580b.f10637b;
        if (arrayList.isEmpty()) {
            throw C3753i.f11192d;
        }
        return (C3579a) arrayList.get(0);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0078  */
    /* JADX WARN: Code duplicated, block: B:37:0x0095  */
    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        boolean z9;
        C1613b c1613b = (C1613b) this.f5705c;
        C2191h c2191h = (C2191h) this.f5706d;
        int i10 = c2191h.f5718a;
        int i11 = c2191h.f5719b;
        int i12 = c2191h.f5720c;
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.mandatorySystemGestures());
        BottomSheetBehavior bottomSheetBehavior = c1613b.f4059b;
        bottomSheetBehavior.f2177w = insets.top;
        boolean z10 = true;
        boolean z11 = view.getLayoutDirection() == 1;
        int paddingBottom = view.getPaddingBottom();
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        boolean z12 = bottomSheetBehavior.f2169o;
        if (z12) {
            int systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
            bottomSheetBehavior.f2176v = systemWindowInsetBottom;
            paddingBottom = systemWindowInsetBottom + i12;
        }
        if (bottomSheetBehavior.f2170p) {
            paddingLeft = insets.left + (z11 ? i11 : i10);
        }
        if (bottomSheetBehavior.f2171q) {
            if (!z11) {
                i10 = i11;
            }
            paddingRight = i10 + insets.right;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (bottomSheetBehavior.f2173s) {
            int i13 = marginLayoutParams.leftMargin;
            int i14 = insets.left;
            if (i13 != i14) {
                marginLayoutParams.leftMargin = i14;
                z9 = true;
            } else {
                z9 = false;
            }
        } else {
            z9 = false;
        }
        if (bottomSheetBehavior.f2174t) {
            int i15 = marginLayoutParams.rightMargin;
            int i16 = insets.right;
            if (i15 != i16) {
                marginLayoutParams.rightMargin = i16;
                z9 = true;
            }
        }
        if (bottomSheetBehavior.f2175u) {
            int i17 = marginLayoutParams.topMargin;
            int i18 = insets.top;
            if (i17 != i18) {
                marginLayoutParams.topMargin = i18;
            } else {
                z10 = z9;
            }
        } else {
            z10 = z9;
        }
        if (z10) {
            view.setLayoutParams(marginLayoutParams);
        }
        view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
        boolean z13 = c1613b.f4058a;
        if (z13) {
            bottomSheetBehavior.f2167m = insets2.bottom;
        }
        if (!z12 && !z13) {
            return windowInsetsCompat;
        }
        bottomSheetBehavior.m1771r();
        return windowInsetsCompat;
    }

    /* JADX INFO: renamed from: p */
    public C3209a m3487p(int i10) {
        C3209a c3209a;
        C3209a c3209a2;
        C3209a[] c3209aArr = (C3209a[]) this.f5706d;
        C3209a c3209a3 = c3209aArr[m3495x(i10)];
        if (c3209a3 != null) {
            return c3209a3;
        }
        for (int i11 = 1; i11 < 5; i11++) {
            int iM3495x = m3495x(i10) - i11;
            if (iM3495x >= 0 && (c3209a2 = c3209aArr[iM3495x]) != null) {
                return c3209a2;
            }
            int iM3495x2 = m3495x(i10) + i11;
            if (iM3495x2 < c3209aArr.length && (c3209a = c3209aArr[iM3495x2]) != null) {
                return c3209a;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: q */
    public int m3488q(int i10) {
        int[] iArr = (int[]) this.f5706d;
        return iArr[(iArr.length - 1) - i10];
    }

    /* JADX INFO: renamed from: r */
    public File m3489r() {
        if (((File) this.f5705c) == null) {
            synchronized (this) {
                try {
                    if (((File) this.f5705c) == null) {
                        C2591f c2591f = (C2591f) this.f5706d;
                        c2591f.m4064a();
                        this.f5705c = new File(c2591f.f7208a.getFilesDir(), "PersistedInstallation." + ((C2591f) this.f5706d).m4065c() + ".json");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (File) this.f5705c;
    }

    /* JADX INFO: renamed from: s */
    public int m3490s() {
        return ((int[]) this.f5706d).length - 1;
    }

    /* JADX INFO: renamed from: t */
    public synchronized List m3491t(String str) {
        List arrayList;
        try {
            if (!((ArrayList) this.f5706d).contains(str)) {
                ((ArrayList) this.f5706d).add(str);
            }
            arrayList = (List) ((HashMap) this.f5705c).get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                ((HashMap) this.f5705c).put(str, arrayList);
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public String toString() {
        switch (this.f5704b) {
            case 10:
                StringBuilder sb = new StringBuilder(100);
                sb.append(this.f5706d.getClass().getSimpleName());
                sb.append('{');
                ArrayList arrayList = (ArrayList) this.f5705c;
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    sb.append((String) arrayList.get(i10));
                    if (i10 < size - 1) {
                        sb.append(", ");
                    }
                }
                sb.append('}');
                return sb.toString();
            case 14:
                Formatter formatter = new Formatter();
                try {
                    int i11 = 0;
                    for (C3209a c3209a : (C3209a[]) this.f5706d) {
                        if (c3209a == null) {
                            formatter.format("%3d:    |   %n", Integer.valueOf(i11));
                            i11++;
                        } else {
                            formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i11), Integer.valueOf(c3209a.f9381f), Integer.valueOf(c3209a.f9380e));
                            i11++;
                        }
                    }
                    String string = formatter.toString();
                    formatter.close();
                    return string;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            formatter.close();
                            break;
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            case 16:
                return "Request{url=" + ((C3216a) this.f5705c) + '}';
            case 17:
                StringBuilder sb2 = new StringBuilder(m3490s() * 8);
                for (int iM3490s = m3490s(); iM3490s >= 0; iM3490s--) {
                    int iM3488q = m3488q(iM3490s);
                    if (iM3488q != 0) {
                        if (iM3488q < 0) {
                            sb2.append(" - ");
                            iM3488q = -iM3488q;
                        } else if (sb2.length() > 0) {
                            sb2.append(" + ");
                        }
                        if (iM3490s == 0 || iM3488q != 1) {
                            sb2.append(iM3488q);
                        }
                        if (iM3490s != 0) {
                            if (iM3490s == 1) {
                                sb2.append('x');
                            } else {
                                sb2.append("x^");
                                sb2.append(iM3490s);
                            }
                        }
                    }
                }
                return sb2.toString();
            case 24:
                return "block[" + ((SuspendLambda) this.f5706d) + "] -> " + m3476R();
            default:
                return super.toString();
        }
    }

    /* JADX INFO: renamed from: u */
    public synchronized ArrayList m3492u(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) this.f5706d;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            List<C3545c> list = (List) ((HashMap) this.f5705c).get((String) obj);
            if (list != null) {
                for (C3545c c3545c : list) {
                    if ((c3545c.f10518a.isAssignableFrom(cls) && cls2.isAssignableFrom(c3545c.f10519b)) && !arrayList.contains(c3545c.f10519b)) {
                        arrayList.add(c3545c.f10519b);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: v */
    public String m3493v(String str) {
        String str2 = (String) this.f5706d;
        Resources resources = (Resources) this.f5705c;
        int identifier = resources.getIdentifier(str, TypedValues.Custom.S_STRING, str2);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }

    /* JADX INFO: renamed from: w */
    public void m3494w(String str, String str2) {
        ArrayList arrayList = ((C1760i) this.f5706d).f4603b;
        if (str.isEmpty()) {
            C1929i.m3029k("name is empty");
            return;
        }
        int length = str.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt <= 31 || cCharAt >= 127) {
                C1929i.m3029k(String.format(Locale.US, "Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i11), str));
                return;
            }
        }
        if (str2 == null) {
            C1929i.m3029k("value == null");
            return;
        }
        int length2 = str2.length();
        for (int i12 = 0; i12 < length2; i12++) {
            char cCharAt2 = str2.charAt(i12);
            if (cCharAt2 <= 31 || cCharAt2 >= 127) {
                C1929i.m3029k(String.format(Locale.US, "Unexpected char %#04x at %d in header value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i12), str2));
                return;
            }
        }
        while (i10 < arrayList.size()) {
            if (str.equalsIgnoreCase((String) arrayList.get(i10))) {
                arrayList.remove(i10);
                arrayList.remove(i10);
                i10 -= 2;
            }
            i10 += 2;
        }
        arrayList.add(str);
        arrayList.add(str2.trim());
    }

    /* JADX INFO: renamed from: x */
    public int m3495x(int i10) {
        return i10 - ((C3211c) this.f5705c).f9390h;
    }

    /* JADX INFO: renamed from: y */
    public void m3496y(C2399b c2399b) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", c2399b.f6491a);
            jSONObject.put("Status", AbstractC1034g.m1296c(c2399b.f6492b));
            jSONObject.put("AuthToken", c2399b.f6493c);
            jSONObject.put("RefreshToken", c2399b.f6494d);
            jSONObject.put("TokenCreationEpochInSecs", c2399b.f6496f);
            jSONObject.put("ExpiresInSecs", c2399b.f6495e);
            jSONObject.put("FisError", c2399b.f6497g);
            C2591f c2591f = (C2591f) this.f5706d;
            c2591f.m4064a();
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", c2591f.f7208a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (fileCreateTempFile.renameTo(m3489r())) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    /* JADX INFO: renamed from: z */
    public boolean m3497z() {
        return ((Logger) this.f5705c).isLoggable((Level) this.f5706d);
    }

    public /* synthetic */ C2187d(int i10, Object obj, Object obj2) {
        this.f5704b = i10;
        this.f5705c = obj;
        this.f5706d = obj2;
    }

    public /* synthetic */ C2187d(Object obj) {
        this.f5704b = 10;
        this.f5706d = obj;
        this.f5705c = new ArrayList();
    }

    public C2187d(Context context, int i10) {
        this.f5704b = i10;
        switch (i10) {
            case 11:
                AbstractC3093a.m4926b(context);
                Resources resources = context.getResources();
                this.f5705c = resources;
                this.f5706d = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
                break;
            default:
                this.f5705c = context;
                this.f5706d = new c00008(context);
                break;
        }
    }

    public /* synthetic */ C2187d(int i10, Object obj) {
        this.f5704b = i10;
        this.f5705c = obj;
    }

    public C2187d(C3264a c3264a, int[] iArr) {
        this.f5704b = 17;
        if (iArr.length != 0) {
            this.f5705c = c3264a;
            int length = iArr.length;
            int i10 = 1;
            if (length > 1 && iArr[0] == 0) {
                while (i10 < length && iArr[i10] == 0) {
                    i10++;
                }
                if (i10 == length) {
                    this.f5706d = new int[]{0};
                    return;
                }
                int i11 = length - i10;
                int[] iArr2 = new int[i11];
                this.f5706d = iArr2;
                System.arraycopy(iArr, i10, iArr2, 0, i11);
                return;
            }
            this.f5706d = iArr;
            return;
        }
        C2237i.m3594a();
        throw null;
    }

    public C2187d(C2187d c2187d) {
        this.f5704b = 16;
        this.f5705c = (C3216a) c2187d.f5705c;
        C1760i c1760i = (C1760i) c2187d.f5706d;
        c1760i.getClass();
        this.f5706d = new C2455p(c1760i);
    }

    public C2187d(C3211c c3211c) {
        this.f5704b = 14;
        this.f5705c = new C3211c(c3211c);
        this.f5706d = new C3209a[(c3211c.f9391i - c3211c.f9390h) + 1];
    }

    public C2187d(C2508f1 c2508f1, Object obj) {
        this.f5704b = 4;
        AbstractC2587b.m4042i(c2508f1, NotificationCompat.CATEGORY_STATUS);
        this.f5705c = c2508f1;
        this.f5706d = obj;
    }

    public C2187d(C2591f c2591f) {
        this.f5704b = 2;
        this.f5706d = c2591f;
    }

    public C2187d(RunnableC2520j1 runnableC2520j1, ScheduledFuture scheduledFuture) {
        this.f5704b = 5;
        this.f5705c = runnableC2520j1;
        AbstractC2587b.m4042i(scheduledFuture, "future");
        this.f5706d = scheduledFuture;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C2187d(Function2 function2) {
        this(24, EmptyCoroutineContext.INSTANCE);
        this.f5704b = 24;
        this.f5706d = (SuspendLambda) function2;
    }
}
