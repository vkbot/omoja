package androidx.core.location;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class LocationCompat$Api28Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LocationCompat$Api28Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void removeBearingAccuracy(Location location) {
        if (location.hasBearingAccuracy()) {
            String provider = location.getProvider();
            long time = location.getTime();
            long elapsedRealtimeNanos = location.getElapsedRealtimeNanos();
            double latitude = location.getLatitude();
            double longitude = location.getLongitude();
            boolean zHasAltitude = location.hasAltitude();
            double altitude = location.getAltitude();
            boolean zHasSpeed = location.hasSpeed();
            float speed = location.getSpeed();
            boolean zHasBearing = location.hasBearing();
            float bearing = location.getBearing();
            boolean zHasAccuracy = location.hasAccuracy();
            float accuracy = location.getAccuracy();
            boolean zHasVerticalAccuracy = location.hasVerticalAccuracy();
            float verticalAccuracyMeters = location.getVerticalAccuracyMeters();
            boolean zHasSpeedAccuracy = location.hasSpeedAccuracy();
            float speedAccuracyMetersPerSecond = location.getSpeedAccuracyMetersPerSecond();
            Bundle extras = location.getExtras();
            location.reset();
            location.setProvider(provider);
            location.setTime(time);
            location.setElapsedRealtimeNanos(elapsedRealtimeNanos);
            location.setLatitude(latitude);
            location.setLongitude(longitude);
            if (zHasAltitude) {
                location.setAltitude(altitude);
            }
            if (zHasSpeed) {
                location.setSpeed(speed);
            }
            if (zHasBearing) {
                location.setBearing(bearing);
            }
            if (zHasAccuracy) {
                location.setAccuracy(accuracy);
            }
            if (zHasVerticalAccuracy) {
                location.setVerticalAccuracyMeters(verticalAccuracyMeters);
            }
            if (zHasSpeedAccuracy) {
                location.setBearingAccuracyDegrees(speedAccuracyMetersPerSecond);
            }
            if (extras != null) {
                location.setExtras(extras);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void removeSpeedAccuracy(Location location) {
        if (location.hasSpeedAccuracy()) {
            String provider = location.getProvider();
            long time = location.getTime();
            long elapsedRealtimeNanos = location.getElapsedRealtimeNanos();
            double latitude = location.getLatitude();
            double longitude = location.getLongitude();
            boolean zHasAltitude = location.hasAltitude();
            double altitude = location.getAltitude();
            boolean zHasSpeed = location.hasSpeed();
            float speed = location.getSpeed();
            boolean zHasBearing = location.hasBearing();
            float bearing = location.getBearing();
            boolean zHasAccuracy = location.hasAccuracy();
            float accuracy = location.getAccuracy();
            boolean zHasVerticalAccuracy = location.hasVerticalAccuracy();
            float verticalAccuracyMeters = location.getVerticalAccuracyMeters();
            boolean zHasBearingAccuracy = location.hasBearingAccuracy();
            float bearingAccuracyDegrees = location.getBearingAccuracyDegrees();
            Bundle extras = location.getExtras();
            location.reset();
            location.setProvider(provider);
            location.setTime(time);
            location.setElapsedRealtimeNanos(elapsedRealtimeNanos);
            location.setLatitude(latitude);
            location.setLongitude(longitude);
            if (zHasAltitude) {
                location.setAltitude(altitude);
            }
            if (zHasSpeed) {
                location.setSpeed(speed);
            }
            if (zHasBearing) {
                location.setBearing(bearing);
            }
            if (zHasAccuracy) {
                location.setAccuracy(accuracy);
            }
            if (zHasVerticalAccuracy) {
                location.setVerticalAccuracyMeters(verticalAccuracyMeters);
            }
            if (zHasBearingAccuracy) {
                location.setBearingAccuracyDegrees(bearingAccuracyDegrees);
            }
            if (extras != null) {
                location.setExtras(extras);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void removeVerticalAccuracy(Location location) {
        if (location.hasVerticalAccuracy()) {
            String provider = location.getProvider();
            long time = location.getTime();
            long elapsedRealtimeNanos = location.getElapsedRealtimeNanos();
            double latitude = location.getLatitude();
            double longitude = location.getLongitude();
            boolean zHasAltitude = location.hasAltitude();
            double altitude = location.getAltitude();
            boolean zHasSpeed = location.hasSpeed();
            float speed = location.getSpeed();
            boolean zHasBearing = location.hasBearing();
            float bearing = location.getBearing();
            boolean zHasAccuracy = location.hasAccuracy();
            float accuracy = location.getAccuracy();
            boolean zHasSpeedAccuracy = location.hasSpeedAccuracy();
            float speedAccuracyMetersPerSecond = location.getSpeedAccuracyMetersPerSecond();
            boolean zHasBearingAccuracy = location.hasBearingAccuracy();
            float bearingAccuracyDegrees = location.getBearingAccuracyDegrees();
            Bundle extras = location.getExtras();
            location.reset();
            location.setProvider(provider);
            location.setTime(time);
            location.setElapsedRealtimeNanos(elapsedRealtimeNanos);
            location.setLatitude(latitude);
            location.setLongitude(longitude);
            if (zHasAltitude) {
                location.setAltitude(altitude);
            }
            if (zHasSpeed) {
                location.setSpeed(speed);
            }
            if (zHasBearing) {
                location.setBearing(bearing);
            }
            if (zHasAccuracy) {
                location.setAccuracy(accuracy);
            }
            if (zHasSpeedAccuracy) {
                location.setSpeedAccuracyMetersPerSecond(speedAccuracyMetersPerSecond);
            }
            if (zHasBearingAccuracy) {
                location.setBearingAccuracyDegrees(bearingAccuracyDegrees);
            }
            if (extras != null) {
                location.setExtras(extras);
            }
        }
    }
}
