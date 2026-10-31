package p258z3;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import p000a.AbstractC0000a;
import p004a3.AbstractC0007a;
import p016b1.AbstractC0880u;

/* JADX INFO: renamed from: z3.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3729o {

    /* JADX INFO: renamed from: m */
    public static final C3726l f11085m = new C3726l(0.5f);

    /* JADX INFO: renamed from: a */
    public AbstractC0000a f11086a = new C3727m();

    /* JADX INFO: renamed from: b */
    public AbstractC0000a f11087b = new C3727m();

    /* JADX INFO: renamed from: c */
    public AbstractC0000a f11088c = new C3727m();

    /* JADX INFO: renamed from: d */
    public AbstractC0000a f11089d = new C3727m();

    /* JADX INFO: renamed from: e */
    public InterfaceC3717d f11090e = new C3711a(0.0f);

    /* JADX INFO: renamed from: f */
    public InterfaceC3717d f11091f = new C3711a(0.0f);

    /* JADX INFO: renamed from: g */
    public InterfaceC3717d f11092g = new C3711a(0.0f);

    /* JADX INFO: renamed from: h */
    public InterfaceC3717d f11093h = new C3711a(0.0f);

    /* JADX INFO: renamed from: i */
    public C3720f f11094i;

    /* JADX INFO: renamed from: j */
    public C3720f f11095j;

    /* JADX INFO: renamed from: k */
    public C3720f f11096k;

    /* JADX INFO: renamed from: l */
    public C3720f f11097l;

    public C3729o() {
        int i10 = 0;
        this.f11094i = new C3720f(i10);
        this.f11095j = new C3720f(i10);
        this.f11096k = new C3720f(i10);
        this.f11097l = new C3720f(i10);
    }

    /* JADX INFO: renamed from: a */
    public static C3728n m5957a(Context context, int i10, int i11) {
        return m5958b(context, i10, i11, new C3711a(0));
    }

    /* JADX INFO: renamed from: b */
    public static C3728n m5958b(Context context, int i10, int i11, InterfaceC3717d interfaceC3717d) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i10);
        if (i11 != 0) {
            contextThemeWrapper.getTheme().applyStyle(i11, true);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(AbstractC0007a.f13E);
        try {
            int i12 = typedArrayObtainStyledAttributes.getInt(0, 0);
            int i13 = typedArrayObtainStyledAttributes.getInt(3, i12);
            int i14 = typedArrayObtainStyledAttributes.getInt(4, i12);
            int i15 = typedArrayObtainStyledAttributes.getInt(2, i12);
            int i16 = typedArrayObtainStyledAttributes.getInt(1, i12);
            InterfaceC3717d interfaceC3717dM5960d = m5960d(typedArrayObtainStyledAttributes, 5, interfaceC3717d);
            InterfaceC3717d interfaceC3717dM5960d2 = m5960d(typedArrayObtainStyledAttributes, 8, interfaceC3717dM5960d);
            InterfaceC3717d interfaceC3717dM5960d3 = m5960d(typedArrayObtainStyledAttributes, 9, interfaceC3717dM5960d);
            InterfaceC3717d interfaceC3717dM5960d4 = m5960d(typedArrayObtainStyledAttributes, 7, interfaceC3717dM5960d);
            InterfaceC3717d interfaceC3717dM5960d5 = m5960d(typedArrayObtainStyledAttributes, 6, interfaceC3717dM5960d);
            C3728n c3728n = new C3728n();
            c3728n.f11073a = AbstractC0880u.m998e(i13);
            c3728n.f11077e = interfaceC3717dM5960d2;
            c3728n.f11074b = AbstractC0880u.m998e(i14);
            c3728n.f11078f = interfaceC3717dM5960d3;
            c3728n.f11075c = AbstractC0880u.m998e(i15);
            c3728n.f11079g = interfaceC3717dM5960d4;
            c3728n.f11076d = AbstractC0880u.m998e(i16);
            c3728n.f11080h = interfaceC3717dM5960d5;
            return c3728n;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: c */
    public static C3728n m5959c(Context context, AttributeSet attributeSet, int i10, int i11) {
        C3711a c3711a = new C3711a(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f44w, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return m5958b(context, resourceId, resourceId2, c3711a);
    }

    /* JADX INFO: renamed from: d */
    public static InterfaceC3717d m5960d(TypedArray typedArray, int i10, InterfaceC3717d interfaceC3717d) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        if (typedValuePeekValue != null) {
            int i11 = typedValuePeekValue.type;
            if (i11 == 5) {
                return new C3711a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i11 == 6) {
                return new C3726l(typedValuePeekValue.getFraction(1.0f, 1.0f));
            }
        }
        return interfaceC3717d;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m5961e() {
        return (this.f11087b instanceof C3727m) && (this.f11086a instanceof C3727m) && (this.f11088c instanceof C3727m) && (this.f11089d instanceof C3727m);
    }

    /* JADX INFO: renamed from: f */
    public final boolean m5962f(RectF rectF) {
        boolean z9 = this.f11097l.getClass().equals(C3720f.class) && this.f11095j.getClass().equals(C3720f.class) && this.f11094i.getClass().equals(C3720f.class) && this.f11096k.getClass().equals(C3720f.class);
        float fMo5920a = this.f11090e.mo5920a(rectF);
        return z9 && ((this.f11091f.mo5920a(rectF) > fMo5920a ? 1 : (this.f11091f.mo5920a(rectF) == fMo5920a ? 0 : -1)) == 0 && (this.f11093h.mo5920a(rectF) > fMo5920a ? 1 : (this.f11093h.mo5920a(rectF) == fMo5920a ? 0 : -1)) == 0 && (this.f11092g.mo5920a(rectF) > fMo5920a ? 1 : (this.f11092g.mo5920a(rectF) == fMo5920a ? 0 : -1)) == 0) && m5961e();
    }

    /* JADX INFO: renamed from: g */
    public final C3728n m5963g() {
        C3728n c3728n = new C3728n();
        c3728n.f11073a = this.f11086a;
        c3728n.f11074b = this.f11087b;
        c3728n.f11075c = this.f11088c;
        c3728n.f11076d = this.f11089d;
        c3728n.f11077e = this.f11090e;
        c3728n.f11078f = this.f11091f;
        c3728n.f11079g = this.f11092g;
        c3728n.f11080h = this.f11093h;
        c3728n.f11081i = this.f11094i;
        c3728n.f11082j = this.f11095j;
        c3728n.f11083k = this.f11096k;
        c3728n.f11084l = this.f11097l;
        return c3728n;
    }

    public final String toString() {
        return "[" + this.f11090e + ", " + this.f11091f + ", " + this.f11092g + ", " + this.f11093h + "]";
    }
}
