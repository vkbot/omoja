package androidx.core.content;

import android.util.Log;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback$Stub;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class UnusedAppRestrictionsBackportServiceConnection$1 extends IUnusedAppRestrictionsBackportCallback$Stub {
    final /* synthetic */ UnusedAppRestrictionsBackportServiceConnection this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UnusedAppRestrictionsBackportServiceConnection$1(UnusedAppRestrictionsBackportServiceConnection unusedAppRestrictionsBackportServiceConnection) {
        this.this$0 = unusedAppRestrictionsBackportServiceConnection;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
    public void onIsPermissionRevocationEnabledForAppResult(boolean z8, boolean z9) {
        if (!z8) {
            this.this$0.mResultFuture.set(0);
            Log.e(PackageManagerCompat.LOG_TAG, "Unable to retrieve the permission revocation setting from the backport");
            return;
        }
        UnusedAppRestrictionsBackportServiceConnection unusedAppRestrictionsBackportServiceConnection = this.this$0;
        if (z9) {
            unusedAppRestrictionsBackportServiceConnection.mResultFuture.set(3);
        } else {
            unusedAppRestrictionsBackportServiceConnection.mResultFuture.set(2);
        }
    }
}
