package p096i9;

import com.bumptech.glide.AbstractC1031d;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import p046d9.C1322h;
import p055e9.InterfaceC1506b;
import p076g9.C1638j;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: i9.f1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1821f1 implements InterfaceC1633e, InterfaceC1837l {

    /* JADX INFO: renamed from: a */
    public final String f4757a;

    /* JADX INFO: renamed from: b */
    public final C1829i0 f4758b;

    /* JADX INFO: renamed from: c */
    public final int f4759c;

    /* JADX INFO: renamed from: d */
    public int f4760d;

    /* JADX INFO: renamed from: e */
    public final String[] f4761e;

    /* JADX INFO: renamed from: f */
    public final List[] f4762f;

    /* JADX INFO: renamed from: g */
    public final boolean[] f4763g;

    /* JADX INFO: renamed from: h */
    public Map f4764h;

    /* JADX INFO: renamed from: i */
    public final Lazy f4765i;

    /* JADX INFO: renamed from: j */
    public final Lazy f4766j;

    /* JADX INFO: renamed from: k */
    public final Lazy f4767k;

    public AbstractC1821f1(String str, C1829i0 c1829i0, int i10) {
        str.getClass();
        this.f4757a = str;
        this.f4758b = c1829i0;
        this.f4759c = i10;
        this.f4760d = -1;
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = "[UNINITIALIZED]";
        }
        this.f4761e = strArr;
        int i12 = this.f4759c;
        this.f4762f = new List[i12];
        this.f4763g = new boolean[i12];
        this.f4764h = MapsKt.emptyMap();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.f4765i = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new C1817e1(this, 1));
        this.f4766j = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new C1817e1(this, 2));
        this.f4767k = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new C1817e1(this, 0));
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: a */
    public final String mo2717a() {
        return this.f4757a;
    }

    @Override // p096i9.InterfaceC1837l
    /* JADX INFO: renamed from: b */
    public final Set mo2723b() {
        return this.f4764h.keySet();
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: c */
    public final boolean mo2718c() {
        return false;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: d */
    public final int mo2719d() {
        return this.f4759c;
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: e */
    public final String mo2720e(int i10) {
        return this.f4761e[i10];
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: f */
    public InterfaceC1633e mo2721f(int i10) {
        return ((InterfaceC1506b[]) this.f4765i.getValue())[i10].mo2581a();
    }

    @Override // p076g9.InterfaceC1633e
    /* JADX INFO: renamed from: g */
    public final boolean mo2722g(int i10) {
        return this.f4763g[i10];
    }

    @Override // p076g9.InterfaceC1633e
    public AbstractC1031d getKind() {
        return C1638j.f4167d;
    }

    public int hashCode() {
        return ((Number) this.f4767k.getValue()).intValue();
    }

    @Override // p076g9.InterfaceC1633e
    public boolean isInline() {
        return false;
    }

    public String toString() {
        return CollectionsKt___CollectionsKt.joinToString$default(RangesKt.until(0, this.f4759c), ", ", this.f4757a + '(', ")", 0, null, new C1322h(4, this), 24, null);
    }
}
