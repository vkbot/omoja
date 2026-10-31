package androidx.core.content;

import android.content.Intent;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(33)
public class IntentCompat$Api33Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private IntentCompat$Api33Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static <T> T[] getParcelableArrayExtra(@NonNull Intent intent, @Nullable String str, @NonNull Class<T> cls) {
        return (T[]) intent.getParcelableArrayExtra(str, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static <T> ArrayList<T> getParcelableArrayListExtra(@NonNull Intent intent, @Nullable String str, @NonNull Class<? extends T> cls) {
        return intent.getParcelableArrayListExtra(str, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static <T> T getParcelableExtra(@NonNull Intent intent, @Nullable String str, @NonNull Class<T> cls) {
        return (T) intent.getParcelableExtra(str, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static <T extends Serializable> T getSerializableExtra(@NonNull Intent intent, @Nullable String str, @NonNull Class<T> cls) {
        return (T) intent.getSerializableExtra(str, cls);
    }
}
