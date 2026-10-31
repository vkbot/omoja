package p227w2;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: w2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3513a implements IInterface {

    /* JADX INFO: renamed from: c */
    public final IBinder f10430c;

    /* JADX INFO: renamed from: d */
    public final String f10431d;

    public AbstractC3513a(IBinder iBinder, String str) {
        this.f10430c = iBinder;
        this.f10431d = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f10430c;
    }

    /* JADX INFO: renamed from: b */
    public final Parcel m5581b(Parcel parcel, int i10) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f10430c.transact(i10, parcel, parcelObtain, 0);
                parcelObtain.readException();
                parcel.recycle();
                return parcelObtain;
            } catch (RuntimeException e) {
                parcelObtain.recycle();
                throw e;
            }
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public final Parcel m5582c() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f10431d);
        return parcelObtain;
    }
}
