package p226w1;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import p236x1.C3564b;

/* JADX INFO: renamed from: w1.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3507d extends Lambda implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ float f10346b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3507d(float f8) {
        super(1);
        this.f10346b = f8;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3564b c3564b = (C3564b) obj;
        c3564b.getClass();
        c3564b.f10617c = this.f10346b;
        AbstractC3508e abstractC3508e = c3564b.f10616b;
        if (abstractC3508e != null) {
            abstractC3508e.m5571i();
        }
        return Unit.INSTANCE;
    }
}
