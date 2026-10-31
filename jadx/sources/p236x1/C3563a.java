package p236x1;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import p226w1.AbstractC3508e;

/* JADX INFO: renamed from: x1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3563a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        parcel.getClass();
        float f8 = parcel.readFloat();
        float f10 = parcel.readFloat();
        int i10 = parcel.readInt();
        float f11 = parcel.readFloat();
        Serializable serializable = parcel.readSerializable();
        serializable.getClass();
        C3564b c3564b = new C3564b(f8, f10, i10, f11, (EnumC3565c) serializable);
        c3564b.f10618d = parcel.readFloat();
        AbstractC3508e abstractC3508e = c3564b.f10616b;
        if (abstractC3508e != null) {
            abstractC3508e.m5571i();
        }
        return c3564b;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new C3564b[i10];
    }
}
