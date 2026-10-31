package p022b7;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.media.C0090h;
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
import p000a.AbstractC0000a;
import p032c7.AbstractC1010n;
import p032c7.C1003g;
import p032c7.C1005i;
import p032c7.C1006j;
import p032c7.C1007k;
import p032c7.C1008l;
import p032c7.RunnableC1001e;
import p032c7.RunnableC1002f;
import p043d6.AbstractC1309h;
import p099j1.C1929i;
import p184r5.C3105c;

/* JADX INFO: renamed from: b7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0910f extends ViewGroup {

    /* JADX INFO: renamed from: A */
    public static final /* synthetic */ int f708A = 0;

    /* JADX INFO: renamed from: b */
    public C1003g f709b;

    /* JADX INFO: renamed from: c */
    public final WindowManager f710c;

    /* JADX INFO: renamed from: d */
    public final Handler f711d;

    /* JADX INFO: renamed from: e */
    public boolean f712e;

    /* JADX INFO: renamed from: f */
    public SurfaceView f713f;

    /* JADX INFO: renamed from: g */
    public TextureView f714g;

    /* JADX INFO: renamed from: h */
    public boolean f715h;

    /* JADX INFO: renamed from: i */
    public final C0920p f716i;

    /* JADX INFO: renamed from: j */
    public int f717j;

    /* JADX INFO: renamed from: k */
    public final ArrayList f718k;

    /* JADX INFO: renamed from: l */
    public C1008l f719l;

    /* JADX INFO: renamed from: m */
    public C1006j f720m;

    /* JADX INFO: renamed from: n */
    public C0925u f721n;

    /* JADX INFO: renamed from: o */
    public C0925u f722o;

    /* JADX INFO: renamed from: p */
    public Rect f723p;

    /* JADX INFO: renamed from: q */
    public C0925u f724q;

    /* JADX INFO: renamed from: r */
    public Rect f725r;

    /* JADX INFO: renamed from: s */
    public Rect f726s;

    /* JADX INFO: renamed from: t */
    public C0925u f727t;

    /* JADX INFO: renamed from: u */
    public double f728u;

    /* JADX INFO: renamed from: v */
    public AbstractC1010n f729v;

    /* JADX INFO: renamed from: w */
    public boolean f730w;

    /* JADX INFO: renamed from: x */
    public final SurfaceHolderCallbackC0908d f731x;

    /* JADX INFO: renamed from: y */
    public final C3105c f732y;

    /* JADX INFO: renamed from: z */
    public final C0909e f733z;

    public AbstractC0910f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f712e = false;
        this.f715h = false;
        this.f717j = -1;
        this.f718k = new ArrayList();
        this.f720m = new C1006j();
        this.f725r = null;
        this.f726s = null;
        this.f727t = null;
        this.f728u = 0.1d;
        this.f729v = null;
        this.f730w = false;
        BarcodeView barcodeView = (BarcodeView) this;
        this.f731x = new SurfaceHolderCallbackC0908d(barcodeView);
        C0906b c0906b = new C0906b(barcodeView, 1);
        this.f732y = new C3105c(1, barcodeView);
        this.f733z = new C0909e(0, barcodeView);
        if (getBackground() == null) {
            setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        m1046b(attributeSet);
        this.f710c = (WindowManager) context.getSystemService("window");
        this.f711d = new Handler(c0906b);
        this.f716i = new C0920p(1);
    }

    /* JADX INFO: renamed from: a */
    public static void m1045a(BarcodeView barcodeView) {
        if (barcodeView.f709b == null || barcodeView.getDisplayRotation() == barcodeView.f717j) {
            return;
        }
        barcodeView.m2188g();
        barcodeView.m1047c();
    }

    private int getDisplayRotation() {
        return this.f710c.getDefaultDisplay().getRotation();
    }

    /* JADX INFO: renamed from: b */
    public final void m1046b(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC1309h.f3122a);
        int dimension = (int) typedArrayObtainStyledAttributes.getDimension(1, -1.0f);
        int dimension2 = (int) typedArrayObtainStyledAttributes.getDimension(0, -1.0f);
        if (dimension > 0 && dimension2 > 0) {
            this.f727t = new C0925u(dimension, dimension2);
        }
        this.f712e = typedArrayObtainStyledAttributes.getBoolean(3, true);
        int integer = typedArrayObtainStyledAttributes.getInteger(2, -1);
        if (integer == 1) {
            this.f729v = new C1007k(0);
        } else if (integer == 2) {
            this.f729v = new C1007k(1);
        } else if (integer == 3) {
            this.f729v = new C1007k(2);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: renamed from: c */
    public final void m1047c() {
        AbstractC0000a.m24y();
        Log.d("f", "resume()");
        if (this.f709b != null) {
            Log.w("f", "initCamera called twice");
        } else {
            Context context = getContext();
            C1003g c1003g = new C1003g();
            c1003g.f982f = false;
            c1003g.f983g = true;
            c1003g.f985i = new C1006j();
            RunnableC1002f runnableC1002f = new RunnableC1002f(c1003g, 0);
            c1003g.f986j = new RunnableC1002f(c1003g, 1);
            c1003g.f987k = new RunnableC1002f(c1003g, 2);
            c1003g.f988l = new RunnableC1002f(c1003g, 3);
            AbstractC0000a.m24y();
            if (C0920p.f766f == null) {
                C0920p.f766f = new C0920p();
            }
            C0920p c0920p = C0920p.f766f;
            c1003g.f977a = c0920p;
            C1005i c1005i = new C1005i(context);
            c1003g.f979c = c1005i;
            c1005i.f999g = c1003g.f985i;
            c1003g.f984h = new Handler();
            C1006j c1006j = this.f720m;
            if (!c1003g.f982f) {
                c1003g.f985i = c1006j;
                c1005i.f999g = c1006j;
            }
            this.f709b = c1003g;
            c1003g.f980d = this.f711d;
            AbstractC0000a.m24y();
            c1003g.f982f = true;
            c1003g.f983g = false;
            synchronized (c0920p.f771e) {
                c0920p.f768b++;
                c0920p.m1057d(runnableC1002f);
            }
            this.f717j = getDisplayRotation();
        }
        if (this.f724q != null) {
            m1049e();
        } else {
            SurfaceView surfaceView = this.f713f;
            if (surfaceView != null) {
                surfaceView.getHolder().addCallback(this.f731x);
            } else {
                TextureView textureView = this.f714g;
                if (textureView != null) {
                    if (textureView.isAvailable()) {
                        this.f714g.getSurfaceTexture();
                        this.f724q = new C0925u(this.f714g.getWidth(), this.f714g.getHeight());
                        m1049e();
                    } else {
                        this.f714g.setSurfaceTextureListener(new TextureViewSurfaceTextureListenerC0907c(this));
                    }
                }
            }
        }
        requestLayout();
        C0920p c0920p2 = this.f716i;
        Context context2 = getContext();
        C3105c c3105c = this.f732y;
        C0924t c0924t = (C0924t) c0920p2.f770d;
        if (c0924t != null) {
            c0924t.disable();
        }
        c0920p2.f770d = null;
        c0920p2.f769c = null;
        c0920p2.f771e = null;
        Context applicationContext = context2.getApplicationContext();
        c0920p2.f771e = c3105c;
        c0920p2.f769c = (WindowManager) applicationContext.getSystemService("window");
        C0924t c0924t2 = new C0924t(c0920p2, applicationContext);
        c0920p2.f770d = c0924t2;
        c0924t2.enable();
        c0920p2.f768b = ((WindowManager) c0920p2.f769c).getDefaultDisplay().getRotation();
    }

    /* JADX INFO: renamed from: d */
    public final void m1048d(C0090h c0090h) {
        if (this.f715h || this.f709b == null) {
            return;
        }
        Log.i("f", "Starting preview");
        C1003g c1003g = this.f709b;
        c1003g.f978b = c0090h;
        AbstractC0000a.m24y();
        if (!c1003g.f982f) {
            C1929i.m3030l("CameraInstance is not open");
            return;
        }
        c1003g.f977a.m1057d(c1003g.f987k);
        this.f715h = true;
        ((BarcodeView) this).m2189h();
        this.f733z.m1043g();
    }

    /* JADX INFO: renamed from: e */
    public final void m1049e() {
        Rect rect;
        float f8;
        C0925u c0925u = this.f724q;
        if (c0925u == null || this.f722o == null || (rect = this.f723p) == null) {
            return;
        }
        if (this.f713f != null && c0925u.equals(new C0925u(rect.width(), this.f723p.height()))) {
            SurfaceHolder holder = this.f713f.getHolder();
            C0090h c0090h = new C0090h(4, false);
            if (holder == null) {
                C1929i.m3029k("surfaceHolder may not be null");
                return;
            } else {
                c0090h.f191c = holder;
                m1048d(c0090h);
                return;
            }
        }
        TextureView textureView = this.f714g;
        if (textureView == null || textureView.getSurfaceTexture() == null) {
            return;
        }
        if (this.f722o != null) {
            int width = this.f714g.getWidth();
            int height = this.f714g.getHeight();
            C0925u c0925u2 = this.f722o;
            float f10 = height;
            float f11 = width / f10;
            float f12 = c0925u2.f777b / c0925u2.f778c;
            float f13 = 1.0f;
            if (f11 < f12) {
                float f14 = f12 / f11;
                f8 = 1.0f;
                f13 = f14;
            } else {
                f8 = f11 / f12;
            }
            Matrix matrix = new Matrix();
            matrix.setScale(f13, f8);
            float f15 = width;
            matrix.postTranslate((f15 - (f13 * f15)) / 2.0f, (f10 - (f8 * f10)) / 2.0f);
            this.f714g.setTransform(matrix);
        }
        SurfaceTexture surfaceTexture = this.f714g.getSurfaceTexture();
        C0090h c0090h2 = new C0090h(4, false);
        if (surfaceTexture == null) {
            C1929i.m3029k("surfaceTexture may not be null");
        } else {
            c0090h2.f192d = surfaceTexture;
            m1048d(c0090h2);
        }
    }

    public C1003g getCameraInstance() {
        return this.f709b;
    }

    public C1006j getCameraSettings() {
        return this.f720m;
    }

    public Rect getFramingRect() {
        return this.f725r;
    }

    public C0925u getFramingRectSize() {
        return this.f727t;
    }

    public double getMarginFraction() {
        return this.f728u;
    }

    public Rect getPreviewFramingRect() {
        return this.f726s;
    }

    public AbstractC1010n getPreviewScalingStrategy() {
        AbstractC1010n abstractC1010n = this.f729v;
        if (abstractC1010n != null) {
            return abstractC1010n;
        }
        return this.f714g != null ? new C1007k(0) : new C1007k(1);
    }

    public C0925u getPreviewSize() {
        return this.f722o;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f712e) {
            TextureView textureView = new TextureView(getContext());
            this.f714g = textureView;
            textureView.setSurfaceTextureListener(new TextureViewSurfaceTextureListenerC0907c(this));
            addView(this.f714g);
            return;
        }
        SurfaceView surfaceView = new SurfaceView(getContext());
        this.f713f = surfaceView;
        surfaceView.getHolder().addCallback(this.f731x);
        addView(this.f713f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        C0925u c0925u = new C0925u(i12 - i10, i13 - i11);
        this.f721n = c0925u;
        C1003g c1003g = this.f709b;
        if (c1003g != null && c1003g.f981e == null) {
            int displayRotation = getDisplayRotation();
            C1008l c1008l = new C1008l(0);
            c1008l.f1010d = new C1007k(1);
            c1008l.f1008b = displayRotation;
            c1008l.f1009c = c0925u;
            this.f719l = c1008l;
            c1008l.f1010d = getPreviewScalingStrategy();
            C1003g c1003g2 = this.f709b;
            C1008l c1008l2 = this.f719l;
            c1003g2.f981e = c1008l2;
            c1003g2.f979c.f1000h = c1008l2;
            AbstractC0000a.m24y();
            if (!c1003g2.f982f) {
                C1929i.m3030l("CameraInstance is not open");
                return;
            }
            c1003g2.f977a.m1057d(c1003g2.f986j);
            boolean z10 = this.f730w;
            if (z10) {
                C1003g c1003g3 = this.f709b;
                c1003g3.getClass();
                AbstractC0000a.m24y();
                if (c1003g3.f982f) {
                    c1003g3.f977a.m1057d(new RunnableC1001e(c1003g3, z10, 0));
                }
            }
        }
        SurfaceView surfaceView = this.f713f;
        if (surfaceView == null) {
            TextureView textureView = this.f714g;
            if (textureView != null) {
                textureView.layout(0, 0, getWidth(), getHeight());
                return;
            }
            return;
        }
        Rect rect = this.f723p;
        if (rect == null) {
            surfaceView.layout(0, 0, getWidth(), getHeight());
        } else {
            surfaceView.layout(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

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

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", parcelableOnSaveInstanceState);
        bundle.putBoolean("torch", this.f730w);
        return bundle;
    }

    public void setCameraSettings(C1006j c1006j) {
        this.f720m = c1006j;
    }

    public void setFramingRectSize(C0925u c0925u) {
        this.f727t = c0925u;
    }

    public void setMarginFraction(double d) {
        if (d < 0.5d) {
            this.f728u = d;
        } else {
            C1929i.m3029k("The margin fraction must be less than 0.5");
        }
    }

    public void setPreviewScalingStrategy(AbstractC1010n abstractC1010n) {
        this.f729v = abstractC1010n;
    }

    public void setTorch(boolean z9) {
        this.f730w = z9;
        C1003g c1003g = this.f709b;
        if (c1003g != null) {
            AbstractC0000a.m24y();
            if (c1003g.f982f) {
                c1003g.f977a.m1057d(new RunnableC1001e(c1003g, z9, 0));
            }
        }
    }

    public void setUseTextureView(boolean z9) {
        this.f712e = z9;
    }
}
