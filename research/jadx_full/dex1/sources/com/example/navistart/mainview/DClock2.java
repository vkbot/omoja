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
public class DClock2 extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f933b;
    public boolean c;
    public LocalDateTime d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f934f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f935g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f936h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f937i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ImageView f938j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ImageView f939k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ImageView f940l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ImageView f941m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ImageView f942n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ImageView f943o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ImageView f944p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ImageView f945q;
    public ImageView r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ImageView f946s;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DClock2(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, 2131492941, this);
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        ArrayList arrayList = new ArrayList();
        this.f933b = arrayList;
        arrayList.add(2131165415);
        this.f933b.add(2131165410);
        this.f933b.add(2131165414);
        this.f933b.add(2131165413);
        this.f933b.add(2131165408);
        this.f933b.add(2131165407);
        this.f933b.add(2131165412);
        this.f933b.add(2131165411);
        this.f933b.add(2131165406);
        this.f933b.add(2131165409);
        this.f938j = (ImageView) findViewById(2131296883);
        this.f939k = (ImageView) findViewById(2131296882);
        this.f940l = (ImageView) findViewById(2131296885);
        this.f941m = (ImageView) findViewById(2131296884);
        this.f943o = (ImageView) findViewById(2131296672);
        this.f942n = (ImageView) findViewById(2131296673);
        this.f944p = (ImageView) findViewById(2131296676);
        this.f945q = (ImageView) findViewById(2131296677);
        this.r = (ImageView) findViewById(2131296674);
        this.f946s = (ImageView) findViewById(2131296675);
        setWillNotDraw(false);
        this.c = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(ImageView imageView, ImageView imageView2, int i9) {
        imageView.setImageResource(((Integer) this.f933b.get(i9 / 10)).intValue());
        imageView2.setImageResource(((Integer) this.f933b.get(i9 % 10)).intValue());
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
            this.f934f = a.y(this.d);
            this.f935g = a.A(this.d);
            this.f936h = a.C(this.d);
            this.f937i = Integer.valueOf(String.valueOf(a.D(this.d)).substring(2, 4)).intValue();
        }
        b(this.f938j, this.f939k, this.e);
        b(this.f940l, this.f941m, this.f934f);
        b(this.f942n, this.f943o, this.f935g);
        b(this.f945q, this.f944p, this.f936h);
        b(this.f946s, this.r, this.f937i);
        postInvalidateDelayed(5000L);
    }
}
