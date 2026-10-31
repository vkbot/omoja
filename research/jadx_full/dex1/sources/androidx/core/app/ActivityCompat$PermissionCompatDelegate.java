package androidx.core.app;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface ActivityCompat$PermissionCompatDelegate {
    boolean onActivityResult(@NonNull Activity activity, @IntRange(from = ULong.MIN_VALUE) int i9, int i10, @Nullable Intent intent);

    boolean requestPermissions(@NonNull Activity activity, @NonNull String[] strArr, @IntRange(from = ULong.MIN_VALUE) int i9);
}
