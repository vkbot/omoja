package com.example.navistart.SpeedBoard;

import android.content.Context;
import android.os.Build$VERSION;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager$LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import com.google.protobuf.q;
import e0.m;
import h0.b;
import java.util.Locale;
import k0.a;
import s1.x0;
import v0.c;
import v0.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PPSView extends FrameLayout implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImageView f811b;
    public ImageView c;
    public View d;
    public ImageSpeedometer e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RelativeLayout f812f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f813g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f814h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f815i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f816j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f817k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f818l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f819m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FrameLayout f820n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public RelativeLayout f821o;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PPSView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        k(0, context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void g(PPSView pPSView, HUDMassageObj hUDMassageObj) {
        pPSView.setCameraInfoViewVis(true);
        pPSView.setCamspeedLimitText(hUDMassageObj.getSpeedlimit() > 0 ? String.valueOf(hUDMassageObj.getSpeedlimit()) : m.h(new byte[]{34, -53}, new byte[]{15, -26, -64, -112, -33, 33, 50, -87}));
        StringBuilder sb = new StringBuilder();
        sb.append(hUDMassageObj.v_mRemainDis);
        pPSView.setcameraDis(q.i(new byte[]{110, -66}, new byte[]{78, -45, -25, -61, -85, -102, 48, 124}, sb));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void h(PPSView pPSView, int i9) {
        pPSView.setTextSpeedWidg(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void i(PPSView pPSView, HUDMassageObj hUDMassageObj) {
        pPSView.setRastVis(true);
        pPSView.setMan_img_view(hUDMassageObj.v_mTurnType);
        int i9 = hUDMassageObj.v_mRemainDis;
        int i10 = hUDMassageObj.v_mTurnDis;
        pPSView.f814h.setText(l(i9));
        pPSView.f813g.setText(l(i10));
        if (hUDMassageObj.getSpeedlimit() > 0) {
            pPSView.setSpeedLimitText(String.valueOf(hUDMassageObj.getSpeedlimit()));
        } else {
            pPSView.setSpeedLimitText("");
            pPSView.f812f.setVisibility(4);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void j(PPSView pPSView, HUDMassageObj$HudSenderType hUDMassageObj$HudSenderType) {
        if (hUDMassageObj$HudSenderType == HUDMassageObj$HudSenderType.NAVI) {
            pPSView.setRastVis(false);
            pPSView.setSpeedLimitText("");
            pPSView.f812f.setVisibility(4);
        }
        if (hUDMassageObj$HudSenderType == HUDMassageObj$HudSenderType.ARAD) {
            pPSView.setCameraInfoViewVis(false);
            pPSView.setCamspeedLimitText("");
            pPSView.setcameraDis("");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String l(int i9) {
        if (i9 >= 1000) {
            return String.format(Locale.US, m.h(new byte[]{52, 77, 65, 60, 115, -88, -27}, new byte[]{17, 99, 112, 90, 83, -61, -120, 60}), Double.valueOf(((double) i9) / 1000.0d));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i9);
        return q.i(new byte[]{-117, 35}, new byte[]{-85, 78, 86, -87, -62, 79, 124, 102}, sb);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void m(View view, boolean z8) {
        if (z8) {
            if (view.getVisibility() != 0) {
                view.setAlpha(0.0f);
                view.setVisibility(0);
                view.animate().alpha(1.0f).setDuration(800L).start();
                return;
            }
            return;
        }
        if (view.getVisibility() == 0) {
            view.setAlpha(1.0f);
            view.setVisibility(4);
            view.animate().alpha(0.0f).setDuration(800L).start();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setCamspeedLimitText(String str) {
        this.f816j.setText(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setMan_img_view(int i9) {
        int i10;
        ImageView imageView = this.f811b;
        String str = a.f3152a;
        if (i9 == 15) {
            i10 = 2131165687;
        } else if (i9 == 19) {
            i10 = 2131165705;
        } else if (i9 == 24) {
            i10 = 2131165684;
        } else if (i9 != 49) {
            switch (i9) {
                case 2:
                    i10 = 2131165695;
                    break;
                case 3:
                    i10 = 2131165697;
                    break;
                case 4:
                    i10 = 2131165688;
                    break;
                case 5:
                    i10 = 2131165689;
                    break;
                case 6:
                    i10 = 2131165690;
                    break;
                case 7:
                    i10 = 2131165691;
                    break;
                case 8:
                    i10 = 2131165704;
                    break;
                case 9:
                    i10 = 2131165700;
                    break;
                default:
                    i10 = 2131165694;
                    break;
            }
        } else {
            i10 = 2131165683;
        }
        imageView.setImageResource(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setRastVis(boolean z8) {
        m(this.f811b, z8);
        m(this.f814h, z8);
        m(this.f813g, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setSpeedLimitText(String str) {
        this.f812f.setVisibility(0);
        this.f815i.setText(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setTextSpeedWidg(int i9) {
        TextView textView = this.f818l;
        int i10 = Integer.parseInt(textView.getText().toString());
        Handler handler = new Handler(Looper.getMainLooper());
        int i11 = i9 - i10;
        int iAbs = Math.abs(i11);
        if (iAbs == 0) {
            textView.setText(String.valueOf(i9));
        } else {
            int i12 = 500 / iAbs;
            handler.postDelayed(new c(new int[]{i10}, i11 > 0 ? 1 : -1, i9, textView, handler, i12), i12);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setcameraDis(String str) {
        this.f817k.setText(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void a() {
        setVisibility(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void b() {
        setVisibility(8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void c() {
        b.a();
        setSpeed(b.d().getSpeed());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final int d() {
        return 400;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public WindowManager$LayoutParams getLayParams() {
        WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(-2, -2, Build$VERSION.SDK_INT >= 26 ? 2038 : 2002, 776, -3);
        windowManager$LayoutParams.gravity = 81;
        windowManager$LayoutParams.x = 0;
        windowManager$LayoutParams.y = 30;
        return windowManager$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(int i9, Context context) {
        if (i9 == 0) {
            View.inflate(context, 2131493119, this);
        } else {
            View.inflate(context, i9, this);
        }
        this.d = findViewById(2131297747);
        this.f819m = (TextView) findViewById(2131297626);
        this.c = (ImageView) findViewById(2131296854);
        this.f811b = (ImageView) findViewById(2131296955);
        this.e = (ImageSpeedometer) findViewById(2131296845);
        this.f812f = (RelativeLayout) findViewById(2131297383);
        this.f813g = (TextView) findViewById(2131297233);
        this.f814h = (TextView) findViewById(2131297232);
        this.f815i = (TextView) findViewById(2131297384);
        this.f816j = (TextView) findViewById(2131296277);
        this.f817k = (TextView) findViewById(2131296599);
        this.f820n = (FrameLayout) findViewById(2131296276);
        this.f821o = (RelativeLayout) findViewById(2131296478);
        this.f818l = (TextView) findViewById(2131297650);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, v0.h
    public void setBackgroundColor(int i9) {
        super.setBackgroundColor(i9);
        this.f821o.setBackgroundColor(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCameraInfoViewVis(boolean z8) {
        m(this.f820n, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public void setHudMassageObj(HUDMassageObj hUDMassageObj) {
        HUDMassageObj$HudSenderType hUDMassageObj$HudSenderType = hUDMassageObj.hudSenderType;
        if (hUDMassageObj$HudSenderType == HUDMassageObj$HudSenderType.NAVI) {
            if (hUDMassageObj.NaviOn.booleanValue()) {
                new Handler(Looper.getMainLooper()).post(new v0.a(this, hUDMassageObj, 0));
                return;
            } else {
                new Handler(Looper.getMainLooper()).post(new x0(9, this, hUDMassageObj.hudSenderType));
                return;
            }
        }
        if (hUDMassageObj$HudSenderType == HUDMassageObj$HudSenderType.ARAD) {
            if (hUDMassageObj.AradarOn.booleanValue()) {
                new Handler(Looper.getMainLooper()).post(new v0.a(this, hUDMassageObj, 1));
            } else {
                new Handler(Looper.getMainLooper()).post(new x0(9, this, hUDMassageObj.hudSenderType));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public void setSpeed(int i9) {
        if (this.e != null) {
            new Handler(Looper.getMainLooper()).post(new v0.b(this, i9, 0));
        }
        if (this.f818l == null || i9 < 0 || i9 >= 300) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new v0.b(this, i9, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTexColor(int i9) {
        this.f813g.setTextColor(i9);
        this.f814h.setTextColor(i9);
        this.f817k.setTextColor(i9);
    }

    @Override // v0.h
    public View getView() {
        return this;
    }

    @Override // v0.h
    public final void e(float f8) {
    }

    public void setRPM(int i9) {
    }
}
