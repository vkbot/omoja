package androidx.media;

import android.media.VolumeProvider;
import android.os.Build$VERSION;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;
    private VolumeProviderCompat$Callback mCallback;
    private final String mControlId;
    private final int mControlType;
    private int mCurrentVolume;
    private final int mMaxVolume;
    private VolumeProvider mVolumeProviderFwk;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public VolumeProviderCompat(int i9, int i10, int i11, @Nullable String str) {
        this.mControlType = i9;
        this.mMaxVolume = i10;
        this.mCurrentVolume = i11;
        this.mControlId = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getCurrentVolume() {
        return this.mCurrentVolume;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getMaxVolume() {
        return this.mMaxVolume;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getVolumeControl() {
        return this.mControlType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public final String getVolumeControlId() {
        return this.mControlId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object getVolumeProvider() {
        VolumeProviderCompat volumeProviderCompat;
        if (this.mVolumeProviderFwk != null) {
            volumeProviderCompat = this;
        } else if (Build$VERSION.SDK_INT >= 30) {
            volumeProviderCompat = this;
            volumeProviderCompat.mVolumeProviderFwk = new VolumeProviderCompat$1(volumeProviderCompat, this.mControlType, this.mMaxVolume, this.mCurrentVolume, this.mControlId);
        } else {
            volumeProviderCompat = this;
            volumeProviderCompat.mVolumeProviderFwk = new VolumeProviderCompat$2(this, volumeProviderCompat.mControlType, volumeProviderCompat.mMaxVolume, volumeProviderCompat.mCurrentVolume);
        }
        return volumeProviderCompat.mVolumeProviderFwk;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCallback(VolumeProviderCompat$Callback volumeProviderCompat$Callback) {
        this.mCallback = volumeProviderCompat$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCurrentVolume(int i9) {
        this.mCurrentVolume = i9;
        VolumeProviderCompat$Api21Impl.setCurrentVolume((VolumeProvider) getVolumeProvider(), i9);
        VolumeProviderCompat$Callback volumeProviderCompat$Callback = this.mCallback;
        if (volumeProviderCompat$Callback != null) {
            volumeProviderCompat$Callback.onVolumeChanged(this);
        }
    }

    public VolumeProviderCompat(int i9, int i10, int i11) {
        this(i9, i10, i11, null);
    }

    public void onAdjustVolume(int i9) {
    }

    public void onSetVolumeTo(int i9) {
    }
}
