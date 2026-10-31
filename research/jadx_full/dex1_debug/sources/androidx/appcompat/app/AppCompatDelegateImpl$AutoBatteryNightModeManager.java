package androidx.appcompat.app;

import android.content.Context;
import android.content.IntentFilter;
import android.os.PowerManager;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$AutoBatteryNightModeManager extends AppCompatDelegateImpl$AutoNightModeManager {
    private final PowerManager mPowerManager;
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatDelegateImpl$AutoBatteryNightModeManager(@NonNull AppCompatDelegateImpl appCompatDelegateImpl, Context context) {
        super(appCompatDelegateImpl);
        this.this$0 = appCompatDelegateImpl;
        this.mPowerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public IntentFilter createIntentFilterForBroadcastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
        return intentFilter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public int getApplyableNightMode() {
        return AppCompatDelegateImpl$Api21Impl.isPowerSaveMode(this.mPowerManager) ? 2 : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public void onChange() {
        this.this$0.applyDayNight();
    }
}
