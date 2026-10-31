package androidx.core.location;

import android.location.GnssStatus;
import android.location.GpsStatus;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.media.utils.MediaConstants;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class GnssStatusCompat {
    public static final int CONSTELLATION_BEIDOU = 5;
    public static final int CONSTELLATION_GALILEO = 6;
    public static final int CONSTELLATION_GLONASS = 3;
    public static final int CONSTELLATION_GPS = 1;
    public static final int CONSTELLATION_IRNSS = 7;
    public static final int CONSTELLATION_QZSS = 4;
    public static final int CONSTELLATION_SBAS = 2;
    public static final int CONSTELLATION_UNKNOWN = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(24)
    public static GnssStatusCompat wrap(@NonNull GnssStatus gnssStatus) {
        return new GnssStatusWrapper(gnssStatus);
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    public abstract float getAzimuthDegrees(@IntRange(from = ULong.MIN_VALUE) int i9);

    @FloatRange(from = 0.0d, to = 63.0d)
    public abstract float getBasebandCn0DbHz(@IntRange(from = ULong.MIN_VALUE) int i9);

    @FloatRange(from = 0.0d)
    public abstract float getCarrierFrequencyHz(@IntRange(from = ULong.MIN_VALUE) int i9);

    @FloatRange(from = 0.0d, to = 63.0d)
    public abstract float getCn0DbHz(@IntRange(from = ULong.MIN_VALUE) int i9);

    public abstract int getConstellationType(@IntRange(from = ULong.MIN_VALUE) int i9);

    @FloatRange(from = -90.0d, to = 90.0d)
    public abstract float getElevationDegrees(@IntRange(from = ULong.MIN_VALUE) int i9);

    @IntRange(from = ULong.MIN_VALUE)
    public abstract int getSatelliteCount();

    @IntRange(from = MediaConstants.METADATA_VALUE_ATTRIBUTE_PRESENT, to = 200)
    public abstract int getSvid(@IntRange(from = ULong.MIN_VALUE) int i9);

    public abstract boolean hasAlmanacData(@IntRange(from = ULong.MIN_VALUE) int i9);

    public abstract boolean hasBasebandCn0DbHz(@IntRange(from = ULong.MIN_VALUE) int i9);

    public abstract boolean hasCarrierFrequencyHz(@IntRange(from = ULong.MIN_VALUE) int i9);

    public abstract boolean hasEphemerisData(@IntRange(from = ULong.MIN_VALUE) int i9);

    public abstract boolean usedInFix(@IntRange(from = ULong.MIN_VALUE) int i9);

    @NonNull
    public static GnssStatusCompat wrap(@NonNull GpsStatus gpsStatus) {
        return new GpsStatusWrapper(gpsStatus);
    }
}
