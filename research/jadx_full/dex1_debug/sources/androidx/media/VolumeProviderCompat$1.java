package androidx.media;

import android.media.VolumeProvider;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VolumeProviderCompat$1 extends VolumeProvider {
    final /* synthetic */ VolumeProviderCompat this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VolumeProviderCompat$1(VolumeProviderCompat volumeProviderCompat, int i9, int i10, int i11, String str) {
        super(i9, i10, i11, str);
        this.this$0 = volumeProviderCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.VolumeProvider
    public void onAdjustVolume(int i9) {
        this.this$0.onAdjustVolume(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.VolumeProvider
    public void onSetVolumeTo(int i9) {
        this.this$0.onSetVolumeTo(i9);
    }
}
