package z3;

import android.content.res.ColorStateList;
import android.graphics.Paint$Style;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class h extends Drawable$ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o f6213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b0 f6214b;
    public p3.a c;
    public ColorStateList d;
    public ColorStateList e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ColorStateList f6215f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public PorterDuff$Mode f6216g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Rect f6217h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f6218i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f6219j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f6220k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6221l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f6222m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f6223n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6224o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6225p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Paint$Style f6226q;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(h hVar) {
        this.d = null;
        this.e = null;
        this.f6215f = null;
        this.f6216g = PorterDuff$Mode.SRC_IN;
        this.f6217h = null;
        this.f6218i = 1.0f;
        this.f6219j = 1.0f;
        this.f6221l = 255;
        this.f6222m = 0.0f;
        this.f6223n = 0.0f;
        this.f6224o = 0;
        this.f6225p = 0;
        this.f6226q = Paint$Style.FILL_AND_STROKE;
        this.f6213a = hVar.f6213a;
        this.f6214b = hVar.f6214b;
        this.c = hVar.c;
        this.f6220k = hVar.f6220k;
        this.d = hVar.d;
        this.e = hVar.e;
        this.f6216g = hVar.f6216g;
        this.f6215f = hVar.f6215f;
        this.f6221l = hVar.f6221l;
        this.f6218i = hVar.f6218i;
        this.f6225p = hVar.f6225p;
        this.f6219j = hVar.f6219j;
        this.f6222m = hVar.f6222m;
        this.f6223n = hVar.f6223n;
        this.f6224o = hVar.f6224o;
        this.f6226q = hVar.f6226q;
        if (hVar.f6217h != null) {
            this.f6217h = new Rect(hVar.f6217h);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable() {
        k kVar = new k(this);
        kVar.f6230g = true;
        kVar.f6231h = true;
        return kVar;
    }

    public h(o oVar) {
        this.d = null;
        this.e = null;
        this.f6215f = null;
        this.f6216g = PorterDuff$Mode.SRC_IN;
        this.f6217h = null;
        this.f6218i = 1.0f;
        this.f6219j = 1.0f;
        this.f6221l = 255;
        this.f6222m = 0.0f;
        this.f6223n = 0.0f;
        this.f6224o = 0;
        this.f6225p = 0;
        this.f6226q = Paint$Style.FILL_AND_STROKE;
        this.f6213a = oVar;
        this.c = null;
    }
}
