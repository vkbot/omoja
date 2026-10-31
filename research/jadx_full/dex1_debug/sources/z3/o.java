package z3;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final l f6257m = new l(0.5f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a.a f6258a = new m();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a.a f6259b = new m();
    public a.a c = new m();
    public a.a d = new m();
    public d e = new a(0.0f);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f6260f = new a(0.0f);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public d f6261g = new a(0.0f);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public d f6262h = new a(0.0f);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public f f6263i = new f(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public f f6264j = new f(0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f f6265k = new f(0);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public f f6266l = new f(0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n a(Context context, int i9, int i10) {
        return b(context, i9, i10, new a(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n b(Context context, int i9, int i10, d dVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i9);
        if (i10 != 0) {
            contextThemeWrapper.getTheme().applyStyle(i10, true);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(a3.a.E);
        try {
            int i11 = typedArrayObtainStyledAttributes.getInt(0, 0);
            int i12 = typedArrayObtainStyledAttributes.getInt(3, i11);
            int i13 = typedArrayObtainStyledAttributes.getInt(4, i11);
            int i14 = typedArrayObtainStyledAttributes.getInt(2, i11);
            int i15 = typedArrayObtainStyledAttributes.getInt(1, i11);
            d dVarD = d(typedArrayObtainStyledAttributes, 5, dVar);
            d dVarD2 = d(typedArrayObtainStyledAttributes, 8, dVarD);
            d dVarD3 = d(typedArrayObtainStyledAttributes, 9, dVarD);
            d dVarD4 = d(typedArrayObtainStyledAttributes, 7, dVarD);
            d dVarD5 = d(typedArrayObtainStyledAttributes, 6, dVarD);
            n nVar = new n();
            nVar.f6248a = b1.u.e(i12);
            nVar.e = dVarD2;
            nVar.f6249b = b1.u.e(i13);
            nVar.f6250f = dVarD3;
            nVar.c = b1.u.e(i14);
            nVar.f6251g = dVarD4;
            nVar.d = b1.u.e(i15);
            nVar.f6252h = dVarD5;
            return nVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n c(Context context, AttributeSet attributeSet, int i9, int i10) {
        a aVar = new a(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a3.a.w, i9, i10);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return b(context, resourceId, resourceId2, aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static d d(TypedArray typedArray, int i9, d dVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i9);
        if (typedValuePeekValue != null) {
            int i10 = typedValuePeekValue.type;
            if (i10 == 5) {
                return new a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i10 == 6) {
                return new l(typedValuePeekValue.getFraction(1.0f, 1.0f));
            }
        }
        return dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean e() {
        return (this.f6259b instanceof m) && (this.f6258a instanceof m) && (this.c instanceof m) && (this.d instanceof m);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean f(RectF rectF) {
        boolean z8 = this.f6266l.getClass().equals(f.class) && this.f6264j.getClass().equals(f.class) && this.f6263i.getClass().equals(f.class) && this.f6265k.getClass().equals(f.class);
        float fA = this.e.a(rectF);
        return z8 && ((this.f6260f.a(rectF) > fA ? 1 : (this.f6260f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f6262h.a(rectF) > fA ? 1 : (this.f6262h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f6261g.a(rectF) > fA ? 1 : (this.f6261g.a(rectF) == fA ? 0 : -1)) == 0) && e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final n g() {
        n nVar = new n();
        nVar.f6248a = this.f6258a;
        nVar.f6249b = this.f6259b;
        nVar.c = this.c;
        nVar.d = this.d;
        nVar.e = this.e;
        nVar.f6250f = this.f6260f;
        nVar.f6251g = this.f6261g;
        nVar.f6252h = this.f6262h;
        nVar.f6253i = this.f6263i;
        nVar.f6254j = this.f6264j;
        nVar.f6255k = this.f6265k;
        nVar.f6256l = this.f6266l;
        return nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "[" + this.e + ", " + this.f6260f + ", " + this.f6261g + ", " + this.f6262h + "]";
    }
}
