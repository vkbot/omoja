package androidx.media;

import android.os.Build$VERSION;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AudioAttributesCompat$Builder {
    final AudioAttributesImpl$Builder mBuilderImpl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioAttributesCompat$Builder(AudioAttributesCompat audioAttributesCompat) {
        if (AudioAttributesCompat.sForceLegacyBehavior) {
            this.mBuilderImpl = new AudioAttributesImplBase$Builder(audioAttributesCompat);
        } else if (Build$VERSION.SDK_INT >= 26) {
            this.mBuilderImpl = new AudioAttributesImplApi26$Builder(audioAttributesCompat.unwrap());
        } else {
            this.mBuilderImpl = new AudioAttributesImplApi21$Builder(audioAttributesCompat.unwrap());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioAttributesCompat build() {
        return new AudioAttributesCompat(this.mBuilderImpl.build());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioAttributesCompat$Builder setContentType(int i9) {
        this.mBuilderImpl.setContentType(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioAttributesCompat$Builder setFlags(int i9) {
        this.mBuilderImpl.setFlags(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioAttributesCompat$Builder setLegacyStreamType(int i9) {
        this.mBuilderImpl.setLegacyStreamType(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioAttributesCompat$Builder setUsage(int i9) {
        this.mBuilderImpl.setUsage(i9);
        return this;
    }

    public AudioAttributesCompat$Builder() {
        if (AudioAttributesCompat.sForceLegacyBehavior) {
            this.mBuilderImpl = new AudioAttributesImplBase$Builder();
        } else if (Build$VERSION.SDK_INT >= 26) {
            this.mBuilderImpl = new AudioAttributesImplApi26$Builder();
        } else {
            this.mBuilderImpl = new AudioAttributesImplApi21$Builder();
        }
    }
}
