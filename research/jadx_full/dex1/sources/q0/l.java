package q0;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentTransaction;
import com.example.navistart.MockGPS.MockGpsService;
import e0.s0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.m2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class l extends l0.b {
    public EditText d;
    public EditText e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RadioGroup f4788f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f4789g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f4790h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f4791i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f4792j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f4793k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f4794l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f4795m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f4796n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f4797o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View f4798p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CheckBox f4799q;
    public TextView r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public TextView f4800s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f4801u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f4802v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f4787b = new Handler(Looper.getMainLooper());
    public final com.bumptech.glide.m c = new com.bumptech.glide.m(26, this);
    public String t = e0.m.h(new byte[]{83, 63, 26, -58, 69, 11, -103, -73, 83}, new byte[]{35, 87, 117, -88, 32, 84, -8, -57});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int v(String str) {
        if (e0.m.h(new byte[]{23, 88, -11, 4, -99, -17, 115, 35, 21, 90, -39, 50, -127, -7}, new byte[]{112, 40, -122, 91, -18, -118, 1, 85}).equals(str)) {
            return 2131297014;
        }
        if (e0.m.h(new byte[]{-88, 122, 55}, new byte[]{-35, 9, 85, 119, 93, -99, 62, -113}).equals(str)) {
            return 2131297018;
        }
        return e0.m.h(new byte[]{38, -76, 58, 78, 44}, new byte[]{75, -37, 94, 43, 65, -34, -13, -48}).equals(str) ? 2131297015 : 2131297016;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String w(String str) {
        if (e0.m.h(new byte[]{-55, 104, -111, -78, 50, -92, -85, -110, -55}, new byte[]{-71, 0, -2, -36, 87, -5, -54, -30}).equals(str)) {
            return e0.m.h(new byte[]{31, -62, -69, -38, -99, 21, -75, -54, 31}, new byte[]{111, -86, -44, -76, -8, 74, -44, -70});
        }
        if (e0.m.h(new byte[]{106, -33, 107, 4, 118, 120, -7, -81, 104, -35, 71, 50, 106, 110}, new byte[]{13, -81, 24, 91, 5, 29, -117, -39}).equals(str)) {
            return e0.m.h(new byte[]{46, 1, -96, 90, 50, -93, -25, -4, 44, 3, -116, 108, 46, -75}, new byte[]{73, 113, -45, 5, 65, -58, -107, -118});
        }
        if (e0.m.h(new byte[]{-46, 93, 16}, new byte[]{-89, 46, 114, -91, 81, 24, 48, -84}).equals(str)) {
            return e0.m.h(new byte[]{81, 94, 105}, new byte[]{36, 45, 11, 109, 94, -122, -30, 59});
        }
        return e0.m.h(new byte[]{-14, -89, 43, -115, 46}, new byte[]{-97, -56, 79, -24, 67, -30, -86, 124}).equals(str) ? e0.m.h(new byte[]{-17, 22, 50, 23, -46}, new byte[]{-126, 121, 86, 114, -65, 73, -102, 92}) : e0.m.h(new byte[]{-41, 87, ByteCompanionObject.MIN_VALUE, -30, -6, 58, 46, 12, -41}, new byte[]{-89, 63, -17, -116, -97, 101, 79, 124});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void y(int i9, View view) {
        View viewFindViewById = view.findViewById(i9);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492959, viewGroup, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.f4787b.removeCallbacks(this.c);
        super.onPause();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.c.run();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        MockGpsService.b(requireContext());
        this.d = (EditText) view.findViewById(2131297007);
        this.e = (EditText) view.findViewById(2131297011);
        this.f4788f = (RadioGroup) view.findViewById(2131297017);
        this.f4789g = (TextView) view.findViewById(2131297013);
        this.f4790h = (TextView) view.findViewById(2131297012);
        this.f4791i = (TextView) view.findViewById(2131297025);
        this.f4792j = (TextView) view.findViewById(2131297006);
        this.f4793k = (TextView) view.findViewById(2131297022);
        this.f4794l = (TextView) view.findViewById(2131297010);
        this.f4795m = view.findViewById(2131297005);
        this.f4796n = view.findViewById(2131297021);
        this.f4797o = view.findViewById(2131297026);
        this.f4798p = view.findViewById(2131297008);
        this.f4799q = (CheckBox) view.findViewById(2131297003);
        this.r = (TextView) view.findViewById(2131297024);
        this.f4800s = (TextView) view.findViewById(2131297023);
        ImageView imageView = (ImageView) view.findViewById(2131297009);
        Bitmap bitmapH = e3.d.h(360, getString(2131952229));
        if (bitmapH != null) {
            imageView.setImageBitmap(bitmapH);
        }
        y(2131297016, view);
        y(2131297014, view);
        y(2131297018, view);
        y(2131297015, view);
        if (getChildFragmentManager().findFragmentByTag(e0.m.h(new byte[]{85, 40, 37, 73, -11, 51, 8, 48, 85, 5, 55, 66, -14, 55, 14, 44, 70, 41}, new byte[]{33, 90, 68, 39, -122, 67, 103, 66})) == null) {
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            m2 m2Var = new m2();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean(m2.f3514m, true);
            m2Var.setArguments(bundle2);
            fragmentTransactionBeginTransaction.replace(2131297026, m2Var, e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 11, -83, 119, 68, 88, 57, -40, ByteCompanionObject.MIN_VALUE, 38, -65, 124, 67, 92, 63, -60, -109, 10}, new byte[]{-12, 121, -52, 25, 55, 40, 86, -86})).commit();
        }
        g gVar = MockGpsService.t.get() ? new g(MockGpsService.w, MockGpsService.f759x, MockGpsService.f760y) : MockGpsService.d(requireContext());
        String strW = w(gVar.f4781b);
        this.t = strW;
        this.f4788f.check(v(strW));
        u(true);
        t(gVar);
        this.f4788f.setOnCheckedChangeListener(new i(0, this));
        this.f4799q.setOnCheckedChangeListener(new s0(8, this));
        Button button = (Button) view.findViewById(2131297019);
        Button button2 = (Button) view.findViewById(2131297020);
        Button button3 = (Button) view.findViewById(2131297004);
        button.setOnClickListener(new j(this, 0));
        button2.setOnClickListener(new j(this, 1));
        button3.setOnClickListener(new j(this, 2));
        z();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(g gVar) {
        int i9 = gVar.d;
        String str = gVar.c;
        StringBuilder sb = new StringBuilder();
        sb.append(gVar.f4781b);
        sb.append(e0.m.h(new byte[]{-115}, new byte[]{-15, -7, 72, -89, 102, 113, 18, -10}));
        sb.append(str == null ? "" : str);
        com.google.protobuf.q.t(new byte[]{89}, new byte[]{37, 81, -91, -33, -74, -57, -89, -51}, sb, i9);
        sb.append(e0.m.h(new byte[]{117}, new byte[]{9, 69, -107, 119, -76, 101, 69, -99}));
        sb.append(false);
        String string = sb.toString();
        if (string.equals(this.f4801u)) {
            return;
        }
        EditText editText = this.d;
        if (str == null) {
            str = "";
        }
        editText.setText(str);
        this.e.setText(String.valueOf(i9));
        this.f4802v = true;
        this.f4799q.setChecked(false);
        this.f4802v = false;
        this.f4801u = string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(boolean z8) {
        k kVar;
        String str = this.t;
        if (e0.m.h(new byte[]{49, 75, 95, -57, -50, 10, 79, -10, 51, 73, 115, -15, -46, 28}, new byte[]{86, 59, 44, -104, -67, 111, Base64.padSymbol, ByteCompanionObject.MIN_VALUE}).equals(str)) {
            kVar = new k(8887, getString(2131952230), getString(2131952221), getString(2131952222), true);
        } else if (e0.m.h(new byte[]{123, -86, 49}, new byte[]{14, -39, 83, -80, 64, -115, 53, 120}).equals(str)) {
            kVar = new k(460800, getString(2131952283), getString(2131952227), getString(2131952228), false);
        } else {
            kVar = e0.m.h(new byte[]{26, 49, 3, -7, -102}, new byte[]{119, 94, 103, -100, -9, -67, -6, -11}).equals(str) ? new k(11010, getString(2131952243), getString(2131952223), getString(2131952224), true) : new k(8887, getString(2131952254), getString(2131952220), getString(2131952225), true);
        }
        this.f4789g.setText(kVar.f4785a);
        this.d.setHint(kVar.f4786b);
        this.d.setEnabled(kVar.e);
        this.e.setHint(kVar.c);
        String strTrim = this.e.getText().toString().trim();
        if (!z8) {
            this.d.setText("");
        }
        if (!z8 || strTrim.isEmpty()) {
            this.e.setText(String.valueOf(kVar.d));
        }
        boolean zEquals = e0.m.h(new byte[]{12, -100, 66, -12, -94, 40, 30, -88, 12}, new byte[]{124, -12, 45, -102, -57, 119, ByteCompanionObject.MAX_VALUE, -40}).equals(this.t);
        this.f4797o.setVisibility(zEquals ? 0 : 8);
        this.f4798p.setVisibility(e0.m.h(new byte[]{-60, -93, -73, 71, -44, 104, -72, -77, -58, -95, -101, 113, -56, 126}, new byte[]{-93, -45, -60, 24, -89, 13, -54, -59}).equals(this.t) ? 0 : 8);
        this.f4799q.setVisibility(8);
        this.r.setVisibility(8);
        this.f4800s.setVisibility(8);
        this.d.setVisibility(zEquals ? 8 : 0);
        this.e.setVisibility(zEquals ? 8 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
    
        if (r3 <= 65535) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int x() {
        try {
            int i9 = Integer.parseInt(this.e.getText().toString().trim());
            if (e0.m.h(new byte[]{21, -114, -119}, new byte[]{96, -3, -21, -18, -43, -40, 125, ByteCompanionObject.MAX_VALUE}).equals(this.t)) {
                if (i9 < 1200 || i9 > 921600) {
                    return 460800;
                }
            } else {
                if (!e0.m.h(new byte[]{5, -72, -31, -115, 92}, new byte[]{104, -41, -123, -24, 49, 29, 33, -69}).equals(this.t)) {
                    if (i9 > 0) {
                    }
                    if (e0.m.h(new byte[]{-82, 16, 49}, new byte[]{-37, 99, 83, -69, 19, -29, -64, -127}).equals(this.t)) {
                        return 460800;
                    }
                    if (e0.m.h(new byte[]{84, 72, 13, 26, 11}, new byte[]{57, 39, 105, ByteCompanionObject.MAX_VALUE, 102, -32, 76, 112}).equals(this.t)) {
                        return 11010;
                    }
                    e0.m.h(new byte[]{5, 112, 68, -108, -82, 14, 47, 113, 7, 114, 104, -94, -78, 24}, new byte[]{98, 0, 55, -53, -35, 107, 93, 7}).equals(this.t);
                    return 8887;
                }
                if (i9 < 1024 || i9 > 65535) {
                    return 11010;
                }
            }
            return i9;
        } catch (NumberFormatException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:23:0x00b2  */
    public final void z() {
        String string;
        int i9;
        boolean z8 = MockGpsService.t.get();
        boolean z9 = MockGpsService.f757u.get();
        AtomicBoolean atomicBoolean = MockGpsService.f758v;
        boolean z10 = atomicBoolean.get();
        if (z8) {
            g gVar = new g(MockGpsService.w, MockGpsService.f759x, MockGpsService.f760y);
            String strW = w(gVar.f4781b);
            this.t = strW;
            int iV = v(strW);
            if (this.f4788f.getCheckedRadioButtonId() != iV) {
                this.f4788f.check(iV);
            }
            u(true);
            t(gVar);
        }
        this.f4790h.setText(getString(z8 ? 2131952256 : 2131952257));
        this.f4791i.setText(getString(2131952210, MockGpsService.C));
        this.f4792j.setText(getString(2131952219, MockGpsService.B));
        TextView textView = this.f4793k;
        if (!atomicBoolean.get() || MockGpsService.H <= 0) {
            string = MockGpsService.E;
        } else {
            Object[] objArr = {MockGpsService.A, Long.valueOf(Math.max(0L, (System.currentTimeMillis() - MockGpsService.H) / 1000))};
            Context context = MockGpsService.F;
            string = context == null ? "" : context.getString(2131952238, objArr);
            if (string.isEmpty()) {
                string = MockGpsService.E;
            }
        }
        textView.setText(string);
        this.f4794l.setText(getString(2131952236, MockGpsService.D));
        View view = this.f4795m;
        int i10 = 2131165568;
        if (z9) {
            i9 = 2131165569;
        } else {
            i9 = z8 ? 2131165570 : 2131165568;
        }
        view.setBackgroundResource(i9);
        View view2 = this.f4796n;
        if (z10) {
            i10 = 2131165569;
        } else if (z9) {
            i10 = 2131165570;
        }
        view2.setBackgroundResource(i10);
        int i11 = s.f4847l;
        long j9 = s.f4848m;
        long jMax = j9 <= 0 ? -1L : Math.max(0L, (SystemClock.elapsedRealtime() - j9) / 1000);
        this.r.setText(getString(2131952270, Integer.valueOf(i11)));
        this.f4800s.setText(jMax < 0 ? getString(2131952269) : getString(2131952268, Long.valueOf(jMax)));
    }
}
