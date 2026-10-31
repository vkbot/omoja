package com.example.navistart.DialogUni.Fragmenti;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.navigation.ui.a;
import com.bumptech.glide.m;
import com.google.protobuf.q;
import java.util.ArrayDeque;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import l0.b;
import m0.f0;
import m0.g0;
import m0.h0;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Keep
public class ExlantixTelemetryFragment extends b {
    private boolean active;
    private int background;
    private int blue;
    private h0 chart;
    private TextView consumption;
    private TextView details;
    private TextView fuel;
    private int generation;
    private int green;
    private int ink;
    private long lastResponse;
    private int muted;
    private TextView power;
    private TextView rpm;
    private TextView soc;
    private TextView status;
    private TextView trip;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final AtomicBoolean busy = new AtomicBoolean();
    private final ArrayDeque<g0> history = new ArrayDeque<>();
    private int minutes = 5;
    private final Runnable tick = new m(7, this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int A(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.green;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ArrayDeque B(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.history;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long C(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.lastResponse;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Handler D(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.main;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int E(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.minutes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int F(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.muted;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ TextView G(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.status;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ExecutorService H(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.worker;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void I(ExlantixTelemetryFragment exlantixTelemetryFragment, long j9) {
        exlantixTelemetryFragment.lastResponse = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int J(ExlantixTelemetryFragment exlantixTelemetryFragment, float f8) {
        return exlantixTelemetryFragment.dp(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean K(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.isExlantix();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void L(ExlantixTelemetryFragment exlantixTelemetryFragment, JSONObject jSONObject) {
        exlantixTelemetryFragment.render(jSONObject);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LinearLayout card(LinearLayout linearLayout) {
        LinearLayout linearLayoutColumn = column();
        decorate(linearLayoutColumn);
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams.topMargin = dp(12.0f);
        linearLayout.addView(linearLayoutColumn, linearLayout$LayoutParams);
        return linearLayoutColumn;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LinearLayout column() {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void decorate(LinearLayout linearLayout) {
        linearLayout.setBackgroundResource(2131165593);
        linearLayout.setPadding(dp(12.0f), dp(9.0f), dp(12.0f), dp(9.0f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int dp(float f8) {
        return Math.round(f8 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isExlantix() {
        return e0.m.h(new byte[]{41, 42, -34, 26, -66, 23, 75, -42, 41, 38}, new byte[]{108, 114, -110, 91, -16, 67, 2, -114}).equals(h0.b.o().loadString(e0.m.h(new byte[]{103, -45, 123, 37, 51, -89, 101, -14, 72, -9}, new byte[]{36, -110, 41, 117, 65, -56, 3, -101}), ""));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onCreateView$0(int i9, CompoundButton compoundButton, boolean z8) {
        if (z8) {
            this.minutes = i9;
            h0 h0Var = this.chart;
            if (h0Var != null) {
                h0Var.invalidate();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$onCreateView$1(LinearLayout linearLayout, Button button, View view) {
        boolean z8 = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z8 ? 0 : 8);
        button.setText(z8 ? e0.m.h(new byte[]{101, 94, 124, 103, 47, -94, -19, 31, 100, 125, 125, 81, -34, -14, -125, 68, 11, 47, 24, 12, 126, -14, -126, 68, 4, 47, 17, 13, 64, -13, -67, 69, 55, 47, 20}, new byte[]{-75, -1, -84, -35, -2, 34, 60, -108}) : e0.m.h(new byte[]{42, ByteCompanionObject.MIN_VALUE, 86, 126, 27, 89, 34, -48, 42, -95, 86, 113, 27, 80, 35, -27, 42, -86}, new byte[]{-6, 31, -122, -64, -53, -19, -13, 80}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TextView metric(LinearLayout linearLayout, String str, int i9) {
        LinearLayout linearLayoutColumn = column();
        decorate(linearLayoutColumn);
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(0, -1, 1.0f);
        linearLayout$LayoutParams.setMargins(dp(3.0f), 0, dp(3.0f), 0);
        linearLayout.addView(linearLayoutColumn, linearLayout$LayoutParams);
        linearLayoutColumn.addView(text(str, 13, this.muted));
        TextView textViewText = text(e0.m.h(new byte[]{28, 42, -105}, new byte[]{-2, -86, 3, 111, -119, 76, 19, -32}), 23, i9);
        textViewText.setTypeface(null, 1);
        linearLayoutColumn.addView(textViewText);
        return textViewText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void render(JSONObject jSONObject) {
        TextView textView = this.status;
        if (textView == null) {
            return;
        }
        textView.setText(jSONObject == null ? e0.m.h(new byte[]{27, 112, -52, 40, -96, -7, -12, 27, 27, 94, -52, 35, -96, -7, -12, 26, -21, 62, -88, 78, -64, -111, -103, ByteCompanionObject.MAX_VALUE, 118, 63, -105, 79, -11}, new byte[]{-53, -18, 28, -98, 112, 65, 36, -81}) : e0.m.h(new byte[]{110, 44, 88, -28, 80, 97, -32, 34, 11, 17, 96}, new byte[]{43, 84, 52, -123, 62, 21, -119, 90}));
        this.soc.setText(value(jSONObject, e0.m.h(new byte[]{4, 51, -124, -6, 104, 95, -109, 121, 25, 40}, new byte[]{119, 92, -25, -86, 13, 45, -16, 28}), 0, e0.m.h(new byte[]{79}, new byte[]{106, 112, 40, -36, 84, 99, -66, 108})));
        this.fuel.setText(value(jSONObject, e0.m.h(new byte[]{-35, -81, 77, -92, -53, 107, 109, -14, -34, -87}, new byte[]{-69, -38, 40, -56, -121, 2, 25, ByteCompanionObject.MIN_VALUE}), 1, e0.m.h(new byte[]{89, -8}, new byte[]{-119, 67, 106, -66, 87, 45, 71, -72})));
        this.power.setText(value(jSONObject, e0.m.h(new byte[]{-67, -89, 21, 109, -99, -22, -68}, new byte[]{-51, -56, 98, 8, -17, -95, -53, -56}), 1, e0.m.h(new byte[]{124, -76, -2, 32, -73, -119}, new byte[]{-84, 14, 46, -78, 102, 11, 82, -116})));
        this.rpm.setText(value(jSONObject, e0.m.h(new byte[]{60, 92, 25, 39, -6, -33, 98, 126, 52}, new byte[]{89, 50, 126, 78, -108, -70, 48, 14}), 0, e0.m.h(new byte[]{47, 115, -118, 113, 58, 16, -101, 112, 71, 29, -25}, new byte[]{-1, -51, 90, -64, 21, -64, 39, -96})));
        this.trip.setText(e0.m.h(new byte[]{-89, -86, -5, -48, 114, 78, -75, -17, -89, -127, -5, -44, 114, 75, 69, 25, 87, -9, -100, 78}, new byte[]{119, 53, 43, 110, -94, -5, 101, 88}) + value(jSONObject, e0.m.h(new byte[]{39, -28, -72, 78, -92, 62}, new byte[]{83, -106, -47, 62, -17, 83, -82, -49}), 1, e0.m.h(new byte[]{83, -110, -29, -72}, new byte[]{-125, 40, 51, 4, -51, 120, -34, 110})));
        this.consumption.setText(e0.m.h(new byte[]{76, 23, -92, 4, -56, -15, -51, 110, 76, 9, -92, 0, 57, -96, -83, 59, 41, 103, -55, 100, -82, -96, -92, 59, 33, 103, -60, -114, 57}, new byte[]{-100, -73, 116, -76, 25, 112, 28, -21}) + value(jSONObject, e0.m.h(new byte[]{-26, 75, -77, 95, -61, 32, -35, -86, -25, 126, -78, 83, -62, 13, -104, -1, -77, 115, -86}, new byte[]{-125, 56, -57, 54, -82, 65, -87, -49}), 1, e0.m.h(new byte[]{9, 35, 115, 53, -78, -31, -31, -77, 99, 72, -32}, new byte[]{-39, -104, 92, 4, -126, -47, -63, 99})));
        this.details.setText(e0.m.h(new byte[]{-37, -41, -73, -107, 47, 98, 40, 17, -38, -58, -73, -112, 47, 111, -62, -127}, new byte[]{11, 70, 103, 37, -2, -32, -8, -95}) + value(jSONObject, e0.m.h(new byte[]{-109, ByteCompanionObject.MAX_VALUE, 109, -116, 121, 23, 18, -118, -98, 114, 109, -103, 123, 0, Base64.padSymbol}, new byte[]{-15, 30, 25, -8, 28, 101, 107, -36}), 0, e0.m.h(new byte[]{79, -30}, new byte[]{-97, 112, -40, 68, 83, 90, -6, -31})) + e0.m.h(new byte[]{107, -12, -11, 41}, new byte[]{75, 54, 66, 9, -114, -122, 59, -35}) + value(jSONObject, e0.m.h(new byte[]{84, 25, -58, -14, 29, 31, -115, -25, 67, 10, -64, -29, 22, 25, -75}, new byte[]{54, 120, -78, -122, 120, 109, -12, -92}), 1, e0.m.h(new byte[]{6, -9}, new byte[]{-42, 103, 40, -77, 86, -77, -43, -71})) + e0.m.h(new byte[]{37, 38, -31, -74, -116, -93, -79, 71, -83, 38, -50, -74, ByteCompanionObject.MIN_VALUE, -94, -127, 71, -96, -42, -95, -25, -30, -57, -32, 20, -2, 122, 74, 70}, new byte[]{47, -10, 112, 102, 50, 114, 49, -106}) + value(jSONObject, e0.m.h(new byte[]{84, -121, -15, 45, -111, 122, 30, 84, 95, -115, -48}, new byte[]{56, -24, -122, 123, -2, 22, 106, 53}), 1, e0.m.h(new byte[]{11, 68}, new byte[]{-37, -42, -80, -54, -106, 12, -14, 2})) + e0.m.h(new byte[]{-46, -72, 83, -68, ByteCompanionObject.MAX_VALUE, -44, 122, 77, 104, -71, 69, 76, 30, -127, 21, 35, 8, -36, 20, -36, -17, -58, 114, -67, 9, -27, 20, -41, 31, -79, 21, 39, 9, -22, 21, -20, 31, -70, -1, -67}, new byte[]{-40, 104, -60, 108, -49, 4, -59, -99}) + value(jSONObject, e0.m.h(new byte[]{-7, 33, -46, 92, 123, 105, -42, -65, -50, 44, -39, 88, 106, 80, -46}, new byte[]{-100, 77, -73, 63, 15, 27, -65, -36}), 0, e0.m.h(new byte[]{-30, 2, -29, -52}, new byte[]{50, -72, 51, 112, -33, -86, -125, 95})) + e0.m.h(new byte[]{19, 7, 87, -8, -84, -76, -121, -40, -29, 120, 48, 111, -84, -67, -121, -48, 9, -27}, new byte[]{51, -59, -32, -40, 124, 5, 87, 109}) + value(jSONObject, e0.m.h(new byte[]{30, 76, 112, 120, -107, 58, 76, 117, 29, 114, 120}, new byte[]{120, 57, 21, 20, -57, 91, 34, 18}), 0, e0.m.h(new byte[]{119, 93, 10, 97}, new byte[]{-89, -25, -38, -35, 39, 53, 10, -10})) + e0.m.h(new byte[]{-114, -27, -73, 69, -14, -55, 35, 12, 53, -27, -99, 68, -63, 57, -36, -4, 70, -126, 8, 69, -1, -55, 38, 12, 49, -27, -110, 69, -16, -56, 29, 12, 58, 15, 8}, new byte[]{-124, 53, 40, -108, 114, 25, -99, -36}) + value(jSONObject, e0.m.h(new byte[]{114, -88, -28, -112, 98, 26, -126, 70, 114, -88, -28, -125, 108, 27}, new byte[]{6, -38, -115, -32, 39, 118, -25, 37}), 1, e0.m.h(new byte[]{93, 59, -58, -59}, new byte[]{-115, -127, 22, 121, -12, 105, 5, 39})) + e0.m.h(new byte[]{68, 41, 86, 37, -31, 68, -63, -15, -76, 86, 49, -78, -31, 77, -63, -7, 94, -53}, new byte[]{100, -21, -31, 5, 49, -11, 17, 68}) + value(jSONObject, e0.m.h(new byte[]{-91, -47, -101, -126, 20, -46, 79, 2, -102, -50}, new byte[]{-47, -93, -14, -14, 82, -89, 42, 110}), 1, e0.m.h(new byte[]{97, -92, -110, 56}, new byte[]{-79, 30, 66, -124, 62, -55, -82, 62})) + e0.m.h(new byte[]{-88, 27, 112, 27, -46, -112, -65, 24, 32, 27, 101, 27, -37, -112, -74, -23, 115, 75, 8, 122, -127, -63, -34, 76, 114, 117, 8, 126, 112, 1, 53, -23}, new byte[]{-94, -53, -40, -54, 80, 64, 15, -55}) + value(jSONObject, e0.m.h(new byte[]{83, 74, 72, -64, 46, -114, 67, 28, 88, 71, 112, -104, 104, -37, 78, 4}, new byte[]{Base64.padSymbol, 43, 60, -87, 88, -21, 5, 105}), 1, e0.m.h(new byte[]{-110, -125, 65, 45, -100, -24, 120, 84, -8, -24, -46}, new byte[]{66, 56, 110, 28, -84, -40, 88, -124})));
        this.chart.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LinearLayout row(LinearLayout linearLayout) {
        LinearLayout linearLayout2 = new LinearLayout(requireContext());
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams.topMargin = dp(10.0f);
        linearLayout.addView(linearLayout2, linearLayout$LayoutParams);
        return linearLayout2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void t(ExlantixTelemetryFragment exlantixTelemetryFragment, int i9, CompoundButton compoundButton, boolean z8) {
        exlantixTelemetryFragment.lambda$onCreateView$0(i9, compoundButton, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TextView text(String str, int i9, int i10) {
        TextView textView = new TextView(requireContext());
        textView.setText(str);
        textView.setTextSize(i9);
        textView.setTextColor(i10);
        return textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void u(LinearLayout linearLayout, Button button, View view) {
        lambda$onCreateView$1(linearLayout, button, view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean v(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.active;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String value(JSONObject jSONObject, String str, int i9, String str2) {
        String strH;
        double dOptDouble = jSONObject != null ? jSONObject.optDouble(str, Double.NaN) : Double.NaN;
        StringBuilder sb = new StringBuilder();
        if (Double.isFinite(dOptDouble)) {
            Locale locale = Locale.getDefault();
            StringBuilder sb2 = new StringBuilder();
            q.t(new byte[]{10, 88}, new byte[]{47, 118, -123, 16, -27, -62, 24, -22}, sb2, i9);
            strH = String.format(locale, q.i(new byte[]{32}, new byte[]{70, -89, 88, -96, -124, -19, 74, -104}, sb2), Double.valueOf(dOptDouble));
        } else {
            strH = e0.m.h(new byte[]{54, -112, 78}, new byte[]{-44, 16, -38, -98, -29, -51, -60, -11});
        }
        sb.append(strH);
        sb.append(" ");
        sb.append(str2);
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int w(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.blue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ AtomicBoolean x(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.busy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ h0 y(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.chart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int z(ExlantixTelemetryFragment exlantixTelemetryFragment) {
        return exlantixTelemetryFragment.generation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.ink = requireContext().getColor(2131035009);
        this.muted = requireContext().getColor(2131035010);
        this.background = requireContext().getColor(2131034999);
        this.blue = requireContext().getColor(2131035003);
        this.green = requireContext().getColor(2131035006);
        if (bundle != null) {
            this.minutes = bundle.getInt(e0.m.h(new byte[]{-33, -43, -119, -122, -35, 113, -60}, new byte[]{-78, -68, -25, -13, -87, 20, -73, 62}), 5);
        }
        int i9 = this.minutes;
        if (i9 != 5 && i9 != 10 && i9 != 30) {
            this.minutes = 5;
        }
        ScrollView scrollView = new ScrollView(requireContext());
        int i10 = 1;
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(this.background);
        LinearLayout linearLayoutColumn = column();
        linearLayoutColumn.setPadding(dp(16.0f), dp(16.0f), dp(16.0f), dp(20.0f));
        scrollView.addView(linearLayoutColumn);
        TextView textViewText = text(e0.m.h(new byte[]{83, 23, -87, -102, 14, -92, 15, 9, 83, 9, -87, -102, 15, -99, 14, 60, 83, 13, -88, -96}, new byte[]{-125, -75, 121, 47, -34, 31, -33, -68}), 22, this.ink);
        textViewText.setTypeface(null, 1);
        linearLayoutColumn.addView(textViewText);
        TextView textViewText2 = text(e0.m.h(new byte[]{-117, -62, 114, -26, -81, -46, ByteCompanionObject.MAX_VALUE, 124, -117, -26, 115, -42, -82, -31, ByteCompanionObject.MAX_VALUE, 115, -117, -32, 114, -32, -81, -45, -113, 22, -31, 125, 114, -24, -81, -44, 126, 68, -117, -29, 114, -28, -81, -40, ByteCompanionObject.MAX_VALUE, 119, -117, -27, 114, -29, -82, -24, 77, 70, -3}, new byte[]{91, 93, -94, 88, ByteCompanionObject.MAX_VALUE, 102, -81, -58}), 13, this.muted);
        this.status = textViewText2;
        linearLayoutColumn.addView(textViewText2);
        LinearLayout linearLayoutRow = row(linearLayoutColumn);
        this.soc = metric(linearLayoutRow, e0.m.h(new byte[]{-3, 25, -18, 88, 26, -77, 118, -14, -3, 58}, new byte[]{45, -114, 62, -24, -53, 51, -89, 125}), this.green);
        this.fuel = metric(linearLayoutRow, e0.m.h(new byte[]{41, -122, 32, 2, 65, -6, -58, 57, 41, -100, 32, 14, 65, -5}, new byte[]{-7, 36, -16, -68, -111, 69, 22, -126}), this.ink);
        LinearLayout linearLayoutRow2 = row(linearLayoutColumn);
        this.power = metric(linearLayoutRow2, e0.m.h(new byte[]{114, 16, 10, 84, 26, -74, -74, 24, 114, 50, 11, 107, 26, -67, -73, 41, -126, 92, 107, 58, 123, -18, -28, 117, 18, 93, 90, 58, 126, -17, -34}, new byte[]{-94, -116, -38, -22, -53, 63, 102, -91}), this.blue);
        this.rpm = metric(linearLayoutRow2, e0.m.h(new byte[]{36, -26, 60, 88, -23, -15, 59, 80, 36, -58, Base64.padSymbol, 107, -24, -60, -54, 0, 96, -88, 126, 57, -104}, new byte[]{-12, 120, -20, -23, 57, 79, -22, -48}), this.ink);
        LinearLayout linearLayoutCard = card(linearLayoutColumn);
        linearLayoutCard.addView(text(e0.m.h(new byte[]{-51, -67, -107, 17, -22, 69, -77, 21, -51, -97, -108, 46, -22, 78, -78, 36, Base64.padSymbol, -29, -14, -113, -21, 118, -77, 58, -52, -93}, new byte[]{29, 33, 69, -81, 59, -52, 99, -88}), 17, this.ink));
        RadioGroup radioGroup = new RadioGroup(requireContext());
        radioGroup.setOrientation(0);
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams.topMargin = dp(10.0f);
        linearLayoutCard.addView(radioGroup, linearLayout$LayoutParams);
        int[] iArr = {5, 10, 30};
        int i11 = 0;
        while (i11 < 3) {
            int i12 = iArr[i11];
            RadioButton radioButton = new RadioButton(requireContext());
            radioButton.setId(View.generateViewId());
            radioButton.setButtonDrawable((Drawable) null);
            radioButton.setBackgroundTintList(null);
            radioButton.setBackgroundResource(2131165595);
            radioButton.setTextColor(requireContext().getColorStateList(2131035005));
            radioButton.setText(i12 + e0.m.h(new byte[]{-84, -43, -42, 115, 90, -46, -106}, new byte[]{-116, 5, 106, -93, -30, 2, 43, -105}));
            radioButton.setTextSize(15.0f);
            radioButton.setTypeface(null, i10);
            radioButton.setGravity(17);
            radioButton.setPadding(dp(4.0f), 0, dp(4.0f), 0);
            LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(0, dp(48.0f), 1.0f);
            if (i12 != 30) {
                linearLayout$LayoutParams2.setMarginEnd(dp(6.0f));
            }
            radioGroup.addView(radioButton, linearLayout$LayoutParams2);
            radioButton.setChecked(i12 == this.minutes);
            radioButton.setOnCheckedChangeListener(new f0(this, i12));
            i11++;
            i10 = 1;
        }
        this.chart = new h0(this, requireContext());
        linearLayoutCard.addView(this.chart, new LinearLayout$LayoutParams(-1, dp(Math.round(((float) getResources().getDisplayMetrics().heightPixels) / getResources().getDisplayMetrics().density) < 700 ? 100.0f : 210.0f)));
        LinearLayout linearLayoutCard2 = card(linearLayoutColumn);
        TextView textViewText3 = text(e0.m.h(new byte[]{92, -45, -80, -121, -45, -36, 110, 29, 92, -8, -80, -125, -45, -39, -98, -21, -84, -114, -41, 25, -31, -23, 42, -118, 92, -10, -80, -123}, new byte[]{-116, 76, 96, 57, 3, 105, -66, -86}), 18, this.ink);
        this.trip = textViewText3;
        linearLayoutCard2.addView(textViewText3);
        TextView textViewText4 = text(e0.m.h(new byte[]{-91, 78, -53, -47, 83, -73, -17, 96, -91, 80, -53, -43, -94, -26, -113, 53, -64, 62, -90, -79, 53, -26, -122, 53, -56, 62, -85, 91, -94, -44, -66, 113}, new byte[]{117, -18, 27, 97, -126, 54, 62, -27}), 17, this.ink);
        this.consumption = textViewText4;
        linearLayoutCard2.addView(textViewText4);
        linearLayoutCard2.addView(text(e0.m.h(new byte[]{-66, 64, -31, 33, -28, 21, 50, -124, -66, 100, -32, 23, 20, 112, 95, -23, -34, -2, -32, 21, -28, 21, 51, -72, -65, 82, 16, 119, -117, 113, 97, -24, -20, 15, -68}, new byte[]{110, -34, 48, -89, 52, -96, -30, 57}), 12, this.muted));
        Button button = new Button(requireContext());
        button.setText(e0.m.h(new byte[]{94, -95, -46, 97, -22, -119, 70, -38, 94, ByteCompanionObject.MIN_VALUE, -46, 110, -22, ByteCompanionObject.MIN_VALUE, 71, -17, 94, -117}, new byte[]{-114, 62, 2, -33, 58, Base64.padSymbol, -105, 90}));
        LinearLayout$LayoutParams linearLayout$LayoutParams3 = new LinearLayout$LayoutParams(-1, -2);
        linearLayout$LayoutParams3.topMargin = dp(12.0f);
        linearLayoutColumn.addView(button, linearLayout$LayoutParams3);
        LinearLayout linearLayoutCard3 = card(linearLayoutColumn);
        TextView textViewText5 = text(e0.m.h(new byte[]{76, 111, 124, -117, -71, -1, 3, 14, 40, 34, 28, -18, -43, -83, -98, 15, 23, 35, 41}, new byte[]{-100, -14, -84, 62, 104, 125, 35, -34}), 14, this.muted);
        this.details = textViewText5;
        textViewText5.setLineSpacing(dp(6.0f), 1.0f);
        linearLayoutCard3.addView(this.details);
        linearLayoutCard3.setVisibility(8);
        button.setOnClickListener(new a(8, linearLayoutCard3, button));
        return scrollView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.worker.shutdownNow();
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.status = null;
        this.details = null;
        this.consumption = null;
        this.trip = null;
        this.rpm = null;
        this.power = null;
        this.fuel = null;
        this.soc = null;
        this.chart = null;
        super.onDestroyView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(e0.m.h(new byte[]{94, -16, 98, -102, 87, -49, -91}, new byte[]{51, -103, 12, -17, 35, -86, -42, -47}), this.minutes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.active = true;
        this.generation++;
        this.lastResponse = 0L;
        this.main.post(this.tick);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        this.active = false;
        this.generation++;
        this.main.removeCallbacksAndMessages(null);
        super.onStop();
    }
}
