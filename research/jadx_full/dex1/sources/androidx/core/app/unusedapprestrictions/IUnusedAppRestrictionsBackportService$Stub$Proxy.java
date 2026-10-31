package androidx.core.app.unusedapprestrictions;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class IUnusedAppRestrictionsBackportService$Stub$Proxy implements IUnusedAppRestrictionsBackportService {
    private IBinder mRemote;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IUnusedAppRestrictionsBackportService$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getInterfaceDescriptor() {
        return IUnusedAppRestrictionsBackportService.DESCRIPTOR;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
    public void isPermissionRevocationEnabledForApp(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IUnusedAppRestrictionsBackportService.DESCRIPTOR);
            parcelObtain.writeStrongInterface(iUnusedAppRestrictionsBackportCallback);
            this.mRemote.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
