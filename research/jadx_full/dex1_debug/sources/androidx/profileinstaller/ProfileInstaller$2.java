package androidx.profileinstaller;

import android.util.Log;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ProfileInstaller$2 implements ProfileInstaller$DiagnosticsCallback {
    static final String TAG = "ProfileInstaller";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onDiagnosticReceived(int i9, @Nullable Object obj) {
        String str;
        if (i9 == 1) {
            str = "DIAGNOSTIC_CURRENT_PROFILE_EXISTS";
        } else if (i9 == 2) {
            str = "DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST";
        } else if (i9 == 3) {
            str = "DIAGNOSTIC_REF_PROFILE_EXISTS";
        } else if (i9 != 4) {
            str = i9 != 5 ? "" : "DIAGNOSTIC_PROFILE_IS_COMPRESSED";
        } else {
            str = "DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST";
        }
        Log.d(TAG, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onResultReceived(int i9, @Nullable Object obj) {
        String str;
        switch (i9) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i9 == 6 || i9 == 7 || i9 == 8) {
            Log.e(TAG, str, (Throwable) obj);
        } else {
            Log.d(TAG, str);
        }
    }
}
