package androidx.profileinstaller;

import android.content.Context;
import android.os.Build$VERSION;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.NonNull;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ProfileInstallerInitializer implements Initializer<ProfileInstallerInitializer$Result> {
    private static final int DELAY_MS = 5000;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(Context context) {
        lambda$writeInBackground$2(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(Context context) {
        lambda$installAfterDelay$1(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(ProfileInstallerInitializer profileInstallerInitializer, Context context, long j9) {
        profileInstallerInitializer.lambda$create$0(context, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$create$0(Context context, long j9) {
        installAfterDelay(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$installAfterDelay$1(Context context) {
        writeInBackground(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$writeInBackground$2(Context context) {
        ProfileInstaller.writeProfile(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void writeInBackground(@NonNull Context context) {
        new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new c(context, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    @NonNull
    public ProfileInstallerInitializer$Result create(@NonNull Context context) {
        Choreographer.getInstance().postFrameCallback(new b(this, context.getApplicationContext()));
        return new ProfileInstallerInitializer$Result();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.EMPTY_LIST;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void installAfterDelay(@NonNull Context context) {
        (Build$VERSION.SDK_INT >= 28 ? ProfileInstallerInitializer$Handler28Impl.createAsync(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new c(context, 0), new Random().nextInt(Math.max(1000, 1)) + DELAY_MS);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.startup.Initializer
    @NonNull
    public /* bridge */ /* synthetic */ ProfileInstallerInitializer$Result create(@NonNull Context context) {
        return create(context);
    }
}
