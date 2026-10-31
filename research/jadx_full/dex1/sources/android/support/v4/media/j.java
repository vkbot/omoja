package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.media.MediaDescription$Builder;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class j {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static MediaDescription a(MediaDescription$Builder mediaDescription$Builder) {
        return mediaDescription$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static MediaDescription$Builder b() {
        return new MediaDescription$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @DoNotInline
    public static CharSequence c(MediaDescription mediaDescription) {
        return mediaDescription.getDescription();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @DoNotInline
    public static Bundle d(MediaDescription mediaDescription) {
        return mediaDescription.getExtras();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @DoNotInline
    public static Bitmap e(MediaDescription mediaDescription) {
        return mediaDescription.getIconBitmap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @DoNotInline
    public static Uri f(MediaDescription mediaDescription) {
        return mediaDescription.getIconUri();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @DoNotInline
    public static String g(MediaDescription mediaDescription) {
        return mediaDescription.getMediaId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @DoNotInline
    public static CharSequence h(MediaDescription mediaDescription) {
        return mediaDescription.getSubtitle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @DoNotInline
    public static CharSequence i(MediaDescription mediaDescription) {
        return mediaDescription.getTitle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void j(MediaDescription$Builder mediaDescription$Builder, @Nullable CharSequence charSequence) {
        mediaDescription$Builder.setDescription(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void k(MediaDescription$Builder mediaDescription$Builder, @Nullable Bundle bundle) {
        mediaDescription$Builder.setExtras(bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void l(MediaDescription$Builder mediaDescription$Builder, @Nullable Bitmap bitmap) {
        mediaDescription$Builder.setIconBitmap(bitmap);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void m(MediaDescription$Builder mediaDescription$Builder, @Nullable Uri uri) {
        mediaDescription$Builder.setIconUri(uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void n(MediaDescription$Builder mediaDescription$Builder, @Nullable String str) {
        mediaDescription$Builder.setMediaId(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void o(MediaDescription$Builder mediaDescription$Builder, @Nullable CharSequence charSequence) {
        mediaDescription$Builder.setSubtitle(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void p(MediaDescription$Builder mediaDescription$Builder, @Nullable CharSequence charSequence) {
        mediaDescription$Builder.setTitle(charSequence);
    }
}
