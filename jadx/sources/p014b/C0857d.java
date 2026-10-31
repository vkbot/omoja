package p014b;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.C0089g;

/* JADX INFO: renamed from: b.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C0857d implements Parcelable {
    public static final Parcelable.Creator<C0857d> CREATOR = new C0089g(4);

    /* JADX INFO: renamed from: b */
    public InterfaceC0855b f536b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: r */
    public final void m916r(int i10, Bundle bundle) {
        InterfaceC0855b interfaceC0855b = this.f536b;
        if (interfaceC0855b != null) {
            try {
                interfaceC0855b.mo915a(i10, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        synchronized (this) {
            try {
                if (this.f536b == null) {
                    this.f536b = new BinderC0856c(this);
                }
                parcel.writeStrongBinder(this.f536b.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: q */
    public void mo232q(int i10, Bundle bundle) {
    }
}
