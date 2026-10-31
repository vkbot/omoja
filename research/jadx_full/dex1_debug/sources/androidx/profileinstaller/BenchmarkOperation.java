package androidx.profileinstaller;

import android.content.Context;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class BenchmarkOperation {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private BenchmarkOperation() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean deleteFilesRecursively(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z8 = true;
        for (File file2 : fileArrListFiles) {
            z8 = deleteFilesRecursively(file2) && z8;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void dropShaderCache(@NonNull Context context, @NonNull ProfileInstallReceiver$ResultDiagnostics profileInstallReceiver$ResultDiagnostics) {
        if (deleteFilesRecursively(Build$VERSION.SDK_INT >= 34 ? BenchmarkOperation$Api24ContextHelper.createDeviceProtectedStorageContext(context).getCacheDir() : BenchmarkOperation$Api21ContextHelper.getCodeCacheDir(BenchmarkOperation$Api24ContextHelper.createDeviceProtectedStorageContext(context)))) {
            profileInstallReceiver$ResultDiagnostics.onResultReceived(14, null);
        } else {
            profileInstallReceiver$ResultDiagnostics.onResultReceived(15, null);
        }
    }
}
