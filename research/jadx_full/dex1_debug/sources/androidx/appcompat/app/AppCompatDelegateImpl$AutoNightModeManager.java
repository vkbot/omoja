package androidx.appcompat.app;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
@VisibleForTesting
public abstract class AppCompatDelegateImpl$AutoNightModeManager {
    private BroadcastReceiver mReceiver;
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$AutoNightModeManager(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cleanup() {
        BroadcastReceiver broadcastReceiver = this.mReceiver;
        if (broadcastReceiver != null) {
            try {
                this.this$0.mContext.unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException unused) {
            }
            this.mReceiver = null;
        }
    }

    @Nullable
    public abstract IntentFilter createIntentFilterForBroadcastReceiver();

    public abstract int getApplyableNightMode();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isListening() {
        return this.mReceiver != null;
    }

    public abstract void onChange();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setup() {
        cleanup();
        IntentFilter intentFilterCreateIntentFilterForBroadcastReceiver = createIntentFilterForBroadcastReceiver();
        if (intentFilterCreateIntentFilterForBroadcastReceiver == null || intentFilterCreateIntentFilterForBroadcastReceiver.countActions() == 0) {
            return;
        }
        if (this.mReceiver == null) {
            this.mReceiver = new AppCompatDelegateImpl$AutoNightModeManager$1(this);
        }
        this.this$0.mContext.registerReceiver(this.mReceiver, intentFilterCreateIntentFilterForBroadcastReceiver);
    }
}
