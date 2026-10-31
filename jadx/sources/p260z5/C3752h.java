package p260z5;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import p007a6.C0026b;
import p093i6.C1751a;
import p127l6.C2217a;
import p147n6.C2486g;
import p185r6.C3107b;
import p222v6.C3339a;

/* JADX INFO: renamed from: z5.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3752h implements InterfaceC3755k {

    /* JADX INFO: renamed from: c */
    public static final InterfaceC3755k[] f11189c = new InterfaceC3755k[0];

    /* JADX INFO: renamed from: a */
    public Map f11190a;

    /* JADX INFO: renamed from: b */
    public InterfaceC3755k[] f11191b;

    @Override // p260z5.InterfaceC3755k
    /* JADX INFO: renamed from: a */
    public final C3757m mo89a(C3746b c3746b, Map map) {
        m5986c(map);
        return m5985b(c3746b);
    }

    /* JADX INFO: renamed from: b */
    public final C3757m m5985b(C3746b c3746b) throws C3753i {
        InterfaceC3755k[] interfaceC3755kArr = this.f11191b;
        if (interfaceC3755kArr != null) {
            for (InterfaceC3755k interfaceC3755k : interfaceC3755kArr) {
                try {
                    return interfaceC3755k.mo89a(c3746b, this.f11190a);
                } catch (AbstractC3756l unused) {
                }
            }
        }
        throw C3753i.f11192d;
    }

    /* JADX INFO: renamed from: c */
    public final void m5986c(Map map) {
        this.f11190a = map;
        boolean z9 = map != null && map.containsKey(EnumC3748d.f11175e);
        Collection collection = map == null ? null : (Collection) map.get(EnumC3748d.f11174d);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            boolean z10 = collection.contains(EnumC3745a.f11166p) || collection.contains(EnumC3745a.f11167q) || collection.contains(EnumC3745a.f11159i) || collection.contains(EnumC3745a.f11158h) || collection.contains(EnumC3745a.f11153c) || collection.contains(EnumC3745a.f11154d) || collection.contains(EnumC3745a.f11155e) || collection.contains(EnumC3745a.f11156f) || collection.contains(EnumC3745a.f11160j) || collection.contains(EnumC3745a.f11164n) || collection.contains(EnumC3745a.f11165o);
            if (z10 && !z9) {
                arrayList.add(new C2486g(map, 0));
            }
            if (collection.contains(EnumC3745a.f11163m)) {
                arrayList.add(new C3339a());
            }
            if (collection.contains(EnumC3745a.f11157g)) {
                arrayList.add(new C1751a());
            }
            if (collection.contains(EnumC3745a.f11152b)) {
                arrayList.add(new C0026b());
            }
            if (collection.contains(EnumC3745a.f11162l)) {
                arrayList.add(new C3107b());
            }
            if (collection.contains(EnumC3745a.f11161k)) {
                arrayList.add(new C2217a());
            }
            if (z10 && z9) {
                arrayList.add(new C2486g(map, 0));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z9) {
                arrayList.add(new C2486g(map, 0));
            }
            arrayList.add(new C3339a());
            arrayList.add(new C1751a());
            arrayList.add(new C0026b());
            arrayList.add(new C3107b());
            arrayList.add(new C2217a());
            if (z9) {
                arrayList.add(new C2486g(map, 0));
            }
        }
        this.f11191b = (InterfaceC3755k[]) arrayList.toArray(f11189c);
    }

    @Override // p260z5.InterfaceC3755k
    public final void reset() {
        InterfaceC3755k[] interfaceC3755kArr = this.f11191b;
        if (interfaceC3755kArr != null) {
            for (InterfaceC3755k interfaceC3755k : interfaceC3755kArr) {
                interfaceC3755k.reset();
            }
        }
    }
}
