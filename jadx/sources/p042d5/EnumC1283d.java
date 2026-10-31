package p042d5;

import com.google.protobuf.InterfaceC1205z;
import p099j1.C1929i;

/* JADX INFO: renamed from: d5.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC1283d implements InterfaceC1205z {
    UNKNOWN_TRIGGER(0),
    APP_LAUNCH(1),
    ON_FOREGROUND(2),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: b */
    public final int f3084b;

    EnumC1283d(int i10) {
        this.f3084b = i10;
    }

    @Override // com.google.protobuf.InterfaceC1205z
    /* JADX INFO: renamed from: a */
    public final int mo2180a() {
        if (this != UNRECOGNIZED) {
            return this.f3084b;
        }
        C1929i.m3029k("Can't get the number of an unknown enum value.");
        return 0;
    }
}
