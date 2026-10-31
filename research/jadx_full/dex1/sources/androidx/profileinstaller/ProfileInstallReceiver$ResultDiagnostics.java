package androidx.profileinstaller;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ProfileInstallReceiver$ResultDiagnostics implements ProfileInstaller$DiagnosticsCallback {
    final /* synthetic */ ProfileInstallReceiver this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ProfileInstallReceiver$ResultDiagnostics(ProfileInstallReceiver profileInstallReceiver) {
        this.this$0 = profileInstallReceiver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onDiagnosticReceived(int i9, @Nullable Object obj) {
        ProfileInstaller.LOG_DIAGNOSTICS.onDiagnosticReceived(i9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onResultReceived(int i9, @Nullable Object obj) {
        ProfileInstaller.LOG_DIAGNOSTICS.onResultReceived(i9, obj);
        this.this$0.setResultCode(i9);
    }
}
