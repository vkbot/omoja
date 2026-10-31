package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.AbstractC0102h;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.google.android.material.datepicker.C1089b;
import com.google.android.material.datepicker.C1093d;
import com.google.android.material.datepicker.C1107r;
import java.util.Locale;
import p014b.BinderC0856c;
import p014b.C0854a;
import p014b.C0857d;
import p014b.InterfaceC0855b;
import p040d3.C1265b;
import p112k3.C2040b;
import p153o2.C2577e;
import p153o2.C2579g;
import p153o2.C2581i;
import p256z1.C3696d;

/* JADX INFO: renamed from: android.support.v4.media.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0089g implements Parcelable.Creator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f188a;

    public /* synthetic */ C0089g(int i10) {
        this.f188a = i10;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        Bundle bundle = null;
        InterfaceC0855b interfaceC0855b = null;
        switch (this.f188a) {
            case 0:
                return new MediaBrowserCompat$MediaItem(parcel);
            case 1:
                Object objCreateFromParcel = MediaDescription.CREATOR.createFromParcel(parcel);
                if (objCreateFromParcel == null) {
                    return null;
                }
                MediaDescription mediaDescription = (MediaDescription) objCreateFromParcel;
                String strM262g = AbstractC0092j.m262g(mediaDescription);
                CharSequence charSequenceM264i = AbstractC0092j.m264i(mediaDescription);
                CharSequence charSequenceM263h = AbstractC0092j.m263h(mediaDescription);
                CharSequence charSequenceM258c = AbstractC0092j.m258c(mediaDescription);
                Bitmap bitmapM260e = AbstractC0092j.m260e(mediaDescription);
                Uri uriM261f = AbstractC0092j.m261f(mediaDescription);
                Bundle bundleM259d = AbstractC0092j.m259d(mediaDescription);
                if (bundleM259d != null) {
                    bundleM259d = AbstractC0102h.m277b(bundleM259d);
                }
                Uri uriM272a = bundleM259d != null ? (Uri) bundleM259d.getParcelable("android.support.v4.media.description.MEDIA_URI") : null;
                if (uriM272a == null) {
                    bundle = bundleM259d;
                } else if (!bundleM259d.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || bundleM259d.size() != 2) {
                    bundleM259d.remove("android.support.v4.media.description.MEDIA_URI");
                    bundleM259d.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                    bundle = bundleM259d;
                }
                if (uriM272a == null) {
                    uriM272a = AbstractC0093k.m272a(mediaDescription);
                }
                MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(strM262g, charSequenceM264i, charSequenceM263h, charSequenceM258c, bitmapM260e, uriM261f, bundle, uriM272a);
                mediaDescriptionCompat.f173j = mediaDescription;
                return mediaDescriptionCompat;
            case 2:
                return new MediaMetadataCompat(parcel);
            case 3:
                return new RatingCompat(parcel.readInt(), parcel.readFloat());
            case 4:
                C0857d c0857d = new C0857d();
                IBinder strongBinder = parcel.readStrongBinder();
                int i10 = BinderC0856c.f534d;
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(InterfaceC0855b.f533b);
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0855b)) {
                        C0854a c0854a = new C0854a();
                        c0854a.f532c = strongBinder;
                        interfaceC0855b = c0854a;
                    } else {
                        interfaceC0855b = (InterfaceC0855b) iInterfaceQueryLocalInterface;
                    }
                }
                c0857d.f536b = interfaceC0855b;
                return c0857d;
            case 5:
                return new C1089b((C1107r) parcel.readParcelable(C1107r.class.getClassLoader()), (C1107r) parcel.readParcelable(C1107r.class.getClassLoader()), (C1093d) parcel.readParcelable(C1093d.class.getClassLoader()), (C1107r) parcel.readParcelable(C1107r.class.getClassLoader()), parcel.readInt());
            case 6:
                return new C1093d(parcel.readLong());
            case 7:
                return C1107r.m1807q(parcel.readInt(), parcel.readInt());
            case 8:
                C1265b c1265b = new C1265b();
                c1265b.f3010j = 255;
                c1265b.f3012l = -2;
                c1265b.f3013m = -2;
                c1265b.f3014n = -2;
                c1265b.f3021u = Boolean.TRUE;
                c1265b.f3002b = parcel.readInt();
                c1265b.f3003c = (Integer) parcel.readSerializable();
                c1265b.f3004d = (Integer) parcel.readSerializable();
                c1265b.f3005e = (Integer) parcel.readSerializable();
                c1265b.f3006f = (Integer) parcel.readSerializable();
                c1265b.f3007g = (Integer) parcel.readSerializable();
                c1265b.f3008h = (Integer) parcel.readSerializable();
                c1265b.f3009i = (Integer) parcel.readSerializable();
                c1265b.f3010j = parcel.readInt();
                c1265b.f3011k = parcel.readString();
                c1265b.f3012l = parcel.readInt();
                c1265b.f3013m = parcel.readInt();
                c1265b.f3014n = parcel.readInt();
                c1265b.f3016p = parcel.readString();
                c1265b.f3017q = parcel.readString();
                c1265b.f3018r = parcel.readInt();
                c1265b.f3020t = (Integer) parcel.readSerializable();
                c1265b.f3022v = (Integer) parcel.readSerializable();
                c1265b.f3023w = (Integer) parcel.readSerializable();
                c1265b.f3024x = (Integer) parcel.readSerializable();
                c1265b.f3025y = (Integer) parcel.readSerializable();
                c1265b.f3026z = (Integer) parcel.readSerializable();
                c1265b.f2996A = (Integer) parcel.readSerializable();
                c1265b.f2999D = (Integer) parcel.readSerializable();
                c1265b.f2997B = (Integer) parcel.readSerializable();
                c1265b.f2998C = (Integer) parcel.readSerializable();
                c1265b.f3021u = (Boolean) parcel.readSerializable();
                c1265b.f3015o = (Locale) parcel.readSerializable();
                c1265b.f3000E = (Boolean) parcel.readSerializable();
                c1265b.f3001F = (Integer) parcel.readSerializable();
                return c1265b;
            case 9:
                C2040b c2040b = new C2040b(parcel);
                c2040b.f5565b = ((Integer) parcel.readValue(C2040b.class.getClassLoader())).intValue();
                return c2040b;
            case 10:
                C2577e c2577e = new C2577e(0, 0);
                c2577e.f7159b = 1;
                c2577e.f7160c = 0.0f;
                c2577e.f7161d = 1.0f;
                c2577e.f7162e = -1;
                c2577e.f7163f = -1.0f;
                c2577e.f7164g = -1;
                c2577e.f7165h = -1;
                c2577e.f7166i = ViewCompat.MEASURED_SIZE_MASK;
                c2577e.f7167j = ViewCompat.MEASURED_SIZE_MASK;
                c2577e.f7159b = parcel.readInt();
                c2577e.f7160c = parcel.readFloat();
                c2577e.f7161d = parcel.readFloat();
                c2577e.f7162e = parcel.readInt();
                c2577e.f7163f = parcel.readFloat();
                c2577e.f7164g = parcel.readInt();
                c2577e.f7165h = parcel.readInt();
                c2577e.f7166i = parcel.readInt();
                c2577e.f7167j = parcel.readInt();
                c2577e.f7168k = parcel.readByte() != 0;
                ((ViewGroup.MarginLayoutParams) c2577e).bottomMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2577e).leftMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2577e).rightMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2577e).topMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2577e).height = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2577e).width = parcel.readInt();
                return c2577e;
            case 11:
                C2579g c2579g = new C2579g(-2, -2);
                c2579g.f7177b = 0.0f;
                c2579g.f7178c = 1.0f;
                c2579g.f7179d = -1;
                c2579g.f7180e = -1.0f;
                c2579g.f7183h = ViewCompat.MEASURED_SIZE_MASK;
                c2579g.f7184i = ViewCompat.MEASURED_SIZE_MASK;
                c2579g.f7177b = parcel.readFloat();
                c2579g.f7178c = parcel.readFloat();
                c2579g.f7179d = parcel.readInt();
                c2579g.f7180e = parcel.readFloat();
                c2579g.f7181f = parcel.readInt();
                c2579g.f7182g = parcel.readInt();
                c2579g.f7183h = parcel.readInt();
                c2579g.f7184i = parcel.readInt();
                c2579g.f7185j = parcel.readByte() != 0;
                ((ViewGroup.MarginLayoutParams) c2579g).bottomMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2579g).leftMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2579g).rightMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2579g).topMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2579g).height = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) c2579g).width = parcel.readInt();
                return c2579g;
            case 12:
                C2581i c2581i = new C2581i();
                c2581i.f7195b = parcel.readInt();
                c2581i.f7196c = parcel.readInt();
                return c2581i;
            default:
                C3696d c3696d = new C3696d(parcel);
                c3696d.f10937b = parcel.readFloat();
                c3696d.f10938c = parcel.readFloat();
                c3696d.f10944i = parcel.readInt() != 0;
                c3696d.f10939d = parcel.readFloat();
                c3696d.f10940e = parcel.readInt();
                c3696d.f10941f = parcel.readInt();
                c3696d.f10942g = parcel.readInt();
                c3696d.f10943h = parcel.readInt();
                c3696d.f10945j = parcel.readInt() != 0;
                c3696d.f10946k = parcel.readInt() != 0;
                c3696d.f10947l = parcel.readInt() != 0;
                c3696d.f10948m = parcel.readInt() != 0;
                c3696d.f10949n = parcel.readInt() != 0;
                c3696d.f10950o = parcel.readInt() != 0;
                return c3696d;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        switch (this.f188a) {
            case 0:
                return new MediaBrowserCompat$MediaItem[i10];
            case 1:
                return new MediaDescriptionCompat[i10];
            case 2:
                return new MediaMetadataCompat[i10];
            case 3:
                return new RatingCompat[i10];
            case 4:
                return new C0857d[i10];
            case 5:
                return new C1089b[i10];
            case 6:
                return new C1093d[i10];
            case 7:
                return new C1107r[i10];
            case 8:
                return new C1265b[i10];
            case 9:
                return new C2040b[i10];
            case 10:
                return new C2577e[i10];
            case 11:
                return new C2579g[i10];
            case 12:
                return new C2581i[i10];
            default:
                return new C3696d[i10];
        }
    }
}
