package o2;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.view.ViewGroup$MarginLayoutParams;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends ViewGroup$MarginLayoutParams implements b {
    public static final Parcelable$Creator<e> CREATOR = new android.support.v4.media.g(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4053b;
    public float c;
    public float d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f4054f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4055g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4056h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4057i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4058j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4059k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int a() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final float b() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int c() {
        return this.f4055g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int d() {
        return ((ViewGroup$MarginLayoutParams) this).width;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final void e(int i9) {
        this.f4055g = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int f() {
        return ((ViewGroup$MarginLayoutParams) this).bottomMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int g() {
        return ((ViewGroup$MarginLayoutParams) this).leftMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int getHeight() {
        return ((ViewGroup$MarginLayoutParams) this).height;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int getOrder() {
        return this.f4053b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int h() {
        return ((ViewGroup$MarginLayoutParams) this).topMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final void i(int i9) {
        this.f4056h = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final float j() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final float k() {
        return this.f4054f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int l() {
        return ((ViewGroup$MarginLayoutParams) this).rightMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int m() {
        return this.f4056h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final boolean n() {
        return this.f4059k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int o() {
        return this.f4058j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o2.b
    public final int p() {
        return this.f4057i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f4053b);
        parcel.writeFloat(this.c);
        parcel.writeFloat(this.d);
        parcel.writeInt(this.e);
        parcel.writeFloat(this.f4054f);
        parcel.writeInt(this.f4055g);
        parcel.writeInt(this.f4056h);
        parcel.writeInt(this.f4057i);
        parcel.writeInt(this.f4058j);
        parcel.writeByte(this.f4059k ? (byte) 1 : (byte) 0);
        parcel.writeInt(((ViewGroup$MarginLayoutParams) this).bottomMargin);
        parcel.writeInt(((ViewGroup$MarginLayoutParams) this).leftMargin);
        parcel.writeInt(((ViewGroup$MarginLayoutParams) this).rightMargin);
        parcel.writeInt(((ViewGroup$MarginLayoutParams) this).topMargin);
        parcel.writeInt(((ViewGroup$MarginLayoutParams) this).height);
        parcel.writeInt(((ViewGroup$MarginLayoutParams) this).width);
    }
}
