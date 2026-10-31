package p236x1;

import android.os.Parcel;
import android.os.Parcelable;
import p099j1.C1929i;
import p226w1.AbstractC3508e;

/* JADX INFO: renamed from: x1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3564b implements Parcelable {
    public static final C3563a CREATOR = new C3563a();

    /* JADX INFO: renamed from: b */
    public AbstractC3508e f10616b;

    /* JADX INFO: renamed from: c */
    public float f10617c;

    /* JADX INFO: renamed from: d */
    public float f10618d;

    /* JADX INFO: renamed from: e */
    public final float f10619e;

    /* JADX INFO: renamed from: f */
    public final float f10620f;

    /* JADX INFO: renamed from: g */
    public final int f10621g;

    /* JADX INFO: renamed from: h */
    public final EnumC3565c f10622h;

    public C3564b(float f8, float f10, int i10, float f11, EnumC3565c enumC3565c) {
        enumC3565c.getClass();
        this.f10617c = f11;
        this.f10619e = f8;
        this.f10620f = f10;
        this.f10621g = i10;
        this.f10622h = enumC3565c;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: q */
    public final void m5682q(AbstractC3508e abstractC3508e) {
        if (this.f10616b == null) {
            this.f10616b = abstractC3508e;
        } else {
            C1929i.m3029k("This instance of Section is already attached to a Gauge.");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.getClass();
        parcel.writeFloat(this.f10619e);
        parcel.writeFloat(this.f10620f);
        parcel.writeInt(this.f10621g);
        parcel.writeFloat(this.f10617c);
        parcel.writeSerializable(Integer.valueOf(this.f10622h.ordinal()));
        parcel.writeFloat(this.f10618d);
    }

    public /* synthetic */ C3564b(float f8, float f10, float f11, int i10) {
        this(f8, f10, i10, f11, EnumC3565c.f10624c);
    }
}
