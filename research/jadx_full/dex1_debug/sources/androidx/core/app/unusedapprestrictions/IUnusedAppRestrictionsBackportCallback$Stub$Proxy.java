package androidx.core.app.unusedapprestrictions;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class IUnusedAppRestrictionsBackportCallback$Stub$Proxy implements IUnusedAppRestrictionsBackportCallback {
    private IBinder mRemote;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IUnusedAppRestrictionsBackportCallback$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getInterfaceDescriptor() {
        return IUnusedAppRestrictionsBackportCallback.DESCRIPTOR;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
    public void onIsPermissionRevocationEnabledForAppResult(boolean z8, boolean z9) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IUnusedAppRestrictionsBackportCallback.DESCRIPTOR);
            parcelObtain.writeInt(z8 ? 1 : 0);
            parcelObtain.writeInt(z9 ? 1 : 0);
            this.mRemote.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
