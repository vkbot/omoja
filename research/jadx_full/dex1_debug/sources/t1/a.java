package t1;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.example.navistart.OverlayService;
import com.example.navistart.mainview.FireballView;
import e0.u1;
import kotlin.jvm.internal.ByteCompanionObject;
import s1.x0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WindowManager f5334b;
    public final LinearLayout c;
    public final TextView d;
    public final FireballView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public OverlayService f5335f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Handler f5336g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(OverlayService overlayService, w0.b bVar) {
        super(overlayService);
        this.f5336g = new Handler(Looper.getMainLooper());
        LayoutInflater.from(overlayService).inflate(2131493115, (ViewGroup) this, true);
        this.c = (LinearLayout) findViewById(2131297641);
        this.d = (TextView) findViewById(2131297689);
        this.e = (FireballView) findViewById(2131296770);
        this.f5335f = overlayService;
        u1 u1Var = new u1(overlayService, e0.m.h(new byte[]{96, 64, -4, -94, 21, -20, 6, -49, 74, 68, -17, -71, 26, -24}, new byte[]{47, 54, -103, -48, 121, -115, ByteCompanionObject.MAX_VALUE, -100}));
        h0.b.a();
        WindowManager windowManagerF = h0.b.g().b().f(this, u1Var.c);
        this.f5334b = windowManagerF;
        u1Var.a(this, windowManagerF, new x0(3, this, overlayService));
        u1Var.d();
        setStatusSpickView(bVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(boolean z8) {
        this.f5336g.post(new c7.e(this, z8, 10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusSpickView(w0.b bVar) {
        this.f5336g.post(new x0(4, this, bVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setText(String str) {
        this.f5336g.post(new x0(2, this, str));
    }
}
