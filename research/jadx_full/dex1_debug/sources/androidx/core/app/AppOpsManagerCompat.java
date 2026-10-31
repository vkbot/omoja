package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AppOpsManagerCompat {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_ERRORED = 2;
    public static final int MODE_IGNORED = 1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AppOpsManagerCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int checkOrNoteProxyOp(@NonNull Context context, int i9, @NonNull String str, @NonNull String str2) {
        if (Build$VERSION.SDK_INT < 29) {
            return noteProxyOpNoThrow(context, str, str2);
        }
        AppOpsManager systemService = AppOpsManagerCompat$Api29Impl.getSystemService(context);
        int iCheckOpNoThrow = AppOpsManagerCompat$Api29Impl.checkOpNoThrow(systemService, str, Binder.getCallingUid(), str2);
        return iCheckOpNoThrow != 0 ? iCheckOpNoThrow : AppOpsManagerCompat$Api29Impl.checkOpNoThrow(systemService, str, i9, AppOpsManagerCompat$Api29Impl.getOpPackageName(context));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int noteOp(@NonNull Context context, @NonNull String str, int i9, @NonNull String str2) {
        return ((AppOpsManager) context.getSystemService("appops")).noteOp(str, i9, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int noteOpNoThrow(@NonNull Context context, @NonNull String str, int i9, @NonNull String str2) {
        return ((AppOpsManager) context.getSystemService("appops")).noteOpNoThrow(str, i9, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int noteProxyOp(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        return AppOpsManagerCompat$Api23Impl.noteProxyOp((AppOpsManager) AppOpsManagerCompat$Api23Impl.getSystemService(context, AppOpsManager.class), str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int noteProxyOpNoThrow(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        return AppOpsManagerCompat$Api23Impl.noteProxyOpNoThrow((AppOpsManager) AppOpsManagerCompat$Api23Impl.getSystemService(context, AppOpsManager.class), str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static String permissionToOp(@NonNull String str) {
        return AppOpsManagerCompat$Api23Impl.permissionToOp(str);
    }
}
