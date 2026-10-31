package p033c8;

import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p009a8.C0034f;
import p045d8.AbstractC1314b;
import p262z7.InterfaceC3762a;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: c8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1011a implements InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public static final EnumC1011a f1013b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC1011a[] f1014c;

    static {
        EnumC1011a enumC1011a = new EnumC1011a("DISPOSED", 0);
        f1013b = enumC1011a;
        f1014c = new EnumC1011a[]{enumC1011a};
    }

    /* JADX INFO: renamed from: a */
    public static void m1215a(AtomicReference atomicReference) {
        InterfaceC3762a interfaceC3762a;
        InterfaceC3762a interfaceC3762a2 = (InterfaceC3762a) atomicReference.get();
        EnumC1011a enumC1011a = f1013b;
        if (interfaceC3762a2 == enumC1011a || (interfaceC3762a = (InterfaceC3762a) atomicReference.getAndSet(enumC1011a)) == enumC1011a || interfaceC3762a == null) {
            return;
        }
        interfaceC3762a.dispose();
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1216b(InterfaceC3762a interfaceC3762a) {
        return interfaceC3762a == f1013b;
    }

    /* JADX INFO: renamed from: c */
    public static void m1217c(AtomicReference atomicReference, InterfaceC3762a interfaceC3762a) {
        while (true) {
            InterfaceC3762a interfaceC3762a2 = (InterfaceC3762a) atomicReference.get();
            if (interfaceC3762a2 != f1013b) {
                while (!atomicReference.compareAndSet(interfaceC3762a2, interfaceC3762a)) {
                    if (atomicReference.get() != interfaceC3762a2) {
                    }
                }
                return;
            } else {
                if (interfaceC3762a != null) {
                    interfaceC3762a.dispose();
                    return;
                }
                return;
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m1218d(AtomicReference atomicReference, InterfaceC3762a interfaceC3762a) {
        AbstractC1314b.m2356a(interfaceC3762a, "d is null");
        while (!atomicReference.compareAndSet(null, interfaceC3762a)) {
            if (atomicReference.get() != null) {
                interfaceC3762a.dispose();
                if (atomicReference.get() == f1013b) {
                    return false;
                }
                AbstractC0000a.m18s(new C0034f("Disposable already set!"));
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: e */
    public static boolean m1219e(InterfaceC3762a interfaceC3762a, InterfaceC3762a interfaceC3762a2) {
        if (interfaceC3762a2 == null) {
            AbstractC0000a.m18s(new NullPointerException("next is null"));
            return false;
        }
        if (interfaceC3762a == null) {
            return true;
        }
        interfaceC3762a2.dispose();
        AbstractC0000a.m18s(new C0034f("Disposable already set!"));
        return false;
    }

    public static EnumC1011a valueOf(String str) {
        return (EnumC1011a) Enum.valueOf(EnumC1011a.class, str);
    }

    public static EnumC1011a[] values() {
        return (EnumC1011a[]) f1014c.clone();
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
    }
}
