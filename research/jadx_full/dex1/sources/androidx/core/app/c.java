package androidx.core.app;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification$Builder;
import android.app.Notification$CallStyle;
import android.content.ClipData;
import android.content.pm.PackageInstaller$SessionParams;
import android.location.LocationRequest;
import android.media.AudioManager;
import android.media.AudioManager$OnModeChangedListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.OutcomeReceiver;
import android.view.ContentInfo;
import android.view.ContentInfo$Builder;
import android.view.RoundedCorner;
import android.view.WindowInsets;
import java.math.BigInteger;
import java.util.concurrent.ExecutorService;
import w0.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class c {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int A(ContentInfo contentInfo) {
        return contentInfo.getSource();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ RoundedCorner B(WindowInsets windowInsets) {
        return windowInsets.getRoundedCorner(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void C(ContentInfo$Builder contentInfo$Builder, int i9) {
        contentInfo$Builder.setFlags(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a(ContentInfo contentInfo) {
        return contentInfo.getFlags();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int b(RoundedCorner roundedCorner) {
        return roundedCorner.getRadius();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long c(BigInteger bigInteger) {
        return bigInteger.longValueExact();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ForegroundServiceStartNotAllowedException d(IllegalStateException illegalStateException) {
        return (ForegroundServiceStartNotAllowedException) illegalStateException;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ClipData e(ContentInfo contentInfo) {
        return contentInfo.getClip();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ LocationRequest f(Object obj) {
        return (LocationRequest) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Uri g(ContentInfo contentInfo) {
        return contentInfo.getLinkUri();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Bundle h(ContentInfo contentInfo) {
        return contentInfo.getExtras();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ OutcomeReceiver i(Object obj) {
        return (OutcomeReceiver) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ContentInfo$Builder j(ClipData clipData, int i9) {
        return new ContentInfo$Builder(clipData, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ContentInfo$Builder k(ContentInfo contentInfo) {
        return new ContentInfo$Builder(contentInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ContentInfo l(ContentInfo$Builder contentInfo$Builder) {
        return contentInfo$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ContentInfo m(Object obj) {
        return (ContentInfo) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ RoundedCorner n(WindowInsets windowInsets) {
        return windowInsets.getRoundedCorner(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String o(ForegroundServiceStartNotAllowedException foregroundServiceStartNotAllowedException) {
        return foregroundServiceStartNotAllowedException.getMessage();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void p() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void q(Notification$CallStyle notification$CallStyle, Notification$Builder notification$Builder) {
        notification$CallStyle.setBuilder(notification$Builder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void r(PackageInstaller$SessionParams packageInstaller$SessionParams) {
        packageInstaller$SessionParams.setRequireUserAction(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void s(AudioManager audioManager, AudioManager$OnModeChangedListener audioManager$OnModeChangedListener) {
        audioManager.removeOnModeChangedListener(audioManager$OnModeChangedListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void t(AudioManager audioManager, ExecutorService executorService, AudioManager$OnModeChangedListener audioManager$OnModeChangedListener) {
        audioManager.addOnModeChangedListener(executorService, audioManager$OnModeChangedListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void u(AudioManager audioManager, f fVar) {
        audioManager.removeOnModeChangedListener(fVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void v(ContentInfo$Builder contentInfo$Builder, int i9) {
        contentInfo$Builder.setSource(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void w(ContentInfo$Builder contentInfo$Builder, ClipData clipData) {
        contentInfo$Builder.setClip(clipData);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void x(ContentInfo$Builder contentInfo$Builder, Uri uri) {
        contentInfo$Builder.setLinkUri(uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void y(ContentInfo$Builder contentInfo$Builder, Bundle bundle) {
        contentInfo$Builder.setExtras(bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean z(IllegalStateException illegalStateException) {
        return illegalStateException instanceof ForegroundServiceStartNotAllowedException;
    }
}
