package p226w1;

import java.util.Arrays;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: w1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3506c extends Lambda implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10344b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC3512i f10345c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3506c(AbstractC3512i abstractC3512i, int i10) {
        super(1);
        this.f10344b = i10;
        this.f10345c = abstractC3512i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f10344b) {
            case 0:
                return String.format(this.f10345c.getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj).floatValue())}, 1));
            case 1:
                return String.format(this.f10345c.getLocale(), "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj).floatValue())}, 1));
            default:
                return String.format(this.f10345c.getLocale(), "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj).floatValue())}, 1));
        }
    }
}
