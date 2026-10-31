package p227w2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: w2.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC3514b extends Binder implements IInterface {
    public AbstractBinderC3514b(String str) {
        attachInterface(this, str);
    }

    /* JADX INFO: renamed from: b */
    public boolean mo4755b(Parcel parcel, int i10) {
        return false;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i10, parcel, parcel2, i11)) {
            return true;
        }
        return mo4755b(parcel2, i10);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
