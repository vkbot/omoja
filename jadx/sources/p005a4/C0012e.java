package p005a4;

import android.os.Parcel;
import android.os.Parcelable;
import p029c4.C0985a;
import p051e4.C1470c0;
import p070g3.C1616e;
import p080h3.C1657c;
import p192s3.C3188b;

/* JADX INFO: renamed from: a4.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0012e implements Parcelable.ClassLoaderCreator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f56a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f56a) {
            case 0:
                return new C0013f(parcel, (ClassLoader) null);
            case 1:
                return new C0985a(parcel, null);
            case 2:
                return new C1470c0(parcel, null);
            case 3:
                return new C1616e(parcel, (ClassLoader) null);
            case 4:
                return new C1657c(parcel, null);
            default:
                return new C3188b(parcel, null);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        switch (this.f56a) {
            case 0:
                return new C0013f[i10];
            case 1:
                return new C0985a[i10];
            case 2:
                return new C1470c0[i10];
            case 3:
                return new C1616e[i10];
            case 4:
                return new C1657c[i10];
            default:
                return new C3188b[i10];
        }
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f56a) {
            case 0:
                return new C0013f(parcel, classLoader);
            case 1:
                return new C0985a(parcel, classLoader);
            case 2:
                return new C1470c0(parcel, classLoader);
            case 3:
                return new C1616e(parcel, classLoader);
            case 4:
                return new C1657c(parcel, classLoader);
            default:
                return new C3188b(parcel, classLoader);
        }
    }
}
