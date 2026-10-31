package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.concurrent.futures.ResolvableFuture;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;
import p135m4.InterfaceFutureC2396o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ProfileVerifier {
    private static final String CUR_PROFILES_BASE_DIR = "/data/misc/profiles/cur/0/";
    private static final String PROFILE_FILE_NAME = "primary.prof";
    private static final String PROFILE_INSTALLED_CACHE_FILE_NAME = "profileInstalled";
    private static final String REF_PROFILES_BASE_DIR = "/data/misc/profiles/ref/";
    private static final String TAG = "ProfileVerifier";
    private static final ResolvableFuture<CompilationStatus> sFuture = ResolvableFuture.create();
    private static final Object SYNC_OBJ = new Object();

    @Nullable
    private static CompilationStatus sCompilationStatus = null;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(33)
    public static class Api33Impl {
        private Api33Impl() {
        }

        public static PackageInfo getPackageInfo(PackageManager packageManager, Context context) {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static class Cache {
        private static final int SCHEMA = 1;
        final long mInstalledCurrentProfileSize;
        final long mPackageLastUpdateTime;
        final int mResultCode;
        final int mSchema;

        public Cache(int i10, int i11, long j10, long j11) {
            this.mSchema = i10;
            this.mResultCode = i11;
            this.mPackageLastUpdateTime = j10;
            this.mInstalledCurrentProfileSize = j11;
        }

        public static Cache readFromFile(@NonNull File file) throws IOException {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                Cache cache = new Cache(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return cache;
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && (obj instanceof Cache)) {
                Cache cache = (Cache) obj;
                if (this.mResultCode == cache.mResultCode && this.mPackageLastUpdateTime == cache.mPackageLastUpdateTime && this.mSchema == cache.mSchema && this.mInstalledCurrentProfileSize == cache.mInstalledCurrentProfileSize) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mResultCode), Long.valueOf(this.mPackageLastUpdateTime), Integer.valueOf(this.mSchema), Long.valueOf(this.mInstalledCurrentProfileSize));
        }

        public void writeOnFile(@NonNull File file) throws IOException {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.mSchema);
                dataOutputStream.writeInt(this.mResultCode);
                dataOutputStream.writeLong(this.mPackageLastUpdateTime);
                dataOutputStream.writeLong(this.mInstalledCurrentProfileSize);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class CompilationStatus {
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE = 1;
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE_NON_MATCHING = 3;
        public static final int RESULT_CODE_ERROR_CACHE_FILE_EXISTS_BUT_CANNOT_BE_READ = 131072;

        /* JADX INFO: renamed from: RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE */
        public static final int f499xf2722a21 = 196608;
        private static final int RESULT_CODE_ERROR_CODE_BIT_SHIFT = 16;
        public static final int RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED = 327680;
        public static final int RESULT_CODE_ERROR_PACKAGE_NAME_DOES_NOT_EXIST = 65536;
        public static final int RESULT_CODE_ERROR_UNSUPPORTED_API_VERSION = 262144;

        @Deprecated
        public static final int RESULT_CODE_NO_PROFILE = 0;
        public static final int RESULT_CODE_NO_PROFILE_INSTALLED = 0;
        public static final int RESULT_CODE_PROFILE_ENQUEUED_FOR_COMPILATION = 2;
        private final boolean mHasCurrentProfile;
        private final boolean mHasEmbeddedProfile;
        private final boolean mHasReferenceProfile;
        final int mResultCode;

        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public @interface ResultCode {
        }

        public CompilationStatus(int i10, boolean z9, boolean z10, boolean z11) {
            this.mResultCode = i10;
            this.mHasCurrentProfile = z10;
            this.mHasReferenceProfile = z9;
            this.mHasEmbeddedProfile = z11;
        }

        public boolean appApkHasEmbeddedProfile() {
            return this.mHasEmbeddedProfile;
        }

        public int getProfileInstallResultCode() {
            return this.mResultCode;
        }

        public boolean hasProfileEnqueuedForCompilation() {
            return this.mHasCurrentProfile;
        }

        public boolean isCompiledWithProfile() {
            return this.mHasReferenceProfile;
        }
    }

    private ProfileVerifier() {
    }

    @NonNull
    public static InterfaceFutureC2396o getCompilationStatusAsync() {
        return sFuture;
    }

    private static long getPackageLastUpdateTime(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? Api33Impl.getPackageInfo(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    private static CompilationStatus setCompilationStatus(int i10, boolean z9, boolean z10, boolean z11) {
        CompilationStatus compilationStatus = new CompilationStatus(i10, z9, z10, z11);
        sCompilationStatus = compilationStatus;
        sFuture.set(compilationStatus);
        return sCompilationStatus;
    }

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
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @WorkerThread
    public static CompilationStatus writeProfileVerification(@NonNull Context context, boolean z9) {
        int i10;
        boolean z10;
        int i11;
        File file;
        boolean z11;
        File file2;
        long length;
        boolean z12;
        File file3;
        Cache fromFile;
        Cache cache;
        int i12;
        AssetFileDescriptor assetFileDescriptorOpenFd;
        CompilationStatus compilationStatus;
        if (!z9 && (compilationStatus = sCompilationStatus) != null) {
            return compilationStatus;
        }
        synchronized (SYNC_OBJ) {
            if (z9) {
                i10 = 0;
                assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                if (assetFileDescriptorOpenFd.getLength() > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                assetFileDescriptorOpenFd.close();
                i11 = Build.VERSION.SDK_INT;
                if (i11 >= 28) {
                    file = new File(new File(REF_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                    long length2 = file.length();
                    if (file.exists()) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    file2 = new File(new File(CUR_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                    length = file2.length();
                    if (file2.exists()) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    long packageLastUpdateTime = getPackageLastUpdateTime(context);
                    file3 = new File(context.getFilesDir(), PROFILE_INSTALLED_CACHE_FILE_NAME);
                    if (file3.exists()) {
                        fromFile = Cache.readFromFile(file3);
                    } else {
                        fromFile = null;
                    }
                    if (fromFile == null) {
                        if (!z10) {
                            i10 = CompilationStatus.RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED;
                        } else if (z11) {
                            i10 = 1;
                        } else if (z12) {
                            i10 = 2;
                        }
                    } else if (!z10) {
                        i10 = CompilationStatus.RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED;
                    } else if (z11) {
                        i10 = 1;
                    } else if (z12) {
                        i10 = 2;
                    }
                    if (z9) {
                        i10 = 2;
                    }
                    if (fromFile != null) {
                        i10 = 3;
                    }
                    int i13 = i10;
                    cache = new Cache(1, i13, packageLastUpdateTime, length);
                    if (fromFile != null) {
                        cache.writeOnFile(file3);
                    } else {
                        cache.writeOnFile(file3);
                    }
                    return setCompilationStatus(i13, z11, z12, z10);
                }
                return setCompilationStatus(262144, false, false, z10);
            }
            CompilationStatus compilationStatus2 = sCompilationStatus;
            if (compilationStatus2 != null) {
                return compilationStatus2;
            }
            i10 = 0;
            try {
                assetFileDescriptorOpenFd = context.getAssets().openFd("dexopt/baseline.prof");
                try {
                    if (assetFileDescriptorOpenFd.getLength() > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    assetFileDescriptorOpenFd.close();
                    i11 = Build.VERSION.SDK_INT;
                    if (i11 >= 28 && i11 != 30) {
                        file = new File(new File(REF_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                        long length3 = file.length();
                        if (file.exists() || length3 <= 0) {
                            z11 = false;
                        } else {
                            z11 = true;
                        }
                        file2 = new File(new File(CUR_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                        length = file2.length();
                        if (file2.exists() || length <= 0) {
                            z12 = false;
                        } else {
                            z12 = true;
                        }
                        try {
                            long packageLastUpdateTime2 = getPackageLastUpdateTime(context);
                            file3 = new File(context.getFilesDir(), PROFILE_INSTALLED_CACHE_FILE_NAME);
                            if (file3.exists()) {
                                try {
                                    fromFile = Cache.readFromFile(file3);
                                } catch (IOException unused) {
                                    return setCompilationStatus(131072, z11, z12, z10);
                                }
                            } else {
                                fromFile = null;
                            }
                            if (fromFile == null && fromFile.mPackageLastUpdateTime == packageLastUpdateTime2 && (i12 = fromFile.mResultCode) != 2) {
                                i10 = i12;
                            } else if (!z10) {
                                i10 = CompilationStatus.RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED;
                            } else if (z11) {
                                i10 = 1;
                            } else if (z12) {
                                i10 = 2;
                            }
                            if (z9 && z12 && i10 != 1) {
                                i10 = 2;
                            }
                            if (fromFile != null && fromFile.mResultCode == 2 && i10 == 1 && length3 < fromFile.mInstalledCurrentProfileSize) {
                                i10 = 3;
                            }
                            int i14 = i10;
                            cache = new Cache(1, i14, packageLastUpdateTime2, length);
                            if (fromFile != null || !fromFile.equals(cache)) {
                                try {
                                    cache.writeOnFile(file3);
                                } catch (IOException unused2) {
                                    i14 = CompilationStatus.f499xf2722a21;
                                }
                            }
                            return setCompilationStatus(i14, z11, z12, z10);
                        } catch (PackageManager.NameNotFoundException unused3) {
                            return setCompilationStatus(65536, z11, z12, z10);
                        }
                    }
                    return setCompilationStatus(262144, false, false, z10);
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
            } catch (IOException unused4) {
                z10 = false;
            }
            throw th;
        }
    }

    @NonNull
    @WorkerThread
    public static CompilationStatus writeProfileVerification(@NonNull Context context) {
        return writeProfileVerification(context, false);
    }
}
