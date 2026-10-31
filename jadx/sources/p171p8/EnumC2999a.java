package p171p8;

import java.util.ArrayList;
import java.util.concurrent.Callable;
import p023b8.InterfaceC0929c;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: p8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2999a implements Callable, InterfaceC0929c {

    /* JADX INFO: renamed from: b */
    public static final EnumC2999a f8443b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC2999a[] f8444c;

    static {
        EnumC2999a enumC2999a = new EnumC2999a("INSTANCE", 0);
        f8443b = enumC2999a;
        f8444c = new EnumC2999a[]{enumC2999a};
    }

    public static EnumC2999a valueOf(String str) {
        return (EnumC2999a) Enum.valueOf(EnumC2999a.class, str);
    }

    public static EnumC2999a[] values() {
        return (EnumC2999a[]) f8444c.clone();
    }

    @Override // p023b8.InterfaceC0929c
    public final Object apply(Object obj) {
        return new ArrayList();
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new ArrayList();
    }
}
