package androidx.core.location;

import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import androidx.media.utils.MediaConstants;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class LocationRequestCompat$Builder {
    private long mDurationMillis;
    private long mIntervalMillis;
    private long mMaxUpdateDelayMillis;
    private int mMaxUpdates;
    private float mMinUpdateDistanceMeters;
    private long mMinUpdateIntervalMillis;
    private int mQuality;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationRequestCompat$Builder(long j9) {
        setIntervalMillis(j9);
        this.mQuality = LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY;
        this.mDurationMillis = Long.MAX_VALUE;
        this.mMaxUpdates = Integer.MAX_VALUE;
        this.mMinUpdateIntervalMillis = -1L;
        this.mMinUpdateDistanceMeters = 0.0f;
        this.mMaxUpdateDelayMillis = 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LocationRequestCompat build() {
        Preconditions.checkState((this.mIntervalMillis == Long.MAX_VALUE && this.mMinUpdateIntervalMillis == -1) ? false : true, "passive location requests must have an explicit minimum update interval");
        long j9 = this.mIntervalMillis;
        return new LocationRequestCompat(j9, this.mQuality, this.mDurationMillis, this.mMaxUpdates, Math.min(this.mMinUpdateIntervalMillis, j9), this.mMinUpdateDistanceMeters, this.mMaxUpdateDelayMillis);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LocationRequestCompat$Builder clearMinUpdateIntervalMillis() {
        this.mMinUpdateIntervalMillis = -1L;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LocationRequestCompat$Builder setDurationMillis(@IntRange(from = MediaConstants.METADATA_VALUE_ATTRIBUTE_PRESENT) long j9) {
        this.mDurationMillis = Preconditions.checkArgumentInRange(j9, 1L, Long.MAX_VALUE, "durationMillis");
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LocationRequestCompat$Builder setIntervalMillis(@IntRange(from = ULong.MIN_VALUE) long j9) {
        this.mIntervalMillis = Preconditions.checkArgumentInRange(j9, 0L, Long.MAX_VALUE, "intervalMillis");
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LocationRequestCompat$Builder setMaxUpdateDelayMillis(@IntRange(from = ULong.MIN_VALUE) long j9) {
        this.mMaxUpdateDelayMillis = j9;
        this.mMaxUpdateDelayMillis = Preconditions.checkArgumentInRange(j9, 0L, Long.MAX_VALUE, "maxUpdateDelayMillis");
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LocationRequestCompat$Builder setMaxUpdates(@IntRange(from = MediaConstants.METADATA_VALUE_ATTRIBUTE_PRESENT, to = 2147483647L) int i9) {
        this.mMaxUpdates = Preconditions.checkArgumentInRange(i9, 1, Integer.MAX_VALUE, "maxUpdates");
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LocationRequestCompat$Builder setMinUpdateDistanceMeters(@FloatRange(from = 0.0d, to = 3.4028234663852886E38d) float f8) {
        this.mMinUpdateDistanceMeters = f8;
        this.mMinUpdateDistanceMeters = Preconditions.checkArgumentInRange(f8, 0.0f, Float.MAX_VALUE, "minUpdateDistanceMeters");
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LocationRequestCompat$Builder setMinUpdateIntervalMillis(@IntRange(from = ULong.MIN_VALUE) long j9) {
        this.mMinUpdateIntervalMillis = Preconditions.checkArgumentInRange(j9, 0L, Long.MAX_VALUE, "minUpdateIntervalMillis");
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LocationRequestCompat$Builder setQuality(int i9) {
        Preconditions.checkArgument(i9 == 104 || i9 == 102 || i9 == 100, "quality must be a defined QUALITY constant, not %d", Integer.valueOf(i9));
        this.mQuality = i9;
        return this;
    }

    public LocationRequestCompat$Builder(@NonNull LocationRequestCompat locationRequestCompat) {
        this.mIntervalMillis = locationRequestCompat.mIntervalMillis;
        this.mQuality = locationRequestCompat.mQuality;
        this.mDurationMillis = locationRequestCompat.mDurationMillis;
        this.mMaxUpdates = locationRequestCompat.mMaxUpdates;
        this.mMinUpdateIntervalMillis = locationRequestCompat.mMinUpdateIntervalMillis;
        this.mMinUpdateDistanceMeters = locationRequestCompat.mMinUpdateDistanceMeters;
        this.mMaxUpdateDelayMillis = locationRequestCompat.mMaxUpdateDelayMillis;
    }
}
