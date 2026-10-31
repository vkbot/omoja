package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable$Creator<PlaybackStateCompat> CREATOR = new g(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f88b;
    public final long c;
    public final long d;
    public final float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f89f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f90g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CharSequence f91h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f92i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f93j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f94k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Bundle f95l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PlaybackStateCompat(Parcel parcel) {
        this.f88b = parcel.readInt();
        this.c = parcel.readLong();
        this.e = parcel.readFloat();
        this.f92i = parcel.readLong();
        this.d = parcel.readLong();
        this.f89f = parcel.readLong();
        this.f91h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f93j = parcel.createTypedArrayList(PlaybackStateCompat$CustomAction.CREATOR);
        this.f94k = parcel.readLong();
        this.f95l = parcel.readBundle(h.class.getClassLoader());
        this.f90g = parcel.readInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {state=");
        sb.append(this.f88b);
        sb.append(", position=");
        sb.append(this.c);
        sb.append(", buffered position=");
        sb.append(this.d);
        sb.append(", speed=");
        sb.append(this.e);
        sb.append(", updated=");
        sb.append(this.f92i);
        sb.append(", actions=");
        sb.append(this.f89f);
        sb.append(", error code=");
        sb.append(this.f90g);
        sb.append(", error message=");
        sb.append(this.f91h);
        sb.append(", custom actions=");
        sb.append(this.f93j);
        sb.append(", active item id=");
        return ai.onnxruntime.a.n(sb, this.f94k, "}");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f88b);
        parcel.writeLong(this.c);
        parcel.writeFloat(this.e);
        parcel.writeLong(this.f92i);
        parcel.writeLong(this.d);
        parcel.writeLong(this.f89f);
        TextUtils.writeToParcel(this.f91h, parcel, i9);
        parcel.writeTypedList(this.f93j);
        parcel.writeLong(this.f94k);
        parcel.writeBundle(this.f95l);
        parcel.writeInt(this.f90g);
    }
}
