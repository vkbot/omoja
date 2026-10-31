package androidx.appcompat.app;

import android.content.res.Configuration;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class AppCompatDelegateImpl$Api26Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AppCompatDelegateImpl$Api26Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void generateConfigDelta_colorMode(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
        if ((ai.onnxruntime.c.d(configuration) & 3) != (ai.onnxruntime.c.d(configuration2) & 3)) {
            ai.onnxruntime.c.y(configuration3, ai.onnxruntime.c.d(configuration3) | (ai.onnxruntime.c.d(configuration2) & 3));
        }
        if ((ai.onnxruntime.c.d(configuration) & 12) != (ai.onnxruntime.c.d(configuration2) & 12)) {
            ai.onnxruntime.c.y(configuration3, ai.onnxruntime.c.d(configuration3) | (ai.onnxruntime.c.d(configuration2) & 12));
        }
    }
}
