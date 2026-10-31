package s1;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable$Orientation;
import android.os.Build$VERSION;
import android.text.TextUtils$TruncateAt;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import android.view.WindowMetrics;
import android.widget.GridLayout;
import android.widget.GridLayout$LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.location.LocationRequestCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u0 extends LinearLayout {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f5204u = e0.m.h(new byte[]{-28, -49, ByteCompanionObject.MAX_VALUE, 89, -34, -83, -13, -7, -39, -62, 126, 73, -27, -95, -64, -9, -46, -46, 78, 76, -41, -85, -63, -2, -61}, new byte[]{-73, -90, 17, 62, -78, -56, -92, -112});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f5205b;
    public final ScrollView c;
    public final LinearLayout d;
    public final LinearLayout e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5207g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5208h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f5209i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f5210j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ExecutorService f5211k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public WindowManager f5212l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public WindowManager$LayoutParams f5213m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f5214n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f5215o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5216p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f5217q;
    public int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5218s;
    public GridLayout t;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{70, -27, 1, 94, 89, 64, 69, -31, 115, -38, 8, 123, 70, 77, 65, -31, 116, -42, 62, 96, 94, 67, 78, -31, 80, -32, 3, 109, 95, 83}, new byte[]{7, -119, 109, 9, 48, 36, 34, -124});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u0(Context context) {
        super(context);
        this.f5209i = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.f5210j = arrayList;
        this.r = 2;
        this.f5218s = 50;
        setOrientation(1);
        setClickable(true);
        ImageView imageView = new ImageView(context);
        this.f5205b = imageView;
        imageView.setImageResource(2131165490);
        imageView.setPadding(e(18), e(18), e(18), e(18));
        imageView.setContentDescription(e0.m.h(new byte[]{105, -109, -112, -50, 77, 69, -92, -103, -103, -35, -1, -91, 29, 40, -52, -7, 2, -35, -2, -92, 43, 40, -63, -7, 4, -35, -8, -92, 36, -42, 84, -7, 36, -35, -16, -92, 43, 40, -56, -7, 1, -36, -62, -92, 40, -44, 84, -8, 62, -36, -62, -92, 35, 40, -59, -8, 50, 45, -111, -12, 77, 72, -91, -88, 105, -73, -111, -12, 76, 115, -91, -85, 104, -127, 123, 84, 76, 123, -92, -99, 105, -72, -111, -12, 77, 78, -92, -111, 105, -65, -112, -60, 77, 65, -91, -85, 105, -72, 96, -92, 41, 40, -49, -8, 54, 45, -112, -53, 77, 77, -91, -87, 105, -72, -112, -56, 77, 77, -91, -96, 105, -72, -112, -55, 77, 64, -91, -90}, new byte[]{-71, 13, 64, 116, -99, -8, 116, 41}));
        imageView.setClickable(false);
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(e(80), e(80));
        linearLayout$LayoutParams.gravity = 1;
        addView(imageView, linearLayout$LayoutParams);
        LinearLayout linearLayout = new LinearLayout(context);
        this.e = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        addView(linearLayout, new LinearLayout$LayoutParams(-1, -2));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.d = linearLayout2;
        linearLayout2.setOrientation(1);
        ScrollView scrollView = new ScrollView(context);
        this.c = scrollView;
        scrollView.setClipToPadding(false);
        scrollView.setPadding(0, 0, 0, e(8));
        scrollView.addView(linearLayout2);
        scrollView.setVisibility(8);
        addView(scrollView, new LinearLayout$LayoutParams(-1, 0, 1.0f));
        c();
        String strLoadString = h0.b.o().loadString(e0.m.h(new byte[]{-65, -10, -69, -3, 91, 114, -22, -37, -126, -5, -70, -19, 96, 126, -39, -43, -119, -21, -118, -24, 82, 116, -40, -36, -104}, new byte[]{-20, -97, -43, -102, 55, 23, -67, -78}), "");
        if (strLoadString.isEmpty()) {
            return;
        }
        arrayList.addAll(Arrays.asList(strLoadString.split(e0.m.h(new byte[]{73}, new byte[]{114, -29, -37, 59, -46, 81, 97, -17}))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(String str) {
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
            linearLayout.setPadding(e(4), e(8), e(4), e(8));
            ImageView imageView = new ImageView(getContext());
            imageView.setImageDrawable(packageManager.getApplicationIcon(applicationInfo));
            imageView.setScaleType(ImageView$ScaleType.FIT_CENTER);
            linearLayout.addView(imageView, new LinearLayout$LayoutParams(e(64), e(64)));
            linearLayout.addView(d(string));
            linearLayout.setContentDescription(string);
            linearLayout.setOnClickListener(new r0(this, str, 1));
            this.d.addView(linearLayout);
        } catch (PackageManager$NameNotFoundException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String b(String str) {
        if (str == null) {
            return e0.m.h(new byte[]{-57, 60, -64, -104, -41, -90, 79, -33, -57, 30, -64, -111, -42, -101, -66, -113, -88, ByteCompanionObject.MAX_VALUE, -111, -61, -65, -57, 37, -113, -87, 126, -89, -61, -78, -57, 35, -113, -81, 126, -92}, new byte[]{23, -82, 17, 19, 7, 23, -98, 95});
        }
        try {
            PackageManager packageManager = getContext().getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
        } catch (PackageManager$NameNotFoundException unused) {
            return str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable$Orientation.TL_BR, new int[]{-12349720, -13480523});
        gradientDrawable.setShape(1);
        gradientDrawable.setStroke(e(1), -7223041);
        this.f5205b.setBackground(gradientDrawable);
        if (this.f5214n) {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(-15194830);
            gradientDrawable2.setCornerRadius(e(24));
            setBackground(gradientDrawable2);
        } else {
            setBackground(null);
        }
        setAlpha(this.f5214n ? 1.0f : 0.5f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView d(String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(12.0f);
        textView.setGravity(17);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils$TruncateAt.END);
        textView.setPadding(0, e(4), 0, 0);
        textView.setLayoutParams(new LinearLayout$LayoutParams(-1, -2));
        return textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            setAlpha(1.0f);
        }
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() != 1 && motionEvent.getActionMasked() != 3) {
            return zDispatchTouchEvent;
        }
        post(new e0.e(this, 1));
        return zDispatchTouchEvent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int e(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(e4.o oVar) {
        if (this.f5215o || this.f5211k == null || this.f5213m == null) {
            return;
        }
        if (this.f5206f) {
            l();
        }
        this.f5215o = true;
        h();
        this.f5211k.execute(new androidx.activity.f(this, oVar, Math.min(e(LocationRequestCompat.QUALITY_LOW_POWER), o().width() / 3) + this.f5213m.x, 11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        if (this.f5206f) {
            this.f5206f = false;
            this.f5216p++;
            this.e.setVisibility(8);
            this.f5205b.setVisibility(0);
            WindowManager$LayoutParams windowManager$LayoutParams = this.f5213m;
            if (windowManager$LayoutParams != null) {
                windowManager$LayoutParams.x = this.f5207g;
                windowManager$LayoutParams.y = this.f5208h;
            }
            h();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        if (this.f5212l == null || this.f5213m == null) {
            return;
        }
        Rect rectO = o();
        this.f5213m.gravity = 51;
        int iMin = Math.min(e(LocationRequestCompat.QUALITY_LOW_POWER), rectO.width() / 3);
        boolean z8 = this.f5214n;
        if (z8 && this.f5206f) {
            this.f5213m.width = Math.min(e(600), rectO.width() - e(16));
            this.f5213m.height = Math.min(e(580), rectO.height());
            WindowManager$LayoutParams windowManager$LayoutParams = this.f5213m;
            windowManager$LayoutParams.x = Math.max(rectO.left, Math.min(this.f5207g, rectO.right - windowManager$LayoutParams.width));
            WindowManager$LayoutParams windowManager$LayoutParams2 = this.f5213m;
            windowManager$LayoutParams2.y = Math.max(rectO.top, Math.min(this.f5208h, rectO.bottom - windowManager$LayoutParams2.height));
            if (isAttachedToWindow()) {
                this.f5212l.updateViewLayout(this, this.f5213m);
                return;
            }
            return;
        }
        this.f5213m.width = z8 ? iMin : e(80);
        WindowManager$LayoutParams windowManager$LayoutParams3 = this.f5213m;
        windowManager$LayoutParams3.x = Math.max(rectO.left, Math.min(windowManager$LayoutParams3.x, (rectO.right - iMin) - Math.min(e(160), rectO.width() / 3)));
        WindowManager$LayoutParams windowManager$LayoutParams4 = this.f5213m;
        windowManager$LayoutParams4.y = Math.max(rectO.top, Math.min(windowManager$LayoutParams4.y, rectO.bottom - e(80)));
        if (this.f5214n) {
            WindowManager$LayoutParams windowManager$LayoutParams5 = this.f5213m;
            windowManager$LayoutParams5.y = Math.min(windowManager$LayoutParams5.y, Math.max(rectO.top, rectO.bottom - e(240)));
        }
        this.f5213m.height = this.f5214n ? Math.max(e(80), (rectO.bottom - e(8)) - this.f5213m.y) : e(80);
        h0.b.o().saveInt(e0.m.h(new byte[]{117, 115, 103, 86, 94, -11, 28, 81, 64, 76, 110, 115, 65, -8, 24, 81, 71, 64, 88, 104, 89, -10, 23, 81, 99, 118, 101, 101, 88, -26, 35}, new byte[]{52, 31, 11, 1, 55, -111, 123, 52}), this.f5213m.x);
        h0.b.o().saveInt(e0.m.h(new byte[]{-115, 100, -68, 21, 122, -20, 66, 74, -72, 91, -75, 48, 101, -31, 70, 74, -65, 87, -125, 43, 125, -17, 73, 74, -101, 97, -66, 38, 124, -1, 124}, new byte[]{-52, 8, -48, 66, 19, -120, 37, 47}), this.f5213m.y);
        if (isAttachedToWindow()) {
            this.f5212l.updateViewLayout(this, this.f5213m);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v16, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r3v17, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r3v25, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    public final void i() {
        int i9;
        String strI;
        int i10;
        LinearLayout linearLayout = this.e;
        linearLayout.removeAllViews();
        int i11 = 8;
        View viewK = k(e0.m.h(new byte[]{-53, 40, 54, 37, -30, -19, 69, -75, -105, 120, 56, -43, 118, -19, 84, -76, -85, 121, 3, 37, 18, -121, 52, -37, -7, 20, 95, -76, 18, -123, 52, -40, -7, 24, 94, -125, 18, -123, 53, -21}, new byte[]{41, -88, -113, 5, -62, Base64.padSymbol, -28, 101}));
        int i12 = 0;
        viewK.setOnClickListener(new s0(this, 0));
        linearLayout.addView(viewK);
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        int i13 = 2;
        int[] iArr = {1, 2};
        int i14 = 0;
        while (true) {
            i9 = 4;
            if (i14 >= 2) {
                break;
            }
            int i15 = iArr[i14];
            TextView textViewK = k(i15 == 1 ? e0.m.h(new byte[]{79, 30, -79, 69, 41, -88, -41, 124, 78, 58, -80, 116, -39, 50, 38, 45, 30, 111, -36, 39, 65, -51, -79, 45, 28}, new byte[]{-97, -65, 97, -9, -7, 29, 6, -4}) : e0.m.h(new byte[]{-28, 74, -103, 0, 96, -13, -87, 48, -28, 91, 105, -108, -112, -105, -8, 82, -117, 58, -55, 107, 0, -106, -53, 82, -124}, new byte[]{52, -21, 73, -69, -80, 70, 121, -126}));
            textViewK.setGravity(17);
            int i16 = this.r;
            if (i15 == 1) {
                i10 = i16 == 1 ? 2131165495 : 2131165494;
            } else {
                i10 = i16 == 2 ? 2131165493 : 2131165492;
            }
            textViewK.setCompoundDrawablesWithIntrinsicBounds(i10, 0, 0, 0);
            textViewK.setBackground(m(this.r == i15));
            LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(0, e(60), 1.0f);
            linearLayout$LayoutParams.setMargins(e(4), 0, e(4), e(4));
            linearLayout2.addView(textViewK, linearLayout$LayoutParams);
            textViewK.setOnClickListener(new t0(this, i15, 0));
            i14++;
        }
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = new LinearLayout(getContext());
        int[] iArr2 = {30, 50, 70};
        int i17 = 0;
        while (i17 < 3) {
            int i18 = iArr2[i17];
            LinearLayout linearLayout4 = new LinearLayout(getContext());
            linearLayout4.setOrientation(1);
            linearLayout4.setPadding(e(i11), e(6), e(i11), e(i9));
            linearLayout4.setBackground(m(this.f5218s == i18 ? 1 : i12));
            LinearLayout linearLayout5 = new LinearLayout(getContext());
            linearLayout5.setOrientation(this.r == 1 ? 1 : i12);
            int i19 = i12;
            while (i19 < i13) {
                View view = new View(getContext());
                view.setBackgroundColor(i19 == 0 ? -8996097 : -12030569);
                int i20 = i19 == 0 ? i18 : 100 - i18;
                LinearLayout$LayoutParams linearLayout$LayoutParams2 = this.r == 1 ? new LinearLayout$LayoutParams(-1, i12, i20) : new LinearLayout$LayoutParams(i12, -1, i20);
                linearLayout$LayoutParams2.setMargins(e(1), e(1), e(1), e(1));
                linearLayout5.addView(view, linearLayout$LayoutParams2);
                i19++;
                i12 = 0;
                i13 = 2;
            }
            linearLayout4.addView(linearLayout5, new LinearLayout$LayoutParams(-1, e(24)));
            TextView textView = new TextView(getContext());
            textView.setText(i18 + e0.m.h(new byte[]{40, -61, 76}, new byte[]{8, -20, 108, -79, -107, -15, 0, 22}) + (100 - i18));
            textView.setTextColor(-1);
            textView.setGravity(17);
            textView.setTextSize(14.0f);
            linearLayout4.addView(textView);
            LinearLayout$LayoutParams linearLayout$LayoutParams3 = new LinearLayout$LayoutParams(0, e(60), 1.0f);
            linearLayout$LayoutParams3.setMargins(e(4), 0, e(4), 0);
            linearLayout3.addView(linearLayout4, linearLayout$LayoutParams3);
            linearLayout4.setOnClickListener(new t0(this, i18, 1));
            i17++;
            i12 = 0;
            i9 = 4;
            i11 = 8;
            i13 = 2;
        }
        linearLayout.addView(linearLayout3);
        if (this.f5217q == null) {
            strI = e0.m.h(new byte[]{-15, -53, -19, -88, -12, -115, -26, -48, 113, 53, 120, -87, -26, -116, -43, -47, 66, 53, 120, 88, -74, -29, -67, -75, 17, 101, 29, -54, -74, -30, -67, -75, -32, 53, 114, -87, -26, -116, -43, -48, 123, 53, 115, -88, -48, -116, -40, -48, 125, 53, 117, -88, -45, 124, -81, -73, -32, 53, 86, -88, -34, -115, -20, -47, 66, 53, 125, -88, -33, -115, -17, -48, 117, -59, 28, -7, -74, -23, -68, -126, 16, 95, 28, -5, 70, -116, -33, -48, 113, 53, 115, -88, -36}, new byte[]{-64, -27, -51, 120, 102, 92, 109, 0});
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(e0.m.h(new byte[]{90, 35, -86, -17, 65, 42, -118, -67, -39, -35, 63, -18, 83, 43, -71, -68, -22, -35, 63, 31, 3, 73, -48, -17, -72, -77, 91, -65, 3, 69, -47, -40, 72, -17, 10, -85, -13, 43, -66, -67, -40, -36, 10, -17, 99, -37, -47, -45, -71, -113, 90, -123, 2, 123, -47, -45, -72, -72, 91, -67, 2, 122, -48, -30, 98, -35, 21, -17, 102, 42, -127, -67, -38, -35, 52, -17, 102, -63, 33}, new byte[]{104, 13, -118, 63, -45, -5, 1, 109}));
            sb.append(b(this.f5217q));
            strI = com.google.protobuf.q.i(new byte[]{-87, 109, 48, -123}, new byte[]{-119, 77, -13, 18, 33, 55, -126, 124}, sb);
        }
        TextView textViewK2 = k(strI);
        textViewK2.setTextSize(13.0f);
        textViewK2.setMaxLines(2);
        textViewK2.setEllipsize(TextUtils$TruncateAt.END);
        textViewK2.setOnClickListener(new s0(this, 1));
        linearLayout.addView(textViewK2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        LinearLayout linearLayout = this.d;
        linearLayout.removeAllViews();
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(getContext());
        int i9 = 1;
        horizontalScrollView.setHorizontalScrollBarEnabled(true);
        GridLayout gridLayout = new GridLayout(getContext());
        this.t = gridLayout;
        gridLayout.setOrientation(1);
        this.t.setRowCount(3);
        WindowManager$LayoutParams windowManager$LayoutParams = this.f5213m;
        int iE = windowManager$LayoutParams == null ? e(600) : windowManager$LayoutParams.width;
        int iMax = iE / Math.max(1, iE / e(120));
        ArrayList arrayList = this.f5209i;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ResolveInfo resolveInfo = (ResolveInfo) obj;
            String str = resolveInfo.activityInfo.packageName;
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setTag(str);
            linearLayout2.setOrientation(i9);
            linearLayout2.setGravity(17);
            linearLayout2.setPadding(e(5), e(6), e(5), e(4));
            ImageView imageView = new ImageView(getContext());
            imageView.setImageDrawable(resolveInfo.loadIcon(getContext().getPackageManager()));
            linearLayout2.addView(imageView, new LinearLayout$LayoutParams(e(64), e(64)));
            TextView textView = new TextView(getContext());
            textView.setText(resolveInfo.loadLabel(getContext().getPackageManager()));
            textView.setTextColor(-1);
            textView.setTextSize(14.0f);
            textView.setGravity(17);
            textView.setMaxLines(2);
            textView.setEllipsize(TextUtils$TruncateAt.END);
            linearLayout2.addView(textView, new LinearLayout$LayoutParams(-1, -2));
            linearLayout2.setContentDescription(textView.getText());
            GridLayout$LayoutParams gridLayout$LayoutParams = new GridLayout$LayoutParams();
            gridLayout$LayoutParams.width = iMax - e(8);
            gridLayout$LayoutParams.height = e(120);
            gridLayout$LayoutParams.setMargins(e(4), e(4), e(4), e(4));
            this.t.addView(linearLayout2, gridLayout$LayoutParams);
            linearLayout2.setOnClickListener(new r0(this, str, 0));
            i9 = 1;
        }
        horizontalScrollView.addView(this.t);
        linearLayout.addView(horizontalScrollView);
        n();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView k(String str) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(14.0f);
        textView.setGravity(16);
        textView.setMinHeight(e(56));
        textView.setPadding(e(8), e(8), e(8), e(8));
        textView.setLayoutParams(new LinearLayout$LayoutParams(-1, -2));
        return textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:108:0x00c6 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:132:0x004e */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:134:0x004e */
    /* JADX DEBUG: Multi-variable search result rejected for r1v21, resolved type: boolean */
    /* JADX WARN: Code duplicated, block: B:130:0x00da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:96:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:98:0x02e6  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void l() {
        char c;
        e4.o oVar;
        char c9;
        String str;
        String str2;
        HashSet hashSet;
        ArrayList arrayList;
        int i9;
        int i10;
        int i11;
        char c10;
        PackageManager packageManager;
        char c11;
        String strH;
        char c12;
        LinearLayout$LayoutParams linearLayout$LayoutParams;
        g();
        int i12 = 1;
        int i13 = this.f5216p + 1;
        this.f5216p = i13;
        LinearLayout linearLayout = this.d;
        linearLayout.removeAllViews();
        int i14 = 8;
        TextView textViewK = k(e0.m.h(new byte[]{66, -70, -38, 113, -5, 5, 35, -64, 125, -70, -127, -54, -5, 39, 35, -61, 125, -74, ByteCompanionObject.MIN_VALUE, -3, -5, 39, 34, -15}, new byte[]{-83, 6, 81, 123, 43, -97, -13, 126}));
        textViewK.setGravity(17);
        textViewK.setTextSize(12.0f);
        int i15 = 2;
        textViewK.setOnClickListener(new s0(this, 2));
        linearLayout.addView(textViewK);
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList2 = new ArrayList(this.f5210j);
        int size = arrayList2.size();
        char c13 = 0;
        int i16 = 0;
        while (i16 < size) {
            Object obj = arrayList2.get(i16);
            i16++;
            String str3 = (String) obj;
            if (str3 == null || str3.trim().isEmpty()) {
                c = c13;
            } else {
                byte[] bArr = new byte[i12];
                bArr[c13] = -118;
                c = c13;
                byte[] bArr2 = new byte[i14];
                // fill-array-data instruction
                bArr2[0] = -90;
                bArr2[1] = 82;
                bArr2[2] = -26;
                bArr2[3] = -66;
                bArr2[4] = -66;
                bArr2[5] = -105;
                bArr2[6] = 21;
                bArr2[7] = 2;
                String[] strArrSplit = str3.split(e0.m.h(bArr, bArr2), -1);
                if (strArrSplit.length == i12) {
                    oVar = new e4.o(strArrSplit[c == true ? 1 : 0], null, i15, 50);
                } else if (strArrSplit.length == 4 && !strArrSplit[c == true ? 1 : 0].isEmpty() && !strArrSplit[i12].isEmpty() && !strArrSplit[c == true ? 1 : 0].equals(strArrSplit[i12])) {
                    try {
                        int i17 = Integer.parseInt(strArrSplit[i15]);
                        int i18 = Integer.parseInt(strArrSplit[3]);
                        if ((i17 == i12 || i17 == i15) && (i18 == 30 || i18 == 50 || i18 == 70)) {
                            oVar = new e4.o(strArrSplit[c == true ? 1 : 0], strArrSplit[i12], i17, i18);
                            c9 = c;
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                if (oVar == null) {
                    c9 = c;
                    c13 = c9 == true ? 1 : 0;
                    i14 = 8;
                } else {
                    c9 = c;
                    str = (String) oVar.d;
                    str2 = (String) oVar.c;
                    if (str != null) {
                        packageManager = getContext().getPackageManager();
                        int i19 = oVar.f2073b;
                        int i20 = oVar.f2072a;
                        if (packageManager.getLaunchIntentForPackage(str2) != null || packageManager.getLaunchIntentForPackage(str) == null) {
                            arrayList = arrayList2;
                            i9 = i15;
                            i10 = 8;
                        } else {
                            LinearLayout linearLayout2 = new LinearLayout(getContext());
                            linearLayout2.setOrientation(i12);
                            arrayList = arrayList2;
                            LinearLayout linearLayout3 = new LinearLayout(getContext());
                            linearLayout3.setOrientation(i20 == i12 ? i12 : c9 == true ? 1 : 0);
                            try {
                                String[] strArr = {str2, str};
                                int i21 = c9 == true ? 1 : 0;
                                char c14 = c9;
                                while (i21 < 2) {
                                    try {
                                        String str4 = strArr[i21];
                                        int i22 = i21;
                                        size = size;
                                        try {
                                            ImageView imageView = new ImageView(getContext());
                                            imageView.setImageDrawable(packageManager.getApplicationIcon(str4));
                                            imageView.setScaleType(ImageView$ScaleType.FIT_CENTER);
                                            i16 = i16;
                                            i11 = 1;
                                            try {
                                                PackageManager packageManager2 = packageManager;
                                                i13 = i13;
                                                try {
                                                    hashSet2 = hashSet2;
                                                    try {
                                                        try {
                                                            imageView.setPadding(e(1), e(1), e(1), e(1));
                                                            boolean z8 = c14;
                                                            try {
                                                                imageView.setBackground(m(z8));
                                                                int i23 = str4.equals(str2) ? i19 : 100 - i19;
                                                                if (i20 == 1) {
                                                                    try {
                                                                        linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, 0, i23);
                                                                    } catch (PackageManager$NameNotFoundException unused2) {
                                                                        c12 = 0;
                                                                        i10 = 8;
                                                                        i9 = 2;
                                                                        i11 = 1;
                                                                        c11 = c12;
                                                                        hashSet = hashSet2;
                                                                        c10 = c11;
                                                                        c10 = c9;
                                                                        i14 = i10;
                                                                        i15 = i9;
                                                                        i12 = i11;
                                                                        c13 = c10;
                                                                        arrayList2 = arrayList;
                                                                        size = size;
                                                                        i16 = i16;
                                                                        hashSet2 = hashSet;
                                                                        i13 = i13;
                                                                    }
                                                                } else {
                                                                    linearLayout$LayoutParams = new LinearLayout$LayoutParams(0, -1, i23);
                                                                }
                                                                i11 = 1;
                                                                linearLayout$LayoutParams.setMargins(e(1), e(1), e(1), e(1));
                                                                linearLayout3.addView(imageView, linearLayout$LayoutParams);
                                                                i21 = (i22 == true ? 1 : 0) + 1;
                                                                size = size;
                                                                i16 = i16;
                                                                packageManager = packageManager2;
                                                                i13 = i13;
                                                                hashSet2 = hashSet2;
                                                                c14 = 0;
                                                            } catch (PackageManager$NameNotFoundException unused3) {
                                                                c12 = z8 ? 1 : 0;
                                                            }
                                                        } catch (PackageManager$NameNotFoundException unused4) {
                                                            i10 = 8;
                                                            i9 = 2;
                                                            i11 = 1;
                                                            c11 = 0;
                                                        }
                                                    } catch (PackageManager$NameNotFoundException unused5) {
                                                        i10 = 8;
                                                        i9 = 2;
                                                        c11 = 0;
                                                    }
                                                } catch (PackageManager$NameNotFoundException unused6) {
                                                    hashSet2 = hashSet2;
                                                    i10 = 8;
                                                    i9 = 2;
                                                    c11 = 0;
                                                    hashSet = hashSet2;
                                                    c10 = c11;
                                                    c10 = c9;
                                                    i14 = i10;
                                                    i15 = i9;
                                                    i12 = i11;
                                                    c13 = c10;
                                                    arrayList2 = arrayList;
                                                    size = size;
                                                    i16 = i16;
                                                    hashSet2 = hashSet;
                                                    i13 = i13;
                                                }
                                            } catch (PackageManager$NameNotFoundException unused7) {
                                                i13 = i13;
                                            }
                                        } catch (PackageManager$NameNotFoundException unused8) {
                                            i16 = i16;
                                            i10 = 8;
                                            i9 = 2;
                                            i11 = 1;
                                            c11 = 0;
                                            hashSet = hashSet2;
                                            c10 = c11;
                                            c10 = c9;
                                            i14 = i10;
                                            i15 = i9;
                                            i12 = i11;
                                            c13 = c10;
                                            arrayList2 = arrayList;
                                            size = size;
                                            i16 = i16;
                                            hashSet2 = hashSet;
                                            i13 = i13;
                                        }
                                    } catch (PackageManager$NameNotFoundException unused9) {
                                        size = size;
                                    }
                                }
                                i13 = i13;
                                hashSet2 = hashSet2;
                                size = size;
                                i16 = i16;
                                linearLayout2.setPadding(e(4), e(6), e(4), e(6));
                                linearLayout2.addView(linearLayout3, new LinearLayout$LayoutParams(-1, e(92)));
                                linearLayout2.addView(d(b(str2)));
                                linearLayout2.addView(d(b(str)));
                                StringBuilder sb = new StringBuilder();
                                sb.append(b(str2));
                                i10 = 8;
                                sb.append(e0.m.h(new byte[]{5, -61}, new byte[]{41, -29, 125, -70, 17, -116, -106, -97}));
                                sb.append(b(str));
                                sb.append(e0.m.h(new byte[]{17, -92}, new byte[]{Base64.padSymbol, -124, 10, -120, -107, -46, 43, -115}));
                                byte[] bArr3 = {-123, 80, 0, -16, 8, 93, -77, -111, -124, 97, -16, -101, 96, -56, -78, -94, -124, 110, 1, -53, 8, 88, -77, -111, -124, 97};
                                if (i20 == 1) {
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
                                    strH = e0.m.h(bArr3, new byte[]{105, -30, 26, 125, 4, 117, -42, 99});
                                } else {
                                    strH = e0.m.h(bArr3, new byte[]{84, -47, -48, 75, -40, -24, 99, 35});
                                }
                                sb.append(strH);
                                i9 = 2;
                                com.google.protobuf.q.t(new byte[]{-100, -120}, new byte[]{-80, -88, -50, -35, 115, 40, -7, 115}, sb, i19);
                                i11 = 1;
                                c11 = 0;
                                sb.append(e0.m.h(new byte[]{-107}, new byte[]{-70, 50, 89, -9, -54, -58, 96, -8}));
                                sb.append(100 - i19);
                                linearLayout2.setContentDescription(sb.toString());
                                linearLayout2.setOnClickListener(new androidx.navigation.ui.a(19, this, oVar));
                                linearLayout.addView(linearLayout2);
                            } catch (PackageManager$NameNotFoundException unused10) {
                                i10 = 8;
                                i9 = 2;
                                i11 = i12;
                                c11 = c9;
                            }
                            hashSet = hashSet2;
                            c10 = c11;
                        }
                        i11 = i12;
                        c11 = c9;
                        hashSet = hashSet2;
                        c10 = c11;
                    } else {
                        i13 = i13;
                        hashSet = hashSet2;
                        arrayList = arrayList2;
                        i9 = i15;
                        size = size;
                        i16 = i16;
                        i10 = 8;
                        i11 = i12;
                        if (hashSet.add(str2)) {
                            c10 = c9;
                            a(str2);
                            c10 = c9;
                        }
                    }
                    c10 = c9;
                    i14 = i10;
                    i15 = i9;
                    i12 = i11;
                    c13 = c10;
                    arrayList2 = arrayList;
                    size = size;
                    i16 = i16;
                    hashSet2 = hashSet;
                    i13 = i13;
                }
            }
            oVar = null;
            c9 = c;
            if (oVar == null) {
                c9 = c;
                c13 = c9 == true ? 1 : 0;
                i14 = 8;
            } else {
                c9 = c;
                str = (String) oVar.d;
                str2 = (String) oVar.c;
                if (str != null) {
                    packageManager = getContext().getPackageManager();
                    int i110 = oVar.f2073b;
                    int i24 = oVar.f2072a;
                    if (packageManager.getLaunchIntentForPackage(str2) != null) {
                        arrayList = arrayList2;
                        i9 = i15;
                        i10 = 8;
                        i11 = i12;
                        c11 = c9;
                    } else {
                        arrayList = arrayList2;
                        i9 = i15;
                        i10 = 8;
                        i11 = i12;
                        c11 = c9;
                    }
                    hashSet = hashSet2;
                    c10 = c11;
                } else {
                    i13 = i13;
                    hashSet = hashSet2;
                    arrayList = arrayList2;
                    i9 = i15;
                    size = size;
                    i16 = i16;
                    i10 = 8;
                    i11 = i12;
                    if (hashSet.add(str2)) {
                        c10 = c9;
                        a(str2);
                        c10 = c9;
                    }
                }
                c10 = c9;
                i14 = i10;
                i15 = i9;
                i12 = i11;
                c13 = c10;
                arrayList2 = arrayList;
                size = size;
                i16 = i16;
                hashSet2 = hashSet;
                i13 = i13;
            }
        }
        int i25 = i13;
        HashSet hashSet3 = hashSet2;
        ExecutorService executorService = this.f5211k;
        if (executorService == null) {
            return;
        }
        executorService.execute(new androidx.activity.f(this, i25, hashSet3, 12));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final GradientDrawable m(boolean z8) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(z8 ? -14132840 : -14404284);
        gradientDrawable.setCornerRadius(e(12));
        gradientDrawable.setStroke(e(1), z8 ? -7223041 : -12561304);
        return gradientDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n() {
        if (this.t == null) {
            return;
        }
        for (int i9 = 0; i9 < this.t.getChildCount(); i9++) {
            View childAt = this.t.getChildAt(i9);
            boolean zEquals = childAt.getTag().equals(this.f5217q);
            childAt.setSelected(zEquals);
            childAt.setBackground(m(zEquals));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Rect o() {
        WindowManager windowManager;
        if (Build$VERSION.SDK_INT >= 30 && (windowManager = this.f5212l) != null) {
            WindowMetrics windowMetricsI = androidx.core.view.accessibility.b.i(windowManager);
            Insets insetsC = androidx.core.view.m.c(androidx.core.view.accessibility.b.c(windowMetricsI), androidx.core.view.accessibility.b.h() | androidx.core.view.m.D());
            Rect rect = new Rect(androidx.core.view.accessibility.b.b(windowMetricsI));
            rect.set(androidx.activity.k.a(insetsC) + rect.left, androidx.activity.k.n(insetsC) + rect.top, rect.right - androidx.activity.k.t(insetsC), rect.bottom - androidx.activity.k.w(insetsC));
            return rect;
        }
        Point point = new Point();
        WindowManager windowManager2 = this.f5212l;
        if (windowManager2 != null) {
            windowManager2.getDefaultDisplay().getRealSize(point);
        } else {
            point.set(getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels);
        }
        WindowInsets rootWindowInsets = getRootWindowInsets();
        return rootWindowInsets != null ? new Rect(rootWindowInsets.getStableInsetLeft(), rootWindowInsets.getStableInsetTop(), point.x - rootWindowInsets.getStableInsetRight(), point.y - rootWindowInsets.getStableInsetBottom()) : new Rect(0, 0, point.x, point.y);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5211k = Executors.newSingleThreadExecutor();
        post(new e0.e(this, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        post(new e0.e(this, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f5216p++;
        ExecutorService executorService = this.f5211k;
        if (executorService != null) {
            executorService.shutdownNow();
        }
        this.f5211k = null;
        this.f5215o = false;
        super.onDetachedFromWindow();
    }
}
