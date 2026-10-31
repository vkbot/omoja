package p055e9;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KType;

/* JADX INFO: renamed from: e9.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1513i extends Lambda implements Function0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3699b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ List f3700c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1513i(List list, int i10) {
        super(0);
        this.f3699b = i10;
        this.f3700c = list;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f3699b) {
            case 0:
                break;
        }
        return ((KType) this.f3700c.get(0)).getClassifier();
    }
}
