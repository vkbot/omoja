package androidx.media;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class AudioAttributesImplApi26$Builder extends AudioAttributesImplApi21$Builder {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioAttributesImplApi26$Builder() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImplApi21$Builder, androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImpl build() {
        return new AudioAttributesImplApi26(this.mFwkBuilder.build());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImplApi21$Builder, androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImplApi26$Builder setUsage(int i9) {
        this.mFwkBuilder.setUsage(i9);
        return this;
    }

    public AudioAttributesImplApi26$Builder(Object obj) {
        super(obj);
    }

    @Override // androidx.media.AudioAttributesImplApi21$Builder, androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImplApi21$Builder setUsage(int i9) {
        return setUsage(i9);
    }

    @Override // androidx.media.AudioAttributesImplApi21$Builder, androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImpl$Builder setUsage(int i9) {
        return setUsage(i9);
    }
}
