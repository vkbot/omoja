package d3;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.v4.media.g;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements Parcelable {
    public static final Parcelable$Creator<b> CREATOR = new g(8);
    public Integer A;
    public Integer B;
    public Integer C;
    public Integer D;
    public Boolean E;
    public Integer F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1707b;
    public Integer c;
    public Integer d;
    public Integer e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Integer f1708f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Integer f1709g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Integer f1710h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Integer f1711i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f1713k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Locale f1717o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f1718p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f1719q;
    public int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1720s;
    public Integer t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Integer f1722v;
    public Integer w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Integer f1723x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Integer f1724y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Integer f1725z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1712j = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1714l = -2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1715m = -2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1716n = -2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Boolean f1721u = Boolean.TRUE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f1707b);
        parcel.writeSerializable(this.c);
        parcel.writeSerializable(this.d);
        parcel.writeSerializable(this.e);
        parcel.writeSerializable(this.f1708f);
        parcel.writeSerializable(this.f1709g);
        parcel.writeSerializable(this.f1710h);
        parcel.writeSerializable(this.f1711i);
        parcel.writeInt(this.f1712j);
        parcel.writeString(this.f1713k);
        parcel.writeInt(this.f1714l);
        parcel.writeInt(this.f1715m);
        parcel.writeInt(this.f1716n);
        CharSequence charSequence = this.f1718p;
        parcel.writeString(charSequence != null ? charSequence.toString() : null);
        CharSequence charSequence2 = this.f1719q;
        parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
        parcel.writeInt(this.r);
        parcel.writeSerializable(this.t);
        parcel.writeSerializable(this.f1722v);
        parcel.writeSerializable(this.w);
        parcel.writeSerializable(this.f1723x);
        parcel.writeSerializable(this.f1724y);
        parcel.writeSerializable(this.f1725z);
        parcel.writeSerializable(this.A);
        parcel.writeSerializable(this.D);
        parcel.writeSerializable(this.B);
        parcel.writeSerializable(this.C);
        parcel.writeSerializable(this.f1721u);
        parcel.writeSerializable(this.f1717o);
        parcel.writeSerializable(this.E);
        parcel.writeSerializable(this.F);
    }
}
