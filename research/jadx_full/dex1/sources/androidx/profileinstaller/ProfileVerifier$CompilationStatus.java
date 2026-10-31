package androidx.profileinstaller;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ProfileVerifier$CompilationStatus {
    public static final int RESULT_CODE_COMPILED_WITH_PROFILE = 1;
    public static final int RESULT_CODE_COMPILED_WITH_PROFILE_NON_MATCHING = 3;
    public static final int RESULT_CODE_ERROR_CACHE_FILE_EXISTS_BUT_CANNOT_BE_READ = 131072;
    public static final int RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE = 196608;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ProfileVerifier$CompilationStatus(int i9, boolean z8, boolean z9, boolean z10) {
        this.mResultCode = i9;
        this.mHasCurrentProfile = z9;
        this.mHasReferenceProfile = z8;
        this.mHasEmbeddedProfile = z10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean appApkHasEmbeddedProfile() {
        return this.mHasEmbeddedProfile;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getProfileInstallResultCode() {
        return this.mResultCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasProfileEnqueuedForCompilation() {
        return this.mHasCurrentProfile;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCompiledWithProfile() {
        return this.mHasReferenceProfile;
    }
}
