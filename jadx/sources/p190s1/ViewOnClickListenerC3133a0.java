package p190s1;

import android.app.AlertDialog;
import android.graphics.Typeface;
import android.os.SystemClock;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.RunnableC0131f;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.example.navistart.home.WebLauncherActivity;
import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p141n.C2455p;
import p180r0.ViewOnClickListenerC3091d;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: s1.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC3133a0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8962b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3166q0 f8963c;

    public /* synthetic */ ViewOnClickListenerC3133a0(C3166q0 c3166q0, int i10) {
        this.f8962b = i10;
        this.f8963c = c3166q0;
    }

    /* JADX INFO: renamed from: a */
    private final void m4972a(View view) {
        final C3166q0 c3166q0 = this.f8963c;
        LinearLayout linearLayoutM5065j = c3166q0.m5065j();
        TextView textViewM5051P = c3166q0.m5051P(AbstractC1387m.m2421h(new byte[]{89, -71, -2, 86, 99, 119, -112, -86, 89, -97, -2, 80, 98, 68, -111, -106, -87, -3, -109, 56, 3, -26, -111, -105, 89, -105, -1, 104, 99, 118, -112, -89}, new byte[]{-119, 45, 46, -24, -77, -58, 64, 26}), 25, -1);
        textViewM5051P.setTypeface(Typeface.DEFAULT_BOLD);
        textViewM5051P.setMaxLines(1);
        linearLayoutM5065j.addView(textViewM5051P);
        linearLayoutM5065j.addView(c3166q0.m5066k(AbstractC1387m.m2421h(new byte[]{119, 111, -110, 9, 55, 31, 113, -108, 118, 125, -109, 58, 54, 44, 113, -108, -121, 45, -16, 82, 89, ByteCompanionObject.MAX_VALUE, 35, -15, 25, 45, -15, 83, 108, 126, 24, 1, 119, 79, -109, 58, 55, 26, 113, -105, 119, 72, -110, 0, -57, 126, 25, -15, 28, 45, -5, -94, 54, 47, 113, -97, 119, 74, -109, 54, 55, 30, 113, -104, 118, ByteCompanionObject.MAX_VALUE, -109, 55, -57, 126, 27, -15, 26, 45, -3, 82, 88, 126, 27, -16, 36, -35, -109, 51, 54, 37, 112, -96, 118, ByteCompanionObject.MAX_VALUE, -110, 2, 55, 16, 113, -110, 119, 67, 99, 82, 80, 126, 17, -15, 24, 44, -64, 83, 102, 126, 27, -15, 23}, new byte[]{-89, -3, 67, -126, -25, -82, -95, 33})));
        ScrollView scrollView = new ScrollView(c3166q0.getContext());
        scrollView.setFillViewport(true);
        scrollView.setVerticalScrollBarEnabled(false);
        LinearLayout linearLayoutM5057V = c3166q0.m5057V();
        if (C3179x.m5107a(c3166q0.getContext()).f9254f) {
            Button buttonM5053R = c3166q0.m5053R(AbstractC1387m.m2421h(new byte[]{52, 3, -92, -1, 78, ByteCompanionObject.MAX_VALUE, -39, 26, -60, 77, -53, -108, 30, 18, -79, 116, 95, 77, -54, -107, 40, 18, -68, 116, 89, 77, -52, -108, 17}, new byte[]{-28, -99, 116, 69, -98, -62, 9, -92}), false);
            buttonM5053R.setTextSize(16.0f);
            linearLayoutM5057V.addView(buttonM5053R, new LinearLayout.LayoutParams(-1, c3166q0.m5067l(60)));
        }
        linearLayoutM5057V.addView(c3166q0.m5047K(AbstractC1387m.m2421h(new byte[]{90, 76, 78, -38, 80, 55, -35, 105, 90, 77, 78, -17, 80, 0, 45, 39, 24, 15, 6, -108, 20, 69, -101, 39, 31, 15, 60, -108, 43}, new byte[]{-118, -33, -98, 68, ByteCompanionObject.MIN_VALUE, -107, 13, -9})));
        LinearLayout linearLayout = new LinearLayout(c3166q0.getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        LinearLayout linearLayoutM5058W = c3166q0.m5058W(-11155473, AbstractC1387m.m2421h(new byte[]{-94, 104, -5, 40, 42}, new byte[]{-110, 93, -63, 28, 24, -93, -106, 9}), AbstractC1387m.m2421h(new byte[]{-17, 88, 30, 16, 14, -47, ByteCompanionObject.MAX_VALUE, -42, 31, 47, 118, ByteCompanionObject.MIN_VALUE, 15, -28, 126, -19, -18, 125, 30, 16}, new byte[]{63, -1, -50, -96, -33, 80, -82, 93}), AbstractC1387m.m2421h(new byte[]{84, 21, 97, 65, 120, 22, -13, -49, 84, 50, 96, ByteCompanionObject.MAX_VALUE, 121, 32, 3, -96, 54, 94, 48, 17, 28, 69, -97, -95, 11, -81, 96, 121, -119, 68, -95, -96, 49, 95, 10, 16, 42, 68, -86, -96, 52, 94, 63, -31, 121, 33, -13, -64, 85, 13, 96, 113}, new byte[]{-124, -113, -80, -63, -87, -107, 35, 112}), c3166q0.m5064h(EnumC3158m0.f9101b));
        LinearLayout linearLayoutM5058W2 = c3166q0.m5058W(-17063, AbstractC1387m.m2421h(new byte[]{18, 78, -46}, new byte[]{-16, -42, 82, -76, -24, -60, 76, -90}), AbstractC1387m.m2421h(new byte[]{-22, 70, -73, 54, 111, 97, -113, 111, -22, 109, -73, 56}, new byte[]{58, -39, 103, -120, -65, -46, 95, -47}), AbstractC1387m.m2421h(new byte[]{49, -17, 60, -37, 62, -11, 113, 44, 49, -8, Base64.padSymbol, -18, 62, -7, 112, 17, 48, -50, Base64.padSymbol, -18, 62, -7, -127, 67, 89, 109, Base64.padSymbol, -17, 62, -9, 112, 18, 48, -49, 60, -48, 63, -58, 113, 46, 49, -11, 60, -37, -50, -104, 32, 67, 84, -99, 85, -65, 105, -103, 17, 66, 96}, new byte[]{-31, 77, -20, 110, -18, 73, -95, -109}), c3166q0.m5064h(EnumC3158m0.f9102c));
        LinearLayout linearLayoutM5058W3 = c3166q0.m5058W(-5665547, AbstractC1387m.m2421h(new byte[]{88, -87, 123}, new byte[]{-70, 48, -47, -121, -97, 3, -38, 76}), AbstractC1387m.m2421h(new byte[]{74, -95, 7, -102, 35, -58, 92, -34, 74, -121, 6, -87}, new byte[]{-102, Base64.padSymbol, -42, 25, -13, 113, -115, 85}), AbstractC1387m.m2421h(new byte[]{-30, 90, -123, -126, -100, -49, -46, -86, -30, 114, -123, -119, -100, -60, 46, 52, -29, 70, -124, -77, -100, -63, -46, -82, 18, 20, -19, 19, -100, -52, -45, -107, -30, 123, -123, -115, -100, -49, -46, -87, -30, 124, -124, -79, -100, -63, -46, -81, -29, 72}, new byte[]{50, -60, 85, 51, 76, 116, 2, 20}), c3166q0.m5064h(EnumC3158m0.f9103d));
        LinearLayout linearLayoutM5058W4 = c3166q0.m5058W(-9382222, AbstractC1387m.m2421h(new byte[]{-12, -97, 86}, new byte[]{22, 25, -19, 65, -17, 65, 118, -66}), AbstractC1387m.m2421h(new byte[]{44, -73, 111, 18, -41, 104, -91, -52, 44, -101, 111, 27, -42, 87, -92, -2, -36, -8, 59, 115, -71, 5, -56}, new byte[]{-4, 41, -65, -93, 7, -43, 117, 114}), AbstractC1387m.m2421h(new byte[]{1, -111, 88, 25, -27, 97, 63, 118, 0, -123, 88, 30, -27, 106, 63, 116, 0, -118, -88, 120, -76, 2, 85, 38, 100, -42, 60, 120, -74, 3, 96, 39, 88, -41, 11, 120, -69, -14, 62, 76, 1, -74, 89, 41, -28, 80, 62, 78, 1, -69, 88, 19, -28, 81}, new byte[]{-47, 6, -120, -87, 53, -46, -18, -10}), c3166q0.m5064h(EnumC3158m0.f9106g));
        linearLayout.addView(linearLayoutM5058W, c3166q0.m5063f());
        linearLayout.addView(linearLayoutM5058W2, c3166q0.m5063f());
        linearLayout.addView(linearLayoutM5058W3, c3166q0.m5063f());
        linearLayout.addView(linearLayoutM5058W4, c3166q0.m5063f());
        linearLayoutM5057V.addView(linearLayout, new LinearLayout.LayoutParams(-1, c3166q0.m5067l(168)));
        linearLayoutM5057V.addView(c3166q0.m5047K(AbstractC1387m.m2421h(new byte[]{-3, -110, -22, 117, -108, 88, -127, 107, -3, -104, -22, 76, 100, 16, -16, 39, -75, -40, -82, 62, -47, 16, -52, 39, -75, -40, -93}, new byte[]{45, 8, 58, -18, 68, -64, 81, -9})));
        LinearLayout linearLayout2 = new LinearLayout(c3166q0.getContext());
        linearLayout2.setOrientation(0);
        LinearLayout linearLayoutM5058W5 = c3166q0.m5058W(-35235, AbstractC1387m.m2421h(new byte[]{42, -26, 90}, new byte[]{-56, ByteCompanionObject.MAX_VALUE, -14, -108, 27, 120, -65, -84}), AbstractC1387m.m2421h(new byte[]{98, 121, -17, 49, 71, 51, -111, -98, 98, 85, -18, 15, 71, 50, -111, -110, -110, 54, -115, 95, 41, 87, -11, -16, 10, 55, -67, 95, 34, 87, -6, -15, Base64.padSymbol}, new byte[]{-78, -26, 63, -113, -105, -121, 65, 32}), AbstractC1387m.m2421h(new byte[]{117, 29, 122, -100, 74, 51, 16, -108, 38, 110, 43, -52, 36, 91, -126, -107, 24, 110, 36, 60, 75, 10, 16, -107, 29, 111, 22, -52, 46, 91, -120, -107, 31, 111, 27, -51, 28, 91, -120, -107, 16, 111, 18}, new byte[]{-91, -65, -85, 28, -102, -117, 48, 69}), c3166q0.m5064h(EnumC3158m0.f9108i));
        LinearLayout linearLayoutM5058W6 = c3166q0.m5058W(-11155473, AbstractC1387m.m2421h(new byte[]{-70, -18, 51}, new byte[]{88, 115, -73, -33, 104, 110, -106, -28}), AbstractC1387m.m2421h(new byte[]{-19, 19, 110, -112, 99, 14, -99, 3, -19, 57, 110, -98, 98, 60, -99, 7, -19, 57, 111, -86, -109, 99, -2, 81, -125, 81, 10, -11, 11, 98, -50, 81, -120, 81, 5, -12, 60}, new byte[]{Base64.padSymbol, -127, -66, 37, -77, -77, 76, -127}), AbstractC1387m.m2421h(new byte[]{-19, -93, -60, -37, -7, 60, -2, -89, -66, -48, -107, -117, -105, 84, 108, -90, ByteCompanionObject.MIN_VALUE, -48, -102, 123, -8, 5, -2, -90, -123, -47, -88, -117, -99, 84, 102, -90, -121, -47, -91, -118, -81, 84, 102, -90, -120, -47, -84}, new byte[]{Base64.padSymbol, 1, 21, 91, 41, -124, -34, 118}), c3166q0.m5064h(EnumC3158m0.f9109j));
        LinearLayout linearLayoutM5058W7 = c3166q0.m5058W(-35235, AbstractC1387m.m2421h(new byte[]{45, -24, 106}, new byte[]{-49, 113, -62, -24, 113, -107, -108, 7}), AbstractC1387m.m2421h(new byte[]{-98, -32, -39, 55, -119, 9, -6, -15, -98, -52, -40, 9, -119, 8, -6, -3, 110, -81, -74, 89, -23, 108, -85, -98, -49, -81, -71, 89, -17, 109, -110, -98, -50, -81, -71}, new byte[]{78, ByteCompanionObject.MAX_VALUE, 9, -119, 89, -67, 42, 79}), AbstractC1387m.m2421h(new byte[]{54, 124, 105, -64, 78, -87, -17, 13, 101, 15, 56, -112, 32, -63, 125, 12, 91, 15, 55, 96, 79, -112, -17, 12, 94, 14, 5, -112, 42, -63, 119, 12, 92, 14, 8, -111, 24, -63, 119, 12, 83, 14, 1}, new byte[]{-26, -34, -72, 64, -98, 17, -49, -36}), c3166q0.m5064h(EnumC3158m0.f9110k));
        LinearLayout linearLayoutM5058W8 = c3166q0.m5058W(-11155473, AbstractC1387m.m2421h(new byte[]{94, 57, 26}, new byte[]{-68, -92, -98, 3, 59, -51, ByteCompanionObject.MAX_VALUE, 81}), AbstractC1387m.m2421h(new byte[]{-58, -2, 59, -107, -8, 90, 5, 27, -58, -44, 59, -101, -7, 104, 5, 31, -58, -44, 58, -81, 8, 55, 107, 73, -90, -67, 106, -15, -87, 55, 100, 73, -96, -68, 83, -15, -88, 55, 100}, new byte[]{22, 108, -21, 32, 40, -25, -44, -103}), AbstractC1387m.m2421h(new byte[]{59, 34, 12, 111, -32, -121, 123, -95, 104, 81, 93, 63, -114, -17, -23, -96, 86, 81, 82, -49, -31, -66, 123, -96, 83, 80, 96, 63, -124, -17, -29, -96, 81, 80, 109, 62, -74, -17, -29, -96, 94, 80, 100}, new byte[]{-21, ByteCompanionObject.MIN_VALUE, -35, -17, 48, 63, 91, 112}), c3166q0.m5064h(EnumC3158m0.f9111l));
        linearLayout2.addView(linearLayoutM5058W5, c3166q0.m5063f());
        linearLayout2.addView(linearLayoutM5058W6, c3166q0.m5063f());
        linearLayout2.addView(linearLayoutM5058W7, c3166q0.m5063f());
        linearLayout2.addView(linearLayoutM5058W8, c3166q0.m5063f());
        linearLayoutM5057V.addView(linearLayout2, new LinearLayout.LayoutParams(-1, c3166q0.m5067l(168)));
        linearLayoutM5057V.addView(c3166q0.m5047K(AbstractC1387m.m2421h(new byte[]{54, -72, -53, -82, 42, 90, -89, 15, 54, -119, -53, -82, 42, 98, 87, 125, 114, -7, -123, -43, 91, 43, -43, 125, 69, -7, -124}, new byte[]{-26, 41, 27, 5, -6, -5, 119, -83})));
        LinearLayout linearLayoutM5059a = c3166q0.m5059a();
        linearLayoutM5057V.addView(linearLayoutM5059a, new LinearLayout.LayoutParams(-1, c3166q0.m5067l(92)));
        LinearLayout linearLayoutM5052Q = c3166q0.m5052Q();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, c3166q0.m5067l(92));
        layoutParams.topMargin = c3166q0.m5067l(8);
        linearLayoutM5057V.addView(linearLayoutM5052Q, layoutParams);
        scrollView.addView(linearLayoutM5057V, new FrameLayout.LayoutParams(-1, -2));
        linearLayoutM5065j.addView(scrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        Button buttonM5053R2 = c3166q0.m5053R(AbstractC1387m.m2421h(new byte[]{-51, -8, -62, -102, 42, -119, -82, -19, -52, -28, -61, -88, 43, -65}, new byte[]{29, 111, 18, 42, -6, 51, ByteCompanionObject.MAX_VALUE, 109}), false);
        buttonM5053R2.setTextSize(16.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(c3166q0.m5067l(170), c3166q0.m5067l(52));
        layoutParams2.gravity = 5;
        layoutParams2.topMargin = c3166q0.m5067l(16);
        linearLayoutM5065j.addView(buttonM5053R2, layoutParams2);
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(c3166q0.getContext()).setView(linearLayoutM5065j).create();
        if (linearLayoutM5057V.getChildCount() > 0 && (linearLayoutM5057V.getChildAt(0) instanceof Button)) {
            final int i10 = 0;
            linearLayoutM5057V.getChildAt(0).setOnClickListener(new View.OnClickListener() { // from class: s1.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i11 = i10;
                    AlertDialog alertDialog = alertDialogCreate;
                    C3166q0 c3166q1 = c3166q0;
                    switch (i11) {
                        case 0:
                            alertDialog.dismiss();
                            AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                            c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                            break;
                        case 1:
                            alertDialog.dismiss();
                            c3166q1.m5073t(true);
                            break;
                        case 2:
                            alertDialog.dismiss();
                            c3166q1.m5061d(EnumC3158m0.f9101b);
                            break;
                        case 3:
                            alertDialog.dismiss();
                            c3166q1.m5061d(EnumC3158m0.f9102c);
                            break;
                        case 4:
                            alertDialog.dismiss();
                            c3166q1.m5061d(EnumC3158m0.f9103d);
                            break;
                        case 5:
                            alertDialog.dismiss();
                            c3166q1.m5061d(EnumC3158m0.f9106g);
                            break;
                        case 6:
                            alertDialog.dismiss();
                            c3166q1.m5061d(EnumC3158m0.f9108i);
                            break;
                        case 7:
                            alertDialog.dismiss();
                            c3166q1.m5061d(EnumC3158m0.f9109j);
                            break;
                        case 8:
                            alertDialog.dismiss();
                            c3166q1.m5061d(EnumC3158m0.f9110k);
                            break;
                        case 9:
                            alertDialog.dismiss();
                            c3166q1.m5061d(EnumC3158m0.f9111l);
                            break;
                        default:
                            alertDialog.dismiss();
                            c3166q1.m5073t(false);
                            break;
                    }
                }
            });
        }
        final int i11 = 2;
        linearLayoutM5058W.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i12 = i11;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i12) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        final int i12 = 3;
        linearLayoutM5058W2.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i13 = i12;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i13) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        final int i13 = 4;
        linearLayoutM5058W3.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i14 = i13;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i14) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        final int i14 = 5;
        linearLayoutM5058W4.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i15 = i14;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i15) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        final int i15 = 6;
        linearLayoutM5058W5.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i16 = i15;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i16) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        final int i16 = 7;
        linearLayoutM5058W6.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i17 = i16;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i17) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        final int i17 = 8;
        linearLayoutM5058W7.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i18 = i17;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i18) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        final int i18 = 9;
        linearLayoutM5058W8.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i19 = i18;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i19) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        final int i19 = 10;
        linearLayoutM5059a.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i110 = i19;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i110) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        final int i20 = 1;
        linearLayoutM5052Q.setOnClickListener(new View.OnClickListener() { // from class: s1.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i110 = i20;
                AlertDialog alertDialog = alertDialogCreate;
                C3166q0 c3166q1 = c3166q0;
                switch (i110) {
                    case 0:
                        alertDialog.dismiss();
                        AbstractC3656k.m5878x(c3166q1.getContext(), AbstractC1387m.m2421h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                        c3166q1.f9175k.execute(new RunnableC3138c0(c3166q1, 6));
                        break;
                    case 1:
                        alertDialog.dismiss();
                        c3166q1.m5073t(true);
                        break;
                    case 2:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9101b);
                        break;
                    case 3:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9102c);
                        break;
                    case 4:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9103d);
                        break;
                    case 5:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9106g);
                        break;
                    case 6:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9108i);
                        break;
                    case 7:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9109j);
                        break;
                    case 8:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9110k);
                        break;
                    case 9:
                        alertDialog.dismiss();
                        c3166q1.m5061d(EnumC3158m0.f9111l);
                        break;
                    default:
                        alertDialog.dismiss();
                        c3166q1.m5073t(false);
                        break;
                }
            }
        });
        buttonM5053R2.setOnClickListener(new ViewOnClickListenerC3091d(alertDialogCreate, 1));
        c3166q0.m5050N(alertDialogCreate, TypedValues.Custom.TYPE_INT);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        EnumC3158m0 enumC3158m0;
        int i10 = this.f8962b;
        int i11 = 0;
        C3166q0 c3166q0 = this.f8963c;
        switch (i10) {
            case 0:
                c3166q0.m5076y();
                c3166q0.f9183s = false;
                c3166q0.f9186v = null;
                c3166q0.f9185u = null;
                c3166q0.f9170f.setVisibility(8);
                c3166q0.m5037A();
                c3166q0.m5042F();
                WebLauncherActivity webLauncherActivity = (WebLauncherActivity) c3166q0.f9166b.f6648c;
                webLauncherActivity.f1749j = false;
                webLauncherActivity.m1654t();
                break;
            case 1:
                C2455p c2455p = c3166q0.f9166b;
                C3156l0 c3156l0 = (C3156l0) view;
                C3152j0 c3152j0 = c3156l0.f9080b;
                if (c3166q0.f9183s) {
                    c3166q0.f9186v = c3152j0.f9043a;
                    c3166q0.m5037A();
                } else {
                    EnumC3158m0 enumC3158m1 = c3152j0.f9044b;
                    String str = c3152j0.f9049g;
                    if (enumC3158m1 == EnumC3158m0.f9106g) {
                        c3166q0.m5041E(true);
                        AbstractC3656k.m5878x(c3166q0.getContext(), AbstractC1387m.m2421h(new byte[]{69, 113, 75, -81, -17, 85, 53, -78, 68, 101, 75, -87, -17, 86, 53, -68, -75, 54, 38, -49, -127, 54, 86, -29, 30, 54, 34, 63, -18, 98, 52, -116, 69, 91, 121, -97, -103}, new byte[]{-107, -26, -101, 31, 63, -26, -28, 50}));
                    } else {
                        boolean zM5034r = C3166q0.m5034r(enumC3158m1);
                        EnumC3158m0 enumC3158m2 = c3152j0.f9044b;
                        if (zM5034r) {
                            int iM5046J = c3166q0.m5046J(enumC3158m2) >= 4 ? 1 : c3166q0.m5046J(enumC3158m2) + 1;
                            int iM5036w = C3166q0.m5036w(iM5046J);
                            switch (enumC3158m2.ordinal()) {
                                case 7:
                                    c3166q0.f9161F = iM5036w;
                                    break;
                                case 8:
                                    c3166q0.f9162G = iM5036w;
                                    break;
                                case 9:
                                    c3166q0.f9163H = iM5036w;
                                    break;
                                case 10:
                                    c3166q0.f9164I = iM5036w;
                                    break;
                            }
                            switch (enumC3158m2.ordinal()) {
                                case 7:
                                    enumC3158m0 = EnumC3158m0.f9109j;
                                    break;
                                case 8:
                                    enumC3158m0 = EnumC3158m0.f9108i;
                                    break;
                                case 9:
                                    enumC3158m0 = EnumC3158m0.f9111l;
                                    break;
                                case 10:
                                    enumC3158m0 = EnumC3158m0.f9110k;
                                    break;
                                default:
                                    enumC3158m0 = enumC3158m2;
                                    break;
                            }
                            if (iM5046J > 1) {
                                int iM5036w2 = C3166q0.m5036w(1);
                                switch (enumC3158m0.ordinal()) {
                                    case 7:
                                        c3166q0.f9161F = iM5036w2;
                                        break;
                                    case 8:
                                        c3166q0.f9162G = iM5036w2;
                                        break;
                                    case 9:
                                        c3166q0.f9163H = iM5036w2;
                                        break;
                                    case 10:
                                        c3166q0.f9164I = iM5036w2;
                                        break;
                                }
                            }
                            c3166q0.m5039C();
                            c3166q0.f9177m.execute(new RunnableC0131f(c3166q0, enumC3158m2, iM5046J, 9));
                        } else if (enumC3158m2 == EnumC3158m0.f9104e) {
                            C1919e c1919eM3004b = AbstractC1920f.m3004b(c3166q0.getContext(), str);
                            if (AbstractC1920f.m3006d(c1919eM3004b)) {
                                c2455p.m3811i(c1919eM3004b);
                            }
                        } else if (enumC3158m2 == EnumC3158m0.f9105f) {
                            if (c3152j0.f9051i) {
                                str = c3152j0.f9050h;
                            }
                            C1919e c1919eM3004b2 = AbstractC1920f.m3004b(c3166q0.getContext(), str);
                            if (AbstractC1920f.m3006d(c1919eM3004b2)) {
                                c2455p.m3811i(c1919eM3004b2);
                                c3152j0.f9051i = !c3152j0.f9051i;
                                c3166q0.m5076y();
                                c3166q0.m5055T(c3156l0);
                            }
                        }
                    }
                }
                break;
            case 2:
                if (!c3166q0.f9183s) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (jElapsedRealtime - c3166q0.f9159D > 700) {
                        c3166q0.f9158C = 0;
                    }
                    c3166q0.f9159D = jElapsedRealtime;
                    int i12 = c3166q0.f9158C + 1;
                    c3166q0.f9158C = i12;
                    if (i12 >= 5) {
                        c3166q0.f9158C = 0;
                        c3166q0.f9159D = 0L;
                        c3166q0.performHapticFeedback(1);
                        C3153k c3153k = ((WebLauncherActivity) c3166q0.f9166b.f6648c).f1743d;
                        if (c3153k != null) {
                            c3153k.m5013z();
                        }
                        break;
                    }
                }
                break;
            case 3:
                m4972a(view);
                break;
            case 4:
                boolean z9 = c3166q0.f9184t;
                c3166q0.f9184t = !z9;
                c3166q0.f9171g.setText(!z9 ? AbstractC1387m.m2421h(new byte[]{102, 89, 79, -49, 17, -121, 108, -62, 3, 23, 29, -95, -117, -122, 88}, new byte[]{-74, -58, -97, 113, 49, 86, -19, 18}) : AbstractC1387m.m2421h(new byte[]{60, 81, 94, -54, -96, -55, -55, -83, 60, 78, 94, -52, -96, -54, -55, -94}, new byte[]{-20, -16, -114, 120, 112, 119, 25, 28}));
                if (c3166q0.f9184t) {
                    ArrayList arrayList = c3166q0.f9181q;
                    int size = arrayList.size();
                    while (i11 < size) {
                        Object obj = arrayList.get(i11);
                        i11++;
                        C3166q0.m5029O((C3152j0) obj);
                    }
                    c3166q0.m5072s();
                }
                c3166q0.m5076y();
                break;
            case 5:
                c3166q0.m5044H(0.88f);
                break;
            case 6:
                c3166q0.m5044H(1.14f);
                break;
            case 7:
                ArrayList arrayList2 = c3166q0.f9181q;
                if (c3166q0.f9186v != null) {
                    for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                        if (c3166q0.f9186v.equals(((C3152j0) arrayList2.get(size2)).f9043a)) {
                            arrayList2.remove(size2);
                        }
                    }
                    c3166q0.f9186v = null;
                    c3166q0.m5076y();
                    c3166q0.m5037A();
                    break;
                }
                break;
            default:
                String str2 = c3166q0.f9185u;
                if (str2 == null) {
                    str2 = "";
                }
                c3166q0.m5074u(str2);
                c3166q0.m5076y();
                c3166q0.f9183s = false;
                c3166q0.f9186v = null;
                c3166q0.f9185u = null;
                c3166q0.f9170f.setVisibility(8);
                c3166q0.m5037A();
                c3166q0.m5042F();
                WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) c3166q0.f9166b.f6648c;
                webLauncherActivity2.f1749j = false;
                webLauncherActivity2.m1654t();
                break;
        }
    }
}
