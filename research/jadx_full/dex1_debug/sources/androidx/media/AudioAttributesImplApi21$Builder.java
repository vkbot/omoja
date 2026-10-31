package androidx.media;

import android.media.AudioAttributes;
import android.media.AudioAttributes$Builder;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class AudioAttributesImplApi21$Builder implements AudioAttributesImpl$Builder {
    final AudioAttributes$Builder mFwkBuilder;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioAttributesImplApi21$Builder(Object obj) {
        this.mFwkBuilder = new AudioAttributes$Builder((AudioAttributes) obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImpl build() {
        return new AudioAttributesImplApi21(this.mFwkBuilder.build());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImplApi21$Builder setContentType(int i9) {
        this.mFwkBuilder.setContentType(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImplApi21$Builder setFlags(int i9) {
        this.mFwkBuilder.setFlags(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImplApi21$Builder setLegacyStreamType(int i9) {
        this.mFwkBuilder.setLegacyStreamType(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImplApi21$Builder setUsage(int i9) {
        if (i9 == 16) {
            i9 = 12;
        }
        this.mFwkBuilder.setUsage(i9);
        return this;
    }

    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImpl$Builder setContentType(int i9) {
        return setContentType(i9);
    }

    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImpl$Builder setFlags(int i9) {
        return setFlags(i9);
    }

    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImpl$Builder setLegacyStreamType(int i9) {
        return setLegacyStreamType(i9);
    }

    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImpl$Builder setUsage(int i9) {
        return setUsage(i9);
    }

    public AudioAttributesImplApi21$Builder() {
        this.mFwkBuilder = new AudioAttributes$Builder();
    }
}
