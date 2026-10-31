package p040d3;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0089g;
import java.util.Locale;

/* JADX INFO: renamed from: d3.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1265b implements Parcelable {
    public static final Parcelable.Creator<C1265b> CREATOR = new C0089g(8);

    /* JADX INFO: renamed from: A */
    public Integer f2996A;

    /* JADX INFO: renamed from: B */
    public Integer f2997B;

    /* JADX INFO: renamed from: C */
    public Integer f2998C;

    /* JADX INFO: renamed from: D */
    public Integer f2999D;

    /* JADX INFO: renamed from: E */
    public Boolean f3000E;

    /* JADX INFO: renamed from: F */
    public Integer f3001F;

    /* JADX INFO: renamed from: b */
    public int f3002b;

    /* JADX INFO: renamed from: c */
    public Integer f3003c;

    /* JADX INFO: renamed from: d */
    public Integer f3004d;

    /* JADX INFO: renamed from: e */
    public Integer f3005e;

    /* JADX INFO: renamed from: f */
    public Integer f3006f;

    /* JADX INFO: renamed from: g */
    public Integer f3007g;

    /* JADX INFO: renamed from: h */
    public Integer f3008h;

    /* JADX INFO: renamed from: i */
    public Integer f3009i;

    /* JADX INFO: renamed from: k */
    public String f3011k;

    /* JADX INFO: renamed from: o */
    public Locale f3015o;

    /* JADX INFO: renamed from: p */
    public CharSequence f3016p;

    /* JADX INFO: renamed from: q */
    public CharSequence f3017q;

    /* JADX INFO: renamed from: r */
    public int f3018r;

    /* JADX INFO: renamed from: s */
    public int f3019s;

    /* JADX INFO: renamed from: t */
    public Integer f3020t;

    /* JADX INFO: renamed from: v */
    public Integer f3022v;

    /* JADX INFO: renamed from: w */
    public Integer f3023w;

    /* JADX INFO: renamed from: x */
    public Integer f3024x;

    /* JADX INFO: renamed from: y */
    public Integer f3025y;

    /* JADX INFO: renamed from: z */
    public Integer f3026z;

    /* JADX INFO: renamed from: j */
    public int f3010j = 255;

    /* JADX INFO: renamed from: l */
    public int f3012l = -2;

    /* JADX INFO: renamed from: m */
    public int f3013m = -2;

    /* JADX INFO: renamed from: n */
    public int f3014n = -2;

    /* JADX INFO: renamed from: u */
    public Boolean f3021u = Boolean.TRUE;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f3002b);
        parcel.writeSerializable(this.f3003c);
        parcel.writeSerializable(this.f3004d);
        parcel.writeSerializable(this.f3005e);
        parcel.writeSerializable(this.f3006f);
        parcel.writeSerializable(this.f3007g);
        parcel.writeSerializable(this.f3008h);
        parcel.writeSerializable(this.f3009i);
        parcel.writeInt(this.f3010j);
        parcel.writeString(this.f3011k);
        parcel.writeInt(this.f3012l);
        parcel.writeInt(this.f3013m);
        parcel.writeInt(this.f3014n);
        CharSequence charSequence = this.f3016p;
        parcel.writeString(charSequence != null ? charSequence.toString() : null);
        CharSequence charSequence2 = this.f3017q;
        parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
        parcel.writeInt(this.f3018r);
        parcel.writeSerializable(this.f3020t);
        parcel.writeSerializable(this.f3022v);
        parcel.writeSerializable(this.f3023w);
        parcel.writeSerializable(this.f3024x);
        parcel.writeSerializable(this.f3025y);
        parcel.writeSerializable(this.f3026z);
        parcel.writeSerializable(this.f2996A);
        parcel.writeSerializable(this.f2999D);
        parcel.writeSerializable(this.f2997B);
        parcel.writeSerializable(this.f2998C);
        parcel.writeSerializable(this.f3021u);
        parcel.writeSerializable(this.f3015o);
        parcel.writeSerializable(this.f3000E);
        parcel.writeSerializable(this.f3001F);
    }
}
