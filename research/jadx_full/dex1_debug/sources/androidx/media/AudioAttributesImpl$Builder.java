package androidx.media;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface AudioAttributesImpl$Builder {
    @NonNull
    AudioAttributesImpl build();

    @NonNull
    AudioAttributesImpl$Builder setContentType(int i9);

    @NonNull
    AudioAttributesImpl$Builder setFlags(int i9);

    @NonNull
    AudioAttributesImpl$Builder setLegacyStreamType(int i9);

    @NonNull
    AudioAttributesImpl$Builder setUsage(int i9);
}
