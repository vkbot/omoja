package androidx.media;

import android.util.Log;
import androidx.annotation.NonNull;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AudioAttributesImplBase$Builder implements AudioAttributesImpl$Builder {
    private int mContentType;
    private int mFlags;
    private int mLegacyStream;
    private int mUsage;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AudioAttributesImplBase$Builder(AudioAttributesCompat audioAttributesCompat) {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
        this.mLegacyStream = -1;
        this.mUsage = audioAttributesCompat.getUsage();
        this.mContentType = audioAttributesCompat.getContentType();
        this.mFlags = audioAttributesCompat.getFlags();
        this.mLegacyStream = audioAttributesCompat.getRawLegacyStreamType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private AudioAttributesImplBase$Builder setInternalLegacyStreamType(int i9) {
        switch (i9) {
            case 0:
                this.mContentType = 1;
                break;
            case 1:
                this.mContentType = 4;
                break;
            case 2:
                this.mContentType = 4;
                break;
            case 3:
                this.mContentType = 2;
                break;
            case 4:
                this.mContentType = 4;
                break;
            case 5:
                this.mContentType = 4;
                break;
            case 6:
                this.mContentType = 1;
                this.mFlags |= 4;
                break;
            case 7:
                this.mFlags = 1 | this.mFlags;
                this.mContentType = 4;
                break;
            case 8:
                this.mContentType = 4;
                break;
            case 9:
                this.mContentType = 4;
                break;
            case 10:
                this.mContentType = 1;
                break;
            default:
                Log.e("AudioAttributesCompat", "Invalid stream type " + i9 + " for AudioAttributesCompat");
                break;
        }
        this.mUsage = AudioAttributesImplBase.usageForStreamType(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImpl build() {
        return new AudioAttributesImplBase(this.mContentType, this.mFlags, this.mUsage, this.mLegacyStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImplBase$Builder setContentType(int i9) {
        if (i9 == 0 || i9 == 1 || i9 == 2 || i9 == 3 || i9 == 4) {
            this.mContentType = i9;
            return this;
        }
        this.mContentType = 0;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImplBase$Builder setFlags(int i9) {
        this.mFlags = (i9 & 1023) | this.mFlags;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImplBase$Builder setLegacyStreamType(int i9) {
        if (i9 != 10) {
            this.mLegacyStream = i9;
            return setInternalLegacyStreamType(i9);
        }
        i.k("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public AudioAttributesImplBase$Builder setUsage(int i9) {
        switch (i9) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                this.mUsage = i9;
                break;
            case 16:
                this.mUsage = 12;
                break;
            default:
                this.mUsage = 0;
                break;
        }
        return this;
    }

    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImpl$Builder setFlags(int i9) {
        return setFlags(i9);
    }

    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImpl$Builder setUsage(int i9) {
        return setUsage(i9);
    }

    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImpl$Builder setLegacyStreamType(int i9) {
        return setLegacyStreamType(i9);
    }

    @Override // androidx.media.AudioAttributesImpl$Builder
    @NonNull
    public /* bridge */ /* synthetic */ AudioAttributesImpl$Builder setContentType(int i9) {
        return setContentType(i9);
    }

    public AudioAttributesImplBase$Builder() {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
        this.mLegacyStream = -1;
    }
}
