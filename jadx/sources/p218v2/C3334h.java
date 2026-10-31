package p218v2;

import android.os.Parcel;
import p208u2.BinderC3284b;
import p208u2.InterfaceC3283a;
import p227w2.AbstractC3513a;
import p227w2.AbstractC3515c;

/* JADX INFO: renamed from: v2.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3334h extends AbstractC3513a {
    /* JADX INFO: renamed from: d */
    public final InterfaceC3283a m5255d(BinderC3284b binderC3284b, int i10, BinderC3284b binderC3284b2) {
        Parcel parcelM5582c = m5582c();
        AbstractC3515c.m5583a(parcelM5582c, binderC3284b);
        parcelM5582c.writeString("com.google.android.gms.providerinstaller.dynamite");
        parcelM5582c.writeInt(i10);
        AbstractC3515c.m5583a(parcelM5582c, binderC3284b2);
        Parcel parcelM5581b = m5581b(parcelM5582c, 2);
        InterfaceC3283a interfaceC3283aM5217c = BinderC3284b.m5217c(parcelM5581b.readStrongBinder());
        parcelM5581b.recycle();
        return interfaceC3283aM5217c;
    }

    /* JADX INFO: renamed from: e */
    public final InterfaceC3283a m5256e(BinderC3284b binderC3284b, int i10, BinderC3284b binderC3284b2) {
        Parcel parcelM5582c = m5582c();
        AbstractC3515c.m5583a(parcelM5582c, binderC3284b);
        parcelM5582c.writeString("com.google.android.gms.providerinstaller.dynamite");
        parcelM5582c.writeInt(i10);
        AbstractC3515c.m5583a(parcelM5582c, binderC3284b2);
        Parcel parcelM5581b = m5581b(parcelM5582c, 3);
        InterfaceC3283a interfaceC3283aM5217c = BinderC3284b.m5217c(parcelM5581b.readStrongBinder());
        parcelM5581b.recycle();
        return interfaceC3283aM5217c;
    }
}
