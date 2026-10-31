package com.google.protobuf;

import ai.onnxruntime.C0075b;
import p099j1.C1929i;

/* JADX INFO: renamed from: com.google.protobuf.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1193v implements InterfaceC1182r0 {

    /* JADX INFO: renamed from: b */
    public static final C1193v f2786b = new C1193v(0);

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f2787a;

    public /* synthetic */ C1193v(int i10) {
        this.f2787a = i10;
    }

    @Override // com.google.protobuf.InterfaceC1182r0
    /* JADX INFO: renamed from: a */
    public final C1130a1 mo2033a(Class cls) {
        switch (this.f2787a) {
            case 0:
                if (AbstractC1202y.class.isAssignableFrom(cls)) {
                    try {
                        return (C1130a1) AbstractC1202y.m2169f(cls.asSubclass(AbstractC1202y.class)).mo2174e(3);
                    } catch (Exception e) {
                        C0075b.m190o("Unable to get message info for ".concat(cls.getName()), e);
                    }
                } else {
                    C1929i.m3029k("Unsupported message type: ".concat(cls.getName()));
                }
                return null;
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }

    @Override // com.google.protobuf.InterfaceC1182r0
    /* JADX INFO: renamed from: b */
    public final boolean mo2034b(Class cls) {
        switch (this.f2787a) {
            case 0:
                return AbstractC1202y.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }
}
