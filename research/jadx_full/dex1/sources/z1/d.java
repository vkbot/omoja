package z1;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.view.View$BaseSavedState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends View$BaseSavedState {
    public static final Parcelable$Creator<d> CREATOR = new android.support.v4.media.g(13);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f6156b;
    public float c;
    public float d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6157f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6158g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6159h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f6160i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f6161j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6162k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f6163l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f6164m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f6165n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f6166o;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeFloat(this.f6156b);
        parcel.writeFloat(this.c);
        parcel.writeInt(this.f6160i ? 1 : 0);
        parcel.writeFloat(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f6157f);
        parcel.writeInt(this.f6158g);
        parcel.writeInt(this.f6159h);
        parcel.writeInt(this.f6161j ? 1 : 0);
        parcel.writeInt(this.f6162k ? 1 : 0);
        parcel.writeInt(this.f6163l ? 1 : 0);
        parcel.writeInt(this.f6164m ? 1 : 0);
        parcel.writeInt(this.f6165n ? 1 : 0);
        parcel.writeInt(this.f6166o ? 1 : 0);
    }
}
