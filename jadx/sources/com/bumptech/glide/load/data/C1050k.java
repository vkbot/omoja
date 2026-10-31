package com.bumptech.glide.load.data;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: renamed from: com.bumptech.glide.load.data.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1050k extends AbstractC1041b {

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f1139f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1050k(AssetManager assetManager, String str, int i10) {
        super(0, str, assetManager);
        this.f1139f = i10;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: a */
    public final Class mo1316a() {
        switch (this.f1139f) {
            case 0:
                return AssetFileDescriptor.class;
            default:
                return InputStream.class;
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC1041b
    /* JADX INFO: renamed from: g */
    public final void mo1317g(Object obj) throws IOException {
        switch (this.f1139f) {
            case 0:
                ((AssetFileDescriptor) obj).close();
                break;
            default:
                ((InputStream) obj).close();
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC1041b
    /* JADX INFO: renamed from: h */
    public final Object mo1324h(AssetManager assetManager, String str) {
        switch (this.f1139f) {
            case 0:
                return assetManager.openFd(str);
            default:
                return assetManager.open(str);
        }
    }
}
