package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.media.MediaDescription$Builder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable$Creator<MediaDescriptionCompat> CREATOR = new g(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62b;
    public final CharSequence c;
    public final CharSequence d;
    public final CharSequence e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bitmap f63f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Uri f64g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bundle f65h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Uri f66i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaDescription f67j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f62b = str;
        this.c = charSequence;
        this.d = charSequence2;
        this.e = charSequence3;
        this.f63f = bitmap;
        this.f64g = uri;
        this.f65h = bundle;
        this.f66i = uri2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return ((Object) this.c) + ", " + ((Object) this.d) + ", " + ((Object) this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        MediaDescription mediaDescriptionA = this.f67j;
        if (mediaDescriptionA == null) {
            MediaDescription$Builder mediaDescription$BuilderB = j.b();
            j.n(mediaDescription$BuilderB, this.f62b);
            j.p(mediaDescription$BuilderB, this.c);
            j.o(mediaDescription$BuilderB, this.d);
            j.j(mediaDescription$BuilderB, this.e);
            j.l(mediaDescription$BuilderB, this.f63f);
            j.m(mediaDescription$BuilderB, this.f64g);
            j.k(mediaDescription$BuilderB, this.f65h);
            k.b(mediaDescription$BuilderB, this.f66i);
            mediaDescriptionA = j.a(mediaDescription$BuilderB);
            this.f67j = mediaDescriptionA;
        }
        mediaDescriptionA.writeToParcel(parcel, i9);
    }
}
