package android.support.v4.media;

import android.media.MediaDescription;
import android.net.Uri;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;

/* JADX INFO: renamed from: android.support.v4.media.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0093k {
    @Nullable
    @DoNotInline
    /* JADX INFO: renamed from: a */
    public static Uri m272a(MediaDescription mediaDescription) {
        return mediaDescription.getMediaUri();
    }

    @DoNotInline
    /* JADX INFO: renamed from: b */
    public static void m273b(MediaDescription.Builder builder, @Nullable Uri uri) {
        builder.setMediaUri(uri);
    }
}
