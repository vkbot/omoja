package e0;

import android.media.session.MediaController;
import android.media.session.PlaybackState;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.ProLanProxy;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class v1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1977b;
    public final /* synthetic */ x1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ v1(x1 x1Var, int i9) {
        this.f1977b = i9;
        this.c = x1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:50:0x0096  */
    /* JADX WARN: Code duplicated, block: B:51:0x0098  */
    @Override // java.lang.Runnable
    public final void run() {
        List<MediaController> activeSessions;
        MediaController next;
        PlaybackState playbackState;
        PlaybackState playbackState2;
        MediaController mediaController = null;
        switch (this.f1977b) {
            case 0:
                MediaController mediaControllerA = this.c.a();
                if (mediaControllerA == null) {
                    h0.b.w(m.h(new byte[]{-12, -7, 77, 99, 100, 42, -3, 27, -51, -18, 70, 102, 105, 12, -32, 85, -108, -68, 103, 95, 73, 37}, new byte[]{-71, -100, 41, 10, 5, 105, -110, 117}), ColorText.RED);
                } else {
                    PlaybackState playbackState3 = mediaControllerA.getPlaybackState();
                    boolean z8 = playbackState3 != null && playbackState3.getState() == 3;
                    StringBuilder sb = new StringBuilder();
                    sb.append(m.h(new byte[]{6, 119, 15, 16, 108, 109, 103, 0, 63, 96, 4, 21, 97, 75, 122, 78, 102, 50}, new byte[]{75, 18, 107, 121, 13, 46, 8, 110}));
                    sb.append(mediaControllerA.getPackageName());
                    sb.append(m.h(new byte[]{-85, 59, 81}, new byte[]{-117, 22, 113, 123, 92, 124, -14, 1}));
                    sb.append(z8 ? m.h(new byte[]{74, -70, 26, 68, -64}, new byte[]{26, -5, 79, 23, -123, -63, -4, -63}) : m.h(new byte[]{63, -50, -32, -91}, new byte[]{111, -126, -95, -4, 57, 74, -11, -6}));
                    h0.b.w(sb.toString(), ColorText.RED);
                    if (z8) {
                        mediaControllerA.getTransportControls().pause();
                    } else {
                        mediaControllerA.getTransportControls().play();
                    }
                }
                break;
            case 1:
                x1 x1Var = this.c;
                if (x1Var.f2001o) {
                    try {
                        activeSessions = x1Var.f1995i.getActiveSessions(x1Var.f1996j);
                    } catch (Exception unused) {
                        activeSessions = null;
                    }
                    MediaController mediaControllerA2 = x1Var.a();
                    if (activeSessions == null || activeSessions.isEmpty()) {
                        if (mediaControllerA2 != null) {
                            x1Var.e(mediaControllerA2);
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
                            h0.b.a();
                            h0.b.a();
                            ProLanProxy proLanProxyN = h0.b.n();
                            if (proLanProxyN == null || !proLanProxyN.getMO()) {
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
                        if (!packageName.contains(m.h(new byte[]{-83, 84, -98, 88, -124, -116, 80, -23, -95, 82, -105, 88}, new byte[]{-50, 59, -13, 118, -27, -30, 52, -101})) && !packageName.contains(m.h(new byte[]{-62, -115, 122, -40, -104, -68, 21, -123, -40, -111, 97}, new byte[]{-95, -30, 23, -10, -4, -39, 102, -28}))) {
                            if (mediaControllerA2 != null && mediaControllerA2.getPlaybackState() == null) {
                                x1Var.e(mediaControllerA2);
                            } else if (mediaControllerA2 == null || !mediaControllerA2.getSessionToken().equals(next.getSessionToken())) {
                                x1Var.f2000n.post(new b1.n(x1Var, mediaControllerA2, next, 1));
                            }
                            break;
                        }
                    }
                }
                break;
            default:
                x1 x1Var2 = this.c;
                if (x1Var2.f2001o) {
                    x1Var2.f2001o = false;
                    MediaController mediaControllerA3 = x1Var2.a();
                    if (mediaControllerA3 != null) {
                        x1Var2.e(mediaControllerA3);
                    }
                    x1.d(null);
                    x1Var2.f2001o = true;
                }
                break;
        }
    }
}
