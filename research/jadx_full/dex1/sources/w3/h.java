package w3;

import android.content.res.Configuration;
import android.media.AudioManager;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class h {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a(Configuration configuration) {
        return configuration.fontWeightAdjustment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void b(AudioManager audioManager, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, w0.f fVar) {
        audioManager.addOnModeChangedListener(scheduledThreadPoolExecutor, fVar);
    }
}
