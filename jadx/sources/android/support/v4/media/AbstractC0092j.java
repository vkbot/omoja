package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;

/* JADX INFO: renamed from: android.support.v4.media.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0092j {
    @DoNotInline
    /* JADX INFO: renamed from: a */
    public static MediaDescription m256a(MediaDescription.Builder builder) {
        return builder.build();
    }

    @DoNotInline
    /* JADX INFO: renamed from: b */
    public static MediaDescription.Builder m257b() {
        return new MediaDescription.Builder();
    }

    @Nullable
    @DoNotInline
    /* JADX INFO: renamed from: c */
    public static CharSequence m258c(MediaDescription mediaDescription) {
        return mediaDescription.getDescription();
    }

    @Nullable
    @DoNotInline
    /* JADX INFO: renamed from: d */
    public static Bundle m259d(MediaDescription mediaDescription) {
        return mediaDescription.getExtras();
    }

    @Nullable
    @DoNotInline
    /* JADX INFO: renamed from: e */
    public static Bitmap m260e(MediaDescription mediaDescription) {
        return mediaDescription.getIconBitmap();
    }

    @Nullable
    @DoNotInline
    /* JADX INFO: renamed from: f */
    public static Uri m261f(MediaDescription mediaDescription) {
        return mediaDescription.getIconUri();
    }

    @Nullable
    @DoNotInline
    /* JADX INFO: renamed from: g */
    public static String m262g(MediaDescription mediaDescription) {
        return mediaDescription.getMediaId();
    }

    @Nullable
    @DoNotInline
    /* JADX INFO: renamed from: h */
    public static CharSequence m263h(MediaDescription mediaDescription) {
        return mediaDescription.getSubtitle();
    }

    @Nullable
    @DoNotInline
    /* JADX INFO: renamed from: i */
    public static CharSequence m264i(MediaDescription mediaDescription) {
        return mediaDescription.getTitle();
    }

    @DoNotInline
    /* JADX INFO: renamed from: j */
    public static void m265j(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
        builder.setDescription(charSequence);
    }

    @DoNotInline
    /* JADX INFO: renamed from: k */
    public static void m266k(MediaDescription.Builder builder, @Nullable Bundle bundle) {
        builder.setExtras(bundle);
    }

    @DoNotInline
    /* JADX INFO: renamed from: l */
    public static void m267l(MediaDescription.Builder builder, @Nullable Bitmap bitmap) {
        builder.setIconBitmap(bitmap);
    }

    @DoNotInline
    /* JADX INFO: renamed from: m */
    public static void m268m(MediaDescription.Builder builder, @Nullable Uri uri) {
        builder.setIconUri(uri);
    }

    @DoNotInline
    /* JADX INFO: renamed from: n */
    public static void m269n(MediaDescription.Builder builder, @Nullable String str) {
        builder.setMediaId(str);
    }

    @DoNotInline
    /* JADX INFO: renamed from: o */
    public static void m270o(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
        builder.setSubtitle(charSequence);
    }

    @DoNotInline
    /* JADX INFO: renamed from: p */
    public static void m271p(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
        builder.setTitle(charSequence);
    }
}
