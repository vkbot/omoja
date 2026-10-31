package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0089g(1);

    /* JADX INFO: renamed from: b */
    public final String f165b;

    /* JADX INFO: renamed from: c */
    public final CharSequence f166c;

    /* JADX INFO: renamed from: d */
    public final CharSequence f167d;

    /* JADX INFO: renamed from: e */
    public final CharSequence f168e;

    /* JADX INFO: renamed from: f */
    public final Bitmap f169f;

    /* JADX INFO: renamed from: g */
    public final Uri f170g;

    /* JADX INFO: renamed from: h */
    public final Bundle f171h;

    /* JADX INFO: renamed from: i */
    public final Uri f172i;

    /* JADX INFO: renamed from: j */
    public MediaDescription f173j;

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f165b = str;
        this.f166c = charSequence;
        this.f167d = charSequence2;
        this.f168e = charSequence3;
        this.f169f = bitmap;
        this.f170g = uri;
        this.f171h = bundle;
        this.f172i = uri2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f166c) + ", " + ((Object) this.f167d) + ", " + ((Object) this.f168e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        MediaDescription mediaDescriptionM256a = this.f173j;
        if (mediaDescriptionM256a == null) {
            MediaDescription.Builder builderM257b = AbstractC0092j.m257b();
            AbstractC0092j.m269n(builderM257b, this.f165b);
            AbstractC0092j.m271p(builderM257b, this.f166c);
            AbstractC0092j.m270o(builderM257b, this.f167d);
            AbstractC0092j.m265j(builderM257b, this.f168e);
            AbstractC0092j.m267l(builderM257b, this.f169f);
            AbstractC0092j.m268m(builderM257b, this.f170g);
            AbstractC0092j.m266k(builderM257b, this.f171h);
            AbstractC0093k.m273b(builderM257b, this.f172i);
            mediaDescriptionM256a = AbstractC0092j.m256a(builderM257b);
            this.f173j = mediaDescriptionM256a;
        }
        mediaDescriptionM256a.writeToParcel(parcel, i10);
    }
}
