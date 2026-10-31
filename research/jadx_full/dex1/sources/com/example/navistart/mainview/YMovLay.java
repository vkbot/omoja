package com.example.navistart.mainview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout$LayoutParams;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import com.example.navistart.ModernMainActivity;
import com.google.android.material.datepicker.m;
import com.google.android.material.textfield.TextInputEditText;
import e0.l2;
import t1.o;
import t1.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class YMovLay extends CardView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f986b;
    public final int c;
    public final String d;
    public final ImageButton e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImageButton f987f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageButton f988g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageButton f989h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextInputEditText f990i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextInputEditText f991j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f992k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f993l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final SeekBar f994m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final SeekBar f995n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final TextView f996o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f997p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final View f998q;
    public int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f999s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1000u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public p f1001v;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public YMovLay(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i9;
        String str;
        super(context, attributeSet);
        this.f986b = 2131493157;
        this.d = "";
        this.r = -500;
        this.f999s = 2500;
        this.t = -500;
        this.f1000u = 2500;
        boolean z8 = context instanceof ModernMainActivity;
        this.f993l = z8;
        if (z8) {
            this.f986b = 2131493063;
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, l2.f1887g, 0, 0);
            try {
                this.c = typedArrayObtainStyledAttributes.getResourceId(2, 0);
                this.d = typedArrayObtainStyledAttributes.getString(0);
                this.f992k = typedArrayObtainStyledAttributes.getInt(1, 2);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        LayoutInflater.from(context).inflate(this.f986b, this);
        TextView textView = (TextView) findViewById(2131296328);
        if (textView != null && (str = this.d) != null) {
            textView.setText(str);
        }
        ImageView imageView = (ImageView) findViewById(2131296861);
        if (imageView != null && (i9 = this.c) != 0) {
            imageView.setImageResource(i9);
        }
        this.f990i = (TextInputEditText) findViewById(2131296363);
        this.f991j = (TextInputEditText) findViewById(2131296364);
        TextView textView2 = (TextView) findViewById(2131297614);
        this.e = (ImageButton) findViewById(2131297092);
        this.f987f = (ImageButton) findViewById(2131297093);
        this.f988g = (ImageButton) findViewById(2131297094);
        this.f989h = (ImageButton) findViewById(2131297091);
        if (this.f993l) {
            this.f994m = (SeekBar) findViewById(2131297065);
            this.f995n = (SeekBar) findViewById(2131297069);
            this.f996o = (TextView) findViewById(2131297068);
            this.f997p = (TextView) findViewById(2131297071);
            this.f998q = findViewById(2131297070);
            this.f994m.setOnSeekBarChangeListener(new o(this, true, this.f996o));
            this.f995n.setOnSeekBarChangeListener(new o(this, false, this.f997p));
        }
        int i10 = this.f992k;
        if (i10 != 1) {
            if (i10 == 2) {
                textView2.setVisibility(0);
                this.f991j.setVisibility(0);
                return;
            }
            return;
        }
        textView2.setVisibility(8);
        this.f991j.setVisibility(8);
        this.f988g.setVisibility(8);
        this.f989h.setVisibility(8);
        LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) this.f990i.getLayoutParams();
        linearLayout$LayoutParams.width = -2;
        this.f990i.setLayoutParams(linearLayout$LayoutParams);
        if (this.f993l) {
            this.f998q.setVisibility(8);
            ((TextView) findViewById(2131297066)).setText(2131952321);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(ImageButton imageButton, Runnable runnable) {
        imageButton.setVisibility(0);
        imageButton.setOnClickListener(new m(1, runnable));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9, int i10, int i11, int i12) {
        if (this.f993l) {
            this.r = i9;
            this.f999s = i10;
            this.t = i11;
            this.f1000u = i12;
            this.f994m.setMax(Math.max(1, i10 - i9));
            this.f995n.setMax(Math.max(1, i12 - i11));
            setYLayMovX(getYLayMovX());
            setYLayMovY(getYLayMovY());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getYLayMovX() {
        return this.f990i.getText().toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getYLayMovY() {
        return this.f991j.getText().toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnSliderValueChangeListener(p pVar) {
        this.f1001v = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setYLayMovX(String str) {
        int i9;
        this.f990i.setText(str);
        if (this.f993l) {
            try {
                i9 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                i9 = 0;
            }
            int i10 = this.r;
            int i11 = this.f999s;
            int iMax = Math.max(i10, Math.min(i11, i9));
            int iMax2 = Math.max(1, i11 - i10);
            SeekBar seekBar = this.f994m;
            seekBar.setMax(iMax2);
            seekBar.setProgress(iMax - i10);
            this.f996o.setText(String.valueOf(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setYLayMovY(String str) {
        int i9;
        this.f991j.setText(str);
        if (this.f993l) {
            try {
                i9 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                i9 = 0;
            }
            int i10 = this.t;
            int i11 = this.f1000u;
            int iMax = Math.max(i10, Math.min(i11, i9));
            int iMax2 = Math.max(1, i11 - i10);
            SeekBar seekBar = this.f995n;
            seekBar.setMax(iMax2);
            seekBar.setProgress(iMax - i10);
            this.f997p.setText(String.valueOf(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setmovD(Runnable runnable) {
        b(this.f989h, runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setmovL(Runnable runnable) {
        b(this.e, runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setmovR(Runnable runnable) {
        b(this.f987f, runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setmovU(Runnable runnable) {
        b(this.f988g, runnable);
    }
}
