package androidx.core.location;

import android.location.GnssStatus;
import android.os.Build$VERSION;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
@RestrictTo({RestrictTo$Scope.LIBRARY})
class GnssStatusWrapper extends GnssStatusCompat {
    private final GnssStatus mWrapped;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GnssStatusWrapper(Object obj) {
        this.mWrapped = (GnssStatus) Preconditions.checkNotNull((GnssStatus) obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GnssStatusWrapper) {
            return this.mWrapped.equals(((GnssStatusWrapper) obj).mWrapped);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public float getAzimuthDegrees(int i9) {
        return this.mWrapped.getAzimuthDegrees(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public float getBasebandCn0DbHz(int i9) {
        if (Build$VERSION.SDK_INT >= 30) {
            return GnssStatusWrapper$Api30Impl.getBasebandCn0DbHz(this.mWrapped, i9);
        }
        androidx.navigation.b.a();
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public float getCarrierFrequencyHz(int i9) {
        if (Build$VERSION.SDK_INT >= 26) {
            return GnssStatusWrapper$Api26Impl.getCarrierFrequencyHz(this.mWrapped, i9);
        }
        androidx.navigation.b.a();
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public float getCn0DbHz(int i9) {
        return this.mWrapped.getCn0DbHz(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public int getConstellationType(int i9) {
        return this.mWrapped.getConstellationType(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public float getElevationDegrees(int i9) {
        return this.mWrapped.getElevationDegrees(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public int getSatelliteCount() {
        return this.mWrapped.getSatelliteCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public int getSvid(int i9) {
        return this.mWrapped.getSvid(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasAlmanacData(int i9) {
        return this.mWrapped.hasAlmanacData(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasBasebandCn0DbHz(int i9) {
        if (Build$VERSION.SDK_INT >= 30) {
            return GnssStatusWrapper$Api30Impl.hasBasebandCn0DbHz(this.mWrapped, i9);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasCarrierFrequencyHz(int i9) {
        if (Build$VERSION.SDK_INT >= 26) {
            return GnssStatusWrapper$Api26Impl.hasCarrierFrequencyHz(this.mWrapped, i9);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasEphemerisData(int i9) {
        return this.mWrapped.hasEphemerisData(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.mWrapped.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.location.GnssStatusCompat
    public boolean usedInFix(int i9) {
        return this.mWrapped.usedInFix(i9);
    }
}
