package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.WorkerThread;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ProfileInstaller {
    public static final int DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST = 2;
    public static final int DIAGNOSTIC_CURRENT_PROFILE_EXISTS = 1;
    public static final int DIAGNOSTIC_PROFILE_IS_COMPRESSED = 5;
    public static final int DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST = 4;
    public static final int DIAGNOSTIC_REF_PROFILE_EXISTS = 3;
    private static final ProfileInstaller$DiagnosticsCallback EMPTY_DIAGNOSTICS = new ProfileInstaller$1();

    @NonNull
    static final ProfileInstaller$DiagnosticsCallback LOG_DIAGNOSTICS = new ProfileInstaller$2();
    private static final String PROFILE_BASE_DIR = "/data/misc/profiles/cur/0";
    private static final String PROFILE_FILE = "primary.prof";
    private static final String PROFILE_INSTALLER_SKIP_FILE_NAME = "profileinstaller_profileWrittenFor_lastUpdateTime.dat";
    private static final String PROFILE_META_LOCATION = "dexopt/baseline.profm";
    static final String PROFILE_SOURCE_LOCATION = "dexopt/baseline.prof";
    public static final int RESULT_ALREADY_INSTALLED = 2;
    public static final int RESULT_BASELINE_PROFILE_NOT_FOUND = 6;
    public static final int RESULT_BENCHMARK_OPERATION_FAILURE = 15;
    public static final int RESULT_BENCHMARK_OPERATION_SUCCESS = 14;
    public static final int RESULT_BENCHMARK_OPERATION_UNKNOWN = 16;
    public static final int RESULT_DELETE_SKIP_FILE_SUCCESS = 11;
    public static final int RESULT_DESIRED_FORMAT_UNSUPPORTED = 5;
    public static final int RESULT_INSTALL_SKIP_FILE_SUCCESS = 10;
    public static final int RESULT_INSTALL_SUCCESS = 1;
    public static final int RESULT_IO_EXCEPTION = 7;
    public static final int RESULT_META_FILE_REQUIRED_BUT_NOT_FOUND = 9;
    public static final int RESULT_NOT_WRITABLE = 4;
    public static final int RESULT_PARSE_EXCEPTION = 8;
    public static final int RESULT_SAVE_PROFILE_SIGNALLED = 12;
    public static final int RESULT_SAVE_PROFILE_SKIPPED = 13;
    public static final int RESULT_UNSUPPORTED_ART_VERSION = 3;
    private static final String TAG = "ProfileInstaller";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ProfileInstaller() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, int i9, Object obj) {
        lambda$result$0(profileInstaller$DiagnosticsCallback, i9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, int i9, Object obj) {
        lambda$diagnostic$1(profileInstaller$DiagnosticsCallback, i9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static boolean deleteProfileWrittenFor(@NonNull File file) {
        return new File(file, PROFILE_INSTALLER_SKIP_FILE_NAME).delete();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @WorkerThread
    public static void deleteSkipFile(@NonNull Context context, @NonNull Executor executor, @NonNull ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback) {
        deleteProfileWrittenFor(context.getFilesDir());
        result(executor, profileInstaller$DiagnosticsCallback, 11, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void diagnostic(@NonNull Executor executor, @NonNull ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, int i9, @Nullable Object obj) {
        executor.execute(new a(profileInstaller$DiagnosticsCallback, i9, obj, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    @WorkerThread
    public static boolean hasAlreadyWrittenProfileForThisInstall(PackageInfo packageInfo, File file, ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback) {
        File file2 = new File(file, PROFILE_INSTALLER_SKIP_FILE_NAME);
        if (!file2.exists()) {
            return false;
        }
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file2));
            try {
                long j9 = dataInputStream.readLong();
                dataInputStream.close();
                boolean z8 = j9 == packageInfo.lastUpdateTime;
                if (z8) {
                    profileInstaller$DiagnosticsCallback.onResultReceived(2, null);
                }
                return z8;
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$diagnostic$1(ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, int i9, Object obj) {
        profileInstaller$DiagnosticsCallback.onDiagnosticReceived(i9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$result$0(ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, int i9, Object obj) {
        profileInstaller$DiagnosticsCallback.onResultReceived(i9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static void noteProfileWrittenFor(@NonNull PackageInfo packageInfo, @NonNull File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, PROFILE_INSTALLER_SKIP_FILE_NAME)));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void result(@NonNull Executor executor, @NonNull ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, int i9, @Nullable Object obj) {
        executor.execute(new a(profileInstaller$DiagnosticsCallback, i9, obj, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean transcodeAndWrite(@NonNull AssetManager assetManager, @NonNull String str, @NonNull PackageInfo packageInfo, @NonNull File file, @NonNull String str2, @NonNull Executor executor, @NonNull ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback) {
        DeviceProfileWriter deviceProfileWriter = new DeviceProfileWriter(assetManager, executor, profileInstaller$DiagnosticsCallback, str2, PROFILE_SOURCE_LOCATION, PROFILE_META_LOCATION, new File(new File(PROFILE_BASE_DIR, str), PROFILE_FILE));
        if (!deviceProfileWriter.deviceAllowsProfileInstallerAotWrites()) {
            return false;
        }
        boolean zWrite = deviceProfileWriter.read().transcodeIfNeeded().write();
        if (zWrite) {
            noteProfileWrittenFor(packageInfo, file);
        }
        return zWrite;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @WorkerThread
    public static void writeProfile(@NonNull Context context, @NonNull Executor executor, @NonNull ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, boolean z8) {
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        AssetManager assets = applicationContext.getAssets();
        String name = new File(applicationInfo.sourceDir).getName();
        boolean z9 = false;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            File filesDir = context.getFilesDir();
            if (!z8 && hasAlreadyWrittenProfileForThisInstall(packageInfo, filesDir, profileInstaller$DiagnosticsCallback)) {
                Log.d(TAG, "Skipping profile installation for " + context.getPackageName());
                ProfileVerifier.writeProfileVerification(context, false);
                return;
            }
            Log.d(TAG, "Installing profile for " + context.getPackageName());
            if (transcodeAndWrite(assets, packageName, packageInfo, filesDir, name, executor, profileInstaller$DiagnosticsCallback) && z8) {
                z9 = true;
            }
            ProfileVerifier.writeProfileVerification(context, z9);
        } catch (PackageManager$NameNotFoundException e) {
            profileInstaller$DiagnosticsCallback.onResultReceived(7, e);
            ProfileVerifier.writeProfileVerification(context, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @WorkerThread
    public static void writeSkipFile(@NonNull Context context, @NonNull Executor executor, @NonNull ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback) {
        try {
            noteProfileWrittenFor(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
            result(executor, profileInstaller$DiagnosticsCallback, 10, null);
        } catch (PackageManager$NameNotFoundException e) {
            result(executor, profileInstaller$DiagnosticsCallback, 7, e);
        }
    }

    @WorkerThread
    public static void writeProfile(@NonNull Context context, @NonNull Executor executor, @NonNull ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback) {
        writeProfile(context, executor, profileInstaller$DiagnosticsCallback, false);
    }

    @WorkerThread
    public static void writeProfile(@NonNull Context context) {
        writeProfile(context, new androidx.arch.core.executor.a(2), EMPTY_DIAGNOSTICS);
    }
}
