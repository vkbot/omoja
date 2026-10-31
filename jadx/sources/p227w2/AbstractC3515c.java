package p227w2;

import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: w2.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3515c {
    static {
        AbstractC3515c.class.getClassLoader();
    }

    /* JADX INFO: renamed from: a */
    public static void m5583a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }
}
