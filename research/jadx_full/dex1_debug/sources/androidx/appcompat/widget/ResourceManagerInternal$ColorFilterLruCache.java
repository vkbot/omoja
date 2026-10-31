package androidx.appcompat.widget;

import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffColorFilter;
import androidx.collection.LruCache;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ResourceManagerInternal$ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ResourceManagerInternal$ColorFilterLruCache(int i9) {
        super(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int generateCacheKey(int i9, PorterDuff$Mode porterDuff$Mode) {
        return porterDuff$Mode.hashCode() + ((i9 + 31) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PorterDuffColorFilter get(int i9, PorterDuff$Mode porterDuff$Mode) {
        return get(Integer.valueOf(generateCacheKey(i9, porterDuff$Mode)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PorterDuffColorFilter put(int i9, PorterDuff$Mode porterDuff$Mode, PorterDuffColorFilter porterDuffColorFilter) {
        return put(Integer.valueOf(generateCacheKey(i9, porterDuff$Mode)), porterDuffColorFilter);
    }
}
