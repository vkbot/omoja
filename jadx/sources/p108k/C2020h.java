package p108k;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p025c0.AbstractC0947p;
import p165p2.C2962e;

/* JADX INFO: renamed from: k.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2020h implements InterfaceC2014b {

    /* JADX INFO: renamed from: k */
    public static final Bitmap.Config f5513k = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: b */
    public final C2024l f5514b;

    /* JADX INFO: renamed from: c */
    public final Set f5515c;

    /* JADX INFO: renamed from: d */
    public final C2962e f5516d;

    /* JADX INFO: renamed from: e */
    public final long f5517e;

    /* JADX INFO: renamed from: f */
    public long f5518f;

    /* JADX INFO: renamed from: g */
    public int f5519g;

    /* JADX INFO: renamed from: h */
    public int f5520h;

    /* JADX INFO: renamed from: i */
    public int f5521i;

    /* JADX INFO: renamed from: j */
    public int f5522j;

    public C2020h(long j10) {
        C2024l c2024l = new C2024l();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        hashSet.add(null);
        if (Build.VERSION.SDK_INT >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f5517e = j10;
        this.f5514b = c2024l;
        this.f5515c = setUnmodifiableSet;
        this.f5516d = new C2962e(13);
    }

    /* JADX INFO: renamed from: a */
    public final void m3111a() {
        Log.v("LruBitmapPool", "Hits=" + this.f5519g + ", misses=" + this.f5520h + ", puts=" + this.f5521i + ", evictions=" + this.f5522j + ", currentSize=" + this.f5518f + ", maxSize=" + this.f5517e + "\nStrategy=" + this.f5514b);
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: b */
    public final Bitmap mo1140b(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapM3112d = m3112d(i10, i11, config);
        if (bitmapM3112d != null) {
            return bitmapM3112d;
        }
        if (config == null) {
            config = f5513k;
        }
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: c */
    public final synchronized void mo1141c(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable()) {
                this.f5514b.getClass();
                if (AbstractC0947p.m1086c(bitmap) <= this.f5517e && this.f5515c.contains(bitmap.getConfig())) {
                    this.f5514b.getClass();
                    int iM1086c = AbstractC0947p.m1086c(bitmap);
                    this.f5514b.m3118e(bitmap);
                    this.f5516d.getClass();
                    this.f5521i++;
                    this.f5518f += (long) iM1086c;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        this.f5514b.getClass();
                        Log.v("LruBitmapPool", "Put bitmap in pool=".concat(C2024l.m3114c(AbstractC0947p.m1086c(bitmap), bitmap.getConfig())));
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        m3111a();
                    }
                    m3113e(this.f5517e);
                    return;
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb = new StringBuilder("Reject bitmap from pool, bitmap: ");
                this.f5514b.getClass();
                sb.append(C2024l.m3114c(AbstractC0947p.m1086c(bitmap), bitmap.getConfig()));
                sb.append(", is mutable: ");
                sb.append(bitmap.isMutable());
                sb.append(", is allowed config: ");
                sb.append(this.f5515c.contains(bitmap.getConfig()));
                Log.v("LruBitmapPool", sb.toString());
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: d */
    public final synchronized Bitmap m3112d(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapM3116b;
        try {
            if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            bitmapM3116b = this.f5514b.m3116b(i10, i11, config != null ? config : f5513k);
            if (bitmapM3116b == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    this.f5514b.getClass();
                    Log.d("LruBitmapPool", "Missing bitmap=".concat(C2024l.m3114c(AbstractC0947p.m1087d(config) * i10 * i11, config)));
                }
                this.f5520h++;
            } else {
                this.f5519g++;
                long j10 = this.f5518f;
                this.f5514b.getClass();
                this.f5518f = j10 - ((long) AbstractC0947p.m1086c(bitmapM3116b));
                this.f5516d.getClass();
                bitmapM3116b.setHasAlpha(true);
                bitmapM3116b.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                this.f5514b.getClass();
                Log.v("LruBitmapPool", "Get bitmap=".concat(C2024l.m3114c(AbstractC0947p.m1087d(config) * i10 * i11, config)));
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                m3111a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return bitmapM3116b;
    }

    /* JADX INFO: renamed from: e */
    public final synchronized void m3113e(long j10) {
        while (this.f5518f > j10) {
            try {
                C2024l c2024l = this.f5514b;
                Bitmap bitmap = (Bitmap) c2024l.f5533b.m252s();
                if (bitmap != null) {
                    c2024l.m3115a(Integer.valueOf(AbstractC0947p.m1086c(bitmap)), bitmap);
                }
                if (bitmap == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        m3111a();
                    }
                    this.f5518f = 0L;
                    return;
                }
                this.f5516d.getClass();
                long j11 = this.f5518f;
                this.f5514b.getClass();
                this.f5518f = j11 - ((long) AbstractC0947p.m1086c(bitmap));
                this.f5522j++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Evicting bitmap=");
                    this.f5514b.getClass();
                    sb.append(C2024l.m3114c(AbstractC0947p.m1086c(bitmap), bitmap.getConfig()));
                    Log.d("LruBitmapPool", sb.toString());
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    m3111a();
                }
                bitmap.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: j */
    public final Bitmap mo1148j(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapM3112d = m3112d(i10, i11, config);
        if (bitmapM3112d != null) {
            bitmapM3112d.eraseColor(0);
            return bitmapM3112d;
        }
        if (config == null) {
            config = f5513k;
        }
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: l */
    public final void mo1150l(int i10) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i10);
        }
        if (i10 >= 40 || i10 >= 20) {
            mo1152n();
        } else if (i10 >= 20 || i10 == 15) {
            m3113e(this.f5517e / 2);
        }
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: n */
    public final void mo1152n() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        m3113e(0L);
    }
}
