package x1;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import java.io.Serializable;
import w1.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements Parcelable$Creator {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public final Object createFromParcel(Parcel parcel) {
        parcel.getClass();
        float f8 = parcel.readFloat();
        float f9 = parcel.readFloat();
        int i9 = parcel.readInt();
        float f10 = parcel.readFloat();
        Serializable serializable = parcel.readSerializable();
        serializable.getClass();
        b bVar = new b(f8, f9, i9, f10, (c) serializable);
        bVar.d = parcel.readFloat();
        e eVar = bVar.f6020b;
        if (eVar != null) {
            eVar.i();
        }
        return bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public final Object[] newArray(int i9) {
        return new b[i9];
    }
}
