package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.AssetFileDescriptor;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.WorkerThread;
import androidx.concurrent.futures.ResolvableFuture;
import java.io.File;
import java.io.IOException;
import m4.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ProfileVerifier {
    private static final String CUR_PROFILES_BASE_DIR = "/data/misc/profiles/cur/0/";
    private static final String PROFILE_FILE_NAME = "primary.prof";
    private static final String PROFILE_INSTALLED_CACHE_FILE_NAME = "profileInstalled";
    private static final String REF_PROFILES_BASE_DIR = "/data/misc/profiles/ref/";
    private static final String TAG = "ProfileVerifier";
    private static final ResolvableFuture<ProfileVerifier$CompilationStatus> sFuture = ResolvableFuture.create();
    private static final Object SYNC_OBJ = new Object();

    @Nullable
    private static ProfileVerifier$CompilationStatus sCompilationStatus = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ProfileVerifier() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static o getCompilationStatusAsync() {
        return sFuture;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static long getPackageLastUpdateTime(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build$VERSION.SDK_INT >= 33 ? ProfileVerifier$Api33Impl.getPackageInfo(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static ProfileVerifier$CompilationStatus setCompilationStatus(int i9, boolean z8, boolean z9, boolean z10) {
        ProfileVerifier$CompilationStatus profileVerifier$CompilationStatus = new ProfileVerifier$CompilationStatus(i9, z8, z9, z10);
        sCompilationStatus = profileVerifier$CompilationStatus;
        sFuture.set(profileVerifier$CompilationStatus);
        return sCompilationStatus;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:103:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:113:0x00a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x002b  */
    /* JADX WARN: Code duplicated, block: B:21:0x002d  */
    /* JADX WARN: Code duplicated, block: B:43:0x006e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0091  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ca A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00d0  */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    @WorkerThread
    public static ProfileVerifier$CompilationStatus writeProfileVerification(@NonNull Context context, boolean z8) {
        int i9;
        boolean z9;
        int i10;
        File file;
        boolean z10;
        File file2;
        long length;
        boolean z11;
        File file3;
        ProfileVerifier$Cache fromFile;
        ProfileVerifier$Cache profileVerifier$Cache;
        int i11;
        AssetFileDescriptor assetFileDescriptorOpenFd;
        ProfileVerifier$CompilationStatus profileVerifier$CompilationStatus;
        if (!z8 && (profileVerifier$CompilationStatus = sCompilationStatus) != null) {
            return profileVerifier$CompilationStatus;
        }
        synchronized (SYNC_OBJ) {
            if (z8) {
                i9 = 0;
                assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                if (assetFileDescriptorOpenFd.getLength() > 0) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                assetFileDescriptorOpenFd.close();
                i10 = Build$VERSION.SDK_INT;
                if (i10 >= 28) {
                    file = new File(new File(REF_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                    long length2 = file.length();
                    if (file.exists()) {
                        z10 = false;
                    } else {
                        z10 = false;
                    }
                    file2 = new File(new File(CUR_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                    length = file2.length();
                    if (file2.exists()) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    long packageLastUpdateTime = getPackageLastUpdateTime(context);
                    file3 = new File(context.getFilesDir(), PROFILE_INSTALLED_CACHE_FILE_NAME);
                    if (file3.exists()) {
                        fromFile = ProfileVerifier$Cache.readFromFile(file3);
                    } else {
                        fromFile = null;
                    }
                    if (fromFile == null) {
                        if (!z9) {
                            i9 = ProfileVerifier$CompilationStatus.RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED;
                        } else if (z10) {
                            i9 = 1;
                        } else if (z11) {
                            i9 = 2;
                        }
                    } else if (!z9) {
                        i9 = ProfileVerifier$CompilationStatus.RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED;
                    } else if (z10) {
                        i9 = 1;
                    } else if (z11) {
                        i9 = 2;
                    }
                    if (z8) {
                        i9 = 2;
                    }
                    if (fromFile != null) {
                        i9 = 3;
                    }
                    int i12 = i9;
                    profileVerifier$Cache = new ProfileVerifier$Cache(1, i12, packageLastUpdateTime, length);
                    if (fromFile != null) {
                        profileVerifier$Cache.writeOnFile(file3);
                    } else {
                        profileVerifier$Cache.writeOnFile(file3);
                    }
                    return setCompilationStatus(i12, z10, z11, z9);
                }
                return setCompilationStatus(262144, false, false, z9);
            }
            ProfileVerifier$CompilationStatus profileVerifier$CompilationStatus2 = sCompilationStatus;
            if (profileVerifier$CompilationStatus2 != null) {
                return profileVerifier$CompilationStatus2;
            }
            i9 = 0;
            try {
                assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                try {
                    if (assetFileDescriptorOpenFd.getLength() > 0) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    assetFileDescriptorOpenFd.close();
                } catch (Throwable th) {
                    if (assetFileDescriptorOpenFd == null) {
                        throw th;
                    }
                    try {
                        assetFileDescriptorOpenFd.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            } catch (IOException unused) {
                z9 = false;
            }
            i10 = Build$VERSION.SDK_INT;
            if (i10 >= 28 && i10 != 30) {
                file = new File(new File(REF_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                long length3 = file.length();
                if (file.exists() || length3 <= 0) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                file2 = new File(new File(CUR_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                length = file2.length();
                if (file2.exists() || length <= 0) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                try {
                    long packageLastUpdateTime2 = getPackageLastUpdateTime(context);
                    file3 = new File(context.getFilesDir(), PROFILE_INSTALLED_CACHE_FILE_NAME);
                    if (file3.exists()) {
                        try {
                            fromFile = ProfileVerifier$Cache.readFromFile(file3);
                        } catch (IOException unused2) {
                            return setCompilationStatus(131072, z10, z11, z9);
                        }
                    } else {
                        fromFile = null;
                    }
                    if (fromFile == null && fromFile.mPackageLastUpdateTime == packageLastUpdateTime2 && (i11 = fromFile.mResultCode) != 2) {
                        i9 = i11;
                    } else if (!z9) {
                        i9 = ProfileVerifier$CompilationStatus.RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED;
                    } else if (z10) {
                        i9 = 1;
                    } else if (z11) {
                        i9 = 2;
                    }
                    if (z8 && z11 && i9 != 1) {
                        i9 = 2;
                    }
                    if (fromFile != null && fromFile.mResultCode == 2 && i9 == 1 && length3 < fromFile.mInstalledCurrentProfileSize) {
                        i9 = 3;
                    }
                    int i13 = i9;
                    profileVerifier$Cache = new ProfileVerifier$Cache(1, i13, packageLastUpdateTime2, length);
                    if (fromFile != null || !fromFile.equals(profileVerifier$Cache)) {
                        try {
                            profileVerifier$Cache.writeOnFile(file3);
                        } catch (IOException unused3) {
                            i13 = ProfileVerifier$CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        }
                    }
                    return setCompilationStatus(i13, z10, z11, z9);
                } catch (PackageManager$NameNotFoundException unused4) {
                    return setCompilationStatus(65536, z10, z11, z9);
                }
            }
            return setCompilationStatus(262144, false, false, z9);
            throw th;
        }
    }

    @NonNull
    @WorkerThread
    public static ProfileVerifier$CompilationStatus writeProfileVerification(@NonNull Context context) {
        return writeProfileVerification(context, false);
    }
}
