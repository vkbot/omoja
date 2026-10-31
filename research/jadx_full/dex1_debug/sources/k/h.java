package k;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.os.Build$VERSION;
import android.util.Log;
import c0.p;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Bitmap$Config f3137k = Bitmap$Config.ARGB_8888;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f3138b;
    public final Set c;
    public final p2.e d;
    public final long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3139f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3140g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3141h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3142i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3143j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(long j9) {
        l lVar = new l();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap$Config.values()));
        hashSet.add(null);
        if (Build$VERSION.SDK_INT >= 26) {
            hashSet.remove(c5.h.e());
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.e = j9;
        this.f3138b = lVar;
        this.c = setUnmodifiableSet;
        this.d = new p2.e(13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        Log.v("LruBitmapPool", "Hits=" + this.f3140g + ", misses=" + this.f3141h + ", puts=" + this.f3142i + ", evictions=" + this.f3143j + ", currentSize=" + this.f3139f + ", maxSize=" + this.e + "\nStrategy=" + this.f3138b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.b
    public final Bitmap b(int i9, int i10, Bitmap$Config bitmap$Config) {
        Bitmap bitmapD = d(i9, i10, bitmap$Config);
        if (bitmapD != null) {
            return bitmapD;
        }
        if (bitmap$Config == null) {
            bitmap$Config = f3137k;
        }
        return Bitmap.createBitmap(i9, i10, bitmap$Config);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.b
    public final synchronized void c(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable()) {
                this.f3138b.getClass();
                if (p.c(bitmap) <= this.e && this.c.contains(bitmap.getConfig())) {
                    this.f3138b.getClass();
                    int iC = p.c(bitmap);
                    this.f3138b.e(bitmap);
                    this.d.getClass();
                    this.f3142i++;
                    this.f3139f += (long) iC;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        this.f3138b.getClass();
                        Log.v("LruBitmapPool", "Put bitmap in pool=".concat(l.c(p.c(bitmap), bitmap.getConfig())));
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        a();
                    }
                    e(this.e);
                    return;
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb = new StringBuilder("Reject bitmap from pool, bitmap: ");
                this.f3138b.getClass();
                sb.append(l.c(p.c(bitmap), bitmap.getConfig()));
                sb.append(", is mutable: ");
                sb.append(bitmap.isMutable());
                sb.append(", is allowed config: ");
                sb.append(this.c.contains(bitmap.getConfig()));
                Log.v("LruBitmapPool", sb.toString());
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized Bitmap d(int i9, int i10, Bitmap$Config bitmap$Config) {
        Bitmap bitmapB;
        try {
            if (Build$VERSION.SDK_INT >= 26 && bitmap$Config == c5.h.e()) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + bitmap$Config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            bitmapB = this.f3138b.b(i9, i10, bitmap$Config != null ? bitmap$Config : f3137k);
            if (bitmapB == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    this.f3138b.getClass();
                    Log.d("LruBitmapPool", "Missing bitmap=".concat(l.c(p.d(bitmap$Config) * i9 * i10, bitmap$Config)));
                }
                this.f3141h++;
            } else {
                this.f3140g++;
                long j9 = this.f3139f;
                this.f3138b.getClass();
                this.f3139f = j9 - ((long) p.c(bitmapB));
                this.d.getClass();
                bitmapB.setHasAlpha(true);
                bitmapB.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                this.f3138b.getClass();
                Log.v("LruBitmapPool", "Get bitmap=".concat(l.c(p.d(bitmap$Config) * i9 * i10, bitmap$Config)));
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return bitmapB;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void e(long j9) {
        while (this.f3139f > j9) {
            try {
                l lVar = this.f3138b;
                Bitmap bitmap = (Bitmap) lVar.f3151b.s();
                if (bitmap != null) {
                    lVar.a(Integer.valueOf(p.c(bitmap)), bitmap);
                }
                if (bitmap == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        a();
                    }
                    this.f3139f = 0L;
                    return;
                }
                this.d.getClass();
                long j10 = this.f3139f;
                this.f3138b.getClass();
                this.f3139f = j10 - ((long) p.c(bitmap));
                this.f3143j++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Evicting bitmap=");
                    this.f3138b.getClass();
                    sb.append(l.c(p.c(bitmap), bitmap.getConfig()));
                    Log.d("LruBitmapPool", sb.toString());
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    a();
                }
                bitmap.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.b
    public final Bitmap j(int i9, int i10, Bitmap$Config bitmap$Config) {
        Bitmap bitmapD = d(i9, i10, bitmap$Config);
        if (bitmapD != null) {
            bitmapD.eraseColor(0);
            return bitmapD;
        }
        if (bitmap$Config == null) {
            bitmap$Config = f3137k;
        }
        return Bitmap.createBitmap(i9, i10, bitmap$Config);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.b
    public final void l(int i9) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i9);
        }
        if (i9 >= 40 || i9 >= 20) {
            n();
        } else if (i9 >= 20 || i9 == 15) {
            e(this.e / 2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.b
    public final void n() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        e(0L);
    }
}
