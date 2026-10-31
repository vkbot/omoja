package androidx.appcompat.app;

import android.content.IntentFilter;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$AutoTimeNightModeManager extends AppCompatDelegateImpl$AutoNightModeManager {
    private final TwilightManager mTwilightManager;
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatDelegateImpl$AutoTimeNightModeManager(@NonNull AppCompatDelegateImpl appCompatDelegateImpl, TwilightManager twilightManager) {
        super(appCompatDelegateImpl);
        this.this$0 = appCompatDelegateImpl;
        this.mTwilightManager = twilightManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public IntentFilter createIntentFilterForBroadcastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.TIME_TICK");
        return intentFilter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public int getApplyableNightMode() {
        return this.mTwilightManager.isNight() ? 2 : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public void onChange() {
        this.this$0.applyDayNight();
    }
}
