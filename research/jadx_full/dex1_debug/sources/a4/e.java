package a4;

import android.os.Parcel;
import android.os.Parcelable$ClassLoaderCreator;
import e4.c0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements Parcelable$ClassLoaderCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f32a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(int i9) {
        this.f32a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f32a) {
            case 0:
                return new f(parcel, (ClassLoader) null);
            case 1:
                return new c4.a(parcel, null);
            case 2:
                return new c0(parcel, null);
            case 3:
                return new g3.e(parcel, (ClassLoader) null);
            case 4:
                return new h3.c(parcel, null);
            default:
                return new s3.b(parcel, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public final Object[] newArray(int i9) {
        switch (this.f32a) {
            case 0:
                return new f[i9];
            case 1:
                return new c4.a[i9];
            case 2:
                return new c0[i9];
            case 3:
                return new g3.e[i9];
            case 4:
                return new h3.c[i9];
            default:
                return new s3.b[i9];
        }
    }

    @Override // android.os.Parcelable$ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f32a) {
            case 0:
                return new f(parcel, classLoader);
            case 1:
                return new c4.a(parcel, classLoader);
            case 2:
                return new c0(parcel, classLoader);
            case 3:
                return new g3.e(parcel, classLoader);
            case 4:
                return new h3.c(parcel, classLoader);
            default:
                return new s3.b(parcel, classLoader);
        }
    }
}
