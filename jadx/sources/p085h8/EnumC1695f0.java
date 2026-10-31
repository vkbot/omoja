package p085h8;

import p023b8.InterfaceC0928b;
import p150n9.InterfaceC2561b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: h8.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1695f0 implements InterfaceC0928b {

    /* JADX INFO: renamed from: b */
    public static final EnumC1695f0 f4385b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC1695f0[] f4386c;

    static {
        EnumC1695f0 enumC1695f0 = new EnumC1695f0("INSTANCE", 0);
        f4385b = enumC1695f0;
        f4386c = new EnumC1695f0[]{enumC1695f0};
    }

    public static EnumC1695f0 valueOf(String str) {
        return (EnumC1695f0) Enum.valueOf(EnumC1695f0.class, str);
    }

    public static EnumC1695f0[] values() {
        return (EnumC1695f0[]) f4386c.clone();
    }

    @Override // p023b8.InterfaceC0928b
    public final void accept(Object obj) {
        ((InterfaceC2561b) obj).mo2811d(Long.MAX_VALUE);
    }
}
