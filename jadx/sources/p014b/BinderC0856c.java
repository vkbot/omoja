package p014b;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: b.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0856c extends Binder implements InterfaceC0855b {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f534d = 0;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C0857d f535c;

    public BinderC0856c(C0857d c0857d) {
        this.f535c = c0857d;
        attachInterface(this, InterfaceC0855b.f533b);
    }

    @Override // p014b.InterfaceC0855b
    /* JADX INFO: renamed from: a */
    public final void mo915a(int i10, Bundle bundle) {
        this.f535c.mo232q(i10, bundle);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        String str = InterfaceC0855b.f533b;
        if (i10 >= 1 && i10 <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i10 == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        if (i10 != 1) {
            return super.onTransact(i10, parcel, parcel2, i11);
        }
        mo915a(parcel.readInt(), (Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
