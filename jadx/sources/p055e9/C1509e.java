package p055e9;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KClass;
import p076g9.InterfaceC1633e;
import p096i9.AbstractC1803b;

/* JADX INFO: renamed from: e9.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1509e extends AbstractC1803b {

    /* JADX INFO: renamed from: a */
    public final KClass f3696a;

    /* JADX INFO: renamed from: b */
    public final List f3697b;

    /* JADX INFO: renamed from: c */
    public final Lazy f3698c;

    public C1509e(KClass kClass) {
        kClass.getClass();
        this.f3696a = kClass;
        this.f3697b = CollectionsKt.emptyList();
        this.f3698c = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new C1508d(0, this));
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return (InterfaceC1633e) this.f3698c.getValue();
    }

    public final String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + this.f3696a + ')';
    }
}
