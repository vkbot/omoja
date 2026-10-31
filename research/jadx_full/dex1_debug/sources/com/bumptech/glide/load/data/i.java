package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.util.HashMap;
import q.x;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i implements g {
    public static final h d = new h(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f589b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(InputStream inputStream, k.g gVar) {
        this.f589b = 3;
        x xVar = new x(inputStream, gVar);
        this.c = xVar;
        xVar.mark(5242880);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.g
    public void b() {
        switch (this.f589b) {
            case 1:
            case 2:
                break;
            default:
                ((x) this.c).c();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.g
    public Object d() {
        switch (this.f589b) {
            case 1:
                return ((ParcelFileDescriptorRewinder$InternalRewinder) this.c).rewind();
            case 2:
                return this.c;
            default:
                x xVar = (x) this.c;
                xVar.reset();
                return xVar;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ParcelFileDescriptor e() {
        return ((ParcelFileDescriptorRewinder$InternalRewinder) this.c).rewind();
    }

    public i() {
        this.f589b = 0;
        this.c = new HashMap();
    }

    private final void a() {
    }

    private final void c() {
    }

    public i(ParcelFileDescriptor parcelFileDescriptor) {
        this.f589b = 1;
        this.c = new ParcelFileDescriptorRewinder$InternalRewinder(parcelFileDescriptor);
    }

    public i(Object obj) {
        this.f589b = 2;
        this.c = obj;
    }
}
