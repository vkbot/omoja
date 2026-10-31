package ai.onnxruntime;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobWorkItem;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Color;
import android.graphics.ColorSpace;
import android.graphics.ColorSpace$Named;
import android.os.IBinder;
import androidx.core.app.JobIntentService$JobServiceEngineImpl;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class c {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean A(ShortcutManager shortcutManager, ShortcutInfo shortcutInfo, IntentSender intentSender) {
        return shortcutManager.requestPinShortcut(shortcutInfo, intentSender);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float B(long j9) {
        return Color.red(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float C(Color color) {
        return color.getComponent(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float D(Color color) {
        return color.getComponent(2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float a(long j9) {
        return Color.alpha(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ float b(Color color) {
        return color.getComponent(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int c(long j9) {
        return Color.toArgb(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int d(Configuration configuration) {
        return configuration.colorMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long e(int i9) {
        return Color.pack(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long f(long j9, ColorSpace colorSpace) {
        return Color.convert(j9, colorSpace);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ NotificationChannel g(Object obj) {
        return (NotificationChannel) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ NotificationChannelGroup h(Object obj) {
        return (NotificationChannelGroup) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ JobWorkItem i(JobParameters jobParameters) {
        return jobParameters.dequeueWork();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ JobWorkItem j(Intent intent) {
        return new JobWorkItem(intent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Intent k(JobWorkItem jobWorkItem) {
        return jobWorkItem.getIntent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Intent l(ShortcutManager shortcutManager, ShortcutInfo shortcutInfo) {
        return shortcutManager.createShortcutResultIntent(shortcutInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Bitmap m(int i9, int i10, Bitmap$Config bitmap$Config, boolean z8, ColorSpace colorSpace) {
        return Bitmap.createBitmap(i9, i10, bitmap$Config, z8, colorSpace);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Color n(Color color, ColorSpace colorSpace) {
        return color.convert(colorSpace);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ColorSpace$Named o() {
        return ColorSpace$Named.SRGB;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ColorSpace p() {
        return ColorSpace.get(ColorSpace$Named.SRGB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ IBinder q(JobIntentService$JobServiceEngineImpl jobIntentService$JobServiceEngineImpl) {
        return jobIntentService$JobServiceEngineImpl.getBinder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ File r(Path path) {
        return path.toFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String s(Path path) {
        return path.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Path t(String str, String[] strArr) {
        return Paths.get(str, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Path u(Path path, String str) {
        return path.resolve(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Path v(FileAttribute[] fileAttributeArr) {
        return Files.createTempDirectory("onnxruntime-java", fileAttributeArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void w(JobParameters jobParameters, JobWorkItem jobWorkItem) {
        jobParameters.completeWork(jobWorkItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void x(JobScheduler jobScheduler, JobInfo jobInfo, JobWorkItem jobWorkItem) {
        jobScheduler.enqueue(jobInfo, jobWorkItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void y(Configuration configuration, int i9) {
        configuration.colorMode = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean z(ShortcutManager shortcutManager) {
        return shortcutManager.isRequestPinShortcutSupported();
    }
}
