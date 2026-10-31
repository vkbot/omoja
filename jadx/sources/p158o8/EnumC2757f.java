package p158o8;

import ai.onnxruntime.AbstractC0074a;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p009a8.C0034f;
import p045d8.AbstractC1314b;
import p150n9.InterfaceC2561b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: o8.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2757f implements InterfaceC2561b {

    /* JADX INFO: renamed from: b */
    public static final EnumC2757f f7924b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC2757f[] f7925c;

    static {
        EnumC2757f enumC2757f = new EnumC2757f("CANCELLED", 0);
        f7924b = enumC2757f;
        f7925c = new EnumC2757f[]{enumC2757f};
    }

    /* JADX INFO: renamed from: a */
    public static void m4276a(AtomicReference atomicReference) {
        InterfaceC2561b interfaceC2561b;
        InterfaceC2561b interfaceC2561b2 = (InterfaceC2561b) atomicReference.get();
        EnumC2757f enumC2757f = f7924b;
        if (interfaceC2561b2 == enumC2757f || (interfaceC2561b = (InterfaceC2561b) atomicReference.getAndSet(enumC2757f)) == enumC2757f || interfaceC2561b == null) {
            return;
        }
        interfaceC2561b.cancel();
    }

    /* JADX INFO: renamed from: b */
    public static boolean m4277b(AtomicReference atomicReference, InterfaceC2561b interfaceC2561b) {
        AbstractC1314b.m2356a(interfaceC2561b, "s is null");
        while (!atomicReference.compareAndSet(null, interfaceC2561b)) {
            if (atomicReference.get() != null) {
                interfaceC2561b.cancel();
                if (atomicReference.get() == f7924b) {
                    return false;
                }
                AbstractC0000a.m18s(new C0034f("Subscription already set!"));
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: c */
    public static boolean m4278c(long j10) {
        if (j10 > 0) {
            return true;
        }
        AbstractC0000a.m18s(new IllegalArgumentException(AbstractC0074a.m157h(j10, "n > 0 required but it was ")));
        return false;
    }

    /* JADX INFO: renamed from: e */
    public static boolean m4279e(InterfaceC2561b interfaceC2561b, InterfaceC2561b interfaceC2561b2) {
        if (interfaceC2561b2 == null) {
            AbstractC0000a.m18s(new NullPointerException("next is null"));
            return false;
        }
        if (interfaceC2561b == null) {
            return true;
        }
        interfaceC2561b2.cancel();
        AbstractC0000a.m18s(new C0034f("Subscription already set!"));
        return false;
    }

    public static EnumC2757f valueOf(String str) {
        return (EnumC2757f) Enum.valueOf(EnumC2757f.class, str);
    }

    public static EnumC2757f[] values() {
        return (EnumC2757f[]) f7925c.clone();
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
    }
}
