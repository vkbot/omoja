package android.support.v4.media.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.lang.ref.WeakReference;
import p142n0.C2467b;

/* JADX INFO: renamed from: android.support.v4.media.session.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0098d extends Binder implements IInterface {

    /* JADX INFO: renamed from: c */
    public final WeakReference f225c;

    public BinderC0098d() {
        attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        this.f225c = new WeakReference(null);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 >= 1 && i10 <= 16777215) {
            parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        }
        if (i10 == 1598968902) {
            parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
            return true;
        }
        switch (i10) {
            case 1:
                parcel.readString();
                if (this.f225c.get() != null) {
                    C2467b.m3822a();
                    return false;
                }
                return true;
            case 2:
                throw new AssertionError();
            case 3:
                if (this.f225c.get() != null) {
                    C2467b.m3822a();
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
                if (this.f225c.get() != null) {
                    C2467b.m3822a();
                    return false;
                }
                return true;
            case 10:
                parcel.readInt();
                return true;
            case 11:
                parcel.readInt();
                if (this.f225c.get() != null) {
                    C2467b.m3822a();
                    return false;
                }
                return true;
            case 12:
                parcel.readInt();
                if (this.f225c.get() != null) {
                    C2467b.m3822a();
                    return false;
                }
                return true;
            case 13:
                if (this.f225c.get() != null) {
                    C2467b.m3822a();
                    return false;
                }
                return true;
            default:
                return super.onTransact(i10, parcel, parcel2, i11);
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
