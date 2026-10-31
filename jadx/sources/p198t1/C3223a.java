package p198t1;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.example.navistart.OverlayService;
import com.example.navistart.R;
import com.example.navistart.mainview.FireballView;
import kotlin.jvm.internal.ByteCompanionObject;
import p032c7.RunnableC1001e;
import p047e0.AbstractC1387m;
import p047e0.C1428u1;
import p078h0.C1652b;
import p190s1.RunnableC3180x0;
import p225w0.EnumC3443b;

/* JADX INFO: renamed from: t1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3223a extends FrameLayout {

    /* JADX INFO: renamed from: b */
    public final WindowManager f9427b;

    /* JADX INFO: renamed from: c */
    public final LinearLayout f9428c;

    /* JADX INFO: renamed from: d */
    public final TextView f9429d;

    /* JADX INFO: renamed from: e */
    public final FireballView f9430e;

    /* JADX INFO: renamed from: f */
    public OverlayService f9431f;

    /* JADX INFO: renamed from: g */
    public final Handler f9432g;

    public C3223a(OverlayService overlayService, EnumC3443b enumC3443b) {
        super(overlayService);
        this.f9432g = new Handler(Looper.getMainLooper());
        LayoutInflater.from(overlayService).inflate(R.layout.overlay_layout, (ViewGroup) this, true);
        this.f9428c = (LinearLayout) findViewById(R.id.text_spich_lay);
        this.f9429d = (TextView) findViewById(R.id.tvStatus);
        this.f9430e = (FireballView) findViewById(R.id.fireball);
        this.f9431f = overlayService;
        C1428u1 c1428u1 = new C1428u1(overlayService, AbstractC1387m.m2421h(new byte[]{96, 64, -4, -94, 21, -20, 6, -49, 74, 68, -17, -71, 26, -24}, new byte[]{47, 54, -103, -48, 121, -115, ByteCompanionObject.MAX_VALUE, -100}));
        C1652b.m2734a();
        WindowManager windowManagerMo1144f = C1652b.m2738g().mo3013b().mo1144f(this, c1428u1.f3431c);
        this.f9427b = windowManagerMo1144f;
        c1428u1.m2476a(this, windowManagerMo1144f, new RunnableC3180x0(3, this, overlayService));
        c1428u1.m2479d();
        setStatusSpickView(enumC3443b);
    }

    /* JADX INFO: renamed from: a */
    public final void m5159a(boolean z9) {
        this.f9432g.post(new RunnableC1001e(this, z9, 10));
    }

    public void setStatusSpickView(EnumC3443b enumC3443b) {
        this.f9432g.post(new RunnableC3180x0(4, this, enumC3443b));
    }

    public void setText(String str) {
        this.f9432g.post(new RunnableC3180x0(2, this, str));
    }
}
