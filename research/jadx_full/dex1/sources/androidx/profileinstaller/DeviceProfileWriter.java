package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build$VERSION;
import androidx.activity.f;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class DeviceProfileWriter {

    @NonNull
    private final String mApkName;

    @NonNull
    private final AssetManager mAssetManager;

    @NonNull
    private final File mCurProfile;

    @NonNull
    private final ProfileInstaller$DiagnosticsCallback mDiagnostics;

    @NonNull
    private final Executor mExecutor;

    @Nullable
    private DexProfileData[] mProfile;

    @NonNull
    private final String mProfileMetaSourceLocation;

    @NonNull
    private final String mProfileSourceLocation;

    @Nullable
    private byte[] mTranscodedProfile;
    private boolean mDeviceSupportsAotProfile = false;

    @Nullable
    private final byte[] mDesiredVersion = desiredVersion();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public DeviceProfileWriter(@NonNull AssetManager assetManager, @NonNull Executor executor, @NonNull ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, @NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull File file) {
        this.mAssetManager = assetManager;
        this.mExecutor = executor;
        this.mDiagnostics = profileInstaller$DiagnosticsCallback;
        this.mApkName = str;
        this.mProfileSourceLocation = str2;
        this.mProfileMetaSourceLocation = str3;
        this.mCurProfile = file;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(DeviceProfileWriter deviceProfileWriter, int i9, Object obj) {
        deviceProfileWriter.lambda$result$0(i9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private DeviceProfileWriter addMetadata(DexProfileData[] dexProfileDataArr, byte[] bArr) {
        try {
            InputStream inputStreamOpenStreamFromAssets = openStreamFromAssets(this.mAssetManager, this.mProfileMetaSourceLocation);
            if (inputStreamOpenStreamFromAssets == null) {
                if (inputStreamOpenStreamFromAssets != null) {
                    inputStreamOpenStreamFromAssets.close();
                }
                return null;
            }
            try {
                this.mProfile = ProfileTranscoder.readMeta(inputStreamOpenStreamFromAssets, ProfileTranscoder.readHeader(inputStreamOpenStreamFromAssets, ProfileTranscoder.MAGIC_PROFM), bArr, dexProfileDataArr);
                inputStreamOpenStreamFromAssets.close();
                return this;
            } catch (Throwable th) {
                try {
                    inputStreamOpenStreamFromAssets.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException e) {
            this.mDiagnostics.onResultReceived(9, e);
        } catch (IOException e6) {
            this.mDiagnostics.onResultReceived(7, e6);
        } catch (IllegalStateException e9) {
            this.mProfile = null;
            this.mDiagnostics.onResultReceived(8, e9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void assertDeviceAllowsProfileInstallerAotWritesCalled() {
        if (this.mDeviceSupportsAotProfile) {
            return;
        }
        i.l("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static byte[] desiredVersion() {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 31) {
            return ProfileVersion.V015_S;
        }
        switch (i9) {
            case 24:
            case 25:
                return ProfileVersion.V001_N;
            case 26:
                return ProfileVersion.V005_O;
            case 27:
                return ProfileVersion.V009_O_MR1;
            case 28:
            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS /* 30 */:
                return ProfileVersion.V010_P;
            default:
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private InputStream getProfileInputStream(AssetManager assetManager) {
        try {
            return openStreamFromAssets(assetManager, this.mProfileSourceLocation);
        } catch (FileNotFoundException e) {
            this.mDiagnostics.onResultReceived(6, e);
            return null;
        } catch (IOException e6) {
            this.mDiagnostics.onResultReceived(7, e6);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$result$0(int i9, Object obj) {
        this.mDiagnostics.onResultReceived(i9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private InputStream openStreamFromAssets(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.mDiagnostics.onDiagnosticReceived(5, null);
            }
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private DexProfileData[] readProfileInternal(InputStream inputStream) {
        try {
            try {
                try {
                    DexProfileData[] profile = ProfileTranscoder.readProfile(inputStream, ProfileTranscoder.readHeader(inputStream, ProfileTranscoder.MAGIC_PROF), this.mApkName);
                    try {
                        inputStream.close();
                        return profile;
                    } catch (IOException e) {
                        this.mDiagnostics.onResultReceived(7, e);
                        return profile;
                    }
                } catch (IllegalStateException e6) {
                    this.mDiagnostics.onResultReceived(8, e6);
                    try {
                        inputStream.close();
                    } catch (IOException e9) {
                        this.mDiagnostics.onResultReceived(7, e9);
                    }
                    return null;
                }
            } catch (IOException e10) {
                this.mDiagnostics.onResultReceived(7, e10);
                inputStream.close();
                return null;
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e11) {
                this.mDiagnostics.onResultReceived(7, e11);
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean requiresMetadata() {
        int i9 = Build$VERSION.SDK_INT;
        return i9 >= 31 || i9 == 24 || i9 == 25;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void result(int i9, @Nullable Object obj) {
        this.mExecutor.execute(new f(this, i9, obj, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public boolean deviceAllowsProfileInstallerAotWrites() {
        if (this.mDesiredVersion == null) {
            result(3, Integer.valueOf(Build$VERSION.SDK_INT));
            return false;
        }
        boolean zExists = this.mCurProfile.exists();
        File file = this.mCurProfile;
        if (!zExists) {
            try {
                if (!file.createNewFile()) {
                    result(4, null);
                    return false;
                }
            } catch (IOException unused) {
                result(4, null);
                return false;
            }
        } else if (!file.canWrite()) {
            result(4, null);
            return false;
        }
        this.mDeviceSupportsAotProfile = true;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public DeviceProfileWriter read() {
        DeviceProfileWriter deviceProfileWriterAddMetadata;
        assertDeviceAllowsProfileInstallerAotWritesCalled();
        if (this.mDesiredVersion != null) {
            InputStream profileInputStream = getProfileInputStream(this.mAssetManager);
            if (profileInputStream != null) {
                this.mProfile = readProfileInternal(profileInputStream);
            }
            DexProfileData[] dexProfileDataArr = this.mProfile;
            if (dexProfileDataArr != null && requiresMetadata() && (deviceProfileWriterAddMetadata = addMetadata(dexProfileDataArr, this.mDesiredVersion)) != null) {
                return deviceProfileWriterAddMetadata;
            }
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public DeviceProfileWriter transcodeIfNeeded() {
        DexProfileData[] dexProfileDataArr = this.mProfile;
        byte[] bArr = this.mDesiredVersion;
        if (dexProfileDataArr != null && bArr != null) {
            assertDeviceAllowsProfileInstallerAotWritesCalled();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ProfileTranscoder.writeHeader(byteArrayOutputStream, bArr);
                    if (!ProfileTranscoder.transcodeAndWriteBody(byteArrayOutputStream, bArr, dexProfileDataArr)) {
                        this.mDiagnostics.onResultReceived(5, null);
                        this.mProfile = null;
                        byteArrayOutputStream.close();
                        return this;
                    }
                    this.mTranscodedProfile = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    this.mProfile = null;
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                this.mDiagnostics.onResultReceived(7, e);
            } catch (IllegalStateException e6) {
                this.mDiagnostics.onResultReceived(8, e6);
            }
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public boolean write() {
        byte[] bArr = this.mTranscodedProfile;
        if (bArr == null) {
            return false;
        }
        assertDeviceAllowsProfileInstallerAotWritesCalled();
        try {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.mCurProfile);
                    try {
                        FileChannel channel = fileOutputStream.getChannel();
                        try {
                            FileLock fileLockTryLock = channel.tryLock();
                            try {
                                Encoding.writeAll(byteArrayInputStream, fileOutputStream, fileLockTryLock);
                                result(1, null);
                                if (fileLockTryLock != null) {
                                    fileLockTryLock.close();
                                }
                                channel.close();
                                fileOutputStream.close();
                                byteArrayInputStream.close();
                                this.mTranscodedProfile = null;
                                this.mProfile = null;
                                return true;
                            } catch (Throwable th) {
                                if (fileLockTryLock != null) {
                                    try {
                                        fileLockTryLock.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            if (channel != null) {
                                try {
                                    channel.close();
                                } catch (Throwable th4) {
                                    th3.addSuppressed(th4);
                                }
                            }
                            throw th3;
                        }
                    } catch (Throwable th5) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                } catch (Throwable th7) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                    }
                    throw th7;
                }
            } catch (FileNotFoundException e) {
                result(6, e);
                this.mTranscodedProfile = null;
                this.mProfile = null;
                return false;
            } catch (IOException e6) {
                result(7, e6);
                this.mTranscodedProfile = null;
                this.mProfile = null;
                return false;
            }
        } catch (Throwable th9) {
            this.mTranscodedProfile = null;
            this.mProfile = null;
            throw th9;
        }
    }
}
