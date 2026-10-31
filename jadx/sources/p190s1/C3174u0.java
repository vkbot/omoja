package p190s1;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.widget.GridLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.RunnableC0131f;
import androidx.core.location.LocationRequestCompat;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.ftp.FTPReply;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1347e;
import p051e4.C1482o;
import p078h0.C1652b;

/* JADX INFO: renamed from: s1.u0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3174u0 extends LinearLayout {

    /* JADX INFO: renamed from: u */
    public static final String f9218u = AbstractC1387m.m2421h(new byte[]{-28, -49, ByteCompanionObject.MAX_VALUE, 89, -34, -83, -13, -7, -39, -62, 126, 73, -27, -95, -64, -9, -46, -46, 78, 76, -41, -85, -63, -2, -61}, new byte[]{-73, -90, 17, 62, -78, -56, -92, -112});

    /* JADX INFO: renamed from: b */
    public final ImageView f9219b;

    /* JADX INFO: renamed from: c */
    public final ScrollView f9220c;

    /* JADX INFO: renamed from: d */
    public final LinearLayout f9221d;

    /* JADX INFO: renamed from: e */
    public final LinearLayout f9222e;

    /* JADX INFO: renamed from: f */
    public boolean f9223f;

    /* JADX INFO: renamed from: g */
    public int f9224g;

    /* JADX INFO: renamed from: h */
    public int f9225h;

    /* JADX INFO: renamed from: i */
    public final ArrayList f9226i;

    /* JADX INFO: renamed from: j */
    public final ArrayList f9227j;

    /* JADX INFO: renamed from: k */
    public ExecutorService f9228k;

    /* JADX INFO: renamed from: l */
    public WindowManager f9229l;

    /* JADX INFO: renamed from: m */
    public WindowManager.LayoutParams f9230m;

    /* JADX INFO: renamed from: n */
    public boolean f9231n;

    /* JADX INFO: renamed from: o */
    public boolean f9232o;

    /* JADX INFO: renamed from: p */
    public int f9233p;

    /* JADX INFO: renamed from: q */
    public String f9234q;

    /* JADX INFO: renamed from: r */
    public int f9235r;

    /* JADX INFO: renamed from: s */
    public int f9236s;

    /* JADX INFO: renamed from: t */
    public GridLayout f9237t;

    static {
        AbstractC1387m.m2421h(new byte[]{70, -27, 1, 94, 89, 64, 69, -31, 115, -38, 8, 123, 70, 77, 65, -31, 116, -42, 62, 96, 94, 67, 78, -31, 80, -32, 3, 109, 95, 83}, new byte[]{7, -119, 109, 9, 48, 36, 34, -124});
    }

    public C3174u0(Context context) {
        super(context);
        this.f9226i = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.f9227j = arrayList;
        this.f9235r = 2;
        this.f9236s = 50;
        setOrientation(1);
        setClickable(true);
        ImageView imageView = new ImageView(context);
        this.f9219b = imageView;
        imageView.setImageResource(R.drawable.ic_single_window_bubble);
        imageView.setPadding(m5090e(18), m5090e(18), m5090e(18), m5090e(18));
        imageView.setContentDescription(AbstractC1387m.m2421h(new byte[]{105, -109, -112, -50, 77, 69, -92, -103, -103, -35, -1, -91, 29, 40, -52, -7, 2, -35, -2, -92, 43, 40, -63, -7, 4, -35, -8, -92, 36, -42, 84, -7, 36, -35, -16, -92, 43, 40, -56, -7, 1, -36, -62, -92, 40, -44, 84, -8, 62, -36, -62, -92, 35, 40, -59, -8, 50, 45, -111, -12, 77, 72, -91, -88, 105, -73, -111, -12, 76, 115, -91, -85, 104, -127, 123, 84, 76, 123, -92, -99, 105, -72, -111, -12, 77, 78, -92, -111, 105, -65, -112, -60, 77, 65, -91, -85, 105, -72, 96, -92, 41, 40, -49, -8, 54, 45, -112, -53, 77, 77, -91, -87, 105, -72, -112, -56, 77, 77, -91, -96, 105, -72, -112, -55, 77, 64, -91, -90}, new byte[]{-71, 13, 64, 116, -99, -8, 116, 41}));
        imageView.setClickable(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m5090e(80), m5090e(80));
        layoutParams.gravity = 1;
        addView(imageView, layoutParams);
        LinearLayout linearLayout = new LinearLayout(context);
        this.f9222e = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.f9221d = linearLayout2;
        linearLayout2.setOrientation(1);
        ScrollView scrollView = new ScrollView(context);
        this.f9220c = scrollView;
        scrollView.setClipToPadding(false);
        scrollView.setPadding(0, 0, 0, m5090e(8));
        scrollView.addView(linearLayout2);
        scrollView.setVisibility(8);
        addView(scrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        m5088c();
        String strLoadString = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-65, -10, -69, -3, 91, 114, -22, -37, -126, -5, -70, -19, 96, 126, -39, -43, -119, -21, -118, -24, 82, 116, -40, -36, -104}, new byte[]{-20, -97, -43, -102, 55, 23, -67, -78}), "");
        if (strLoadString.isEmpty()) {
            return;
        }
        arrayList.addAll(Arrays.asList(strLoadString.split(AbstractC1387m.m2421h(new byte[]{73}, new byte[]{114, -29, -37, 59, -46, 81, 97, -17}))));
    }

    /* JADX INFO: renamed from: a */
    public final void m5086a(String str) {
        try {
            PackageManager packageManager = getContext().getPackageManager();
            if (packageManager.getLaunchIntentForPackage(str) == null) {
                return;
            }
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            String string = packageManager.getApplicationLabel(applicationInfo).toString();
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(1);
            linearLayout.setGravity(1);
            linearLayout.setPadding(m5090e(4), m5090e(8), m5090e(4), m5090e(8));
            ImageView imageView = new ImageView(getContext());
            imageView.setImageDrawable(packageManager.getApplicationIcon(applicationInfo));
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            linearLayout.addView(imageView, new LinearLayout.LayoutParams(m5090e(64), m5090e(64)));
            linearLayout.addView(m5089d(string));
            linearLayout.setContentDescription(string);
            linearLayout.setOnClickListener(new ViewOnClickListenerC3168r0(this, str, 1));
            this.f9221d.addView(linearLayout);
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    /* JADX INFO: renamed from: b */
    public final String m5087b(String str) {
        if (str == null) {
            return AbstractC1387m.m2421h(new byte[]{-57, 60, -64, -104, -41, -90, 79, -33, -57, 30, -64, -111, -42, -101, -66, -113, -88, ByteCompanionObject.MAX_VALUE, -111, -61, -65, -57, 37, -113, -87, 126, -89, -61, -78, -57, 35, -113, -81, 126, -92}, new byte[]{23, -82, 17, 19, 7, 23, -98, 95});
        }
        try {
            PackageManager packageManager = getContext().getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
        } catch (PackageManager.NameNotFoundException unused) {
            return str;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m5088c() {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{-12349720, -13480523});
        gradientDrawable.setShape(1);
        gradientDrawable.setStroke(m5090e(1), -7223041);
        this.f9219b.setBackground(gradientDrawable);
        if (this.f9231n) {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(-15194830);
            gradientDrawable2.setCornerRadius(m5090e(24));
            setBackground(gradientDrawable2);
        } else {
            setBackground(null);
        }
        setAlpha(this.f9231n ? 1.0f : 0.5f);
    }

    /* JADX INFO: renamed from: d */
    public final TextView m5089d(String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(12.0f);
        textView.setGravity(17);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setPadding(0, m5090e(4), 0, 0);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return textView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            setAlpha(1.0f);
        }
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() != 1 && motionEvent.getActionMasked() != 3) {
            return zDispatchTouchEvent;
        }
        post(new RunnableC1347e(this, 1));
        return zDispatchTouchEvent;
    }

    /* JADX INFO: renamed from: e */
    public final int m5090e(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: f */
    public final void m5091f(C1482o c1482o) {
        if (this.f9232o || this.f9228k == null || this.f9230m == null) {
            return;
        }
        if (this.f9223f) {
            m5097l();
        }
        this.f9232o = true;
        m5093h();
        this.f9228k.execute(new RunnableC0131f(this, c1482o, Math.min(m5090e(LocationRequestCompat.QUALITY_LOW_POWER), m5100o().width() / 3) + this.f9230m.x, 11));
    }

    /* JADX INFO: renamed from: g */
    public final void m5092g() {
        if (this.f9223f) {
            this.f9223f = false;
            this.f9233p++;
            this.f9222e.setVisibility(8);
            this.f9219b.setVisibility(0);
            WindowManager.LayoutParams layoutParams = this.f9230m;
            if (layoutParams != null) {
                layoutParams.x = this.f9224g;
                layoutParams.y = this.f9225h;
            }
            m5093h();
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m5093h() {
        if (this.f9229l == null || this.f9230m == null) {
            return;
        }
        Rect rectM5100o = m5100o();
        this.f9230m.gravity = 51;
        int iMin = Math.min(m5090e(LocationRequestCompat.QUALITY_LOW_POWER), rectM5100o.width() / 3);
        boolean z9 = this.f9231n;
        if (z9 && this.f9223f) {
            this.f9230m.width = Math.min(m5090e(600), rectM5100o.width() - m5090e(16));
            this.f9230m.height = Math.min(m5090e(580), rectM5100o.height());
            WindowManager.LayoutParams layoutParams = this.f9230m;
            layoutParams.x = Math.max(rectM5100o.left, Math.min(this.f9224g, rectM5100o.right - layoutParams.width));
            WindowManager.LayoutParams layoutParams2 = this.f9230m;
            layoutParams2.y = Math.max(rectM5100o.top, Math.min(this.f9225h, rectM5100o.bottom - layoutParams2.height));
            if (isAttachedToWindow()) {
                this.f9229l.updateViewLayout(this, this.f9230m);
                return;
            }
            return;
        }
        this.f9230m.width = z9 ? iMin : m5090e(80);
        WindowManager.LayoutParams layoutParams3 = this.f9230m;
        layoutParams3.x = Math.max(rectM5100o.left, Math.min(layoutParams3.x, (rectM5100o.right - iMin) - Math.min(m5090e(160), rectM5100o.width() / 3)));
        WindowManager.LayoutParams layoutParams4 = this.f9230m;
        layoutParams4.y = Math.max(rectM5100o.top, Math.min(layoutParams4.y, rectM5100o.bottom - m5090e(80)));
        if (this.f9231n) {
            WindowManager.LayoutParams layoutParams5 = this.f9230m;
            layoutParams5.y = Math.min(layoutParams5.y, Math.max(rectM5100o.top, rectM5100o.bottom - m5090e(240)));
        }
        this.f9230m.height = this.f9231n ? Math.max(m5090e(80), (rectM5100o.bottom - m5090e(8)) - this.f9230m.y) : m5090e(80);
        C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{117, 115, 103, 86, 94, -11, 28, 81, 64, 76, 110, 115, 65, -8, 24, 81, 71, 64, 88, 104, 89, -10, 23, 81, 99, 118, 101, 101, 88, -26, 35}, new byte[]{52, 31, 11, 1, 55, -111, 123, 52}), this.f9230m.x);
        C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{-115, 100, -68, 21, 122, -20, 66, 74, -72, 91, -75, 48, 101, -31, 70, 74, -65, 87, -125, 43, 125, -17, 73, 74, -101, 97, -66, 38, 124, -1, 124}, new byte[]{-52, 8, -48, 66, 19, -120, 37, 47}), this.f9230m.y);
        if (isAttachedToWindow()) {
            this.f9229l.updateViewLayout(this, this.f9230m);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: i */
    public final void m5094i() {
        int i10;
        String strM2075i;
        int i11;
        LinearLayout linearLayout = this.f9222e;
        linearLayout.removeAllViews();
        int i12 = 8;
        View viewM5096k = m5096k(AbstractC1387m.m2421h(new byte[]{-53, 40, 54, 37, -30, -19, 69, -75, -105, 120, 56, -43, 118, -19, 84, -76, -85, 121, 3, 37, 18, -121, 52, -37, -7, 20, 95, -76, 18, -123, 52, -40, -7, 24, 94, -125, 18, -123, 53, -21}, new byte[]{41, -88, -113, 5, -62, Base64.padSymbol, -28, 101}));
        final int i13 = 0;
        viewM5096k.setOnClickListener(new ViewOnClickListenerC3170s0(this, i13));
        linearLayout.addView(viewM5096k);
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        final int i14 = 1;
        int i15 = 2;
        int[] iArr = {1, 2};
        int i16 = 0;
        while (true) {
            i10 = 4;
            if (i16 >= 2) {
                break;
            }
            final int i17 = iArr[i16];
            TextView textViewM5096k = m5096k(i17 == 1 ? AbstractC1387m.m2421h(new byte[]{79, 30, -79, 69, 41, -88, -41, 124, 78, 58, -80, 116, -39, 50, 38, 45, 30, 111, -36, 39, 65, -51, -79, 45, 28}, new byte[]{-97, -65, 97, -9, -7, 29, 6, -4}) : AbstractC1387m.m2421h(new byte[]{-28, 74, -103, 0, 96, -13, -87, 48, -28, 91, 105, -108, -112, -105, -8, 82, -117, 58, -55, 107, 0, -106, -53, 82, -124}, new byte[]{52, -21, 73, -69, -80, 70, 121, -126}));
            textViewM5096k.setGravity(17);
            int i18 = this.f9235r;
            if (i17 == 1) {
                i11 = i18 == 1 ? R.drawable.ic_split_vertical_selected : R.drawable.ic_split_vertical;
            } else {
                i11 = i18 == 2 ? R.drawable.ic_split_horizontal_selected : R.drawable.ic_split_horizontal;
            }
            textViewM5096k.setCompoundDrawablesWithIntrinsicBounds(i11, 0, 0, 0);
            textViewM5096k.setBackground(m5098m(this.f9235r == i17));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, m5090e(60), 1.0f);
            layoutParams.setMargins(m5090e(4), 0, m5090e(4), m5090e(4));
            linearLayout2.addView(textViewM5096k, layoutParams);
            textViewM5096k.setOnClickListener(new View.OnClickListener(this) { // from class: s1.t0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ C3174u0 f9214c;

                {
                    this.f9214c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i13) {
                        case 0:
                            int i19 = i17;
                            C3174u0 c3174u0 = this.f9214c;
                            c3174u0.f9235r = i19;
                            c3174u0.m5094i();
                            break;
                        default:
                            int i20 = i17;
                            C3174u0 c3174u1 = this.f9214c;
                            c3174u1.f9236s = i20;
                            c3174u1.m5094i();
                            break;
                    }
                }
            });
            i16++;
        }
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = new LinearLayout(getContext());
        int[] iArr2 = {30, 50, 70};
        int i19 = 0;
        while (i19 < 3) {
            final int i20 = iArr2[i19];
            LinearLayout linearLayout4 = new LinearLayout(getContext());
            linearLayout4.setOrientation(1);
            linearLayout4.setPadding(m5090e(i12), m5090e(6), m5090e(i12), m5090e(i10));
            linearLayout4.setBackground(m5098m(this.f9236s == i20 ? 1 : i13));
            LinearLayout linearLayout5 = new LinearLayout(getContext());
            linearLayout5.setOrientation(this.f9235r == 1 ? 1 : i13);
            int i21 = i13;
            while (i21 < i15) {
                View view = new View(getContext());
                view.setBackgroundColor(i21 == 0 ? -8996097 : -12030569);
                int i22 = i21 == 0 ? i20 : 100 - i20;
                LinearLayout.LayoutParams layoutParams2 = this.f9235r == 1 ? new LinearLayout.LayoutParams(-1, i13, i22) : new LinearLayout.LayoutParams(i13, -1, i22);
                layoutParams2.setMargins(m5090e(1), m5090e(1), m5090e(1), m5090e(1));
                linearLayout5.addView(view, layoutParams2);
                i21++;
                i13 = 0;
                i15 = 2;
            }
            linearLayout4.addView(linearLayout5, new LinearLayout.LayoutParams(-1, m5090e(24)));
            TextView textView = new TextView(getContext());
            textView.setText(i20 + AbstractC1387m.m2421h(new byte[]{40, -61, 76}, new byte[]{8, -20, 108, -79, -107, -15, 0, 22}) + (100 - i20));
            textView.setTextColor(-1);
            textView.setGravity(17);
            textView.setTextSize(14.0f);
            linearLayout4.addView(textView);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, m5090e(60), 1.0f);
            layoutParams3.setMargins(m5090e(4), 0, m5090e(4), 0);
            linearLayout3.addView(linearLayout4, layoutParams3);
            linearLayout4.setOnClickListener(new View.OnClickListener(this) { // from class: s1.t0

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ C3174u0 f9214c;

                {
                    this.f9214c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    switch (i14) {
                        case 0:
                            int i110 = i20;
                            C3174u0 c3174u0 = this.f9214c;
                            c3174u0.f9235r = i110;
                            c3174u0.m5094i();
                            break;
                        default:
                            int i23 = i20;
                            C3174u0 c3174u1 = this.f9214c;
                            c3174u1.f9236s = i23;
                            c3174u1.m5094i();
                            break;
                    }
                }
            });
            i19++;
            i13 = 0;
            i10 = 4;
            i12 = 8;
            i15 = 2;
        }
        linearLayout.addView(linearLayout3);
        if (this.f9234q == null) {
            strM2075i = AbstractC1387m.m2421h(new byte[]{-15, -53, -19, -88, -12, -115, -26, -48, 113, 53, 120, -87, -26, -116, -43, -47, 66, 53, 120, 88, -74, -29, -67, -75, 17, 101, 29, -54, -74, -30, -67, -75, -32, 53, 114, -87, -26, -116, -43, -48, 123, 53, 115, -88, -48, -116, -40, -48, 125, 53, 117, -88, -45, 124, -81, -73, -32, 53, 86, -88, -34, -115, -20, -47, 66, 53, 125, -88, -33, -115, -17, -48, 117, -59, 28, -7, -74, -23, -68, -126, 16, 95, 28, -5, 70, -116, -33, -48, 113, 53, 115, -88, -36}, new byte[]{-64, -27, -51, 120, 102, 92, 109, 0});
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{90, 35, -86, -17, 65, 42, -118, -67, -39, -35, 63, -18, 83, 43, -71, -68, -22, -35, 63, 31, 3, 73, -48, -17, -72, -77, 91, -65, 3, 69, -47, -40, 72, -17, 10, -85, -13, 43, -66, -67, -40, -36, 10, -17, 99, -37, -47, -45, -71, -113, 90, -123, 2, 123, -47, -45, -72, -72, 91, -67, 2, 122, -48, -30, 98, -35, 21, -17, 102, 42, -127, -67, -38, -35, 52, -17, 102, -63, 33}, new byte[]{104, 13, -118, 63, -45, -5, 1, 109}));
            sb.append(m5087b(this.f9234q));
            strM2075i = AbstractC1178q.m2075i(new byte[]{-87, 109, 48, -123}, new byte[]{-119, 77, -13, 18, 33, 55, -126, 124}, sb);
        }
        TextView textViewM5096k2 = m5096k(strM2075i);
        textViewM5096k2.setTextSize(13.0f);
        textViewM5096k2.setMaxLines(2);
        textViewM5096k2.setEllipsize(TextUtils.TruncateAt.END);
        textViewM5096k2.setOnClickListener(new ViewOnClickListenerC3170s0(this, i14));
        linearLayout.addView(textViewM5096k2);
    }

    /* JADX INFO: renamed from: j */
    public final void m5095j() {
        LinearLayout linearLayout = this.f9221d;
        linearLayout.removeAllViews();
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(getContext());
        int i10 = 1;
        horizontalScrollView.setHorizontalScrollBarEnabled(true);
        GridLayout gridLayout = new GridLayout(getContext());
        this.f9237t = gridLayout;
        gridLayout.setOrientation(1);
        this.f9237t.setRowCount(3);
        WindowManager.LayoutParams layoutParams = this.f9230m;
        int iM5090e = layoutParams == null ? m5090e(600) : layoutParams.width;
        int iMax = iM5090e / Math.max(1, iM5090e / m5090e(FTPReply.SERVICE_NOT_READY));
        ArrayList arrayList = this.f9226i;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            ResolveInfo resolveInfo = (ResolveInfo) obj;
            String str = resolveInfo.activityInfo.packageName;
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setTag(str);
            linearLayout2.setOrientation(i10);
            linearLayout2.setGravity(17);
            linearLayout2.setPadding(m5090e(5), m5090e(6), m5090e(5), m5090e(4));
            ImageView imageView = new ImageView(getContext());
            imageView.setImageDrawable(resolveInfo.loadIcon(getContext().getPackageManager()));
            linearLayout2.addView(imageView, new LinearLayout.LayoutParams(m5090e(64), m5090e(64)));
            TextView textView = new TextView(getContext());
            textView.setText(resolveInfo.loadLabel(getContext().getPackageManager()));
            textView.setTextColor(-1);
            textView.setTextSize(14.0f);
            textView.setGravity(17);
            textView.setMaxLines(2);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout2.addView(textView, new LinearLayout.LayoutParams(-1, -2));
            linearLayout2.setContentDescription(textView.getText());
            GridLayout.LayoutParams layoutParams2 = new GridLayout.LayoutParams();
            layoutParams2.width = iMax - m5090e(8);
            layoutParams2.height = m5090e(FTPReply.SERVICE_NOT_READY);
            layoutParams2.setMargins(m5090e(4), m5090e(4), m5090e(4), m5090e(4));
            this.f9237t.addView(linearLayout2, layoutParams2);
            linearLayout2.setOnClickListener(new ViewOnClickListenerC3168r0(this, str, 0));
            i10 = 1;
        }
        horizontalScrollView.addView(this.f9237t);
        linearLayout.addView(horizontalScrollView);
        m5099n();
    }

    /* JADX INFO: renamed from: k */
    public final TextView m5096k(String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(14.0f);
        textView.setGravity(16);
        textView.setMinHeight(m5090e(56));
        textView.setPadding(m5090e(8), m5090e(8), m5090e(8), m5090e(8));
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return textView;
    }

    /* JADX WARN: Code duplicated, block: B:130:0x00da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:96:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:98:0x02e6  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: l */
    public final void m5097l() {
        char c;
        C1482o c1482o;
        char c10;
        String str;
        String str2;
        HashSet hashSet;
        ArrayList arrayList;
        int i10;
        int i11;
        int i12;
        char c11;
        PackageManager packageManager;
        char c12;
        String strM2421h;
        char c13;
        LinearLayout.LayoutParams layoutParams;
        m5092g();
        int i13 = 1;
        int i14 = this.f9233p + 1;
        this.f9233p = i14;
        LinearLayout linearLayout = this.f9221d;
        linearLayout.removeAllViews();
        int i15 = 8;
        TextView textViewM5096k = m5096k(AbstractC1387m.m2421h(new byte[]{66, -70, -38, 113, -5, 5, 35, -64, 125, -70, -127, -54, -5, 39, 35, -61, 125, -74, ByteCompanionObject.MIN_VALUE, -3, -5, 39, 34, -15}, new byte[]{-83, 6, 81, 123, 43, -97, -13, 126}));
        textViewM5096k.setGravity(17);
        textViewM5096k.setTextSize(12.0f);
        int i16 = 2;
        textViewM5096k.setOnClickListener(new ViewOnClickListenerC3170s0(this, i16));
        linearLayout.addView(textViewM5096k);
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList2 = new ArrayList(this.f9227j);
        int size = arrayList2.size();
        char c14 = 0;
        int i17 = 0;
        while (i17 < size) {
            Object obj = arrayList2.get(i17);
            i17++;
            String str3 = (String) obj;
            if (str3 == null || str3.trim().isEmpty()) {
                c = c14;
            } else {
                byte[] bArr = new byte[i13];
                bArr[c14] = -118;
                c = c14;
                byte[] bArr2 = new byte[i15];
                // fill-array-data instruction
                bArr2[0] = -90;
                bArr2[1] = 82;
                bArr2[2] = -26;
                bArr2[3] = -66;
                bArr2[4] = -66;
                bArr2[5] = -105;
                bArr2[6] = 21;
                bArr2[7] = 2;
                String[] strArrSplit = str3.split(AbstractC1387m.m2421h(bArr, bArr2), -1);
                if (strArrSplit.length == i13) {
                    c1482o = new C1482o(strArrSplit[c == true ? 1 : 0], null, i16, 50);
                } else if (strArrSplit.length == 4 && !strArrSplit[c == true ? 1 : 0].isEmpty() && !strArrSplit[i13].isEmpty() && !strArrSplit[c == true ? 1 : 0].equals(strArrSplit[i13])) {
                    try {
                        int i18 = Integer.parseInt(strArrSplit[i16]);
                        int i19 = Integer.parseInt(strArrSplit[3]);
                        if ((i18 == i13 || i18 == i16) && (i19 == 30 || i19 == 50 || i19 == 70)) {
                            c1482o = new C1482o(strArrSplit[c == true ? 1 : 0], strArrSplit[i13], i18, i19);
                            c10 = c;
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                if (c1482o == null) {
                    c10 = c;
                    c14 = c10 == true ? 1 : 0;
                    i15 = 8;
                } else {
                    c10 = c;
                    str = (String) c1482o.f3600d;
                    str2 = (String) c1482o.f3599c;
                    if (str != null) {
                        packageManager = getContext().getPackageManager();
                        int i20 = c1482o.f3598b;
                        int i21 = c1482o.f3597a;
                        if (packageManager.getLaunchIntentForPackage(str2) != null || packageManager.getLaunchIntentForPackage(str) == null) {
                            arrayList = arrayList2;
                            i10 = i16;
                            i11 = 8;
                        } else {
                            LinearLayout linearLayout2 = new LinearLayout(getContext());
                            linearLayout2.setOrientation(i13);
                            arrayList = arrayList2;
                            LinearLayout linearLayout3 = new LinearLayout(getContext());
                            linearLayout3.setOrientation(i21 == i13 ? i13 : c10 == true ? 1 : 0);
                            try {
                                String[] strArr = {str2, str};
                                int i22 = c10 == true ? 1 : 0;
                                char c15 = c10;
                                while (i22 < 2) {
                                    try {
                                        String str4 = strArr[i22];
                                        int i23 = i22;
                                        size = size;
                                        try {
                                            ImageView imageView = new ImageView(getContext());
                                            imageView.setImageDrawable(packageManager.getApplicationIcon(str4));
                                            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                                            i17 = i17;
                                            i12 = 1;
                                            try {
                                                PackageManager packageManager2 = packageManager;
                                                i14 = i14;
                                                try {
                                                    hashSet2 = hashSet2;
                                                    try {
                                                        try {
                                                            imageView.setPadding(m5090e(1), m5090e(1), m5090e(1), m5090e(1));
                                                            boolean z9 = c15;
                                                            try {
                                                                imageView.setBackground(m5098m(z9));
                                                                int i24 = str4.equals(str2) ? i20 : 100 - i20;
                                                                if (i21 == 1) {
                                                                    try {
                                                                        layoutParams = new LinearLayout.LayoutParams(-1, 0, i24);
                                                                    } catch (PackageManager.NameNotFoundException unused2) {
                                                                        c13 = 0;
                                                                        i11 = 8;
                                                                        i10 = 2;
                                                                        i12 = 1;
                                                                        c12 = c13;
                                                                        hashSet = hashSet2;
                                                                        c11 = c12;
                                                                        c11 = c10;
                                                                        i15 = i11;
                                                                        i16 = i10;
                                                                        i13 = i12;
                                                                        c14 = c11;
                                                                        arrayList2 = arrayList;
                                                                        size = size;
                                                                        i17 = i17;
                                                                        hashSet2 = hashSet;
                                                                        i14 = i14;
                                                                    }
                                                                } else {
                                                                    layoutParams = new LinearLayout.LayoutParams(0, -1, i24);
                                                                }
                                                                i12 = 1;
                                                                layoutParams.setMargins(m5090e(1), m5090e(1), m5090e(1), m5090e(1));
                                                                linearLayout3.addView(imageView, layoutParams);
                                                                i22 = (i23 == true ? 1 : 0) + 1;
                                                                size = size;
                                                                i17 = i17;
                                                                packageManager = packageManager2;
                                                                i14 = i14;
                                                                hashSet2 = hashSet2;
                                                                c15 = 0;
                                                            } catch (PackageManager.NameNotFoundException unused3) {
                                                                c13 = z9 ? 1 : 0;
                                                            }
                                                        } catch (PackageManager.NameNotFoundException unused4) {
                                                            i11 = 8;
                                                            i10 = 2;
                                                            i12 = 1;
                                                            c12 = 0;
                                                        }
                                                    } catch (PackageManager.NameNotFoundException unused5) {
                                                        i11 = 8;
                                                        i10 = 2;
                                                        c12 = 0;
                                                    }
                                                } catch (PackageManager.NameNotFoundException unused6) {
                                                    hashSet2 = hashSet2;
                                                    i11 = 8;
                                                    i10 = 2;
                                                    c12 = 0;
                                                    hashSet = hashSet2;
                                                    c11 = c12;
                                                    c11 = c10;
                                                    i15 = i11;
                                                    i16 = i10;
                                                    i13 = i12;
                                                    c14 = c11;
                                                    arrayList2 = arrayList;
                                                    size = size;
                                                    i17 = i17;
                                                    hashSet2 = hashSet;
                                                    i14 = i14;
                                                }
                                            } catch (PackageManager.NameNotFoundException unused7) {
                                                i14 = i14;
                                            }
                                        } catch (PackageManager.NameNotFoundException unused8) {
                                            i17 = i17;
                                            i11 = 8;
                                            i10 = 2;
                                            i12 = 1;
                                            c12 = 0;
                                            hashSet = hashSet2;
                                            c11 = c12;
                                            c11 = c10;
                                            i15 = i11;
                                            i16 = i10;
                                            i13 = i12;
                                            c14 = c11;
                                            arrayList2 = arrayList;
                                            size = size;
                                            i17 = i17;
                                            hashSet2 = hashSet;
                                            i14 = i14;
                                        }
                                    } catch (PackageManager.NameNotFoundException unused9) {
                                        size = size;
                                    }
                                }
                                i14 = i14;
                                hashSet2 = hashSet2;
                                size = size;
                                i17 = i17;
                                linearLayout2.setPadding(m5090e(4), m5090e(6), m5090e(4), m5090e(6));
                                linearLayout2.addView(linearLayout3, new LinearLayout.LayoutParams(-1, m5090e(92)));
                                linearLayout2.addView(m5089d(m5087b(str2)));
                                linearLayout2.addView(m5089d(m5087b(str)));
                                StringBuilder sb = new StringBuilder();
                                sb.append(m5087b(str2));
                                i11 = 8;
                                sb.append(AbstractC1387m.m2421h(new byte[]{5, -61}, new byte[]{41, -29, 125, -70, 17, -116, -106, -97}));
                                sb.append(m5087b(str));
                                sb.append(AbstractC1387m.m2421h(new byte[]{17, -92}, new byte[]{Base64.padSymbol, -124, 10, -120, -107, -46, 43, -115}));
                                byte[] bArr3 = {-123, 80, 0, -16, 8, 93, -77, -111, -124, 97, -16, -101, 96, -56, -78, -94, -124, 110, 1, -53, 8, 88, -77, -111, -124, 97};
                                if (i21 == 1) {
                                    // fill-array-data instruction
                                    bArr3[0] = -72;
                                    bArr3[1] = 99;
                                    bArr3[2] = -54;
                                    bArr3[3] = -49;
                                    bArr3[4] = -44;
                                    bArr3[5] = -64;
                                    bArr3[6] = 7;
                                    bArr3[7] = -29;
                                    bArr3[8] = -72;
                                    bArr3[9] = 103;
                                    bArr3[10] = -53;
                                    bArr3[11] = -2;
                                    bArr3[12] = 36;
                                    bArr3[13] = -91;
                                    bArr3[14] = 110;
                                    bArr3[15] = 67;
                                    bArr3[16] = -72;
                                    bArr3[17] = 99;
                                    bArr3[18] = -54;
                                    bArr3[19] = -64;
                                    bArr3[20] = -44;
                                    bArr3[21] = -51;
                                    bArr3[22] = 6;
                                    bArr3[23] = -44;
                                    bArr3[24] = -72;
                                    bArr3[25] = 97;
                                    strM2421h = AbstractC1387m.m2421h(bArr3, new byte[]{105, -30, 26, 125, 4, 117, -42, 99});
                                } else {
                                    strM2421h = AbstractC1387m.m2421h(bArr3, new byte[]{84, -47, -48, 75, -40, -24, 99, 35});
                                }
                                sb.append(strM2421h);
                                i10 = 2;
                                AbstractC1178q.m2086t(new byte[]{-100, -120}, new byte[]{-80, -88, -50, -35, 115, 40, -7, 115}, sb, i20);
                                i12 = 1;
                                c12 = 0;
                                sb.append(AbstractC1387m.m2421h(new byte[]{-107}, new byte[]{-70, 50, 89, -9, -54, -58, 96, -8}));
                                sb.append(100 - i20);
                                linearLayout2.setContentDescription(sb.toString());
                                linearLayout2.setOnClickListener(new ViewOnClickListenerC0701a(19, this, c1482o));
                                linearLayout.addView(linearLayout2);
                            } catch (PackageManager.NameNotFoundException unused10) {
                                i11 = 8;
                                i10 = 2;
                                i12 = i13;
                                c12 = c10;
                            }
                            hashSet = hashSet2;
                            c11 = c12;
                        }
                        i12 = i13;
                        c12 = c10;
                        hashSet = hashSet2;
                        c11 = c12;
                    } else {
                        i14 = i14;
                        hashSet = hashSet2;
                        arrayList = arrayList2;
                        i10 = i16;
                        size = size;
                        i17 = i17;
                        i11 = 8;
                        i12 = i13;
                        if (hashSet.add(str2)) {
                            c11 = c10;
                            m5086a(str2);
                            c11 = c10;
                        }
                    }
                    c11 = c10;
                    i15 = i11;
                    i16 = i10;
                    i13 = i12;
                    c14 = c11;
                    arrayList2 = arrayList;
                    size = size;
                    i17 = i17;
                    hashSet2 = hashSet;
                    i14 = i14;
                }
            }
            c1482o = null;
            c10 = c;
            if (c1482o == null) {
                c10 = c;
                c14 = c10 == true ? 1 : 0;
                i15 = 8;
            } else {
                c10 = c;
                str = (String) c1482o.f3600d;
                str2 = (String) c1482o.f3599c;
                if (str != null) {
                    packageManager = getContext().getPackageManager();
                    int i25 = c1482o.f3598b;
                    int i26 = c1482o.f3597a;
                    if (packageManager.getLaunchIntentForPackage(str2) != null) {
                        arrayList = arrayList2;
                        i10 = i16;
                        i11 = 8;
                        i12 = i13;
                        c12 = c10;
                    } else {
                        arrayList = arrayList2;
                        i10 = i16;
                        i11 = 8;
                        i12 = i13;
                        c12 = c10;
                    }
                    hashSet = hashSet2;
                    c11 = c12;
                } else {
                    i14 = i14;
                    hashSet = hashSet2;
                    arrayList = arrayList2;
                    i10 = i16;
                    size = size;
                    i17 = i17;
                    i11 = 8;
                    i12 = i13;
                    if (hashSet.add(str2)) {
                        c11 = c10;
                        m5086a(str2);
                        c11 = c10;
                    }
                }
                c11 = c10;
                i15 = i11;
                i16 = i10;
                i13 = i12;
                c14 = c11;
                arrayList2 = arrayList;
                size = size;
                i17 = i17;
                hashSet2 = hashSet;
                i14 = i14;
            }
        }
        int i27 = i14;
        HashSet hashSet3 = hashSet2;
        ExecutorService executorService = this.f9228k;
        if (executorService == null) {
            return;
        }
        executorService.execute(new RunnableC0131f(this, i27, hashSet3, 12));
    }

    /* JADX INFO: renamed from: m */
    public final GradientDrawable m5098m(boolean z9) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(z9 ? -14132840 : -14404284);
        gradientDrawable.setCornerRadius(m5090e(12));
        gradientDrawable.setStroke(m5090e(1), z9 ? -7223041 : -12561304);
        return gradientDrawable;
    }

    /* JADX INFO: renamed from: n */
    public final void m5099n() {
        if (this.f9237t == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f9237t.getChildCount(); i10++) {
            View childAt = this.f9237t.getChildAt(i10);
            boolean zEquals = childAt.getTag().equals(this.f9234q);
            childAt.setSelected(zEquals);
            childAt.setBackground(m5098m(zEquals));
        }
    }

    /* JADX INFO: renamed from: o */
    public final Rect m5100o() {
        WindowManager windowManager;
        if (Build.VERSION.SDK_INT >= 30 && (windowManager = this.f9229l) != null) {
            WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
            Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
            Rect rect = new Rect(currentWindowMetrics.getBounds());
            rect.set(insetsIgnoringVisibility.left + rect.left, insetsIgnoringVisibility.top + rect.top, rect.right - insetsIgnoringVisibility.right, rect.bottom - insetsIgnoringVisibility.bottom);
            return rect;
        }
        Point point = new Point();
        WindowManager windowManager2 = this.f9229l;
        if (windowManager2 != null) {
            windowManager2.getDefaultDisplay().getRealSize(point);
        } else {
            point.set(getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels);
        }
        WindowInsets rootWindowInsets = getRootWindowInsets();
        return rootWindowInsets != null ? new Rect(rootWindowInsets.getStableInsetLeft(), rootWindowInsets.getStableInsetTop(), point.x - rootWindowInsets.getStableInsetRight(), point.y - rootWindowInsets.getStableInsetBottom()) : new Rect(0, 0, point.x, point.y);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f9228k = Executors.newSingleThreadExecutor();
        post(new RunnableC1347e(this, 2));
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        post(new RunnableC1347e(this, 3));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f9233p++;
        ExecutorService executorService = this.f9228k;
        if (executorService != null) {
            executorService.shutdownNow();
        }
        this.f9228k = null;
        this.f9232o = false;
        super.onDetachedFromWindow();
    }
}
