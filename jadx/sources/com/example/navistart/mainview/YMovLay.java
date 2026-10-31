package com.example.navistart.mainview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.R;
import com.google.android.material.datepicker.ViewOnClickListenerC1102m;
import com.google.android.material.textfield.TextInputEditText;
import p047e0.AbstractC1385l2;
import p198t1.C3237o;
import p198t1.InterfaceC3238p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class YMovLay extends CardView {

    /* JADX INFO: renamed from: b */
    public final int f1846b;

    /* JADX INFO: renamed from: c */
    public final int f1847c;

    /* JADX INFO: renamed from: d */
    public final String f1848d;

    /* JADX INFO: renamed from: e */
    public final ImageButton f1849e;

    /* JADX INFO: renamed from: f */
    public final ImageButton f1850f;

    /* JADX INFO: renamed from: g */
    public final ImageButton f1851g;

    /* JADX INFO: renamed from: h */
    public final ImageButton f1852h;

    /* JADX INFO: renamed from: i */
    public final TextInputEditText f1853i;

    /* JADX INFO: renamed from: j */
    public final TextInputEditText f1854j;

    /* JADX INFO: renamed from: k */
    public final int f1855k;

    /* JADX INFO: renamed from: l */
    public final boolean f1856l;

    /* JADX INFO: renamed from: m */
    public final SeekBar f1857m;

    /* JADX INFO: renamed from: n */
    public final SeekBar f1858n;

    /* JADX INFO: renamed from: o */
    public final TextView f1859o;

    /* JADX INFO: renamed from: p */
    public final TextView f1860p;

    /* JADX INFO: renamed from: q */
    public final View f1861q;

    /* JADX INFO: renamed from: r */
    public int f1862r;

    /* JADX INFO: renamed from: s */
    public int f1863s;

    /* JADX INFO: renamed from: t */
    public int f1864t;

    /* JADX INFO: renamed from: u */
    public int f1865u;

    /* JADX INFO: renamed from: v */
    public InterfaceC3238p f1866v;

    public YMovLay(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i10;
        String str;
        super(context, attributeSet);
        this.f1846b = R.layout.ymovdispley;
        this.f1848d = "";
        this.f1862r = -500;
        this.f1863s = 2500;
        this.f1864t = -500;
        this.f1865u = 2500;
        boolean z9 = context instanceof ModernMainActivity;
        this.f1856l = z9;
        if (z9) {
            this.f1846b = R.layout.modern_ymovdispley;
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC1385l2.f3309g, 0, 0);
            try {
                this.f1847c = typedArrayObtainStyledAttributes.getResourceId(2, 0);
                this.f1848d = typedArrayObtainStyledAttributes.getString(0);
                this.f1855k = typedArrayObtainStyledAttributes.getInt(1, 2);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        LayoutInflater.from(context).inflate(this.f1846b, this);
        TextView textView = (TextView) findViewById(R.id.NameLayMov);
        if (textView != null && (str = this.f1848d) != null) {
            textView.setText(str);
        }
        ImageView imageView = (ImageView) findViewById(R.id.imgResurceMove);
        if (imageView != null && (i10 = this.f1847c) != 0) {
            imageView.setImageResource(i10);
        }
        this.f1853i = (TextInputEditText) findViewById(R.id.YLayMovX);
        this.f1854j = (TextInputEditText) findViewById(R.id.YLayMovY);
        TextView textView2 = (TextView) findViewById(R.id.textView40);
        this.f1849e = (ImageButton) findViewById(R.id.movL);
        this.f1850f = (ImageButton) findViewById(R.id.movR);
        this.f1851g = (ImageButton) findViewById(R.id.movU);
        this.f1852h = (ImageButton) findViewById(R.id.movD);
        if (this.f1856l) {
            this.f1857m = (SeekBar) findViewById(R.id.modern_slider_x);
            this.f1858n = (SeekBar) findViewById(R.id.modern_slider_y);
            this.f1859o = (TextView) findViewById(R.id.modern_slider_x_value);
            this.f1860p = (TextView) findViewById(R.id.modern_slider_y_value);
            this.f1861q = findViewById(R.id.modern_slider_y_row);
            this.f1857m.setOnSeekBarChangeListener(new C3237o(this, true, this.f1859o));
            this.f1858n.setOnSeekBarChangeListener(new C3237o(this, false, this.f1860p));
        }
        int i11 = this.f1855k;
        if (i11 != 1) {
            if (i11 == 2) {
                textView2.setVisibility(0);
                this.f1854j.setVisibility(0);
                return;
            }
            return;
        }
        textView2.setVisibility(8);
        this.f1854j.setVisibility(8);
        this.f1851g.setVisibility(8);
        this.f1852h.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f1853i.getLayoutParams();
        layoutParams.width = -2;
        this.f1853i.setLayoutParams(layoutParams);
        if (this.f1856l) {
            this.f1861q.setVisibility(8);
            ((TextView) findViewById(R.id.modern_slider_x_label)).setText(R.string.modern_map_scale);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m1672b(ImageButton imageButton, Runnable runnable) {
        imageButton.setVisibility(0);
        imageButton.setOnClickListener(new ViewOnClickListenerC1102m(1, runnable));
    }

    /* JADX INFO: renamed from: a */
    public final void m1673a(int i10, int i11, int i12, int i13) {
        if (this.f1856l) {
            this.f1862r = i10;
            this.f1863s = i11;
            this.f1864t = i12;
            this.f1865u = i13;
            this.f1857m.setMax(Math.max(1, i11 - i10));
            this.f1858n.setMax(Math.max(1, i13 - i12));
            setYLayMovX(getYLayMovX());
            setYLayMovY(getYLayMovY());
        }
    }

    public String getYLayMovX() {
        return this.f1853i.getText().toString();
    }

    public String getYLayMovY() {
        return this.f1854j.getText().toString();
    }

    public void setOnSliderValueChangeListener(InterfaceC3238p interfaceC3238p) {
        this.f1866v = interfaceC3238p;
    }

    public void setYLayMovX(String str) {
        int i10;
        this.f1853i.setText(str);
        if (this.f1856l) {
            try {
                i10 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                i10 = 0;
            }
            int i11 = this.f1862r;
            int i12 = this.f1863s;
            int iMax = Math.max(i11, Math.min(i12, i10));
            int iMax2 = Math.max(1, i12 - i11);
            SeekBar seekBar = this.f1857m;
            seekBar.setMax(iMax2);
            seekBar.setProgress(iMax - i11);
            this.f1859o.setText(String.valueOf(i10));
        }
    }

    public void setYLayMovY(String str) {
        int i10;
        this.f1854j.setText(str);
        if (this.f1856l) {
            try {
                i10 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                i10 = 0;
            }
            int i11 = this.f1864t;
            int i12 = this.f1865u;
            int iMax = Math.max(i11, Math.min(i12, i10));
            int iMax2 = Math.max(1, i12 - i11);
            SeekBar seekBar = this.f1858n;
            seekBar.setMax(iMax2);
            seekBar.setProgress(iMax - i11);
            this.f1860p.setText(String.valueOf(i10));
        }
    }

    public void setmovD(Runnable runnable) {
        m1672b(this.f1852h, runnable);
    }

    public void setmovL(Runnable runnable) {
        m1672b(this.f1849e, runnable);
    }

    public void setmovR(Runnable runnable) {
        m1672b(this.f1850f, runnable);
    }

    public void setmovU(Runnable runnable) {
        m1672b(this.f1851g, runnable);
    }
}
