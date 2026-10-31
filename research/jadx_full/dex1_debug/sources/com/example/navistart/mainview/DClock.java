package com.example.navistart.mainview;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build$VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import org.apache.commons.net.util.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DClock extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f919b;
    public boolean c;
    public LocalDateTime d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f920f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f921g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f922h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f923i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ImageView f924j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ImageView f925k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ImageView f926l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ImageView f927m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ImageView f928n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ImageView f929o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ImageView f930p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ImageView f931q;
    public ImageView r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ImageView f932s;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DClock(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, 2131492940, this);
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        ArrayList arrayList = new ArrayList();
        this.f919b = arrayList;
        arrayList.add(2131165415);
        this.f919b.add(2131165410);
        this.f919b.add(2131165414);
        this.f919b.add(2131165413);
        this.f919b.add(2131165408);
        this.f919b.add(2131165407);
        this.f919b.add(2131165412);
        this.f919b.add(2131165411);
        this.f919b.add(2131165406);
        this.f919b.add(2131165409);
        this.f924j = (ImageView) findViewById(2131296883);
        this.f925k = (ImageView) findViewById(2131296882);
        this.f926l = (ImageView) findViewById(2131296885);
        this.f927m = (ImageView) findViewById(2131296884);
        this.f929o = (ImageView) findViewById(2131296672);
        this.f928n = (ImageView) findViewById(2131296673);
        this.f930p = (ImageView) findViewById(2131296676);
        this.f931q = (ImageView) findViewById(2131296677);
        this.r = (ImageView) findViewById(2131296674);
        this.f932s = (ImageView) findViewById(2131296675);
        setWillNotDraw(false);
        this.c = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(ImageView imageView, ImageView imageView2, int i9) {
        imageView.setImageResource(((Integer) this.f919b.get(i9 / 10)).intValue());
        imageView2.setImageResource(((Integer) this.f919b.get(i9 % 10)).intValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.c) {
            a();
        }
        System.currentTimeMillis();
        if (Build$VERSION.SDK_INT >= 26) {
            LocalDateTime localDateTimeO = a.o();
            this.d = localDateTimeO;
            this.e = a.d(localDateTimeO);
            this.f920f = a.y(this.d);
            this.f921g = a.A(this.d);
            this.f922h = a.C(this.d);
            this.f923i = Integer.valueOf(String.valueOf(a.D(this.d)).substring(2, 4)).intValue();
        }
        b(this.f924j, this.f925k, this.e);
        b(this.f926l, this.f927m, this.f920f);
        b(this.f928n, this.f929o, this.f921g);
        b(this.f931q, this.f930p, this.f922h);
        b(this.f932s, this.r, this.f923i);
        postInvalidateDelayed(5000L);
    }
}
