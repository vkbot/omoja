package x1;

import android.os.Parcel;
import android.os.Parcelable;
import j1.i;
import w1.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements Parcelable {
    public static final a CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e f6020b;
    public float c;
    public float d;
    public final float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f6021f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f6022g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c f6023h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(float f8, float f9, int i9, float f10, c cVar) {
        cVar.getClass();
        this.c = f10;
        this.e = f8;
        this.f6021f = f9;
        this.f6022g = i9;
        this.f6023h = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void q(e eVar) {
        if (this.f6020b == null) {
            this.f6020b = eVar;
        } else {
            i.k("This instance of Section is already attached to a Gauge.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.getClass();
        parcel.writeFloat(this.e);
        parcel.writeFloat(this.f6021f);
        parcel.writeInt(this.f6022g);
        parcel.writeFloat(this.c);
        parcel.writeSerializable(Integer.valueOf(this.f6023h.ordinal()));
        parcel.writeFloat(this.d);
    }

    public /* synthetic */ b(float f8, float f9, float f10, int i9) {
        this(f8, f9, i9, f10, c.c);
    }
}
