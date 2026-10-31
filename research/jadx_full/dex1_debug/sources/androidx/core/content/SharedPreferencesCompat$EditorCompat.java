package androidx.core.content;

import android.content.SharedPreferences$Editor;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public final class SharedPreferencesCompat$EditorCompat {
    private static SharedPreferencesCompat$EditorCompat sInstance;
    private final SharedPreferencesCompat$EditorCompat$Helper mHelper = new SharedPreferencesCompat$EditorCompat$Helper();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SharedPreferencesCompat$EditorCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static SharedPreferencesCompat$EditorCompat getInstance() {
        if (sInstance == null) {
            sInstance = new SharedPreferencesCompat$EditorCompat();
        }
        return sInstance;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void apply(@NonNull SharedPreferences$Editor sharedPreferences$Editor) {
        this.mHelper.apply(sharedPreferences$Editor);
    }
}
