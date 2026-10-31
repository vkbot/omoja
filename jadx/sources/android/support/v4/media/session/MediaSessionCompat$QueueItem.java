package android.support.v4.media.session;

import ai.onnxruntime.AbstractC0074a;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class MediaSessionCompat$QueueItem implements Parcelable {
    public static final Parcelable.Creator<MediaSessionCompat$QueueItem> CREATOR = new C0101g(1);

    /* JADX INFO: renamed from: b */
    public final MediaDescriptionCompat f196b;

    /* JADX INFO: renamed from: c */
    public final long f197c;

    public MediaSessionCompat$QueueItem(Parcel parcel) {
        this.f196b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        this.f197c = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaSession.QueueItem {Description=");
        sb.append(this.f196b);
        sb.append(", Id=");
        return AbstractC0074a.m163n(sb, this.f197c, " }");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        this.f196b.writeToParcel(parcel, i10);
        parcel.writeLong(this.f197c);
    }
}
