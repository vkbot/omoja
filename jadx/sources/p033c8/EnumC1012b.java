package p033c8;

import p054e8.InterfaceC1499b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: c8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1012b implements InterfaceC1499b {

    /* JADX INFO: renamed from: b */
    public static final EnumC1012b f1015b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC1012b[] f1016c;

    static {
        EnumC1012b enumC1012b = new EnumC1012b("INSTANCE", 0);
        f1015b = enumC1012b;
        f1016c = new EnumC1012b[]{enumC1012b, new EnumC1012b("NEVER", 1)};
    }

    public static EnumC1012b valueOf(String str) {
        return (EnumC1012b) Enum.valueOf(EnumC1012b.class, str);
    }

    public static EnumC1012b[] values() {
        return (EnumC1012b[]) f1016c.clone();
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

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
    }
}
