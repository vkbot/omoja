package p258z3;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import p166p3.C2968a;

/* JADX INFO: renamed from: z3.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3722h extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a */
    public C3729o f11021a;

    /* JADX INFO: renamed from: b */
    public C3714b0 f11022b;

    /* JADX INFO: renamed from: c */
    public C2968a f11023c;

    /* JADX INFO: renamed from: d */
    public ColorStateList f11024d;

    /* JADX INFO: renamed from: e */
    public ColorStateList f11025e;

    /* JADX INFO: renamed from: f */
    public ColorStateList f11026f;

    /* JADX INFO: renamed from: g */
    public PorterDuff.Mode f11027g;

    /* JADX INFO: renamed from: h */
    public Rect f11028h;

    /* JADX INFO: renamed from: i */
    public final float f11029i;

    /* JADX INFO: renamed from: j */
    public float f11030j;

    /* JADX INFO: renamed from: k */
    public float f11031k;

    /* JADX INFO: renamed from: l */
    public int f11032l;

    /* JADX INFO: renamed from: m */
    public float f11033m;

    /* JADX INFO: renamed from: n */
    public float f11034n;

    /* JADX INFO: renamed from: o */
    public int f11035o;

    /* JADX INFO: renamed from: p */
    public int f11036p;

    /* JADX INFO: renamed from: q */
    public final Paint.Style f11037q;

    public C3722h(C3722h c3722h) {
        this.f11024d = null;
        this.f11025e = null;
        this.f11026f = null;
        this.f11027g = PorterDuff.Mode.SRC_IN;
        this.f11028h = null;
        this.f11029i = 1.0f;
        this.f11030j = 1.0f;
        this.f11032l = 255;
        this.f11033m = 0.0f;
        this.f11034n = 0.0f;
        this.f11035o = 0;
        this.f11036p = 0;
        this.f11037q = Paint.Style.FILL_AND_STROKE;
        this.f11021a = c3722h.f11021a;
        this.f11022b = c3722h.f11022b;
        this.f11023c = c3722h.f11023c;
        this.f11031k = c3722h.f11031k;
        this.f11024d = c3722h.f11024d;
        this.f11025e = c3722h.f11025e;
        this.f11027g = c3722h.f11027g;
        this.f11026f = c3722h.f11026f;
        this.f11032l = c3722h.f11032l;
        this.f11029i = c3722h.f11029i;
        this.f11036p = c3722h.f11036p;
        this.f11030j = c3722h.f11030j;
        this.f11033m = c3722h.f11033m;
        this.f11034n = c3722h.f11034n;
        this.f11035o = c3722h.f11035o;
        this.f11037q = c3722h.f11037q;
        if (c3722h.f11028h != null) {
            this.f11028h = new Rect(c3722h.f11028h);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        C3725k c3725k = new C3725k(this);
        c3725k.f11052g = true;
        c3725k.f11053h = true;
        return c3725k;
    }

    public C3722h(C3729o c3729o) {
        this.f11024d = null;
        this.f11025e = null;
        this.f11026f = null;
        this.f11027g = PorterDuff.Mode.SRC_IN;
        this.f11028h = null;
        this.f11029i = 1.0f;
        this.f11030j = 1.0f;
        this.f11032l = 255;
        this.f11033m = 0.0f;
        this.f11034n = 0.0f;
        this.f11035o = 0;
        this.f11036p = 0;
        this.f11037q = Paint.Style.FILL_AND_STROKE;
        this.f11021a = c3729o;
        this.f11023c = null;
    }
}
