package p201t5;

import p212u5.C3302e;

/* JADX INFO: renamed from: t5.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3261e extends AbstractC3258b {

    /* JADX INFO: renamed from: b */
    public final C3302e f9548b = new C3302e();

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof C3261e) && ((C3261e) obj).f9548b.equals(this.f9548b);
        }
        return true;
    }

    /* JADX INFO: renamed from: h */
    public final void m5196h(String str, AbstractC3258b abstractC3258b) {
        if (abstractC3258b == null) {
            abstractC3258b = C3260d.f9547b;
        }
        this.f9548b.put(str, abstractC3258b);
    }

    public final int hashCode() {
        return this.f9548b.hashCode();
    }

    /* JADX INFO: renamed from: i */
    public final void m5197i(String str, Boolean bool) {
        m5196h(str, bool == null ? C3260d.f9547b : new C3262f(bool));
    }

    /* JADX INFO: renamed from: j */
    public final void m5198j(String str, Number number) {
        m5196h(str, number == null ? C3260d.f9547b : new C3262f(number));
    }

    /* JADX INFO: renamed from: k */
    public final void m5199k(String str, String str2) {
        m5196h(str, new C3262f(str2));
    }

    /* JADX INFO: renamed from: l */
    public final AbstractC3258b m5200l(String str) {
        return (AbstractC3258b) this.f9548b.get(str);
    }
}
