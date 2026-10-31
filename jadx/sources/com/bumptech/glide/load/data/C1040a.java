package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.commons.p161io.C2786e;

/* JADX INFO: renamed from: com.bumptech.glide.load.data.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1040a extends AbstractC1041b {

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f1122f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1040a(ContentResolver contentResolver, Uri uri, int i10) {
        super(1, uri, contentResolver);
        this.f1122f = i10;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: a */
    public final Class mo1316a() {
        switch (this.f1122f) {
            case 0:
                return AssetFileDescriptor.class;
            default:
                return ParcelFileDescriptor.class;
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC1041b
    /* JADX INFO: renamed from: g */
    public final void mo1317g(Object obj) throws IOException {
        switch (this.f1122f) {
            case 0:
                ((AssetFileDescriptor) obj).close();
                break;
            default:
                ((ParcelFileDescriptor) obj).close();
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC1041b
    /* JADX INFO: renamed from: i */
    public final Object mo1318i(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        switch (this.f1122f) {
            case 0:
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
                if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                    return assetFileDescriptorOpenAssetFileDescriptor;
                }
                C2786e.m4351a(uri, "FileDescriptor is null for: ");
                return null;
            default:
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor2 = contentResolver.openAssetFileDescriptor(uri, "r");
                if (assetFileDescriptorOpenAssetFileDescriptor2 != null) {
                    return assetFileDescriptorOpenAssetFileDescriptor2.getParcelFileDescriptor();
                }
                C2786e.m4351a(uri, "FileDescriptor is null for: ");
                return null;
        }
    }
}
