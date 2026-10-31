package p225w0;

import java.util.function.BooleanSupplier;

/* JADX INFO: renamed from: w0.h0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3462h0 implements BooleanSupplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3474l0 f10009a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10010b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f10011c;

    public /* synthetic */ C3462h0(C3474l0 c3474l0, int i10, int i11) {
        this.f10009a = c3474l0;
        this.f10010b = i10;
        this.f10011c = i11;
    }

    @Override // java.util.function.BooleanSupplier
    public final boolean getAsBoolean() {
        C3474l0 c3474l0 = this.f10009a;
        return c3474l0.m5437c(this.f10010b) && !c3474l0.f10090k && c3474l0.f10087h.get() == this.f10011c && c3474l0.m5445j0();
    }
}
