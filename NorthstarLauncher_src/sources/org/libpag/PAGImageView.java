package org.libpag;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.hardware.HardwareBuffer;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class PAGImageView extends View implements PAGAnimator.Listener {
    private volatile int A;
    private volatile int B;
    Paint C;
    private volatile boolean D;
    private volatile boolean E;
    private AtomicBoolean F;
    private boolean G;
    private PAGAnimator a;
    private float b;
    private final AtomicBoolean c;
    protected volatile c.a d;
    private final Object e;
    private volatile Bitmap f;
    private volatile Bitmap g;
    private volatile HardwareBuffer h;
    private volatile Bitmap i;
    private volatile HardwareBuffer j;
    private Matrix k;
    private final ConcurrentHashMap l;
    private String m;
    private PAGComposition n;
    private int o;
    private volatile Matrix p;
    private float q;
    private boolean r;
    private volatile boolean s;
    private int t;
    private int u;
    int v;
    long w;
    private final ArrayList x;
    private volatile int y;
    private volatile int z;

    public interface PAGImageViewListener {
        void onAnimationCancel(PAGImageView pAGImageView);

        void onAnimationEnd(PAGImageView pAGImageView);

        void onAnimationRepeat(PAGImageView pAGImageView);

        void onAnimationStart(PAGImageView pAGImageView);

        void onAnimationUpdate(PAGImageView pAGImageView);
    }

    static {
        org.extra.tools.a.b("pag");
    }

    public PAGImageView(Context context) {
        super(context);
        this.b = 30.0f;
        this.c = new AtomicBoolean(false);
        this.d = new c.a();
        this.e = new Object();
        this.l = new ConcurrentHashMap();
        this.o = 2;
        this.q = 1.0f;
        this.r = false;
        this.s = false;
        this.u = 0;
        this.v = -1;
        this.w = 0L;
        this.x = new ArrayList();
        this.C = null;
        this.D = false;
        this.E = false;
        this.F = new AtomicBoolean(true);
        this.G = false;
        e();
    }

    private static native int ContentVersion(PAGComposition pAGComposition);

    @Deprecated
    public static long MaxDiskCache() {
        return PAGDiskCache.MaxDiskSize();
    }

    @Deprecated
    public static void SetMaxDiskCache(long j) {
        PAGDiskCache.SetMaxDiskSize(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, float f, PAGFile.LoadListener loadListener) {
        setPath(str, f);
        if (loadListener != null) {
            loadListener.onLoad((PAGFile) this.n);
        }
    }

    private void c() {
        boolean z = this.D && isShown() && d();
        if (this.G == z) {
            return;
        }
        this.G = z;
        if (!z) {
            this.a.setDuration(0L);
            return;
        }
        PAGComposition pAGComposition = this.n;
        this.a.setDuration(pAGComposition != null ? pAGComposition.duration() : this.w);
        this.a.update();
    }

    private boolean d() {
        return this.y > 0 && this.z > 0;
    }

    private void e() {
        this.C = new Paint(6);
        this.a = PAGAnimator.a(getContext(), this);
    }

    private void h() {
        if (!this.d.b() && this.u == 0 && this.y > 0) {
            f();
        }
        if (this.d.b() && this.d.a()) {
            this.u = this.d.c();
        }
    }

    private void i() {
        synchronized (this.e) {
            this.f = null;
            this.g = null;
            this.i = null;
            if (this.h != null) {
                this.h.close();
                this.h = null;
            }
            if (this.j != null) {
                this.j.close();
                this.j = null;
            }
        }
    }

    private void j() {
        if (a()) {
            this.d.d();
        }
    }

    public void addListener(PAGImageViewListener pAGImageViewListener) {
        synchronized (this) {
            this.x.add(pAGImageViewListener);
        }
    }

    public boolean cacheAllFramesInMemory() {
        return this.r;
    }

    public int currentFrame() {
        return this.t;
    }

    public Bitmap currentImage() {
        return this.f;
    }

    protected void f() {
        synchronized (this.d) {
            if (!this.d.b()) {
                if (this.n == null) {
                    this.n = a(this.m);
                }
                if (this.d.a(this.n, this.y, this.z, this.b) && this.m != null) {
                    this.n = null;
                }
                if (!this.d.b()) {
                    return;
                }
            }
            g();
            this.c.set(false);
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
    }

    public boolean flush() {
        if (!this.d.b()) {
            f();
            if (!this.d.b()) {
                postInvalidate();
                return false;
            }
        }
        if (this.d.a()) {
            this.u = this.d.c();
        }
        int iA = c.a(this.a.progress(), this.u);
        this.t = iA;
        if (!a(iA)) {
            this.E = false;
            return false;
        }
        this.E = false;
        postInvalidate();
        return true;
    }

    public PAGComposition getComposition() {
        if (this.m != null) {
            return null;
        }
        return this.n;
    }

    public String getPath() {
        return this.m;
    }

    public boolean isPlaying() {
        return this.a.isRunning();
    }

    public Matrix matrix() {
        return this.p;
    }

    public int numFrames() {
        h();
        return this.u;
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationCancel(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.x);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGImageViewListener) it.next()).onAnimationCancel(this);
        }
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationEnd(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.x);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGImageViewListener) it.next()).onAnimationEnd(this);
        }
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationRepeat(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.x);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGImageViewListener) it.next()).onAnimationRepeat(this);
        }
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationStart(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.x);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGImageViewListener) it.next()).onAnimationStart(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.c.get() || this.f == null || this.f.isRecycled()) {
            return;
        }
        super.onDraw(canvas);
        int saveCount = canvas.getSaveCount();
        canvas.save();
        Matrix matrix = this.k;
        if (matrix != null) {
            canvas.concat(matrix);
        }
        if (this.p != null) {
            canvas.concat(this.p);
        }
        try {
            canvas.drawBitmap(this.f, 0.0f, 0.0f, this.C);
        } catch (Exception e) {
            e.printStackTrace();
        }
        canvas.restoreToCount(saveCount);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.c.set(true);
        this.d.e();
        this.A = i;
        this.B = i2;
        this.y = (int) (this.q * i);
        this.z = (int) (this.q * i2);
        i();
        this.E = true;
        c();
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        c();
    }

    public void pause() {
        this.a.cancel();
    }

    public void play() {
        this.a.a();
    }

    public void removeListener(PAGImageViewListener pAGImageViewListener) {
        synchronized (this) {
            this.x.remove(pAGImageViewListener);
        }
    }

    public float renderScale() {
        return this.q;
    }

    public int repeatCount() {
        return this.a.repeatCount();
    }

    public int scaleMode() {
        return this.o;
    }

    public void setCacheAllFramesInMemory(boolean z) {
        this.s = z != this.r;
        this.r = z;
    }

    public void setComposition(PAGComposition pAGComposition) {
        setComposition(pAGComposition, 30.0f);
    }

    public void setCurrentFrame(int i) {
        int i2;
        h();
        if (this.u == 0 || !this.d.b() || i < 0 || i >= (i2 = this.u)) {
            return;
        }
        this.t = i;
        this.a.setProgress(c.a(i, i2));
        this.a.update();
    }

    public boolean setPath(String str) {
        return setPath(str, 30.0f);
    }

    public void setPathAsync(String str, PAGFile.LoadListener loadListener) {
        setPathAsync(str, 30.0f, loadListener);
    }

    public void setRepeatCount(int i) {
        this.a.setRepeatCount(i);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        this.D = true;
        super.onAttachedToWindow();
        c();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.D = false;
        super.onDetachedFromWindow();
        c();
        this.d.e();
        if (this.a.isRunning()) {
            i();
        }
        this.l.clear();
        this.v = -1;
        this.s = false;
        this.c.set(false);
    }

    public void setComposition(PAGComposition pAGComposition, float f) {
        a((String) null, pAGComposition, f);
    }

    public boolean setPath(String str, float f) {
        PAGComposition pAGCompositionA = a(str);
        a(str, pAGCompositionA, f);
        return pAGCompositionA != null;
    }

    public void setPathAsync(final String str, final float f, final PAGFile.LoadListener loadListener) {
        NativeTask.Run(new Runnable() { // from class: org.libpag.PAGImageView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str, f, loadListener);
            }
        });
    }

    public void setMatrix(Matrix matrix) {
        this.p = matrix;
        this.o = 0;
        if (d()) {
            postInvalidate();
        }
    }

    private PAGComposition a(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("assets://")) {
            return PAGFile.Load(getContext().getAssets(), str.substring(9));
        }
        return PAGFile.Load(str);
    }

    private void g() {
        int i = this.o;
        if (i == 0) {
            return;
        }
        this.p = c.a(i, this.d.a, this.d.b, this.y, this.z);
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationUpdate(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        PAGComposition pAGComposition;
        if (this.D) {
            if (this.G && (pAGComposition = this.n) != null) {
                pAGAnimator.setDuration(pAGComposition.duration());
            }
            flush();
            synchronized (this) {
                arrayList = new ArrayList(this.x);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((PAGImageViewListener) it.next()).onAnimationUpdate(this);
            }
        }
    }

    public void setScaleMode(int i) {
        if (i == this.o) {
            return;
        }
        this.o = i;
        if (!d()) {
            this.p = null;
        } else {
            g();
            postInvalidate();
        }
    }

    private void b() {
        PAGComposition pAGComposition;
        boolean z = false;
        if (this.s) {
            this.s = false;
            z = true;
        }
        if (this.m == null && (pAGComposition = this.n) != null) {
            int iContentVersion = ContentVersion(pAGComposition);
            int i = this.v;
            boolean z2 = (i < 0 || i == iContentVersion) ? z : true;
            this.v = iContentVersion;
            z = z2;
        }
        if (z) {
            this.l.clear();
            if (this.d.a()) {
                return;
            }
            PAGComposition pAGCompositionA = this.n;
            if (pAGCompositionA == null) {
                pAGCompositionA = a(this.m);
            }
            this.d.a(pAGCompositionA, this.y, this.z, this.b);
        }
    }

    private void a(String str, PAGComposition pAGComposition, float f) {
        this.c.set(true);
        this.d.e();
        this.b = f;
        this.p = null;
        i();
        this.m = str;
        this.n = pAGComposition;
        this.t = 0;
        this.a.setProgress(pAGComposition == null ? 0.0d : pAGComposition.getProgress());
        PAGComposition pAGComposition2 = this.n;
        long jDuration = pAGComposition2 == null ? 0L : pAGComposition2.duration();
        this.w = jDuration;
        if (this.G) {
            this.a.setDuration(jDuration);
        }
        this.a.update();
    }

    public void setRenderScale(float f) {
        if (this.q == f) {
            return;
        }
        if (f < 0.0f || f > 1.0f) {
            f = 1.0f;
        }
        this.q = f;
        this.y = (int) (this.A * f);
        this.z = (int) (this.B * f);
        g();
        if (f < 1.0f) {
            Matrix matrix = new Matrix();
            this.k = matrix;
            float f2 = 1.0f / f;
            matrix.setScale(f2, f2);
        }
    }

    private boolean a() {
        if (this.d.b() && this.d.a()) {
            this.u = this.d.c();
        }
        return this.l.size() == this.u;
    }

    private boolean a(int i) {
        HardwareBuffer hardwareBuffer;
        Bitmap bitmap;
        if (!this.d.b() || this.c.get()) {
            return false;
        }
        b();
        j();
        Bitmap bitmap2 = (Bitmap) this.l.get(Integer.valueOf(i));
        if (bitmap2 != null) {
            this.f = bitmap2;
            return true;
        }
        if (this.c.get() || !this.d.a()) {
            return false;
        }
        if (!this.E && !this.d.a(i)) {
            return true;
        }
        synchronized (this.e) {
            if (this.g == null || this.r) {
                Pair pairA = a.a(this.d.a, this.d.b, false);
                Object obj = pairA.first;
                if (obj == null) {
                    return false;
                }
                this.g = (Bitmap) obj;
                this.h = (HardwareBuffer) pairA.second;
            }
            if (this.g == null) {
                return false;
            }
            if (this.r) {
                hardwareBuffer = this.h;
                bitmap = this.g;
            } else {
                if (this.i == null) {
                    Pair pairA2 = a.a(this.d.a, this.d.b, false);
                    if (pairA2.first == null) {
                        return false;
                    }
                    this.j = (HardwareBuffer) pairA2.second;
                    this.i = (Bitmap) pairA2.first;
                }
                if (this.F.get()) {
                    bitmap = this.g;
                    hardwareBuffer = this.h;
                } else {
                    bitmap = this.i;
                    hardwareBuffer = this.j;
                }
                AtomicBoolean atomicBoolean = this.F;
                atomicBoolean.set(!atomicBoolean.get());
            }
            if (hardwareBuffer != null) {
                if (!this.d.a(i, hardwareBuffer)) {
                    return false;
                }
            } else {
                if (!this.d.a(bitmap, i)) {
                    return false;
                }
                bitmap.prepareToDraw();
            }
            this.f = bitmap;
            if (this.r && this.f != null) {
                this.l.put(Integer.valueOf(i), this.f);
            }
            return true;
        }
    }

    public PAGImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 30.0f;
        this.c = new AtomicBoolean(false);
        this.d = new c.a();
        this.e = new Object();
        this.l = new ConcurrentHashMap();
        this.o = 2;
        this.q = 1.0f;
        this.r = false;
        this.s = false;
        this.u = 0;
        this.v = -1;
        this.w = 0L;
        this.x = new ArrayList();
        this.C = null;
        this.D = false;
        this.E = false;
        this.F = new AtomicBoolean(true);
        this.G = false;
        e();
    }

    public PAGImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 30.0f;
        this.c = new AtomicBoolean(false);
        this.d = new c.a();
        this.e = new Object();
        this.l = new ConcurrentHashMap();
        this.o = 2;
        this.q = 1.0f;
        this.r = false;
        this.s = false;
        this.u = 0;
        this.v = -1;
        this.w = 0L;
        this.x = new ArrayList();
        this.C = null;
        this.D = false;
        this.E = false;
        this.F = new AtomicBoolean(true);
        this.G = false;
        e();
    }
}
