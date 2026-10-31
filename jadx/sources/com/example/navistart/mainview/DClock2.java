package com.example.navistart.mainview;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.example.navistart.R;
import java.time.LocalDateTime;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class DClock2 extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public ArrayList f1769b;

    /* JADX INFO: renamed from: c */
    public boolean f1770c;

    /* JADX INFO: renamed from: d */
    public LocalDateTime f1771d;

    /* JADX INFO: renamed from: e */
    public int f1772e;

    /* JADX INFO: renamed from: f */
    public int f1773f;

    /* JADX INFO: renamed from: g */
    public int f1774g;

    /* JADX INFO: renamed from: h */
    public int f1775h;

    /* JADX INFO: renamed from: i */
    public int f1776i;

    /* JADX INFO: renamed from: j */
    public ImageView f1777j;

    /* JADX INFO: renamed from: k */
    public ImageView f1778k;

    /* JADX INFO: renamed from: l */
    public ImageView f1779l;

    /* JADX INFO: renamed from: m */
    public ImageView f1780m;

    /* JADX INFO: renamed from: n */
    public ImageView f1781n;

    /* JADX INFO: renamed from: o */
    public ImageView f1782o;

    /* JADX INFO: renamed from: p */
    public ImageView f1783p;

    /* JADX INFO: renamed from: q */
    public ImageView f1784q;

    /* JADX INFO: renamed from: r */
    public ImageView f1785r;

    /* JADX INFO: renamed from: s */
    public ImageView f1786s;

    public DClock2(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.digitalclock2, this);
        m1663a();
    }

    /* JADX INFO: renamed from: a */
    public final void m1663a() {
        ArrayList arrayList = new ArrayList();
        this.f1769b = arrayList;
        arrayList.add(Integer.valueOf(R.drawable.digital_zero));
        this.f1769b.add(Integer.valueOf(R.drawable.digital_one));
        this.f1769b.add(Integer.valueOf(R.drawable.digital_two));
        this.f1769b.add(Integer.valueOf(R.drawable.digital_three));
        this.f1769b.add(Integer.valueOf(R.drawable.digital_four));
        this.f1769b.add(Integer.valueOf(R.drawable.digital_five));
        this.f1769b.add(Integer.valueOf(R.drawable.digital_six));
        this.f1769b.add(Integer.valueOf(R.drawable.digital_seven));
        this.f1769b.add(Integer.valueOf(R.drawable.digital_eight));
        this.f1769b.add(Integer.valueOf(R.drawable.digital_nine));
        this.f1777j = (ImageView) findViewById(R.id.ivDigitalHH);
        this.f1778k = (ImageView) findViewById(R.id.ivDigitalH);
        this.f1779l = (ImageView) findViewById(R.id.ivDigitalMM);
        this.f1780m = (ImageView) findViewById(R.id.ivDigitalM);
        this.f1782o = (ImageView) findViewById(R.id.dD);
        this.f1781n = (ImageView) findViewById(R.id.dDD);
        this.f1783p = (ImageView) findViewById(R.id.dM);
        this.f1784q = (ImageView) findViewById(R.id.dMM);
        this.f1785r = (ImageView) findViewById(R.id.dG);
        this.f1786s = (ImageView) findViewById(R.id.dGG);
        setWillNotDraw(false);
        this.f1770c = true;
    }

    /* JADX INFO: renamed from: b */
    public final void m1664b(ImageView imageView, ImageView imageView2, int i10) {
        imageView.setImageResource(((Integer) this.f1769b.get(i10 / 10)).intValue());
        imageView2.setImageResource(((Integer) this.f1769b.get(i10 % 10)).intValue());
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1770c) {
            m1663a();
        }
        System.currentTimeMillis();
        if (Build.VERSION.SDK_INT >= 26) {
            LocalDateTime localDateTimeNow = LocalDateTime.now();
            this.f1771d = localDateTimeNow;
            this.f1772e = localDateTimeNow.getHour();
            this.f1773f = this.f1771d.getMinute();
            this.f1774g = this.f1771d.getDayOfMonth();
            this.f1775h = this.f1771d.getMonthValue();
            this.f1776i = Integer.valueOf(String.valueOf(this.f1771d.getYear()).substring(2, 4)).intValue();
        }
        m1664b(this.f1777j, this.f1778k, this.f1772e);
        m1664b(this.f1779l, this.f1780m, this.f1773f);
        m1664b(this.f1781n, this.f1782o, this.f1774g);
        m1664b(this.f1784q, this.f1783p, this.f1775h);
        m1664b(this.f1786s, this.f1785r, this.f1776i);
        postInvalidateDelayed(5000L);
    }
}
