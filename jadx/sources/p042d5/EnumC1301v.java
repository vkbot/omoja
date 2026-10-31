package p042d5;

import com.google.protobuf.InterfaceC1205z;

/* JADX INFO: renamed from: d5.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC1301v implements InterfaceC1205z {
    UNSPECIFIED_RENDER_ERROR(0),
    IMAGE_FETCH_ERROR(1),
    IMAGE_DISPLAY_ERROR(2),
    IMAGE_UNSUPPORTED_FORMAT(3);


    /* JADX INFO: renamed from: b */
    public final int f3107b;

    EnumC1301v(int i10) {
        this.f3107b = i10;
    }

    @Override // com.google.protobuf.InterfaceC1205z
    /* JADX INFO: renamed from: a */
    public final int mo2180a() {
        return this.f3107b;
    }
}
