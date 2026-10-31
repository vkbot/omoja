package com.google.protobuf;

import androidx.navigation.C0674b;

/* JADX INFO: renamed from: com.google.protobuf.k0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1161k0 implements InterfaceC1182r0 {

    /* JADX INFO: renamed from: a */
    public InterfaceC1182r0[] f2718a;

    @Override // com.google.protobuf.InterfaceC1182r0
    /* JADX INFO: renamed from: a */
    public final C1130a1 mo2033a(Class cls) {
        for (InterfaceC1182r0 interfaceC1182r0 : this.f2718a) {
            if (interfaceC1182r0.mo2034b(cls)) {
                return interfaceC1182r0.mo2033a(cls);
            }
        }
        C0674b.m840g("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // com.google.protobuf.InterfaceC1182r0
    /* JADX INFO: renamed from: b */
    public final boolean mo2034b(Class cls) {
        for (InterfaceC1182r0 interfaceC1182r0 : this.f2718a) {
            if (interfaceC1182r0.mo2034b(cls)) {
                return true;
            }
        }
        return false;
    }
}
