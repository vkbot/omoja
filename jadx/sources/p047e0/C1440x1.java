package p047e0;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.Looper;
import com.example.navistart.NLService;
import com.google.protobuf.AbstractC1178q;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p002a1.RunnableC0003a;
import p005a4.RunnableC0014g;
import p016b1.RunnableC0873n;
import p078h0.C1652b;
import p142n0.EnumC2472g;

/* JADX INFO: renamed from: e0.x1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1440x1 extends MediaController.Callback {

    /* JADX INFO: renamed from: q */
    public static String f3470q;

    /* JADX INFO: renamed from: r */
    public static volatile MediaController f3471r;

    /* JADX INFO: renamed from: a */
    public EnumC2472g f3472a = EnumC2472g.f6810c;

    /* JADX INFO: renamed from: b */
    public String f3473b = "";

    /* JADX INFO: renamed from: c */
    public String f3474c = "";

    /* JADX INFO: renamed from: d */
    public String f3475d = "";

    /* JADX INFO: renamed from: e */
    public Bitmap f3476e = null;

    /* JADX INFO: renamed from: f */
    public Long f3477f = 0L;

    /* JADX INFO: renamed from: g */
    public Long f3478g = 0L;

    /* JADX INFO: renamed from: h */
    public final AudioManager f3479h;

    /* JADX INFO: renamed from: i */
    public final MediaSessionManager f3480i;

    /* JADX INFO: renamed from: j */
    public final ComponentName f3481j;

    /* JADX INFO: renamed from: k */
    public final ScheduledThreadPoolExecutor f3482k;

    /* JADX INFO: renamed from: l */
    public final ScheduledExecutorServiceC1430v f3483l;

    /* JADX INFO: renamed from: m */
    public final ScheduledFuture f3484m;

    /* JADX INFO: renamed from: n */
    public final Handler f3485n;

    /* JADX INFO: renamed from: o */
    public volatile boolean f3486o;

    /* JADX INFO: renamed from: p */
    public boolean f3487p;

    public C1440x1(Context context) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorM2482c = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-20, -48, 10, 54, -35, 114, -118, -27, -50, -11, 11, 48, -58, 66}, new byte[]{-95, -91, 121, 95, -66, 59, -28, -125}));
        this.f3482k = scheduledThreadPoolExecutorM2482c;
        this.f3483l = AbstractC1434w.m2481b(300L, AbstractC1387m.m2421h(new byte[]{-80, 72, 1, -127, 45, Base64.padSymbol, -48, 41, -66, 99, 51, -93, 8, 60, -42, 50, -114}, new byte[]{-9, 13, 85, -52, 88, 78, -71, 74}));
        this.f3485n = new Handler(Looper.getMainLooper());
        int i10 = 1;
        this.f3486o = true;
        this.f3487p = false;
        this.f3481j = new ComponentName(context, (Class<?>) NLService.class);
        this.f3479h = (AudioManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{48, 38, 92, -56, 117}, new byte[]{81, 83, 56, -95, 26, -113, -45, -42}));
        this.f3480i = (MediaSessionManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 31, -102, -118, -27, 41, 116, 20, 97, 9, -105, -116, -22}, new byte[]{18, 122, -2, -29, -124, 118, 7, 113}));
        m2491e(m2489a());
        ScheduledFuture scheduledFuture = this.f3484m;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f3484m.cancel(true);
            this.f3484m = null;
        }
        this.f3484m = scheduledThreadPoolExecutorM2482c.scheduleWithFixedDelay(new RunnableC1432v1(this, i10), 0L, 3000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: b */
    public static void m2487b(String str, String str2, String str3, Bitmap bitmap) {
        if ("".equals(str) && "".equals(str2) && "".equals(str3)) {
            return;
        }
        C1652b.m2734a();
        C1652b.m2734a();
        C1652b.m2744n().onIfoSend(str, str2, str3, bitmap);
        int byteCount = (bitmap == null || bitmap.isRecycled()) ? 0 : bitmap.getByteCount();
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{9, 115, -80, 69, -78, -36, -124, 11, 43, 60, -29}, new byte[]{68, 6, -61, 44, -47, -107, -22, 109}, sb, str);
        AbstractC1178q.m2087u(new byte[]{-44, -101}, new byte[]{-8, -69, -10, -87, 112, -31, 115, Base64.padSymbol}, sb, str2);
        AbstractC1178q.m2087u(new byte[]{-41, -113}, new byte[]{-5, -81, 57, 76, -17, 22, 49, -65}, sb, str3);
        sb.append(AbstractC1387m.m2421h(new byte[]{70, 14}, new byte[]{106, 46, 65, -116, -13, 13, 15, -7}));
        sb.append(bitmap);
        sb.append(AbstractC1387m.m2421h(new byte[]{26, 84}, new byte[]{32, 116, -62, -32, -108, 50, 11, -34}));
        sb.append(byteCount);
        C1652b.m2750v(sb.toString());
    }

    /* JADX INFO: renamed from: d */
    public static void m2488d(MediaController mediaController) {
        f3471r = mediaController;
        C1652b.m2734a();
        if (mediaController != null) {
            C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{59, -17, 87, -94, -61, 66, 50, 45, 53, -1, 65, -71, -57, 115, 5, 29, 22, -18, 87, -65, -54, 64, 35, 0}, new byte[]{120, -102, 37, -48, -90, 44, 70, 114}), f3471r.getPackageName());
        }
    }

    /* JADX INFO: renamed from: a */
    public final MediaController m2489a() {
        List<MediaController> activeSessions;
        int i10 = 1;
        if (f3471r != null) {
            this.f3487p = true;
        } else if (!this.f3487p) {
            Object obj = null;
            try {
                activeSessions = this.f3480i.getActiveSessions(this.f3481j);
            } catch (Exception unused) {
                activeSessions = null;
            }
            if (activeSessions != null && !activeSessions.isEmpty()) {
                for (MediaController mediaController : activeSessions) {
                    if (mediaController.getPackageName().equals(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-15, 28, 8, -121, 98, 77, -13, 43, -1, 12, 30, -100, 102, 124, -60, 27, -36, 29, 8, -102, 107, 79, -30, 6}, new byte[]{-78, 105, 122, -11, 7, 35, -121, 116}), ""))) {
                        f3471r = mediaController;
                        this.f3485n.post(new RunnableC0873n(this, obj, f3471r, i10));
                        this.f3487p = true;
                    }
                }
            }
        }
        return f3471r;
    }

    /* JADX INFO: renamed from: c */
    public final void m2490c(EnumC2472g enumC2472g) {
        this.f3482k.execute(new RunnableC0014g(12, enumC2472g));
    }

    /* JADX INFO: renamed from: e */
    public final void m2491e(MediaController mediaController) {
        this.f3485n.post(new RunnableC0003a(22, this, mediaController));
    }

    @Override // android.media.session.MediaController.Callback
    public final void onMetadataChanged(MediaMetadata mediaMetadata) {
        super.onMetadataChanged(mediaMetadata);
        this.f3483l.execute(new RunnableC0003a(21, this, mediaMetadata));
    }

    @Override // android.media.session.MediaController.Callback
    public final void onPlaybackStateChanged(PlaybackState playbackState) {
        super.onPlaybackStateChanged(playbackState);
        this.f3483l.execute(new RunnableC0003a(23, this, playbackState));
    }
}
