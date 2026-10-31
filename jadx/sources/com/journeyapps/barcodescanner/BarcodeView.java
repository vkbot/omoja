package com.journeyapps.barcodescanner;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.media.C0090h;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceView;
import android.view.TextureView;
import com.example.navistart.R;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Set;
import p000a.AbstractC0000a;
import p022b7.AbstractC0910f;
import p022b7.C0906b;
import p022b7.C0915k;
import p022b7.C0917m;
import p022b7.C0918n;
import p022b7.C0920p;
import p022b7.C0921q;
import p022b7.C0922r;
import p022b7.C0924t;
import p022b7.InterfaceC0916l;
import p032c7.C1003g;
import p032c7.RunnableC1000d;
import p260z5.C3752h;
import p260z5.EnumC3748d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class BarcodeView extends AbstractC0910f {

    /* JADX INFO: renamed from: B */
    public int f2809B;

    /* JADX INFO: renamed from: C */
    public C0090h f2810C;

    /* JADX INFO: renamed from: D */
    public C0918n f2811D;

    /* JADX INFO: renamed from: E */
    public InterfaceC0916l f2812E;

    /* JADX INFO: renamed from: F */
    public final Handler f2813F;

    public BarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2809B = 1;
        this.f2810C = null;
        C0906b c0906b = new C0906b(this, 0);
        this.f2812E = new C0920p(0);
        this.f2813F = new Handler(c0906b);
    }

    /* JADX INFO: renamed from: f */
    public final C0915k m2187f() {
        C0915k c0915k;
        if (this.f2812E == null) {
            this.f2812E = new C0920p(0);
        }
        C0917m c0917m = new C0917m();
        HashMap map = new HashMap();
        map.put(EnumC3748d.f11181k, c0917m);
        C0920p c0920p = (C0920p) this.f2812E;
        c0920p.getClass();
        EnumMap enumMap = new EnumMap(EnumC3748d.class);
        enumMap.putAll(map);
        EnumMap enumMap2 = (EnumMap) c0920p.f770d;
        if (enumMap2 != null) {
            enumMap.putAll(enumMap2);
        }
        Set set = (Set) c0920p.f769c;
        if (set != null) {
            enumMap.put(EnumC3748d.f11174d, set);
        }
        String str = (String) c0920p.f771e;
        if (str != null) {
            enumMap.put(EnumC3748d.f11176f, str);
        }
        C3752h c3752h = new C3752h();
        c3752h.m5986c(enumMap);
        int i10 = c0920p.f768b;
        if (i10 == 0) {
            c0915k = new C0915k(c3752h);
        } else if (i10 == 1) {
            c0915k = new C0921q(c3752h);
        } else if (i10 != 2) {
            c0915k = new C0915k(c3752h);
        } else {
            C0922r c0922r = new C0922r(c3752h);
            c0922r.f772c = true;
            c0915k = c0922r;
        }
        c0917m.f755a = c0915k;
        return c0915k;
    }

    /* JADX INFO: renamed from: g */
    public final void m2188g() {
        TextureView textureView;
        SurfaceView surfaceView;
        m2190i();
        AbstractC0000a.m24y();
        Log.d("f", "pause()");
        this.f717j = -1;
        C1003g c1003g = this.f709b;
        if (c1003g != null) {
            AbstractC0000a.m24y();
            if (c1003g.f982f) {
                c1003g.f977a.m1057d(c1003g.f988l);
            } else {
                c1003g.f983g = true;
            }
            c1003g.f982f = false;
            this.f709b = null;
            this.f715h = false;
        } else {
            this.f711d.sendEmptyMessage(R.id.zxing_camera_closed);
        }
        if (this.f724q == null && (surfaceView = this.f713f) != null) {
            surfaceView.getHolder().removeCallback(this.f731x);
        }
        if (this.f724q == null && (textureView = this.f714g) != null) {
            textureView.setSurfaceTextureListener(null);
        }
        this.f721n = null;
        this.f722o = null;
        this.f726s = null;
        C0920p c0920p = this.f716i;
        C0924t c0924t = (C0924t) c0920p.f770d;
        if (c0924t != null) {
            c0924t.disable();
        }
        c0920p.f770d = null;
        c0920p.f769c = null;
        c0920p.f771e = null;
        this.f733z.m1044j();
    }

    public InterfaceC0916l getDecoderFactory() {
        return this.f2812E;
    }

    /* JADX INFO: renamed from: h */
    public final void m2189h() {
        m2190i();
        if (this.f2809B == 1 || !this.f715h) {
            return;
        }
        C0918n c0918n = new C0918n(getCameraInstance(), m2187f(), this.f2813F);
        this.f2811D = c0918n;
        c0918n.f761f = getPreviewFramingRect();
        C0918n c0918n2 = this.f2811D;
        c0918n2.getClass();
        AbstractC0000a.m24y();
        HandlerThread handlerThread = new HandlerThread("n");
        c0918n2.f757b = handlerThread;
        handlerThread.start();
        c0918n2.f758c = new Handler(c0918n2.f757b.getLooper(), c0918n2.f764i);
        c0918n2.f762g = true;
        C1003g c1003g = c0918n2.f756a;
        c1003g.f984h.post(new RunnableC1000d(c1003g, c0918n2.f765j, 0));
    }

    /* JADX INFO: renamed from: i */
    public final void m2190i() {
        C0918n c0918n = this.f2811D;
        if (c0918n != null) {
            AbstractC0000a.m24y();
            synchronized (c0918n.f763h) {
                c0918n.f762g = false;
                c0918n.f758c.removeCallbacksAndMessages(null);
                c0918n.f757b.quit();
            }
            this.f2811D = null;
        }
    }

    public void setDecoderFactory(InterfaceC0916l interfaceC0916l) {
        AbstractC0000a.m24y();
        this.f2812E = interfaceC0916l;
        C0918n c0918n = this.f2811D;
        if (c0918n != null) {
            c0918n.f759d = m2187f();
        }
    }
}
