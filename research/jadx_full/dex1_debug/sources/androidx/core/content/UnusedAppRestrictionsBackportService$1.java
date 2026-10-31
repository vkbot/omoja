package androidx.core.content;

import androidx.annotation.Nullable;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService$Stub;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class UnusedAppRestrictionsBackportService$1 extends IUnusedAppRestrictionsBackportService$Stub {
    final /* synthetic */ UnusedAppRestrictionsBackportService this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UnusedAppRestrictionsBackportService$1(UnusedAppRestrictionsBackportService unusedAppRestrictionsBackportService) {
        this.this$0 = unusedAppRestrictionsBackportService;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
    public void isPermissionRevocationEnabledForApp(@Nullable IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) {
        if (iUnusedAppRestrictionsBackportCallback == null) {
            return;
        }
        this.this$0.isPermissionRevocationEnabled(new UnusedAppRestrictionsBackportCallback(iUnusedAppRestrictionsBackportCallback));
    }
}
