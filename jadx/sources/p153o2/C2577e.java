package p153o2;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0089g;
import android.view.ViewGroup;

/* JADX INFO: renamed from: o2.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2577e extends ViewGroup.MarginLayoutParams implements InterfaceC2574b {
    public static final Parcelable.Creator<C2577e> CREATOR = new C0089g(10);

    /* JADX INFO: renamed from: b */
    public int f7159b;

    /* JADX INFO: renamed from: c */
    public float f7160c;

    /* JADX INFO: renamed from: d */
    public float f7161d;

    /* JADX INFO: renamed from: e */
    public int f7162e;

    /* JADX INFO: renamed from: f */
    public float f7163f;

    /* JADX INFO: renamed from: g */
    public int f7164g;

    /* JADX INFO: renamed from: h */
    public int f7165h;

    /* JADX INFO: renamed from: i */
    public int f7166i;

    /* JADX INFO: renamed from: j */
    public int f7167j;

    /* JADX INFO: renamed from: k */
    public boolean f7168k;

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: a */
    public final int mo4004a() {
        return this.f7162e;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: b */
    public final float mo4005b() {
        return this.f7161d;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: c */
    public final int mo4006c() {
        return this.f7164g;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: d */
    public final int mo4007d() {
        return ((ViewGroup.MarginLayoutParams) this).width;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: e */
    public final void mo4008e(int i10) {
        this.f7164g = i10;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: f */
    public final int mo4009f() {
        return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: g */
    public final int mo4010g() {
        return ((ViewGroup.MarginLayoutParams) this).leftMargin;
    }

    @Override // p153o2.InterfaceC2574b
    public final int getHeight() {
        return ((ViewGroup.MarginLayoutParams) this).height;
    }

    @Override // p153o2.InterfaceC2574b
    public final int getOrder() {
        return this.f7159b;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: h */
    public final int mo4011h() {
        return ((ViewGroup.MarginLayoutParams) this).topMargin;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: i */
    public final void mo4012i(int i10) {
        this.f7165h = i10;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: j */
    public final float mo4013j() {
        return this.f7160c;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: k */
    public final float mo4014k() {
        return this.f7163f;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: l */
    public final int mo4015l() {
        return ((ViewGroup.MarginLayoutParams) this).rightMargin;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: m */
    public final int mo4016m() {
        return this.f7165h;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: n */
    public final boolean mo4017n() {
        return this.f7168k;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: o */
    public final int mo4018o() {
        return this.f7167j;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: p */
    public final int mo4019p() {
        return this.f7166i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f7159b);
        parcel.writeFloat(this.f7160c);
        parcel.writeFloat(this.f7161d);
        parcel.writeInt(this.f7162e);
        parcel.writeFloat(this.f7163f);
        parcel.writeInt(this.f7164g);
        parcel.writeInt(this.f7165h);
        parcel.writeInt(this.f7166i);
        parcel.writeInt(this.f7167j);
        parcel.writeByte(this.f7168k ? (byte) 1 : (byte) 0);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
    }
}
