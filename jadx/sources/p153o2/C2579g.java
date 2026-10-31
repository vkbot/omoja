package p153o2;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0089g;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: o2.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2579g extends RecyclerView.LayoutParams implements InterfaceC2574b {
    public static final Parcelable.Creator<C2579g> CREATOR = new C0089g(11);

    /* JADX INFO: renamed from: b */
    public float f7177b;

    /* JADX INFO: renamed from: c */
    public float f7178c;

    /* JADX INFO: renamed from: d */
    public int f7179d;

    /* JADX INFO: renamed from: e */
    public float f7180e;

    /* JADX INFO: renamed from: f */
    public int f7181f;

    /* JADX INFO: renamed from: g */
    public int f7182g;

    /* JADX INFO: renamed from: h */
    public int f7183h;

    /* JADX INFO: renamed from: i */
    public int f7184i;

    /* JADX INFO: renamed from: j */
    public boolean f7185j;

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: a */
    public final int mo4004a() {
        return this.f7179d;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: b */
    public final float mo4005b() {
        return this.f7178c;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: c */
    public final int mo4006c() {
        return this.f7181f;
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
        this.f7181f = i10;
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
        return 1;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: h */
    public final int mo4011h() {
        return ((ViewGroup.MarginLayoutParams) this).topMargin;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: i */
    public final void mo4012i(int i10) {
        this.f7182g = i10;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: j */
    public final float mo4013j() {
        return this.f7177b;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: k */
    public final float mo4014k() {
        return this.f7180e;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: l */
    public final int mo4015l() {
        return ((ViewGroup.MarginLayoutParams) this).rightMargin;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: m */
    public final int mo4016m() {
        return this.f7182g;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: n */
    public final boolean mo4017n() {
        return this.f7185j;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: o */
    public final int mo4018o() {
        return this.f7184i;
    }

    @Override // p153o2.InterfaceC2574b
    /* JADX INFO: renamed from: p */
    public final int mo4019p() {
        return this.f7183h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeFloat(this.f7177b);
        parcel.writeFloat(this.f7178c);
        parcel.writeInt(this.f7179d);
        parcel.writeFloat(this.f7180e);
        parcel.writeInt(this.f7181f);
        parcel.writeInt(this.f7182g);
        parcel.writeInt(this.f7183h);
        parcel.writeInt(this.f7184i);
        parcel.writeByte(this.f7185j ? (byte) 1 : (byte) 0);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
    }
}
