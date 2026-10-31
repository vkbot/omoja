package e0;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaController$Callback;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.Looper;
import com.example.navistart.NLService;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x1 extends MediaController$Callback {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static String f1989q;
    public static volatile MediaController r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public n0.g f1990a = n0.g.c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1991b = "";
    public String c = "";
    public String d = "";
    public Bitmap e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Long f1992f = 0L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Long f1993g = 0L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AudioManager f1994h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MediaSessionManager f1995i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ComponentName f1996j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f1997k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final v f1998l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ScheduledFuture f1999m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Handler f2000n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile boolean f2001o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2002p;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x1(Context context) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorC = w.c(-1, m.h(new byte[]{-20, -48, 10, 54, -35, 114, -118, -27, -50, -11, 11, 48, -58, 66}, new byte[]{-95, -91, 121, 95, -66, 59, -28, -125}));
        this.f1997k = scheduledThreadPoolExecutorC;
        this.f1998l = w.b(300L, m.h(new byte[]{-80, 72, 1, -127, 45, Base64.padSymbol, -48, 41, -66, 99, 51, -93, 8, 60, -42, 50, -114}, new byte[]{-9, 13, 85, -52, 88, 78, -71, 74}));
        this.f2000n = new Handler(Looper.getMainLooper());
        this.f2001o = true;
        this.f2002p = false;
        this.f1996j = new ComponentName(context, (Class<?>) NLService.class);
        this.f1994h = (AudioManager) context.getSystemService(m.h(new byte[]{48, 38, 92, -56, 117}, new byte[]{81, 83, 56, -95, 26, -113, -45, -42}));
        this.f1995i = (MediaSessionManager) context.getSystemService(m.h(new byte[]{ByteCompanionObject.MAX_VALUE, 31, -102, -118, -27, 41, 116, 20, 97, 9, -105, -116, -22}, new byte[]{18, 122, -2, -29, -124, 118, 7, 113}));
        e(a());
        ScheduledFuture scheduledFuture = this.f1999m;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f1999m.cancel(true);
            this.f1999m = null;
        }
        this.f1999m = scheduledThreadPoolExecutorC.scheduleWithFixedDelay(new v1(this, 1), 0L, 3000L, TimeUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(String str, String str2, String str3, Bitmap bitmap) {
        if ("".equals(str) && "".equals(str2) && "".equals(str3)) {
            return;
        }
        h0.b.a();
        h0.b.a();
        h0.b.n().onIfoSend(str, str2, str3, bitmap);
        int byteCount = (bitmap == null || bitmap.isRecycled()) ? 0 : bitmap.getByteCount();
        StringBuilder sb = new StringBuilder();
        com.google.protobuf.q.u(new byte[]{9, 115, -80, 69, -78, -36, -124, 11, 43, 60, -29}, new byte[]{68, 6, -61, 44, -47, -107, -22, 109}, sb, str);
        com.google.protobuf.q.u(new byte[]{-44, -101}, new byte[]{-8, -69, -10, -87, 112, -31, 115, Base64.padSymbol}, sb, str2);
        com.google.protobuf.q.u(new byte[]{-41, -113}, new byte[]{-5, -81, 57, 76, -17, 22, 49, -65}, sb, str3);
        sb.append(m.h(new byte[]{70, 14}, new byte[]{106, 46, 65, -116, -13, 13, 15, -7}));
        sb.append(bitmap);
        sb.append(m.h(new byte[]{26, 84}, new byte[]{32, 116, -62, -32, -108, 50, 11, -34}));
        sb.append(byteCount);
        h0.b.v(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(MediaController mediaController) {
        r = mediaController;
        h0.b.a();
        if (mediaController != null) {
            h0.b.o().saveString(m.h(new byte[]{59, -17, 87, -94, -61, 66, 50, 45, 53, -1, 65, -71, -57, 115, 5, 29, 22, -18, 87, -65, -54, 64, 35, 0}, new byte[]{120, -102, 37, -48, -90, 44, 70, 114}), r.getPackageName());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final MediaController a() {
        List<MediaController> activeSessions;
        if (r != null) {
            this.f2002p = true;
        } else if (!this.f2002p) {
            try {
                activeSessions = this.f1995i.getActiveSessions(this.f1996j);
            } catch (Exception unused) {
                activeSessions = null;
            }
            if (activeSessions != null && !activeSessions.isEmpty()) {
                for (MediaController mediaController : activeSessions) {
                    if (mediaController.getPackageName().equals(h0.b.o().loadString(m.h(new byte[]{-15, 28, 8, -121, 98, 77, -13, 43, -1, 12, 30, -100, 102, 124, -60, 27, -36, 29, 8, -102, 107, 79, -30, 6}, new byte[]{-78, 105, 122, -11, 7, 35, -121, 116}), ""))) {
                        r = mediaController;
                        this.f2000n.post(new b1.n(this, (Object) null, r, 1));
                        this.f2002p = true;
                    }
                }
            }
        }
        return r;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(n0.g gVar) {
        this.f1997k.execute(new a4.g(12, gVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(MediaController mediaController) {
        this.f2000n.post(new a1.a(22, this, mediaController));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.session.MediaController$Callback
    public final void onMetadataChanged(MediaMetadata mediaMetadata) {
        super.onMetadataChanged(mediaMetadata);
        this.f1998l.execute(new a1.a(21, this, mediaMetadata));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.session.MediaController$Callback
    public final void onPlaybackStateChanged(PlaybackState playbackState) {
        super.onPlaybackStateChanged(playbackState);
        this.f1998l.execute(new a1.a(23, this, playbackState));
    }
}
