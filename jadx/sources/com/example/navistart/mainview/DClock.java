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
public class DClock extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public ArrayList f1751b;

    /* JADX INFO: renamed from: c */
    public boolean f1752c;

    /* JADX INFO: renamed from: d */
    public LocalDateTime f1753d;

    /* JADX INFO: renamed from: e */
    public int f1754e;

    /* JADX INFO: renamed from: f */
    public int f1755f;

    /* JADX INFO: renamed from: g */
    public int f1756g;

    /* JADX INFO: renamed from: h */
    public int f1757h;

    /* JADX INFO: renamed from: i */
    public int f1758i;

    /* JADX INFO: renamed from: j */
    public ImageView f1759j;

    /* JADX INFO: renamed from: k */
    public ImageView f1760k;

    /* JADX INFO: renamed from: l */
    public ImageView f1761l;

    /* JADX INFO: renamed from: m */
    public ImageView f1762m;

    /* JADX INFO: renamed from: n */
    public ImageView f1763n;

    /* JADX INFO: renamed from: o */
    public ImageView f1764o;

    /* JADX INFO: renamed from: p */
    public ImageView f1765p;

    /* JADX INFO: renamed from: q */
    public ImageView f1766q;

    /* JADX INFO: renamed from: r */
    public ImageView f1767r;

    /* JADX INFO: renamed from: s */
    public ImageView f1768s;

    public DClock(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.digitalclock, this);
        m1661a();
    }

    /* JADX INFO: renamed from: a */
    public final void m1661a() {
        ArrayList arrayList = new ArrayList();
        this.f1751b = arrayList;
        arrayList.add(Integer.valueOf(R.drawable.digital_zero));
        this.f1751b.add(Integer.valueOf(R.drawable.digital_one));
        this.f1751b.add(Integer.valueOf(R.drawable.digital_two));
        this.f1751b.add(Integer.valueOf(R.drawable.digital_three));
        this.f1751b.add(Integer.valueOf(R.drawable.digital_four));
        this.f1751b.add(Integer.valueOf(R.drawable.digital_five));
        this.f1751b.add(Integer.valueOf(R.drawable.digital_six));
        this.f1751b.add(Integer.valueOf(R.drawable.digital_seven));
        this.f1751b.add(Integer.valueOf(R.drawable.digital_eight));
        this.f1751b.add(Integer.valueOf(R.drawable.digital_nine));
        this.f1759j = (ImageView) findViewById(R.id.ivDigitalHH);
        this.f1760k = (ImageView) findViewById(R.id.ivDigitalH);
        this.f1761l = (ImageView) findViewById(R.id.ivDigitalMM);
        this.f1762m = (ImageView) findViewById(R.id.ivDigitalM);
        this.f1764o = (ImageView) findViewById(R.id.dD);
        this.f1763n = (ImageView) findViewById(R.id.dDD);
        this.f1765p = (ImageView) findViewById(R.id.dM);
        this.f1766q = (ImageView) findViewById(R.id.dMM);
        this.f1767r = (ImageView) findViewById(R.id.dG);
        this.f1768s = (ImageView) findViewById(R.id.dGG);
        setWillNotDraw(false);
        this.f1752c = true;
    }

    /* JADX INFO: renamed from: b */
    public final void m1662b(ImageView imageView, ImageView imageView2, int i10) {
        imageView.setImageResource(((Integer) this.f1751b.get(i10 / 10)).intValue());
        imageView2.setImageResource(((Integer) this.f1751b.get(i10 % 10)).intValue());
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1752c) {
            m1661a();
        }
        System.currentTimeMillis();
        if (Build.VERSION.SDK_INT >= 26) {
            LocalDateTime localDateTimeNow = LocalDateTime.now();
            this.f1753d = localDateTimeNow;
            this.f1754e = localDateTimeNow.getHour();
            this.f1755f = this.f1753d.getMinute();
            this.f1756g = this.f1753d.getDayOfMonth();
            this.f1757h = this.f1753d.getMonthValue();
            this.f1758i = Integer.valueOf(String.valueOf(this.f1753d.getYear()).substring(2, 4)).intValue();
        }
        m1662b(this.f1759j, this.f1760k, this.f1754e);
        m1662b(this.f1761l, this.f1762m, this.f1755f);
        m1662b(this.f1763n, this.f1764o, this.f1756g);
        m1662b(this.f1766q, this.f1765p, this.f1757h);
        m1662b(this.f1768s, this.f1767r, this.f1758i);
        postInvalidateDelayed(5000L);
    }
}
