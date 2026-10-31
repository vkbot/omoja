package com.example.navistart.SpeedBoard;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.example.navistart.R;
import com.example.navistart.SpeedBoard.PPSView;
import com.example.navistart.cores.HUDMassageObj;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import com.google.protobuf.AbstractC1178q;
import java.util.Locale;
import org.apache.commons.net.nntp.NNTPReply;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p109k0.AbstractC2025a;
import p190s1.RunnableC3180x0;
import p216v0.InterfaceC3321h;
import p216v0.RunnableC3316c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class PPSView extends FrameLayout implements InterfaceC3321h {

    /* JADX INFO: renamed from: b */
    public ImageView f1591b;

    /* JADX INFO: renamed from: c */
    public ImageView f1592c;

    /* JADX INFO: renamed from: d */
    public View f1593d;

    /* JADX INFO: renamed from: e */
    public ImageSpeedometer f1594e;

    /* JADX INFO: renamed from: f */
    public RelativeLayout f1595f;

    /* JADX INFO: renamed from: g */
    public TextView f1596g;

    /* JADX INFO: renamed from: h */
    public TextView f1597h;

    /* JADX INFO: renamed from: i */
    public TextView f1598i;

    /* JADX INFO: renamed from: j */
    public TextView f1599j;

    /* JADX INFO: renamed from: k */
    public TextView f1600k;

    /* JADX INFO: renamed from: l */
    public TextView f1601l;

    /* JADX INFO: renamed from: m */
    public TextView f1602m;

    /* JADX INFO: renamed from: n */
    public FrameLayout f1603n;

    /* JADX INFO: renamed from: o */
    public RelativeLayout f1604o;

    public PPSView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m1539k(0, context);
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m1528g(PPSView pPSView, HUDMassageObj hUDMassageObj) {
        pPSView.setCameraInfoViewVis(true);
        pPSView.setCamspeedLimitText(hUDMassageObj.getSpeedlimit() > 0 ? String.valueOf(hUDMassageObj.getSpeedlimit()) : AbstractC1387m.m2421h(new byte[]{34, -53}, new byte[]{15, -26, -64, -112, -33, 33, 50, -87}));
        StringBuilder sb = new StringBuilder();
        sb.append(hUDMassageObj.v_mRemainDis);
        pPSView.setcameraDis(AbstractC1178q.m2075i(new byte[]{110, -66}, new byte[]{78, -45, -25, -61, -85, -102, 48, 124}, sb));
    }

    /* JADX INFO: renamed from: i */
    public static void m1530i(PPSView pPSView, HUDMassageObj hUDMassageObj) {
        pPSView.setRastVis(true);
        pPSView.setMan_img_view(hUDMassageObj.v_mTurnType);
        int i10 = hUDMassageObj.v_mRemainDis;
        int i11 = hUDMassageObj.v_mTurnDis;
        pPSView.f1597h.setText(m1532l(i10));
        pPSView.f1596g.setText(m1532l(i11));
        if (hUDMassageObj.getSpeedlimit() > 0) {
            pPSView.setSpeedLimitText(String.valueOf(hUDMassageObj.getSpeedlimit()));
        } else {
            pPSView.setSpeedLimitText("");
            pPSView.f1595f.setVisibility(4);
        }
    }

    /* JADX INFO: renamed from: j */
    public static void m1531j(PPSView pPSView, HUDMassageObj.HudSenderType hudSenderType) {
        if (hudSenderType == HUDMassageObj.HudSenderType.NAVI) {
            pPSView.setRastVis(false);
            pPSView.setSpeedLimitText("");
            pPSView.f1595f.setVisibility(4);
        }
        if (hudSenderType == HUDMassageObj.HudSenderType.ARAD) {
            pPSView.setCameraInfoViewVis(false);
            pPSView.setCamspeedLimitText("");
            pPSView.setcameraDis("");
        }
    }

    /* JADX INFO: renamed from: l */
    public static String m1532l(int i10) {
        if (i10 >= 1000) {
            return String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{52, 77, 65, 60, 115, -88, -27}, new byte[]{17, 99, 112, 90, 83, -61, -120, 60}), Double.valueOf(((double) i10) / 1000.0d));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i10);
        return AbstractC1178q.m2075i(new byte[]{-117, 35}, new byte[]{-85, 78, 86, -87, -62, 79, 124, 102}, sb);
    }

    /* JADX INFO: renamed from: m */
    public static void m1533m(View view, boolean z9) {
        if (z9) {
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

    private void setCamspeedLimitText(String str) {
        this.f1599j.setText(str);
    }

    private void setMan_img_view(int i10) {
        int i11;
        ImageView imageView = this.f1591b;
        String str = AbstractC2025a.f5535a;
        if (i10 == 15) {
            i11 = R.drawable.notification_finish_sdl;
        } else if (i10 == 19) {
            i11 = R.drawable.notification_uturn_right_sdl;
        } else if (i10 == 24) {
            i11 = R.drawable.notification_enter_roundabout_sdl;
        } else if (i10 != 49) {
            switch (i10) {
                case 2:
                    i11 = R.drawable.notification_left_sdl;
                    break;
                case 3:
                    i11 = R.drawable.notification_right_sdl;
                    break;
                case 4:
                    i11 = R.drawable.notification_fork_left_sdl;
                    break;
                case 5:
                    i11 = R.drawable.notification_fork_right_sdl;
                    break;
                case 6:
                    i11 = R.drawable.notification_hard_left_sdl;
                    break;
                case 7:
                    i11 = R.drawable.notification_hard_right_sdl;
                    break;
                case 8:
                    i11 = R.drawable.notification_uturn_left_sdl;
                    break;
                case 9:
                    i11 = R.drawable.notification_straight_sdl;
                    break;
                default:
                    i11 = R.drawable.notification_leave_roundabout_sdl;
                    break;
            }
        } else {
            i11 = R.drawable.notification_board_ferry_sdl;
        }
        imageView.setImageResource(i11);
    }

    private void setRastVis(boolean z9) {
        m1533m(this.f1591b, z9);
        m1533m(this.f1597h, z9);
        m1533m(this.f1596g, z9);
    }

    private void setSpeedLimitText(String str) {
        this.f1595f.setVisibility(0);
        this.f1598i.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextSpeedWidg(int i10) {
        TextView textView = this.f1601l;
        int i11 = Integer.parseInt(textView.getText().toString());
        Handler handler = new Handler(Looper.getMainLooper());
        int i12 = i10 - i11;
        int iAbs = Math.abs(i12);
        if (iAbs == 0) {
            textView.setText(String.valueOf(i10));
        } else {
            int i13 = 500 / iAbs;
            handler.postDelayed(new RunnableC3316c(new int[]{i11}, i12 > 0 ? 1 : -1, i10, textView, handler, i13), i13);
        }
    }

    private void setcameraDis(String str) {
        this.f1600k.setText(str);
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: a */
    public final void mo1534a() {
        setVisibility(0);
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: b */
    public final void mo1535b() {
        setVisibility(8);
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: c */
    public final void mo1536c() {
        C1652b.m2734a();
        setSpeed(C1652b.m2736d().getSpeed());
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: d */
    public final int mo1537d() {
        return NNTPReply.SERVICE_DISCONTINUED;
    }

    @Override // p216v0.InterfaceC3321h
    public WindowManager.LayoutParams getLayParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, 776, -3);
        layoutParams.gravity = 81;
        layoutParams.x = 0;
        layoutParams.y = 30;
        return layoutParams;
    }

    /* JADX INFO: renamed from: k */
    public final void m1539k(int i10, Context context) {
        if (i10 == 0) {
            View.inflate(context, R.layout.pps_view, this);
        } else {
            View.inflate(context, i10, this);
        }
        this.f1593d = findViewById(R.id.viewWeatherBlock);
        this.f1602m = (TextView) findViewById(R.id.textViewWeather);
        this.f1592c = (ImageView) findViewById(R.id.imageViewWeather);
        this.f1591b = (ImageView) findViewById(R.id.man_img_view);
        this.f1594e = (ImageSpeedometer) findViewById(R.id.imageSpeedometer);
        this.f1595f = (RelativeLayout) findViewById(R.id.speedLimitBlock);
        this.f1596g = (TextView) findViewById(R.id.rast_man);
        this.f1597h = (TextView) findViewById(R.id.rast_finish);
        this.f1598i = (TextView) findViewById(R.id.speedLimitText);
        this.f1599j = (TextView) findViewById(R.id.CamspeedLimitText);
        this.f1600k = (TextView) findViewById(R.id.cameraDis);
        this.f1603n = (FrameLayout) findViewById(R.id.CamAlarm);
        this.f1604o = (RelativeLayout) findViewById(R.id.back_Frame_speedBoard);
        this.f1601l = (TextView) findViewById(R.id.textspeedwidg);
    }

    @Override // android.view.View, p216v0.InterfaceC3321h
    public void setBackgroundColor(int i10) {
        super.setBackgroundColor(i10);
        this.f1604o.setBackgroundColor(i10);
    }

    public void setCameraInfoViewVis(boolean z9) {
        m1533m(this.f1603n, z9);
    }

    @Override // p216v0.InterfaceC3321h
    public void setHudMassageObj(final HUDMassageObj hUDMassageObj) {
        HUDMassageObj.HudSenderType hudSenderType = hUDMassageObj.hudSenderType;
        if (hudSenderType == HUDMassageObj.HudSenderType.NAVI) {
            if (hUDMassageObj.NaviOn.booleanValue()) {
                final int i10 = 0;
                new Handler(Looper.getMainLooper()).post(new Runnable(this) { // from class: v0.a

                    /* JADX INFO: renamed from: c */
                    public final /* synthetic */ PPSView f9702c;

                    {
                        this.f9702c = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i10) {
                            case 0:
                                PPSView.m1530i(this.f9702c, hUDMassageObj);
                                break;
                            default:
                                PPSView.m1528g(this.f9702c, hUDMassageObj);
                                break;
                        }
                    }
                });
                return;
            } else {
                new Handler(Looper.getMainLooper()).post(new RunnableC3180x0(9, this, hUDMassageObj.hudSenderType));
                return;
            }
        }
        if (hudSenderType == HUDMassageObj.HudSenderType.ARAD) {
            if (hUDMassageObj.AradarOn.booleanValue()) {
                final int i11 = 1;
                new Handler(Looper.getMainLooper()).post(new Runnable(this) { // from class: v0.a

                    /* JADX INFO: renamed from: c */
                    public final /* synthetic */ PPSView f9702c;

                    {
                        this.f9702c = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i11) {
                            case 0:
                                PPSView.m1530i(this.f9702c, hUDMassageObj);
                                break;
                            default:
                                PPSView.m1528g(this.f9702c, hUDMassageObj);
                                break;
                        }
                    }
                });
            } else {
                new Handler(Looper.getMainLooper()).post(new RunnableC3180x0(9, this, hUDMassageObj.hudSenderType));
            }
        }
    }

    @Override // p216v0.InterfaceC3321h
    public void setSpeed(final int i10) {
        if (this.f1594e != null) {
            final int i11 = 0;
            new Handler(Looper.getMainLooper()).post(new Runnable(this) { // from class: v0.b

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ PPSView f9705c;

                {
                    this.f9705c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i11) {
                        case 0:
                            this.f9705c.f1594e.m5573k(i10);
                            break;
                        default:
                            this.f9705c.setTextSpeedWidg(i10);
                            break;
                    }
                }
            });
        }
        if (this.f1601l == null || i10 < 0 || i10 >= 300) {
            return;
        }
        final int i12 = 1;
        new Handler(Looper.getMainLooper()).post(new Runnable(this) { // from class: v0.b

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ PPSView f9705c;

            {
                this.f9705c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i12) {
                    case 0:
                        this.f9705c.f1594e.m5573k(i10);
                        break;
                    default:
                        this.f9705c.setTextSpeedWidg(i10);
                        break;
                }
            }
        });
    }

    public void setTexColor(int i10) {
        this.f1596g.setTextColor(i10);
        this.f1597h.setTextColor(i10);
        this.f1600k.setTextColor(i10);
    }

    @Override // p216v0.InterfaceC3321h
    public View getView() {
        return this;
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: e */
    public final void mo1538e(float f8) {
    }

    public void setRPM(int i10) {
    }
}
