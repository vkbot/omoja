package androidx.core.location;

import androidx.core.util.ObjectsCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LocationManagerCompat$LocationListenerKey {
    final LocationListenerCompat mListener;
    final String mProvider;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationManagerCompat$LocationListenerKey(String str, LocationListenerCompat locationListenerCompat) {
        this.mProvider = (String) ObjectsCompat.requireNonNull(str, "invalid null provider");
        this.mListener = (LocationListenerCompat) ObjectsCompat.requireNonNull(locationListenerCompat, "invalid null listener");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (!(obj instanceof LocationManagerCompat$LocationListenerKey)) {
            return false;
        }
        LocationManagerCompat$LocationListenerKey locationManagerCompat$LocationListenerKey = (LocationManagerCompat$LocationListenerKey) obj;
        return this.mProvider.equals(locationManagerCompat$LocationListenerKey.mProvider) && this.mListener.equals(locationManagerCompat$LocationListenerKey.mListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return ObjectsCompat.hash(this.mProvider, this.mListener);
    }
}
