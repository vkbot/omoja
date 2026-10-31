package p042d5;

import com.google.protobuf.InterfaceC1205z;

/* JADX INFO: renamed from: d5.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC1286g implements InterfaceC1205z {
    UNKNOWN_DISMISS_TYPE(0),
    AUTO(1),
    CLICK(2),
    SWIPE(3);


    /* JADX INFO: renamed from: b */
    public final int f3090b;

    EnumC1286g(int i10) {
        this.f3090b = i10;
    }

    @Override // com.google.protobuf.InterfaceC1205z
    /* JADX INFO: renamed from: a */
    public final int mo2180a() {
        return this.f3090b;
    }
}
