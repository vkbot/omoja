package com.example.navistart.mainview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build$VERSION;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.navigation.c;
import com.google.protobuf.q;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBar;
import e0.l2;
import e0.m;
import kotlin.jvm.internal.ByteCompanionObject;
import org.apache.commons.net.util.a;
import t1.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HeatManSetView extends CardView {
    public static final /* synthetic */ int t = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f952b;
    public final String c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f953f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final VerticalSeekBar f954g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f955h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f956i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f957j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final VerticalSeekBar f958k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f959l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ProgressBar f960m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f961n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f962o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f963p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f964q;
    public Runnable r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f965s;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HeatManSetView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f952b = false;
        this.c = "";
        this.f961n = "";
        this.f962o = "";
        this.f963p = "";
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, l2.c, 0, 0);
        try {
            this.f961n = typedArrayObtainStyledAttributes.getString(0);
            this.c = typedArrayObtainStyledAttributes.getString(1);
            this.f953f = typedArrayObtainStyledAttributes.getInteger(13, 0);
            this.d = typedArrayObtainStyledAttributes.getInteger(10, 0);
            this.e = typedArrayObtainStyledAttributes.getInteger(12, 20);
            typedArrayObtainStyledAttributes.getInteger(11, 1);
            this.f955h = typedArrayObtainStyledAttributes.getInteger(6, -40);
            this.f956i = typedArrayObtainStyledAttributes.getInteger(8, 40);
            this.f957j = typedArrayObtainStyledAttributes.getInteger(9, 0);
            typedArrayObtainStyledAttributes.getInteger(7, 1);
            this.f959l = typedArrayObtainStyledAttributes.getInteger(3, 1);
            this.f962o = typedArrayObtainStyledAttributes.getString(14);
            this.f963p = typedArrayObtainStyledAttributes.getString(15);
            typedArrayObtainStyledAttributes.recycle();
            LayoutInflater.from(context).inflate(2131492916, (ViewGroup) this, true);
            ((TextView) findViewById(2131296620)).setText(this.c);
            ImageView imageView = (ImageView) findViewById(2131297346);
            this.f960m = (ProgressBar) findViewById(2131297347);
            setLevel(this.f959l);
            ImageView imageView2 = (ImageView) findViewById(2131297549);
            String str = this.f961n;
            switch (str.hashCode()) {
                case -2059447509:
                    if (str.equals(m.h(new byte[]{70, -126, -35, -14, 116, -123, 74, -16, 98}, new byte[]{14, -25, -68, -122, 35, -19, 47, -107}))) {
                        imageView.setImageResource(2131165357);
                        imageView2.setImageResource(2131165317);
                        this.f960m.setMax(1);
                        a.v(this.f960m);
                        setLevel(this.f959l);
                    }
                    break;
                case -2034667398:
                    if (str.equals(m.h(new byte[]{72, -5, -95, -82, 74, 72, -108, 56}, new byte[]{30, -98, -49, -38, 25, 45, -11, 76}))) {
                        imageView.setImageResource(2131165372);
                        imageView2.setImageResource(2131165318);
                        this.f960m.setProgressTintList(ContextCompat.getColorStateList(context, 2131035112));
                    }
                    break;
                case -1036387275:
                    if (str.equals(m.h(new byte[]{-75, -64, -126, 106, -17, 87, 94, -126}, new byte[]{-3, -91, -29, 30, -68, 50, 63, -10}))) {
                        imageView.setImageResource(2131165362);
                        imageView2.setImageResource(2131165317);
                        this.f960m.setProgressTintList(ContextCompat.getColorStateList(context, 2131034223));
                    }
                    break;
                case -303926367:
                    if (str.equals(m.h(new byte[]{-38, 33, 122, 68, 111, -93, -83, 62, -31, 44, 114, 85, 84, -82}, new byte[]{-110, 68, 27, 48, 56, -54, -61, 90}))) {
                        imageView.setImageResource(2131165379);
                        imageView2.setImageResource(2131165317);
                        this.f960m.setMax(1);
                        a.v(this.f960m);
                        setLevel(this.f959l);
                    }
                    break;
                case 2056863413:
                    if (str.equals(m.h(new byte[]{70, -77, 103, -115, -103, -72, 11, 97, 102}, new byte[]{18, -38, 10, -24, -21, -16, 110, 0}))) {
                        imageView.setImageResource(2131165515);
                        this.f960m.setMax(1);
                        a.v(this.f960m);
                        setLevel(this.f959l);
                    }
                    break;
                case 2087531716:
                    if (str.equals(m.h(new byte[]{-74, -68, 73, 84, 86, 12, -54, 107, -119, -80, 70, 68, 107, 30}, new byte[]{-2, -39, 40, 32, 4, 105, -85, 25}))) {
                        imageView.setImageResource(2131165361);
                        imageView2.setImageResource(2131165317);
                        this.f960m.setMax(1);
                        a.v(this.f960m);
                        setLevel(this.f959l);
                    }
                    break;
            }
            imageView.setOnClickListener(new c(19, this));
            VerticalSeekBar verticalSeekBar = (VerticalSeekBar) findViewById(2131297653);
            this.f954g = verticalSeekBar;
            a.w(verticalSeekBar, this.d);
            this.f954g.setMax(this.e);
            setTimeValue(this.f953f);
            TextView textView = (TextView) findViewById(2131297654);
            boolean zEquals = m.h(new byte[]{62, -60, -60, 98, -65, 68, 105, -60, 30}, new byte[]{106, -83, -87, 7, -51, 12, 12, -91}).equals(this.f961n);
            int i9 = this.f953f;
            if (zEquals) {
                textView.setText(b(i9));
            } else {
                textView.setText(i9 + m.h(new byte[]{96, -15}, new byte[]{64, -100, 101, 50, 85, 77, -104, 12}));
            }
            this.f954g.setOnSeekBarChangeListener(new f(this, textView, 0));
            VerticalSeekBar verticalSeekBar2 = (VerticalSeekBar) findViewById(2131297548);
            this.f958k = verticalSeekBar2;
            a.w(verticalSeekBar2, this.f955h);
            this.f958k.setMax(this.f956i);
            setTemperatureValue(this.f957j);
            TextView textView2 = (TextView) findViewById(2131297550);
            boolean zEquals2 = m.h(new byte[]{94, -20, 40, -124, -38, 67, -39, -102, 126}, new byte[]{10, -123, 69, -31, -88, 11, -68, -5}).equals(this.f961n);
            int i10 = this.f957j;
            if (zEquals2) {
                textView2.setText(b(i10));
            } else {
                textView2.setText(a(i10));
            }
            this.f958k.setOnSeekBarChangeListener(new f(this, textView2, 1));
            setOnClickListener(new androidx.navigation.ui.a(21, this, context));
            setSaveEnabled(false);
            setSaveFromParentEnabled(false);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(int i9) {
        StringBuilder sb = new StringBuilder();
        sb.append(i9);
        return q.i(new byte[]{126, 85}, new byte[]{-68, -27, 29, -79, ByteCompanionObject.MIN_VALUE, 28, 122, 23}, sb);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b(int i9) {
        StringBuilder sb = new StringBuilder();
        sb.append(i9);
        return q.i(new byte[]{109}, new byte[]{0, -124, -93, 23, -21, 122, -83, 51}, sb);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLevel() {
        return this.f959l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTemperatureValue() {
        return this.f957j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTimeValue() {
        return this.f953f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Boolean getisEnable() {
        return Boolean.valueOf(this.f952b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLevel(int i9) {
        if (i9 <= this.f960m.getMax()) {
            this.f960m.setProgress(i9);
            this.f959l = i9;
            if (i9 > 0) {
                this.f952b = true;
            } else {
                this.f952b = false;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLevelRun(Runnable runnable) {
        this.f964q = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTempRun(Runnable runnable) {
        this.f965s = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTempSliderEnable(boolean z8) {
        VerticalSeekBar verticalSeekBar = this.f958k;
        verticalSeekBar.setEnabled(z8);
        if (z8) {
            verticalSeekBar.setBackgroundColor(0);
        } else {
            verticalSeekBar.setBackgroundColor(Color.parseColor(m.h(new byte[]{53, -62, 59, -83, -101, 51, 33, 123, 87}, new byte[]{22, -6, 3, -20, -38, 114, 96, 58})));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTemperatureValue(int i9) {
        if (Build$VERSION.SDK_INT >= 26) {
            if (i9 <= this.f958k.getMax() && i9 >= a.a(this.f958k)) {
                this.f957j = i9;
                this.f958k.setProgress(i9);
            } else {
                int iA = a.a(this.f958k);
                this.f957j = iA;
                this.f958k.setProgress(iA);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTimeRun(Runnable runnable) {
        this.r = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTimeValue(int i9) {
        if (Build$VERSION.SDK_INT >= 26) {
            if (i9 <= this.f954g.getMax() && i9 >= a.a(this.f954g)) {
                this.f953f = i9;
                this.f954g.setProgress(i9);
            } else {
                int iA = a.a(this.f954g);
                this.f953f = iA;
                this.f954g.setProgress(iA);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setisEnable(Boolean bool) {
        if (bool.booleanValue()) {
            setLevel(1);
        } else {
            setLevel(0);
        }
    }
}
