package p158o8;

import p054e8.InterfaceC1501d;
import p242x7.InterfaceC3587d;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: o8.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2755d implements InterfaceC1501d {

    /* JADX INFO: renamed from: b */
    public static final EnumC2755d f7920b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC2755d[] f7921c;

    static {
        EnumC2755d enumC2755d = new EnumC2755d("INSTANCE", 0);
        f7920b = enumC2755d;
        f7921c = new EnumC2755d[]{enumC2755d};
    }

    /* JADX INFO: renamed from: a */
    public static void m4274a(InterfaceC3587d interfaceC3587d) {
        interfaceC3587d.mo2808f(f7920b);
        interfaceC3587d.mo2804a();
    }

    /* JADX INFO: renamed from: b */
    public static void m4275b(Throwable th, InterfaceC3587d interfaceC3587d) {
        interfaceC3587d.mo2808f(f7920b);
        interfaceC3587d.onError(th);
    }

    public static EnumC2755d valueOf(String str) {
        return (EnumC2755d) Enum.valueOf(EnumC2755d.class, str);
    }

    public static EnumC2755d[] values() {
        return (EnumC2755d[]) f7921c.clone();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        EnumC2757f.m4278c(j10);
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        return 2;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return true;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        return null;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "EmptySubscription";
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
    }
}
