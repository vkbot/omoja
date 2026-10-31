package android.support.v4.media.session;

import ai.onnxruntime.AbstractC0074a;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0101g(4);

    /* JADX INFO: renamed from: b */
    public final int f208b;

    /* JADX INFO: renamed from: c */
    public final long f209c;

    /* JADX INFO: renamed from: d */
    public final long f210d;

    /* JADX INFO: renamed from: e */
    public final float f211e;

    /* JADX INFO: renamed from: f */
    public final long f212f;

    /* JADX INFO: renamed from: g */
    public final int f213g;

    /* JADX INFO: renamed from: h */
    public final CharSequence f214h;

    /* JADX INFO: renamed from: i */
    public final long f215i;

    /* JADX INFO: renamed from: j */
    public final ArrayList f216j;

    /* JADX INFO: renamed from: k */
    public final long f217k;

    /* JADX INFO: renamed from: l */
    public final Bundle f218l;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0103i();

        /* JADX INFO: renamed from: b */
        public final String f219b;

        /* JADX INFO: renamed from: c */
        public final CharSequence f220c;

        /* JADX INFO: renamed from: d */
        public final int f221d;

        /* JADX INFO: renamed from: e */
        public final Bundle f222e;

        public CustomAction(Parcel parcel) {
            this.f219b = parcel.readString();
            this.f220c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f221d = parcel.readInt();
            this.f222e = parcel.readBundle(AbstractC0102h.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f220c) + ", mIcon=" + this.f221d + ", mExtras=" + this.f222e;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f219b);
            TextUtils.writeToParcel(this.f220c, parcel, i10);
            parcel.writeInt(this.f221d);
            parcel.writeBundle(this.f222e);
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f208b = parcel.readInt();
        this.f209c = parcel.readLong();
        this.f211e = parcel.readFloat();
        this.f215i = parcel.readLong();
        this.f210d = parcel.readLong();
        this.f212f = parcel.readLong();
        this.f214h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f216j = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f217k = parcel.readLong();
        this.f218l = parcel.readBundle(AbstractC0102h.class.getClassLoader());
        this.f213g = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {state=");
        sb.append(this.f208b);
        sb.append(", position=");
        sb.append(this.f209c);
        sb.append(", buffered position=");
        sb.append(this.f210d);
        sb.append(", speed=");
        sb.append(this.f211e);
        sb.append(", updated=");
        sb.append(this.f215i);
        sb.append(", actions=");
        sb.append(this.f212f);
        sb.append(", error code=");
        sb.append(this.f213g);
        sb.append(", error message=");
        sb.append(this.f214h);
        sb.append(", custom actions=");
        sb.append(this.f216j);
        sb.append(", active item id=");
        return AbstractC0074a.m163n(sb, this.f217k, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f208b);
        parcel.writeLong(this.f209c);
        parcel.writeFloat(this.f211e);
        parcel.writeLong(this.f215i);
        parcel.writeLong(this.f210d);
        parcel.writeLong(this.f212f);
        TextUtils.writeToParcel(this.f214h, parcel, i10);
        parcel.writeTypedList(this.f216j);
        parcel.writeLong(this.f217k);
        parcel.writeBundle(this.f218l);
        parcel.writeInt(this.f213g);
    }
}
