package p047e0;

import android.media.session.MediaController;
import android.media.session.PlaybackState;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.ProLanProxy;
import java.util.Iterator;
import java.util.List;
import p016b1.RunnableC0873n;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.v1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1432v1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3452b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1440x1 f3453c;

    public /* synthetic */ RunnableC1432v1(C1440x1 c1440x1, int i10) {
        this.f3452b = i10;
        this.f3453c = c1440x1;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0096  */
    /* JADX WARN: Code duplicated, block: B:51:0x0098  */
    @Override // java.lang.Runnable
    public final void run() {
        List<MediaController> activeSessions;
        MediaController next;
        PlaybackState playbackState;
        PlaybackState playbackState2;
        MediaController mediaController = null;
        int i10 = 1;
        switch (this.f3452b) {
            case 0:
                MediaController mediaControllerM2489a = this.f3453c.m2489a();
                if (mediaControllerM2489a == null) {
                    C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-12, -7, 77, 99, 100, 42, -3, 27, -51, -18, 70, 102, 105, 12, -32, 85, -108, -68, 103, 95, 73, 37}, new byte[]{-71, -100, 41, 10, 5, 105, -110, 117}), ColorText.RED);
                } else {
                    PlaybackState playbackState3 = mediaControllerM2489a.getPlaybackState();
                    i10 = (playbackState3 == null || playbackState3.getState() != 3) ? 0 : 1;
                    StringBuilder sb = new StringBuilder();
                    sb.append(AbstractC1387m.m2421h(new byte[]{6, 119, 15, 16, 108, 109, 103, 0, 63, 96, 4, 21, 97, 75, 122, 78, 102, 50}, new byte[]{75, 18, 107, 121, 13, 46, 8, 110}));
                    sb.append(mediaControllerM2489a.getPackageName());
                    sb.append(AbstractC1387m.m2421h(new byte[]{-85, 59, 81}, new byte[]{-117, 22, 113, 123, 92, 124, -14, 1}));
                    sb.append(i10 != 0 ? AbstractC1387m.m2421h(new byte[]{74, -70, 26, 68, -64}, new byte[]{26, -5, 79, 23, -123, -63, -4, -63}) : AbstractC1387m.m2421h(new byte[]{63, -50, -32, -91}, new byte[]{111, -126, -95, -4, 57, 74, -11, -6}));
                    C1652b.m2751w(sb.toString(), ColorText.RED);
                    if (i10 != 0) {
                        mediaControllerM2489a.getTransportControls().pause();
                    } else {
                        mediaControllerM2489a.getTransportControls().play();
                    }
                }
                break;
            case 1:
                C1440x1 c1440x1 = this.f3453c;
                if (c1440x1.f3486o) {
                    try {
                        activeSessions = c1440x1.f3480i.getActiveSessions(c1440x1.f3481j);
                    } catch (Exception unused) {
                        activeSessions = null;
                    }
                    MediaController mediaControllerM2489a2 = c1440x1.m2489a();
                    if (activeSessions == null || activeSessions.isEmpty()) {
                        if (mediaControllerM2489a2 != null) {
                            c1440x1.m2491e(mediaControllerM2489a2);
                        }
                        break;
                    } else {
                        Iterator<MediaController> it = activeSessions.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                next = it.next();
                                if (next != null && (playbackState2 = next.getPlaybackState()) != null && playbackState2.getState() == 3) {
                                }
                            } else {
                                next = null;
                            }
                        }
                        if (next == null) {
                            C1652b.m2734a();
                            C1652b.m2734a();
                            ProLanProxy proLanProxyM2744n = C1652b.m2744n();
                            if (proLanProxyM2744n == null || !proLanProxyM2744n.getMO()) {
                                next = activeSessions.get(0);
                            } else {
                                for (MediaController mediaController2 : activeSessions) {
                                    if (mediaController2 != null && (playbackState = mediaController2.getPlaybackState()) != null && playbackState.getState() != 0) {
                                        mediaController = mediaController2;
                                        if (mediaController != null) {
                                            next = mediaController;
                                        } else {
                                            next = activeSessions.get(0);
                                        }
                                    }
                                }
                                if (mediaController != null) {
                                    next = mediaController;
                                } else {
                                    next = activeSessions.get(0);
                                }
                            }
                        }
                        String packageName = next.getPackageName();
                        if (!packageName.contains(AbstractC1387m.m2421h(new byte[]{-83, 84, -98, 88, -124, -116, 80, -23, -95, 82, -105, 88}, new byte[]{-50, 59, -13, 118, -27, -30, 52, -101})) && !packageName.contains(AbstractC1387m.m2421h(new byte[]{-62, -115, 122, -40, -104, -68, 21, -123, -40, -111, 97}, new byte[]{-95, -30, 23, -10, -4, -39, 102, -28}))) {
                            if (mediaControllerM2489a2 != null && mediaControllerM2489a2.getPlaybackState() == null) {
                                c1440x1.m2491e(mediaControllerM2489a2);
                            } else if (mediaControllerM2489a2 == null || !mediaControllerM2489a2.getSessionToken().equals(next.getSessionToken())) {
                                c1440x1.f3485n.post(new RunnableC0873n(c1440x1, mediaControllerM2489a2, next, i10));
                            }
                            break;
                        }
                    }
                }
                break;
            default:
                C1440x1 c1440x2 = this.f3453c;
                if (c1440x2.f3486o) {
                    c1440x2.f3486o = false;
                    MediaController mediaControllerM2489a3 = c1440x2.m2489a();
                    if (mediaControllerM2489a3 != null) {
                        c1440x2.m2491e(mediaControllerM2489a3);
                    }
                    C1440x1.m2488d(null);
                    c1440x2.f3486o = true;
                }
                break;
        }
    }
}
