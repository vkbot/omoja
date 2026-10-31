package l;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder$Source;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.collection.ArrayMap;
import androidx.constraintlayout.core.motion.utils.TypedValues$Custom;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsCompat$Type;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.k;
import j.d0;
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
import java.util.Map$Entry;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import l9.l;
import l9.o;
import n7.f1;
import n7.j1;
import org.json.JSONException;
import org.json.JSONObject;
import p7.n;
import q.a0;
import q.p;
import q.x;
import u3.p.c00008;
import v8.y;
import x8.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class d implements k, p, OnApplyWindowInsetsListener, y8.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3245b;
    public Object c;
    public Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(int i9) {
        this.f3245b = i9;
        switch (i9) {
            case 6:
                Level level = Level.FINE;
                Logger logger = Logger.getLogger(n.class.getName());
                o4.b.i(level, "level");
                this.d = level;
                o4.b.i(logger, "logger");
                this.c = logger;
                break;
            case 15:
                break;
            case 20:
                this.c = new AtomicLong();
                this.d = new AtomicLong();
                break;
            case 21:
                this.c = new AtomicReference();
                this.d = new ArrayMap();
                break;
            case 22:
                this.d = new ArrayList();
                this.c = new HashMap();
                break;
            default:
                this.c = new HashMap();
                this.d = new c(0);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String Q(l lVar) {
        long j9 = lVar.c;
        if (j9 <= 64) {
            return lVar.i0().d();
        }
        return lVar.j0((int) Math.min(j9, 64L)).d() + "...";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:33:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static d a(Context context) {
        FileChannel channel;
        FileLock fileLockLock;
        try {
            channel = new RandomAccessFile(new File(context.getFilesDir(), "generatefid.lock"), "rw").getChannel();
            try {
                fileLockLock = channel.lock();
                try {
                    return new d(1, channel, fileLockLock);
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
                } catch (OverlappingFileLockException e9) {
                    e = e9;
                    Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    return null;
                }
            } catch (IOException | Error | OverlappingFileLockException e10) {
                e = e10;
                fileLockLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e11) {
            e = e11;
            channel = null;
            fileLockLock = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a0 m(ImageDecoder$Source imageDecoder$Source, int i9, int i10, h.h hVar) {
        Drawable drawableH = q.c.h(imageDecoder$Source, new p.b(i9, i10, hVar));
        if (q.c.l(drawableH)) {
            return new a0(2, q.c.g(drawableH));
        }
        org.apache.commons.io.e.f(drawableH, "Received unexpected drawable type for animated image, failing: ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean A() {
        return ((int[]) this.d)[0] == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void B(int i9, int i10, l lVar, int i11, boolean z8) {
        if (z()) {
            ((Logger) this.c).log((Level) this.d, kotlin.collections.unsigned.a.i(i9) + " DATA: streamId=" + i10 + " endStream=" + z8 + " length=" + i11 + " bytes=" + Q(lVar));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void C(int i9, int i10, r7.a aVar, o oVar) {
        if (z()) {
            Logger logger = (Logger) this.c;
            Level level = (Level) this.d;
            StringBuilder sb = new StringBuilder();
            sb.append(kotlin.collections.unsigned.a.i(i9));
            sb.append(" GO_AWAY: lastStreamId=");
            sb.append(i10);
            sb.append(" errorCode=");
            sb.append(aVar);
            sb.append(" length=");
            sb.append(oVar.c());
            sb.append(" bytes=");
            l lVar = new l();
            lVar.l0(oVar);
            sb.append(Q(lVar));
            logger.log(level, sb.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void D(int i9, long j9) {
        if (z()) {
            ((Logger) this.c).log((Level) this.d, kotlin.collections.unsigned.a.i(i9) + " PING: ack=false bytes=" + j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void E(int i9, int i10, r7.a aVar) {
        if (z()) {
            ((Logger) this.c).log((Level) this.d, kotlin.collections.unsigned.a.i(i9) + " RST_STREAM: streamId=" + i10 + " errorCode=" + aVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void F(int i9, j.i iVar) {
        if (z()) {
            Logger logger = (Logger) this.c;
            Level level = (Level) this.d;
            StringBuilder sb = new StringBuilder();
            sb.append(kotlin.collections.unsigned.a.i(i9));
            sb.append(" SETTINGS: ack=false settings=");
            EnumMap enumMap = new EnumMap(p7.o.class);
            for (p7.o oVar : p7.o.values()) {
                if (iVar.b(oVar.f4679b)) {
                    enumMap.put(oVar, Integer.valueOf(((int[]) iVar.c)[oVar.f4679b]));
                }
            }
            sb.append(enumMap.toString());
            logger.log(level, sb.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void G(long j9, int i9, int i10) {
        if (z()) {
            ((Logger) this.c).log((Level) this.d, kotlin.collections.unsigned.a.i(i9) + " WINDOW_UPDATE: streamId=" + i10 + " windowSizeIncrement=" + j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d H(int i9) {
        int[] iArr = (int[]) this.d;
        t6.a aVar = (t6.a) this.c;
        if (i9 == 0) {
            return aVar.c;
        }
        if (i9 == 1) {
            return this;
        }
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr2[i10] = aVar.c(iArr[i10], i9);
        }
        return new d(aVar, iArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d I(d dVar) {
        t6.a aVar = (t6.a) this.c;
        if (!aVar.equals((t6.a) dVar.c)) {
            j1.i.k("ModulusPolys do not have same ModulusGF field");
            return null;
        }
        if (A() || dVar.A()) {
            return aVar.c;
        }
        int[] iArr = (int[]) this.d;
        int length = iArr.length;
        int[] iArr2 = (int[]) dVar.d;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i9 = 0; i9 < length; i9++) {
            int i10 = iArr[i9];
            for (int i11 = 0; i11 < length2; i11++) {
                int i12 = i9 + i11;
                iArr3[i12] = aVar.a(iArr3[i12], aVar.c(i10, iArr2[i11]));
            }
        }
        return new d(aVar, iArr3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m5.b J() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(r());
            while (true) {
                try {
                    int i9 = fileInputStream.read(bArr, 0, 16384);
                    if (i9 < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i9);
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
        int i10 = com.bumptech.glide.g.d(5)[iOptInt];
        if (i10 == 0) {
            n0.b.n("Null registrationStatus");
            return null;
        }
        String str = i10 == 0 ? " registrationStatus" : "";
        if (str.isEmpty()) {
            return new m5.b(strOptString, i10, strOptString2, strOptString3, jOptLong2, jOptLong, strOptString4);
        }
        j1.i.l("Missing required properties:".concat(str));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void K(String str) {
        b bVar;
        synchronized (this) {
            try {
                Object obj = ((HashMap) this.c).get(str);
                c0.g.c(obj, "Argument must not be null");
                bVar = (b) obj;
                int i9 = bVar.f3243b;
                if (i9 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + bVar.f3243b);
                }
                int i10 = i9 - 1;
                bVar.f3243b = i10;
                if (i10 == 0) {
                    b bVar2 = (b) ((HashMap) this.c).remove(str);
                    if (!bVar2.equals(bVar)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + bVar + ", but actually removed: " + bVar2 + ", safeKey: " + str);
                    }
                    c cVar = (c) this.d;
                    synchronized (cVar.f3244a) {
                        try {
                            if (cVar.f3244a.size() < 10) {
                                cVar.f3244a.offer(bVar2);
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
        bVar.f3242a.unlock();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void L() {
        try {
            ((FileLock) this.d).release();
            ((FileChannel) this.c).close();
        } catch (IOException e) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void M(n7.a aVar, Object obj) {
        if (((IdentityHashMap) this.d) == null) {
            this.d = new IdentityHashMap(1);
        }
        ((IdentityHashMap) this.d).put(aVar, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:42:0x0088  */
    /* JADX WARN: Code duplicated, block: B:44:0x008d A[RETURN] */
    public float N(int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18 = 1;
        boolean z8 = Math.abs(i12 - i10) > Math.abs(i11 - i9);
        if (z8) {
            i14 = i9;
            i13 = i10;
            i16 = i11;
            i15 = i12;
        } else {
            i13 = i9;
            i14 = i10;
            i15 = i11;
            i16 = i12;
        }
        int iAbs = Math.abs(i15 - i13);
        int iAbs2 = Math.abs(i16 - i14);
        int i19 = 2;
        int i20 = (-iAbs) / 2;
        int i21 = i13 < i15 ? 1 : -1;
        int i22 = i14 < i16 ? 1 : -1;
        int i23 = i15 + i21;
        int i24 = i13;
        int i25 = i14;
        int i26 = 0;
        while (i24 != i23) {
            boolean z9 = z8;
            if ((i26 == i18 ? i18 : 0) == ((f6.b) this.c).b(z8 ? i25 : i24, z8 ? i24 : i25)) {
                if (i26 == 2) {
                    return a.a.h(i24, i25, i13, i14);
                }
                i26++;
            }
            i20 += iAbs2;
            if (i20 > 0) {
                if (i25 == i16) {
                    i17 = 2;
                    if (i26 == i17) {
                        return a.a.h(i23, i16, i13, i14);
                    }
                    return Float.NaN;
                }
                i25 += i22;
                i20 -= iAbs;
            }
            i24 += i21;
            iAbs = iAbs;
            z8 = z9;
            i18 = 1;
            i19 = 2;
        }
        i17 = i19;
        if (i26 == i17) {
            return a.a.h(i23, i16, i13, i14);
        }
        return Float.NaN;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float O(int i9, int i10, int i11, int i12) {
        float f8;
        float f9;
        f6.b bVar = (f6.b) this.c;
        float fN = N(i9, i10, i11, i12);
        int i13 = i9 - (i11 - i9);
        int i14 = 0;
        if (i13 < 0) {
            f8 = i9 / (i9 - i13);
            i13 = 0;
        } else {
            int i15 = bVar.f2258b;
            if (i13 >= i15) {
                float f10 = ((i15 - 1) - i9) / (i13 - i9);
                int i16 = i15 - 1;
                f8 = f10;
                i13 = i16;
            } else {
                f8 = 1.0f;
            }
        }
        float f11 = i10;
        int i17 = (int) (f11 - ((i12 - i10) * f8));
        if (i17 < 0) {
            f9 = f11 / (i10 - i17);
        } else {
            int i18 = bVar.c;
            if (i17 >= i18) {
                f9 = ((i18 - 1) - i10) / (i17 - i10);
                i14 = i18 - 1;
            } else {
                i14 = i17;
                f9 = 1.0f;
            }
        }
        return (N(i9, i10, (int) (((i13 - i9) * f9) + i9), i14) + fN) - 1.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d P(d dVar) {
        if (!((t6.a) this.c).equals((t6.a) dVar.c)) {
            j1.i.k("ModulusPolys do not have same ModulusGF field");
            return null;
        }
        if (dVar.A()) {
            return this;
        }
        int[] iArr = (int[]) dVar.d;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i9 = 0;
        while (true) {
            t6.a aVar = (t6.a) dVar.c;
            if (i9 >= length) {
                return c(new d(aVar, iArr2));
            }
            int i10 = iArr[i9];
            aVar.getClass();
            iArr2[i9] = (929 - i10) % 929;
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String R() {
        ArrayList arrayList = new ArrayList(4);
        CoroutineContext coroutineContext = (CoroutineContext) this.c;
        if (coroutineContext != EmptyCoroutineContext.INSTANCE) {
            arrayList.add("context=" + coroutineContext);
        }
        arrayList.add("capacity=-2");
        return getClass().getSimpleName() + '[' + CollectionsKt.l(arrayList, ", ", null, null, null, 62) + ']';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d c(d dVar) {
        t6.a aVar = (t6.a) this.c;
        if (!aVar.equals((t6.a) dVar.c)) {
            j1.i.k("ModulusPolys do not have same ModulusGF field");
            return null;
        }
        if (A()) {
            return dVar;
        }
        if (dVar.A()) {
            return this;
        }
        int[] iArr = (int[]) this.d;
        int[] iArr2 = (int[]) dVar.d;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i9 = length; i9 < iArr.length; i9++) {
            iArr3[i9] = aVar.a(iArr2[i9 - length], iArr[i9]);
        }
        return new d(aVar, iArr3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object collect(y8.g gVar, Continuation continuation) {
        Object objA = y.a(new z8.d(gVar, this, (Continuation) null), continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.p
    public void d() {
        x xVar = (x) this.c;
        synchronized (xVar) {
            xVar.d = xVar.f4748b.length;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.k
    public int e(h.h hVar) {
        return 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void f(Object obj, String str) {
        ((ArrayList) this.c).add(ai.onnxruntime.a.D(str, "=", String.valueOf(obj)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n7.b g() {
        if (((IdentityHashMap) this.d) != null) {
            for (Map$Entry map$Entry : ((n7.b) this.c).f3887a.entrySet()) {
                if (!((IdentityHashMap) this.d).containsKey(map$Entry.getKey())) {
                    ((IdentityHashMap) this.d).put((n7.a) map$Entry.getKey(), map$Entry.getValue());
                }
            }
            this.c = new n7.b((IdentityHashMap) this.d);
            this.d = null;
        }
        return (n7.b) this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.b
    public boolean h(Object obj, File file, h.h hVar) {
        return ((q.b) this.d).h(new q.e(((BitmapDrawable) ((d0) obj).get()).getBitmap(), (k.b) this.c), file, hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float i(x6.c cVar, x6.c cVar2) {
        int i9 = (int) cVar.f6339a;
        int i10 = (int) cVar.f6340b;
        int i11 = (int) cVar2.f6339a;
        int i12 = (int) cVar2.f6340b;
        float fO = O(i9, i10, i11, i12);
        float fO2 = O((int) cVar2.f6339a, i12, (int) cVar.f6339a, i10);
        if (Float.isNaN(fO)) {
            return fO2 / 7.0f;
        }
        return Float.isNaN(fO2) ? fO / 7.0f : (fO + fO2) / 14.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void j() {
        ((j1) this.c).c = true;
        ((ScheduledFuture) this.d).cancel(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r6v3, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    public Object k(q qVar, ContinuationImpl continuationImpl) {
        y8.b bVar;
        if (continuationImpl instanceof y8.b) {
            bVar = (y8.b) continuationImpl;
            int i9 = bVar.e;
            if ((i9 & Integer.MIN_VALUE) != 0) {
                bVar.e = i9 - Integer.MIN_VALUE;
            } else {
                bVar = new y8.b(this, continuationImpl);
            }
        } else {
            bVar = new y8.b(this, continuationImpl);
        }
        Object obj = bVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = bVar.e;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            bVar.b = qVar;
            bVar.e = 1;
            Object objInvoke = ((SuspendLambda) this.d).invoke(qVar, bVar);
            if (objInvoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objInvoke = Unit.INSTANCE;
            }
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i10 != 1) {
                j1.i.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            qVar = bVar.b;
            ResultKt.throwOnFailure(obj);
        }
        if (((x8.g) qVar).e.r()) {
            return Unit.INSTANCE;
        }
        j1.i.l("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.p
    public void l(Bitmap bitmap, k.b bVar) throws IOException {
        IOException iOException = ((c0.e) this.d).c;
        if (iOException != null) {
            if (bitmap == null) {
                throw iOException;
            }
            bVar.c(bitmap);
            throw iOException;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int n(int i9) {
        t6.a aVar = (t6.a) this.c;
        int[] iArr = (int[]) this.d;
        if (i9 == 0) {
            return q(0);
        }
        if (i9 == 1) {
            int iA = 0;
            for (int i10 : iArr) {
                iA = aVar.a(iA, i10);
            }
            return iA;
        }
        int iA2 = iArr[0];
        int length = iArr.length;
        for (int i11 = 1; i11 < length; i11++) {
            iA2 = aVar.a(aVar.c(i9, iA2), iArr[i11]);
        }
        return iA2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x6.a o(float f8, float f9, int i9, int i10) throws z5.i {
        x6.a aVarB;
        x6.a aVarB2;
        int i11 = (int) (f9 * f8);
        int iMax = Math.max(0, i9 - i11);
        f6.b bVar = (f6.b) this.c;
        int iMin = Math.min(bVar.f2258b - 1, i9 + i11) - iMax;
        float f10 = 3.0f * f8;
        if (iMin < f10) {
            throw z5.i.d;
        }
        int iMax2 = Math.max(0, i10 - i11);
        int iMin2 = Math.min(bVar.c - 1, i10 + i11) - iMax2;
        if (iMin2 < f10) {
            throw z5.i.d;
        }
        f6.b bVar2 = (f6.b) this.c;
        x6.b bVar3 = new x6.b(bVar2, iMax, iMax2, iMin, iMin2, f8, (z5.p) this.d);
        int i12 = bVar3.e;
        int i13 = bVar3.c;
        int i14 = i12 + i13;
        int i15 = bVar3.f6033f;
        int i16 = (i15 / 2) + bVar3.d;
        int[] iArr = new int[3];
        for (int i17 = 0; i17 < i15; i17++) {
            int i18 = ((i17 & 1) == 0 ? (i17 + 1) / 2 : -((i17 + 1) / 2)) + i16;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i19 = i13;
            while (i19 < i14 && !bVar2.b(i19, i18)) {
                i19++;
            }
            int i20 = 0;
            while (i19 < i14) {
                if (!bVar2.b(i19, i18)) {
                    if (i20 == 1) {
                        i20++;
                    }
                    iArr[i20] = iArr[i20] + 1;
                } else if (i20 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i20 != 2) {
                    i20++;
                    iArr[i20] = iArr[i20] + 1;
                } else {
                    if (bVar3.a(iArr) && (aVarB2 = bVar3.b(i18, i19, iArr)) != null) {
                        return aVarB2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i20 = 1;
                }
                i19++;
            }
            if (bVar3.a(iArr) && (aVarB = bVar3.b(i18, i14, iArr)) != null) {
                return aVarB;
            }
        }
        ArrayList arrayList = bVar3.f6032b;
        if (arrayList.isEmpty()) {
            throw z5.i.d;
        }
        return (x6.a) arrayList.get(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:26:0x0078  */
    /* JADX WARN: Code duplicated, block: B:37:0x0095  */
    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        boolean z8;
        g3.b bVar = (g3.b) this.c;
        h hVar = (h) this.d;
        int i9 = hVar.f3250a;
        int i10 = hVar.f3251b;
        int i11 = hVar.c;
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat$Type.systemBars());
        Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat$Type.mandatorySystemGestures());
        BottomSheetBehavior bottomSheetBehavior = bVar.f2359b;
        bottomSheetBehavior.w = insets.top;
        boolean z9 = true;
        boolean z10 = view.getLayoutDirection() == 1;
        int paddingBottom = view.getPaddingBottom();
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        boolean z11 = bottomSheetBehavior.f1176o;
        if (z11) {
            int systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
            bottomSheetBehavior.f1181v = systemWindowInsetBottom;
            paddingBottom = systemWindowInsetBottom + i11;
        }
        if (bottomSheetBehavior.f1177p) {
            paddingLeft = insets.left + (z10 ? i10 : i9);
        }
        if (bottomSheetBehavior.f1178q) {
            if (!z10) {
                i9 = i10;
            }
            paddingRight = i9 + insets.right;
        }
        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) view.getLayoutParams();
        if (bottomSheetBehavior.f1179s) {
            int i12 = viewGroup$MarginLayoutParams.leftMargin;
            int i13 = insets.left;
            if (i12 != i13) {
                viewGroup$MarginLayoutParams.leftMargin = i13;
                z8 = true;
            } else {
                z8 = false;
            }
        } else {
            z8 = false;
        }
        if (bottomSheetBehavior.t) {
            int i14 = viewGroup$MarginLayoutParams.rightMargin;
            int i15 = insets.right;
            if (i14 != i15) {
                viewGroup$MarginLayoutParams.rightMargin = i15;
                z8 = true;
            }
        }
        if (bottomSheetBehavior.f1180u) {
            int i16 = viewGroup$MarginLayoutParams.topMargin;
            int i17 = insets.top;
            if (i16 != i17) {
                viewGroup$MarginLayoutParams.topMargin = i17;
            } else {
                z9 = z8;
            }
        } else {
            z9 = z8;
        }
        if (z9) {
            view.setLayoutParams(viewGroup$MarginLayoutParams);
        }
        view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
        boolean z12 = bVar.f2358a;
        if (z12) {
            bottomSheetBehavior.f1174m = insets2.bottom;
        }
        if (!z11 && !z12) {
            return windowInsetsCompat;
        }
        bottomSheetBehavior.r();
        return windowInsetsCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s6.a p(int i9) {
        s6.a aVar;
        s6.a aVar2;
        s6.a[] aVarArr = (s6.a[]) this.d;
        s6.a aVar3 = aVarArr[x(i9)];
        if (aVar3 != null) {
            return aVar3;
        }
        for (int i10 = 1; i10 < 5; i10++) {
            int iX = x(i9) - i10;
            if (iX >= 0 && (aVar2 = aVarArr[iX]) != null) {
                return aVar2;
            }
            int iX2 = x(i9) + i10;
            if (iX2 < aVarArr.length && (aVar = aVarArr[iX2]) != null) {
                return aVar;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int q(int i9) {
        int[] iArr = (int[]) this.d;
        return iArr[(iArr.length - 1) - i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public File r() {
        if (((File) this.c) == null) {
            synchronized (this) {
                try {
                    if (((File) this.c) == null) {
                        o4.f fVar = (o4.f) this.d;
                        fVar.a();
                        this.c = new File(fVar.f4088a.getFilesDir(), "PersistedInstallation." + ((o4.f) this.d).c() + ".json");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (File) this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int s() {
        return ((int[]) this.d).length - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized List t(String str) {
        List arrayList;
        try {
            if (!((ArrayList) this.d).contains(str)) {
                ((ArrayList) this.d).add(str);
            }
            arrayList = (List) ((HashMap) this.c).get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                ((HashMap) this.c).put(str, arrayList);
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f3245b) {
            case 10:
                StringBuilder sb = new StringBuilder(100);
                sb.append(this.d.getClass().getSimpleName());
                sb.append('{');
                ArrayList arrayList = (ArrayList) this.c;
                int size = arrayList.size();
                for (int i9 = 0; i9 < size; i9++) {
                    sb.append((String) arrayList.get(i9));
                    if (i9 < size - 1) {
                        sb.append(", ");
                    }
                }
                sb.append('}');
                return sb.toString();
            case 14:
                Formatter formatter = new Formatter();
                try {
                    int i10 = 0;
                    for (s6.a aVar : (s6.a[]) this.d) {
                        if (aVar == null) {
                            formatter.format("%3d:    |   %n", Integer.valueOf(i10));
                            i10++;
                        } else {
                            formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i10), Integer.valueOf(aVar.f5302f), Integer.valueOf(aVar.e));
                            i10++;
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
                return "Request{url=" + ((s7.a) this.c) + '}';
            case 17:
                StringBuilder sb2 = new StringBuilder(s() * 8);
                for (int iS = s(); iS >= 0; iS--) {
                    int iQ = q(iS);
                    if (iQ != 0) {
                        if (iQ < 0) {
                            sb2.append(" - ");
                            iQ = -iQ;
                        } else if (sb2.length() > 0) {
                            sb2.append(" + ");
                        }
                        if (iS == 0 || iQ != 1) {
                            sb2.append(iQ);
                        }
                        if (iS != 0) {
                            if (iS == 1) {
                                sb2.append('x');
                            } else {
                                sb2.append("x^");
                                sb2.append(iS);
                            }
                        }
                    }
                }
                return sb2.toString();
            case 24:
                return "block[" + ((SuspendLambda) this.d) + "] -> " + R();
            default:
                return super.toString();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized ArrayList u(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) this.d;
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            List<x.c> list = (List) ((HashMap) this.c).get((String) obj);
            if (list != null) {
                for (x.c cVar : list) {
                    if ((cVar.f5953a.isAssignableFrom(cls) && cls2.isAssignableFrom(cVar.f5954b)) && !arrayList.contains(cVar.f5954b)) {
                        arrayList.add(cVar.f5954b);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String v(String str) {
        String str2 = (String) this.d;
        Resources resources = (Resources) this.c;
        int identifier = resources.getIdentifier(str, TypedValues$Custom.S_STRING, str2);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void w(String str, String str2) {
        ArrayList arrayList = ((i7.i) this.d).f2690b;
        if (str.isEmpty()) {
            j1.i.k("name is empty");
            return;
        }
        int length = str.length();
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 31 || cCharAt >= 127) {
                j1.i.k(String.format(Locale.US, "Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i10), str));
                return;
            }
        }
        if (str2 == null) {
            j1.i.k("value == null");
            return;
        }
        int length2 = str2.length();
        for (int i11 = 0; i11 < length2; i11++) {
            char cCharAt2 = str2.charAt(i11);
            if (cCharAt2 <= 31 || cCharAt2 >= 127) {
                j1.i.k(String.format(Locale.US, "Unexpected char %#04x at %d in header value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i11), str2));
                return;
            }
        }
        while (i9 < arrayList.size()) {
            if (str.equalsIgnoreCase((String) arrayList.get(i9))) {
                arrayList.remove(i9);
                arrayList.remove(i9);
                i9 -= 2;
            }
            i9 += 2;
        }
        arrayList.add(str);
        arrayList.add(str2.trim());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int x(int i9) {
        return i9 - ((s6.c) this.c).f5308h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void y(m5.b bVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", bVar.f3670a);
            jSONObject.put("Status", com.bumptech.glide.g.c(bVar.f3671b));
            jSONObject.put("AuthToken", bVar.c);
            jSONObject.put("RefreshToken", bVar.d);
            jSONObject.put("TokenCreationEpochInSecs", bVar.f3672f);
            jSONObject.put("ExpiresInSecs", bVar.e);
            jSONObject.put("FisError", bVar.f3673g);
            o4.f fVar = (o4.f) this.d;
            fVar.a();
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", fVar.f4088a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (fileCreateTempFile.renameTo(r())) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean z() {
        return ((Logger) this.c).isLoggable((Level) this.d);
    }

    public /* synthetic */ d(int i9, Object obj, Object obj2) {
        this.f3245b = i9;
        this.c = obj;
        this.d = obj2;
    }

    public /* synthetic */ d(Object obj) {
        this.f3245b = 10;
        this.d = obj;
        this.c = new ArrayList();
    }

    public d(Context context, int i9) {
        this.f3245b = i9;
        switch (i9) {
            case 11:
                r2.a.b(context);
                Resources resources = context.getResources();
                this.c = resources;
                this.d = resources.getResourcePackageName(2131951909);
                break;
            default:
                this.c = context;
                this.d = new c00008(context);
                break;
        }
    }

    public /* synthetic */ d(int i9, Object obj) {
        this.f3245b = i9;
        this.c = obj;
    }

    public d(t6.a aVar, int[] iArr) {
        this.f3245b = 17;
        if (iArr.length != 0) {
            this.c = aVar;
            int length = iArr.length;
            int i9 = 1;
            if (length > 1 && iArr[0] == 0) {
                while (i9 < length && iArr[i9] == 0) {
                    i9++;
                }
                if (i9 == length) {
                    this.d = new int[]{0};
                    return;
                }
                int i10 = length - i9;
                int[] iArr2 = new int[i10];
                this.d = iArr2;
                System.arraycopy(iArr, i9, iArr2, 0, i10);
                return;
            }
            this.d = iArr;
            return;
        }
        l9.i.a();
        throw null;
    }

    public d(d dVar) {
        this.f3245b = 16;
        this.c = (s7.a) dVar.c;
        i7.i iVar = (i7.i) dVar.d;
        iVar.getClass();
        this.d = new n.p(iVar);
    }

    public d(s6.c cVar) {
        this.f3245b = 14;
        this.c = new s6.c(cVar);
        this.d = new s6.a[(cVar.f5309i - cVar.f5308h) + 1];
    }

    public d(f1 f1Var, Object obj) {
        this.f3245b = 4;
        o4.b.i(f1Var, NotificationCompat.CATEGORY_STATUS);
        this.c = f1Var;
        this.d = obj;
    }

    public d(o4.f fVar) {
        this.f3245b = 2;
        this.d = fVar;
    }

    public d(j1 j1Var, ScheduledFuture scheduledFuture) {
        this.f3245b = 5;
        this.c = j1Var;
        o4.b.i(scheduledFuture, "future");
        this.d = scheduledFuture;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: kotlin.jvm.functions.Function2 */
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public d(Function2 function2) {
        this(24, EmptyCoroutineContext.INSTANCE);
        this.f3245b = 24;
        this.d = (SuspendLambda) function2;
    }
}
