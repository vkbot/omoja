package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import java.nio.ByteBuffer;
import p172q.C3021k;

/* JADX INFO: renamed from: com.bumptech.glide.load.data.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1047h implements InterfaceC1045f {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1131a;

    public /* synthetic */ C1047h(int i10) {
        this.f1131a = i10;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1045f
    /* JADX INFO: renamed from: a */
    public final Class mo1325a() {
        switch (this.f1131a) {
            case 0:
                throw new UnsupportedOperationException("Not implemented");
            case 1:
                return ParcelFileDescriptor.class;
            default:
                return ByteBuffer.class;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1045f
    /* JADX INFO: renamed from: b */
    public final InterfaceC1046g mo1326b(Object obj) {
        switch (this.f1131a) {
            case 0:
                return new C1048i(obj);
            case 1:
                return new C1048i((ParcelFileDescriptor) obj);
            default:
                return new C3021k((ByteBuffer) obj, 3);
        }
    }
}
