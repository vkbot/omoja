package b7;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.core.view.ViewCompat;
import com.journeyapps.barcodescanner.BarcodeView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class f extends ViewGroup {
    public static final /* synthetic */ int A = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c7.g f340b;
    public final WindowManager c;
    public final Handler d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SurfaceView f341f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextureView f342g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f343h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p f344i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f345j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f346k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c7.l f347l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c7.j f348m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public u f349n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public u f350o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Rect f351p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public u f352q;
    public Rect r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Rect f353s;
    public u t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public double f354u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public c7.n f355v;
    public boolean w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final d f356x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final r5.c f357y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final e f358z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f343h = false;
        this.f345j = -1;
        this.f346k = new ArrayList();
        this.f348m = new c7.j();
        this.r = null;
        this.f353s = null;
        this.t = null;
        this.f354u = 0.1d;
        this.f355v = null;
        this.w = false;
        BarcodeView barcodeView = (BarcodeView) this;
        this.f356x = new d(barcodeView);
        b bVar = new b(barcodeView, 1);
        this.f357y = new r5.c(1, barcodeView);
        this.f358z = new e(0, barcodeView);
        if (getBackground() == null) {
            setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        b(attributeSet);
        this.c = (WindowManager) context.getSystemService("window");
        this.d = new Handler(bVar);
        this.f344i = new p(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(BarcodeView barcodeView) {
        if (barcodeView.f340b == null || barcodeView.getDisplayRotation() == barcodeView.f345j) {
            return;
        }
        barcodeView.g();
        barcodeView.c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getDisplayRotation() {
        return this.c.getDefaultDisplay().getRotation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, d6.h.f1788a);
        int dimension = (int) typedArrayObtainStyledAttributes.getDimension(1, -1.0f);
        int dimension2 = (int) typedArrayObtainStyledAttributes.getDimension(0, -1.0f);
        if (dimension > 0 && dimension2 > 0) {
            this.t = new u(dimension, dimension2);
        }
        this.e = typedArrayObtainStyledAttributes.getBoolean(3, true);
        int integer = typedArrayObtainStyledAttributes.getInteger(2, -1);
        if (integer == 1) {
            this.f355v = new c7.k(0);
        } else if (integer == 2) {
            this.f355v = new c7.k(1);
        } else if (integer == 3) {
            this.f355v = new c7.k(2);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        a.a.y();
        Log.d("f", "resume()");
        if (this.f340b != null) {
            Log.w("f", "initCamera called twice");
        } else {
            Context context = getContext();
            c7.g gVar = new c7.g();
            gVar.f518f = false;
            gVar.f519g = true;
            gVar.f521i = new c7.j();
            c7.f fVar = new c7.f(gVar, 0);
            gVar.f522j = new c7.f(gVar, 1);
            gVar.f523k = new c7.f(gVar, 2);
            gVar.f524l = new c7.f(gVar, 3);
            a.a.y();
            if (p.f383f == null) {
                p.f383f = new p();
            }
            p pVar = p.f383f;
            gVar.f516a = pVar;
            c7.i iVar = new c7.i(context);
            gVar.c = iVar;
            iVar.f531g = gVar.f521i;
            gVar.f520h = new Handler();
            c7.j jVar = this.f348m;
            if (!gVar.f518f) {
                gVar.f521i = jVar;
                iVar.f531g = jVar;
            }
            this.f340b = gVar;
            gVar.d = this.d;
            a.a.y();
            gVar.f518f = true;
            gVar.f519g = false;
            synchronized (pVar.e) {
                pVar.f385b++;
                pVar.d(fVar);
            }
            this.f345j = getDisplayRotation();
        }
        if (this.f352q != null) {
            e();
        } else {
            SurfaceView surfaceView = this.f341f;
            if (surfaceView != null) {
                surfaceView.getHolder().addCallback(this.f356x);
            } else {
                TextureView textureView = this.f342g;
                if (textureView != null) {
                    if (textureView.isAvailable()) {
                        this.f342g.getSurfaceTexture();
                        this.f352q = new u(this.f342g.getWidth(), this.f342g.getHeight());
                        e();
                    } else {
                        this.f342g.setSurfaceTextureListener(new c(this));
                    }
                }
            }
        }
        requestLayout();
        p pVar2 = this.f344i;
        Context context2 = getContext();
        r5.c cVar = this.f357y;
        t tVar = (t) pVar2.d;
        if (tVar != null) {
            tVar.disable();
        }
        pVar2.d = null;
        pVar2.c = null;
        pVar2.e = null;
        Context applicationContext = context2.getApplicationContext();
        pVar2.e = cVar;
        pVar2.c = (WindowManager) applicationContext.getSystemService("window");
        t tVar2 = new t(pVar2, applicationContext);
        pVar2.d = tVar2;
        tVar2.enable();
        pVar2.f385b = ((WindowManager) pVar2.c).getDefaultDisplay().getRotation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(android.support.v4.media.h hVar) {
        if (this.f343h || this.f340b == null) {
            return;
        }
        Log.i("f", "Starting preview");
        c7.g gVar = this.f340b;
        gVar.f517b = hVar;
        a.a.y();
        if (!gVar.f518f) {
            j1.i.l("CameraInstance is not open");
            return;
        }
        gVar.f516a.d(gVar.f523k);
        this.f343h = true;
        ((BarcodeView) this).h();
        this.f358z.g();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        Rect rect;
        float f8;
        u uVar = this.f352q;
        if (uVar == null || this.f350o == null || (rect = this.f351p) == null) {
            return;
        }
        if (this.f341f != null && uVar.equals(new u(rect.width(), this.f351p.height()))) {
            SurfaceHolder holder = this.f341f.getHolder();
            android.support.v4.media.h hVar = new android.support.v4.media.h(4, false);
            if (holder == null) {
                j1.i.k("surfaceHolder may not be null");
                return;
            } else {
                hVar.c = holder;
                d(hVar);
                return;
            }
        }
        TextureView textureView = this.f342g;
        if (textureView == null || textureView.getSurfaceTexture() == null) {
            return;
        }
        if (this.f350o != null) {
            int width = this.f342g.getWidth();
            int height = this.f342g.getHeight();
            u uVar2 = this.f350o;
            float f9 = height;
            float f10 = width / f9;
            float f11 = uVar2.f389b / uVar2.c;
            float f12 = 1.0f;
            if (f10 < f11) {
                float f13 = f11 / f10;
                f8 = 1.0f;
                f12 = f13;
            } else {
                f8 = f10 / f11;
            }
            Matrix matrix = new Matrix();
            matrix.setScale(f12, f8);
            float f14 = width;
            matrix.postTranslate((f14 - (f12 * f14)) / 2.0f, (f9 - (f8 * f9)) / 2.0f);
            this.f342g.setTransform(matrix);
        }
        SurfaceTexture surfaceTexture = this.f342g.getSurfaceTexture();
        android.support.v4.media.h hVar2 = new android.support.v4.media.h(4, false);
        if (surfaceTexture == null) {
            j1.i.k("surfaceTexture may not be null");
        } else {
            hVar2.d = surfaceTexture;
            d(hVar2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c7.g getCameraInstance() {
        return this.f340b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c7.j getCameraSettings() {
        return this.f348m;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Rect getFramingRect() {
        return this.r;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u getFramingRectSize() {
        return this.t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getMarginFraction() {
        return this.f354u;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Rect getPreviewFramingRect() {
        return this.f353s;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c7.n getPreviewScalingStrategy() {
        c7.n nVar = this.f355v;
        if (nVar != null) {
            return nVar;
        }
        return this.f342g != null ? new c7.k(0) : new c7.k(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u getPreviewSize() {
        return this.f350o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.e) {
            TextureView textureView = new TextureView(getContext());
            this.f342g = textureView;
            textureView.setSurfaceTextureListener(new c(this));
            addView(this.f342g);
            return;
        }
        SurfaceView surfaceView = new SurfaceView(getContext());
        this.f341f = surfaceView;
        surfaceView.getHolder().addCallback(this.f356x);
        addView(this.f341f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        u uVar = new u(i11 - i9, i12 - i10);
        this.f349n = uVar;
        c7.g gVar = this.f340b;
        if (gVar != null && gVar.e == null) {
            int displayRotation = getDisplayRotation();
            c7.l lVar = new c7.l(0);
            lVar.d = new c7.k(1);
            lVar.f540b = displayRotation;
            lVar.c = uVar;
            this.f347l = lVar;
            lVar.d = getPreviewScalingStrategy();
            c7.g gVar2 = this.f340b;
            c7.l lVar2 = this.f347l;
            gVar2.e = lVar2;
            gVar2.c.f532h = lVar2;
            a.a.y();
            if (!gVar2.f518f) {
                j1.i.l("CameraInstance is not open");
                return;
            }
            gVar2.f516a.d(gVar2.f522j);
            boolean z9 = this.w;
            if (z9) {
                c7.g gVar3 = this.f340b;
                gVar3.getClass();
                a.a.y();
                if (gVar3.f518f) {
                    gVar3.f516a.d(new c7.e(gVar3, z9, 0));
                }
            }
        }
        SurfaceView surfaceView = this.f341f;
        if (surfaceView == null) {
            TextureView textureView = this.f342g;
            if (textureView != null) {
                textureView.layout(0, 0, getWidth(), getHeight());
                return;
            }
            return;
        }
        Rect rect = this.f351p;
        if (rect == null) {
            surfaceView.layout(0, 0, getWidth(), getHeight());
        } else {
            surfaceView.layout(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("super"));
        setTorch(bundle.getBoolean("torch"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", parcelableOnSaveInstanceState);
        bundle.putBoolean("torch", this.w);
        return bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCameraSettings(c7.j jVar) {
        this.f348m = jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFramingRectSize(u uVar) {
        this.t = uVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMarginFraction(double d) {
        if (d < 0.5d) {
            this.f354u = d;
        } else {
            j1.i.k("The margin fraction must be less than 0.5");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPreviewScalingStrategy(c7.n nVar) {
        this.f355v = nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTorch(boolean z8) {
        this.w = z8;
        c7.g gVar = this.f340b;
        if (gVar != null) {
            a.a.y();
            if (gVar.f518f) {
                gVar.f516a.d(new c7.e(gVar, z8, 0));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUseTextureView(boolean z8) {
        this.e = z8;
    }
}
