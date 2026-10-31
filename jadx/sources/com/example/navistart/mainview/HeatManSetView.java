package com.example.navistart.mainview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
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
import androidx.navigation.ViewOnClickListenerC0675c;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBar;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1385l2;
import p047e0.AbstractC1387m;
import p198t1.C3228f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class HeatManSetView extends CardView {

    /* JADX INFO: renamed from: t */
    public static final /* synthetic */ int f1798t = 0;

    /* JADX INFO: renamed from: b */
    public boolean f1799b;

    /* JADX INFO: renamed from: c */
    public final String f1800c;

    /* JADX INFO: renamed from: d */
    public final int f1801d;

    /* JADX INFO: renamed from: e */
    public final int f1802e;

    /* JADX INFO: renamed from: f */
    public int f1803f;

    /* JADX INFO: renamed from: g */
    public final VerticalSeekBar f1804g;

    /* JADX INFO: renamed from: h */
    public final int f1805h;

    /* JADX INFO: renamed from: i */
    public final int f1806i;

    /* JADX INFO: renamed from: j */
    public int f1807j;

    /* JADX INFO: renamed from: k */
    public final VerticalSeekBar f1808k;

    /* JADX INFO: renamed from: l */
    public int f1809l;

    /* JADX INFO: renamed from: m */
    public final ProgressBar f1810m;

    /* JADX INFO: renamed from: n */
    public final String f1811n;

    /* JADX INFO: renamed from: o */
    public final String f1812o;

    /* JADX INFO: renamed from: p */
    public final String f1813p;

    /* JADX INFO: renamed from: q */
    public Runnable f1814q;

    /* JADX INFO: renamed from: r */
    public Runnable f1815r;

    /* JADX INFO: renamed from: s */
    public Runnable f1816s;

    public HeatManSetView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        int i10 = 0;
        this.f1799b = false;
        this.f1800c = "";
        this.f1811n = "";
        this.f1812o = "";
        this.f1813p = "";
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC1385l2.f3305c, 0, 0);
        try {
            this.f1811n = typedArrayObtainStyledAttributes.getString(0);
            int i11 = 1;
            this.f1800c = typedArrayObtainStyledAttributes.getString(1);
            this.f1803f = typedArrayObtainStyledAttributes.getInteger(13, 0);
            this.f1801d = typedArrayObtainStyledAttributes.getInteger(10, 0);
            this.f1802e = typedArrayObtainStyledAttributes.getInteger(12, 20);
            typedArrayObtainStyledAttributes.getInteger(11, 1);
            this.f1805h = typedArrayObtainStyledAttributes.getInteger(6, -40);
            this.f1806i = typedArrayObtainStyledAttributes.getInteger(8, 40);
            this.f1807j = typedArrayObtainStyledAttributes.getInteger(9, 0);
            typedArrayObtainStyledAttributes.getInteger(7, 1);
            this.f1809l = typedArrayObtainStyledAttributes.getInteger(3, 1);
            this.f1812o = typedArrayObtainStyledAttributes.getString(14);
            this.f1813p = typedArrayObtainStyledAttributes.getString(15);
            typedArrayObtainStyledAttributes.recycle();
            LayoutInflater.from(context).inflate(R.layout.car_heat_cardview, (ViewGroup) this, true);
            ((TextView) findViewById(R.id.centerLabel)).setText(this.f1800c);
            ImageView imageView = (ImageView) findViewById(R.id.seatIcon);
            this.f1810m = (ProgressBar) findViewById(R.id.seatIconProgress);
            setLevel(this.f1809l);
            ImageView imageView2 = (ImageView) findViewById(R.id.temperatureSign);
            String str = this.f1811n;
            switch (str.hashCode()) {
                case -2059447509:
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{70, -126, -35, -14, 116, -123, 74, -16, 98}, new byte[]{14, -25, -68, -122, 35, -19, 47, -107}))) {
                        imageView.setImageResource(R.drawable.car_heat_wheel);
                        imageView2.setImageResource(R.drawable.baseline_keyboard_arrow_left_24);
                        this.f1810m.setMax(1);
                        this.f1810m.setMin(0);
                        setLevel(this.f1809l);
                    }
                    break;
                case -2034667398:
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{72, -5, -95, -82, 74, 72, -108, 56}, new byte[]{30, -98, -49, -38, 25, 45, -11, 76}))) {
                        imageView.setImageResource(R.drawable.car_seat_vent2);
                        imageView2.setImageResource(R.drawable.baseline_keyboard_arrow_right_24);
                        this.f1810m.setProgressTintList(ContextCompat.getColorStateList(context, R.color.ventProgressColor));
                    }
                    break;
                case -1036387275:
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{-75, -64, -126, 106, -17, 87, 94, -126}, new byte[]{-3, -91, -29, 30, -68, 50, 63, -10}))) {
                        imageView.setImageResource(R.drawable.car_seat_heat_l);
                        imageView2.setImageResource(R.drawable.baseline_keyboard_arrow_left_24);
                        this.f1810m.setProgressTintList(ContextCompat.getColorStateList(context, R.color.heatProgressColor));
                    }
                    break;
                case -303926367:
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{-38, 33, 122, 68, 111, -93, -83, 62, -31, 44, 114, 85, 84, -82}, new byte[]{-110, 68, 27, 48, 56, -54, -61, 90}))) {
                        imageView.setImageResource(R.drawable.car_windshield_heat_3);
                        imageView2.setImageResource(R.drawable.baseline_keyboard_arrow_left_24);
                        this.f1810m.setMax(1);
                        this.f1810m.setMin(0);
                        setLevel(this.f1809l);
                    }
                    break;
                case 2056863413:
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{70, -77, 103, -115, -103, -72, 11, 97, 102}, new byte[]{18, -38, 10, -24, -21, -16, 110, 0}))) {
                        imageView.setImageResource(R.drawable.ico_temp_datch);
                        this.f1810m.setMax(1);
                        this.f1810m.setMin(0);
                        setLevel(this.f1809l);
                    }
                    break;
                case 2087531716:
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{-74, -68, 73, 84, 86, 12, -54, 107, -119, -80, 70, 68, 107, 30}, new byte[]{-2, -39, 40, 32, 4, 105, -85, 25}))) {
                        imageView.setImageResource(R.drawable.car_rearwindow_heat_2);
                        imageView2.setImageResource(R.drawable.baseline_keyboard_arrow_left_24);
                        this.f1810m.setMax(1);
                        this.f1810m.setMin(0);
                        setLevel(this.f1809l);
                    }
                    break;
            }
            imageView.setOnClickListener(new ViewOnClickListenerC0675c(19, this));
            VerticalSeekBar verticalSeekBar = (VerticalSeekBar) findViewById(R.id.timeSlider);
            this.f1804g = verticalSeekBar;
            verticalSeekBar.setMin(this.f1801d);
            this.f1804g.setMax(this.f1802e);
            setTimeValue(this.f1803f);
            TextView textView = (TextView) findViewById(R.id.timeSliderValue);
            boolean zEquals = AbstractC1387m.m2421h(new byte[]{62, -60, -60, 98, -65, 68, 105, -60, 30}, new byte[]{106, -83, -87, 7, -51, 12, 12, -91}).equals(this.f1811n);
            int i12 = this.f1803f;
            if (zEquals) {
                textView.setText(m1667b(i12));
            } else {
                textView.setText(i12 + AbstractC1387m.m2421h(new byte[]{96, -15}, new byte[]{64, -100, 101, 50, 85, 77, -104, 12}));
            }
            this.f1804g.setOnSeekBarChangeListener(new C3228f(this, textView, i10));
            VerticalSeekBar verticalSeekBar2 = (VerticalSeekBar) findViewById(R.id.tempSlider);
            this.f1808k = verticalSeekBar2;
            verticalSeekBar2.setMin(this.f1805h);
            this.f1808k.setMax(this.f1806i);
            setTemperatureValue(this.f1807j);
            TextView textView2 = (TextView) findViewById(R.id.temperatureValue);
            boolean zEquals2 = AbstractC1387m.m2421h(new byte[]{94, -20, 40, -124, -38, 67, -39, -102, 126}, new byte[]{10, -123, 69, -31, -88, 11, -68, -5}).equals(this.f1811n);
            int i13 = this.f1807j;
            if (zEquals2) {
                textView2.setText(m1667b(i13));
            } else {
                textView2.setText(m1666a(i13));
            }
            this.f1808k.setOnSeekBarChangeListener(new C3228f(this, textView2, i11));
            setOnClickListener(new ViewOnClickListenerC0701a(21, this, context));
            setSaveEnabled(false);
            setSaveFromParentEnabled(false);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX INFO: renamed from: a */
    public static String m1666a(int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append(i10);
        return AbstractC1178q.m2075i(new byte[]{126, 85}, new byte[]{-68, -27, 29, -79, ByteCompanionObject.MIN_VALUE, 28, 122, 23}, sb);
    }

    /* JADX INFO: renamed from: b */
    public static String m1667b(int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append(i10);
        return AbstractC1178q.m2075i(new byte[]{109}, new byte[]{0, -124, -93, 23, -21, 122, -83, 51}, sb);
    }

    public int getLevel() {
        return this.f1809l;
    }

    public int getTemperatureValue() {
        return this.f1807j;
    }

    public int getTimeValue() {
        return this.f1803f;
    }

    public Boolean getisEnable() {
        return Boolean.valueOf(this.f1799b);
    }

    public void setLevel(int i10) {
        if (i10 <= this.f1810m.getMax()) {
            this.f1810m.setProgress(i10);
            this.f1809l = i10;
            if (i10 > 0) {
                this.f1799b = true;
            } else {
                this.f1799b = false;
            }
        }
    }

    public void setLevelRun(Runnable runnable) {
        this.f1814q = runnable;
    }

    public void setTempRun(Runnable runnable) {
        this.f1816s = runnable;
    }

    public void setTempSliderEnable(boolean z9) {
        VerticalSeekBar verticalSeekBar = this.f1808k;
        verticalSeekBar.setEnabled(z9);
        if (z9) {
            verticalSeekBar.setBackgroundColor(0);
        } else {
            verticalSeekBar.setBackgroundColor(Color.parseColor(AbstractC1387m.m2421h(new byte[]{53, -62, 59, -83, -101, 51, 33, 123, 87}, new byte[]{22, -6, 3, -20, -38, 114, 96, 58})));
        }
    }

    public void setTemperatureValue(int i10) {
        if (Build.VERSION.SDK_INT >= 26) {
            if (i10 <= this.f1808k.getMax() && i10 >= this.f1808k.getMin()) {
                this.f1807j = i10;
                this.f1808k.setProgress(i10);
            } else {
                int min = this.f1808k.getMin();
                this.f1807j = min;
                this.f1808k.setProgress(min);
            }
        }
    }

    public void setTimeRun(Runnable runnable) {
        this.f1815r = runnable;
    }

    public void setTimeValue(int i10) {
        if (Build.VERSION.SDK_INT >= 26) {
            if (i10 <= this.f1804g.getMax() && i10 >= this.f1804g.getMin()) {
                this.f1803f = i10;
                this.f1804g.setProgress(i10);
            } else {
                int min = this.f1804g.getMin();
                this.f1803f = min;
                this.f1804g.setProgress(min);
            }
        }
    }

    public void setisEnable(Boolean bool) {
        if (bool.booleanValue()) {
            setLevel(1);
        } else {
            setLevel(0);
        }
    }
}
