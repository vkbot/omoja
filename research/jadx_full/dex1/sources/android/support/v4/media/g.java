package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.core.view.ViewCompat;
import com.google.android.material.datepicker.r;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g implements Parcelable$Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f78a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(int i9) {
        this.f78a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public final Object createFromParcel(Parcel parcel) {
        Bundle bundle = null;
        b.b bVar = null;
        switch (this.f78a) {
            case 0:
                return new MediaBrowserCompat$MediaItem(parcel);
            case 1:
                Object objCreateFromParcel = MediaDescription.CREATOR.createFromParcel(parcel);
                if (objCreateFromParcel == null) {
                    return null;
                }
                MediaDescription mediaDescription = (MediaDescription) objCreateFromParcel;
                String strG = j.g(mediaDescription);
                CharSequence charSequenceI = j.i(mediaDescription);
                CharSequence charSequenceH = j.h(mediaDescription);
                CharSequence charSequenceC = j.c(mediaDescription);
                Bitmap bitmapE = j.e(mediaDescription);
                Uri uriF = j.f(mediaDescription);
                Bundle bundleD = j.d(mediaDescription);
                if (bundleD != null) {
                    bundleD = android.support.v4.media.session.h.b(bundleD);
                }
                Uri uriA = bundleD != null ? (Uri) bundleD.getParcelable("android.support.v4.media.description.MEDIA_URI") : null;
                if (uriA == null) {
                    bundle = bundleD;
                } else if (!bundleD.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || bundleD.size() != 2) {
                    bundleD.remove("android.support.v4.media.description.MEDIA_URI");
                    bundleD.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                    bundle = bundleD;
                }
                if (uriA == null) {
                    uriA = k.a(mediaDescription);
                }
                MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(strG, charSequenceI, charSequenceH, charSequenceC, bitmapE, uriF, bundle, uriA);
                mediaDescriptionCompat.f67j = mediaDescription;
                return mediaDescriptionCompat;
            case 2:
                return new MediaMetadataCompat(parcel);
            case 3:
                return new RatingCompat(parcel.readInt(), parcel.readFloat());
            case 4:
                b.d dVar = new b.d();
                IBinder strongBinder = parcel.readStrongBinder();
                int i9 = b.c.d;
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(b.b.f225b);
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b.b)) {
                        b.a aVar = new b.a();
                        aVar.c = strongBinder;
                        bVar = aVar;
                    } else {
                        bVar = (b.b) iInterfaceQueryLocalInterface;
                    }
                }
                dVar.f226b = bVar;
                return dVar;
            case 5:
                return new com.google.android.material.datepicker.b((r) parcel.readParcelable(r.class.getClassLoader()), (r) parcel.readParcelable(r.class.getClassLoader()), (com.google.android.material.datepicker.d) parcel.readParcelable(com.google.android.material.datepicker.d.class.getClassLoader()), (r) parcel.readParcelable(r.class.getClassLoader()), parcel.readInt());
            case 6:
                return new com.google.android.material.datepicker.d(parcel.readLong());
            case 7:
                return r.q(parcel.readInt(), parcel.readInt());
            case 8:
                d3.b bVar2 = new d3.b();
                bVar2.f1712j = 255;
                bVar2.f1714l = -2;
                bVar2.f1715m = -2;
                bVar2.f1716n = -2;
                bVar2.f1721u = Boolean.TRUE;
                bVar2.f1707b = parcel.readInt();
                bVar2.c = (Integer) parcel.readSerializable();
                bVar2.d = (Integer) parcel.readSerializable();
                bVar2.e = (Integer) parcel.readSerializable();
                bVar2.f1708f = (Integer) parcel.readSerializable();
                bVar2.f1709g = (Integer) parcel.readSerializable();
                bVar2.f1710h = (Integer) parcel.readSerializable();
                bVar2.f1711i = (Integer) parcel.readSerializable();
                bVar2.f1712j = parcel.readInt();
                bVar2.f1713k = parcel.readString();
                bVar2.f1714l = parcel.readInt();
                bVar2.f1715m = parcel.readInt();
                bVar2.f1716n = parcel.readInt();
                bVar2.f1718p = parcel.readString();
                bVar2.f1719q = parcel.readString();
                bVar2.r = parcel.readInt();
                bVar2.t = (Integer) parcel.readSerializable();
                bVar2.f1722v = (Integer) parcel.readSerializable();
                bVar2.w = (Integer) parcel.readSerializable();
                bVar2.f1723x = (Integer) parcel.readSerializable();
                bVar2.f1724y = (Integer) parcel.readSerializable();
                bVar2.f1725z = (Integer) parcel.readSerializable();
                bVar2.A = (Integer) parcel.readSerializable();
                bVar2.D = (Integer) parcel.readSerializable();
                bVar2.B = (Integer) parcel.readSerializable();
                bVar2.C = (Integer) parcel.readSerializable();
                bVar2.f1721u = (Boolean) parcel.readSerializable();
                bVar2.f1717o = (Locale) parcel.readSerializable();
                bVar2.E = (Boolean) parcel.readSerializable();
                bVar2.F = (Integer) parcel.readSerializable();
                return bVar2;
            case 9:
                k3.b bVar3 = new k3.b(parcel);
                bVar3.f3172b = ((Integer) parcel.readValue(k3.b.class.getClassLoader())).intValue();
                return bVar3;
            case 10:
                o2.e eVar = new o2.e(0, 0);
                eVar.f4053b = 1;
                eVar.c = 0.0f;
                eVar.d = 1.0f;
                eVar.e = -1;
                eVar.f4054f = -1.0f;
                eVar.f4055g = -1;
                eVar.f4056h = -1;
                eVar.f4057i = ViewCompat.MEASURED_SIZE_MASK;
                eVar.f4058j = ViewCompat.MEASURED_SIZE_MASK;
                eVar.f4053b = parcel.readInt();
                eVar.c = parcel.readFloat();
                eVar.d = parcel.readFloat();
                eVar.e = parcel.readInt();
                eVar.f4054f = parcel.readFloat();
                eVar.f4055g = parcel.readInt();
                eVar.f4056h = parcel.readInt();
                eVar.f4057i = parcel.readInt();
                eVar.f4058j = parcel.readInt();
                eVar.f4059k = parcel.readByte() != 0;
                ((ViewGroup$MarginLayoutParams) eVar).bottomMargin = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) eVar).leftMargin = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) eVar).rightMargin = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) eVar).topMargin = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) eVar).height = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) eVar).width = parcel.readInt();
                return eVar;
            case 11:
                o2.g gVar = new o2.g(-2, -2);
                gVar.f4065b = 0.0f;
                gVar.c = 1.0f;
                gVar.d = -1;
                gVar.e = -1.0f;
                gVar.f4068h = ViewCompat.MEASURED_SIZE_MASK;
                gVar.f4069i = ViewCompat.MEASURED_SIZE_MASK;
                gVar.f4065b = parcel.readFloat();
                gVar.c = parcel.readFloat();
                gVar.d = parcel.readInt();
                gVar.e = parcel.readFloat();
                gVar.f4066f = parcel.readInt();
                gVar.f4067g = parcel.readInt();
                gVar.f4068h = parcel.readInt();
                gVar.f4069i = parcel.readInt();
                gVar.f4070j = parcel.readByte() != 0;
                ((ViewGroup$MarginLayoutParams) gVar).bottomMargin = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) gVar).leftMargin = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) gVar).rightMargin = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) gVar).topMargin = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) gVar).height = parcel.readInt();
                ((ViewGroup$MarginLayoutParams) gVar).width = parcel.readInt();
                return gVar;
            case 12:
                o2.i iVar = new o2.i();
                iVar.f4077b = parcel.readInt();
                iVar.c = parcel.readInt();
                return iVar;
            default:
                z1.d dVar2 = new z1.d(parcel);
                dVar2.f6156b = parcel.readFloat();
                dVar2.c = parcel.readFloat();
                dVar2.f6160i = parcel.readInt() != 0;
                dVar2.d = parcel.readFloat();
                dVar2.e = parcel.readInt();
                dVar2.f6157f = parcel.readInt();
                dVar2.f6158g = parcel.readInt();
                dVar2.f6159h = parcel.readInt();
                dVar2.f6161j = parcel.readInt() != 0;
                dVar2.f6162k = parcel.readInt() != 0;
                dVar2.f6163l = parcel.readInt() != 0;
                dVar2.f6164m = parcel.readInt() != 0;
                dVar2.f6165n = parcel.readInt() != 0;
                dVar2.f6166o = parcel.readInt() != 0;
                return dVar2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable$Creator
    public final Object[] newArray(int i9) {
        switch (this.f78a) {
            case 0:
                return new MediaBrowserCompat$MediaItem[i9];
            case 1:
                return new MediaDescriptionCompat[i9];
            case 2:
                return new MediaMetadataCompat[i9];
            case 3:
                return new RatingCompat[i9];
            case 4:
                return new b.d[i9];
            case 5:
                return new com.google.android.material.datepicker.b[i9];
            case 6:
                return new com.google.android.material.datepicker.d[i9];
            case 7:
                return new r[i9];
            case 8:
                return new d3.b[i9];
            case 9:
                return new k3.b[i9];
            case 10:
                return new o2.e[i9];
            case 11:
                return new o2.g[i9];
            case 12:
                return new o2.i[i9];
            default:
                return new z1.d[i9];
        }
    }
}
