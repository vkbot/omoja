package p256z1;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0089g;
import android.view.View;

/* JADX INFO: renamed from: z1.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3696d extends View.BaseSavedState {
    public static final Parcelable.Creator<C3696d> CREATOR = new C0089g(13);

    /* JADX INFO: renamed from: b */
    public float f10937b;

    /* JADX INFO: renamed from: c */
    public float f10938c;

    /* JADX INFO: renamed from: d */
    public float f10939d;

    /* JADX INFO: renamed from: e */
    public int f10940e;

    /* JADX INFO: renamed from: f */
    public int f10941f;

    /* JADX INFO: renamed from: g */
    public int f10942g;

    /* JADX INFO: renamed from: h */
    public int f10943h;

    /* JADX INFO: renamed from: i */
    public boolean f10944i;

    /* JADX INFO: renamed from: j */
    public boolean f10945j;

    /* JADX INFO: renamed from: k */
    public boolean f10946k;

    /* JADX INFO: renamed from: l */
    public boolean f10947l;

    /* JADX INFO: renamed from: m */
    public boolean f10948m;

    /* JADX INFO: renamed from: n */
    public boolean f10949n;

    /* JADX INFO: renamed from: o */
    public boolean f10950o;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeFloat(this.f10937b);
        parcel.writeFloat(this.f10938c);
        parcel.writeInt(this.f10944i ? 1 : 0);
        parcel.writeFloat(this.f10939d);
        parcel.writeInt(this.f10940e);
        parcel.writeInt(this.f10941f);
        parcel.writeInt(this.f10942g);
        parcel.writeInt(this.f10943h);
        parcel.writeInt(this.f10945j ? 1 : 0);
        parcel.writeInt(this.f10946k ? 1 : 0);
        parcel.writeInt(this.f10947l ? 1 : 0);
        parcel.writeInt(this.f10948m ? 1 : 0);
        parcel.writeInt(this.f10949n ? 1 : 0);
        parcel.writeInt(this.f10950o ? 1 : 0);
    }
}
