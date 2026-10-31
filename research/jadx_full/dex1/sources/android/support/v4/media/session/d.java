package android.support.v4.media.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends Binder implements IInterface {
    public final WeakReference c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d() {
        attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        this.c = new WeakReference(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Binder
    public final boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) {
        if (i9 >= 1 && i9 <= 16777215) {
            parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        }
        if (i9 == 1598968902) {
            parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
            return true;
        }
        switch (i9) {
            case 1:
                parcel.readString();
                if (this.c.get() != null) {
                    n0.b.a();
                    return false;
                }
                return true;
            case 2:
                throw new AssertionError();
            case 3:
                if (this.c.get() != null) {
                    n0.b.a();
                    return false;
                }
                return true;
            case 4:
                throw new AssertionError();
            case 5:
                parcel.createTypedArrayList(MediaSessionCompat$QueueItem.CREATOR);
                throw new AssertionError();
            case 6:
                throw new AssertionError();
            case 7:
                throw new AssertionError();
            case 8:
                throw new AssertionError();
            case 9:
                parcel.readInt();
                if (this.c.get() != null) {
                    n0.b.a();
                    return false;
                }
                return true;
            case 10:
                parcel.readInt();
                return true;
            case 11:
                parcel.readInt();
                if (this.c.get() != null) {
                    n0.b.a();
                    return false;
                }
                return true;
            case 12:
                parcel.readInt();
                if (this.c.get() != null) {
                    n0.b.a();
                    return false;
                }
                return true;
            case 13:
                if (this.c.get() != null) {
                    n0.b.a();
                    return false;
                }
                return true;
            default:
                return super.onTransact(i9, parcel, parcel2, i10);
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
