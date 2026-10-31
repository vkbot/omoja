package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.util.HashMap;
import p108k.C2019g;
import p172q.C3034x;

/* JADX INFO: renamed from: com.bumptech.glide.load.data.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1048i implements InterfaceC1046g {

    /* JADX INFO: renamed from: d */
    public static final C1047h f1132d = new C1047h(0);

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1133b;

    /* JADX INFO: renamed from: c */
    public final Object f1134c;

    public C1048i(InputStream inputStream, C2019g c2019g) {
        this.f1133b = 3;
        C3034x c3034x = new C3034x(inputStream, c2019g);
        this.f1134c = c3034x;
        c3034x.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1046g
    /* JADX INFO: renamed from: b */
    public void mo1327b() {
        switch (this.f1133b) {
            case 1:
            case 2:
                break;
            default:
                ((C3034x) this.f1134c).m4857c();
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1046g
    /* JADX INFO: renamed from: d */
    public Object mo1328d() {
        switch (this.f1133b) {
            case 1:
                return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f1134c).rewind();
            case 2:
                return this.f1134c;
            default:
                C3034x c3034x = (C3034x) this.f1134c;
                c3034x.reset();
                return c3034x;
        }
    }

    /* JADX INFO: renamed from: e */
    public ParcelFileDescriptor m1331e() {
        return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f1134c).rewind();
    }

    public C1048i() {
        this.f1133b = 0;
        this.f1134c = new HashMap();
    }

    /* JADX INFO: renamed from: a */
    private final void m1329a() {
    }

    /* JADX INFO: renamed from: c */
    private final void m1330c() {
    }

    public C1048i(ParcelFileDescriptor parcelFileDescriptor) {
        this.f1133b = 1;
        this.f1134c = new ParcelFileDescriptorRewinder$InternalRewinder(parcelFileDescriptor);
    }

    public C1048i(Object obj) {
        this.f1133b = 2;
        this.f1134c = obj;
    }
}
