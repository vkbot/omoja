package b;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.os.RemoteException;
import android.support.v4.media.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class d implements Parcelable {
    public static final Parcelable$Creator<d> CREATOR = new g(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f226b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r(int i9, Bundle bundle) {
        b bVar = this.f226b;
        if (bVar != null) {
            try {
                bVar.a(i9, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        synchronized (this) {
            try {
                if (this.f226b == null) {
                    this.f226b = new c(this);
                }
                parcel.writeStrongBinder(this.f226b.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void q(int i9, Bundle bundle) {
    }
}
