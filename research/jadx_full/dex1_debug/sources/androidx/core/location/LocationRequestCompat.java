package androidx.core.location;

import android.location.LocationRequest;
import android.os.Build$VERSION;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.util.TimeUtils;
import androidx.media.utils.MediaConstants;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class LocationRequestCompat {
    private static final long IMPLICIT_MIN_UPDATE_INTERVAL = -1;
    public static final long PASSIVE_INTERVAL = Long.MAX_VALUE;
    public static final int QUALITY_BALANCED_POWER_ACCURACY = 102;
    public static final int QUALITY_HIGH_ACCURACY = 100;
    public static final int QUALITY_LOW_POWER = 104;
    final long mDurationMillis;
    final long mIntervalMillis;
    final long mMaxUpdateDelayMillis;
    final int mMaxUpdates;
    final float mMinUpdateDistanceMeters;
    final long mMinUpdateIntervalMillis;
    final int mQuality;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationRequestCompat(long j9, int i9, long j10, int i10, long j11, float f8, long j12) {
        this.mIntervalMillis = j9;
        this.mQuality = i9;
        this.mMinUpdateIntervalMillis = j11;
        this.mDurationMillis = j10;
        this.mMaxUpdates = i10;
        this.mMinUpdateDistanceMeters = f8;
        this.mMaxUpdateDelayMillis = j12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequestCompat)) {
            return false;
        }
        LocationRequestCompat locationRequestCompat = (LocationRequestCompat) obj;
        return this.mQuality == locationRequestCompat.mQuality && this.mIntervalMillis == locationRequestCompat.mIntervalMillis && this.mMinUpdateIntervalMillis == locationRequestCompat.mMinUpdateIntervalMillis && this.mDurationMillis == locationRequestCompat.mDurationMillis && this.mMaxUpdates == locationRequestCompat.mMaxUpdates && Float.compare(locationRequestCompat.mMinUpdateDistanceMeters, this.mMinUpdateDistanceMeters) == 0 && this.mMaxUpdateDelayMillis == locationRequestCompat.mMaxUpdateDelayMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = MediaConstants.METADATA_VALUE_ATTRIBUTE_PRESENT)
    public long getDurationMillis() {
        return this.mDurationMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public long getIntervalMillis() {
        return this.mIntervalMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public long getMaxUpdateDelayMillis() {
        return this.mMaxUpdateDelayMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = MediaConstants.METADATA_VALUE_ATTRIBUTE_PRESENT, to = 2147483647L)
    public int getMaxUpdates() {
        return this.mMaxUpdates;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @FloatRange(from = 0.0d, to = 3.4028234663852886E38d)
    public float getMinUpdateDistanceMeters() {
        return this.mMinUpdateDistanceMeters;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public long getMinUpdateIntervalMillis() {
        long j9 = this.mMinUpdateIntervalMillis;
        return j9 == -1 ? this.mIntervalMillis : j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getQuality() {
        return this.mQuality;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        int i9 = this.mQuality * 31;
        long j9 = this.mIntervalMillis;
        int i10 = (i9 + ((int) (j9 ^ (j9 >>> 32)))) * 31;
        long j10 = this.mMinUpdateIntervalMillis;
        return i10 + ((int) (j10 ^ (j10 >>> 32)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public LocationRequest toLocationRequest(@NonNull String str) {
        return Build$VERSION.SDK_INT >= 31 ? toLocationRequest() : androidx.core.app.c.f(LocationRequestCompat$Api19Impl.toLocationRequest(this, str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String toString() {
        StringBuilder sbU = ai.onnxruntime.a.u("Request[");
        if (this.mIntervalMillis != Long.MAX_VALUE) {
            sbU.append("@");
            TimeUtils.formatDuration(this.mIntervalMillis, sbU);
            int i9 = this.mQuality;
            if (i9 == 100) {
                sbU.append(" HIGH_ACCURACY");
            } else if (i9 == 102) {
                sbU.append(" BALANCED");
            } else if (i9 == 104) {
                sbU.append(" LOW_POWER");
            }
        } else {
            sbU.append("PASSIVE");
        }
        if (this.mDurationMillis != Long.MAX_VALUE) {
            sbU.append(", duration=");
            TimeUtils.formatDuration(this.mDurationMillis, sbU);
        }
        if (this.mMaxUpdates != Integer.MAX_VALUE) {
            sbU.append(", maxUpdates=");
            sbU.append(this.mMaxUpdates);
        }
        long j9 = this.mMinUpdateIntervalMillis;
        if (j9 != -1 && j9 < this.mIntervalMillis) {
            sbU.append(", minUpdateInterval=");
            TimeUtils.formatDuration(this.mMinUpdateIntervalMillis, sbU);
        }
        if (this.mMinUpdateDistanceMeters > 0.0d) {
            sbU.append(", minUpdateDistance=");
            sbU.append(this.mMinUpdateDistanceMeters);
        }
        if (this.mMaxUpdateDelayMillis / 2 > this.mIntervalMillis) {
            sbU.append(", maxUpdateDelay=");
            TimeUtils.formatDuration(this.mMaxUpdateDelayMillis, sbU);
        }
        sbU.append(']');
        return sbU.toString();
    }

    @NonNull
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
    public LocationRequest toLocationRequest() {
        return LocationRequestCompat$Api31Impl.toLocationRequest(this);
    }
}
