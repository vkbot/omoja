package com.woha.atir;

import a.a;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import com.google.protobuf.q;
import e0.m;
import i7.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RadarView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f1614b;
    public final Paint c;
    public final Paint d;
    public final Paint e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Paint f1615f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Paint f1616g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f1617h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f1618i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public double f1619j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public double f1620k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f1621l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public double f1622m;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RadarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.f1614b = paint;
        paint.setColor(-16776961);
        Paint paint2 = this.f1614b;
        Paint$Style paint$Style = Paint$Style.FILL;
        paint2.setStyle(paint$Style);
        Paint paint3 = new Paint(1);
        this.c = paint3;
        paint3.setColor(SupportMenu.CATEGORY_MASK);
        this.c.setStyle(paint$Style);
        Paint paint4 = new Paint(1);
        this.e = paint4;
        paint4.setColor(-16711936);
        Paint paint5 = this.e;
        Paint$Style paint$Style2 = Paint$Style.STROKE;
        paint5.setStyle(paint$Style2);
        this.e.setStrokeWidth(2.0f);
        Paint paint6 = new Paint();
        this.f1615f = paint6;
        paint6.setStyle(paint$Style);
        this.f1615f.setColor(Color.argb(50, 255, 0, 0));
        Paint paint7 = new Paint();
        this.f1616g = paint7;
        paint7.setColor(SupportMenu.CATEGORY_MASK);
        this.f1616g.setStyle(paint$Style2);
        this.f1616g.setStrokeWidth(4.0f);
        Paint paint8 = new Paint();
        this.f1617h = paint8;
        paint8.setColor(SupportMenu.CATEGORY_MASK);
        this.f1617h.setStyle(paint$Style);
        Paint paint9 = new Paint();
        this.f1615f = paint9;
        paint9.setColor(SupportMenu.CATEGORY_MASK);
        this.f1615f.setStyle(paint$Style);
        this.f1615f.setAlpha(100);
        Paint paint10 = new Paint();
        this.d = paint10;
        paint10.setColor(-1);
        this.d.setTextSize(30.0f);
        this.d.setAntiAlias(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        List list;
        int i9;
        ArrayList arrayList;
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        int width = getWidth() / 2;
        int height = getHeight();
        int i10 = height - 100;
        float width2 = (float) (((double) getWidth()) / (this.f1622m * 2.0d));
        for (int i11 = 1; i11 <= 5; i11++) {
            canvas2.drawCircle(width, i10, i11 * 100 * width2, this.e);
        }
        Path path = new Path();
        path.moveTo(width, height - 140);
        float f8 = height - 80;
        path.lineTo(width - 20, f8);
        path.lineTo(width + 20, f8);
        path.close();
        canvas2.drawPath(path, this.f1614b);
        List list2 = this.f1618i;
        if (list2 != null) {
            ArrayList arrayList2 = new ArrayList();
            int i12 = 0;
            int i13 = 0;
            while (i13 < list2.size()) {
                x xVar = (x) list2.get(i13);
                int size = arrayList2.size();
                int i14 = i12;
                while (true) {
                    if (i14 >= size) {
                        list = list2;
                        i9 = i13;
                        ArrayList arrayList3 = new ArrayList();
                        arrayList3.add(xVar);
                        arrayList = arrayList2;
                        arrayList.add(arrayList3);
                        break;
                    }
                    Object obj = arrayList2.get(i14);
                    i14++;
                    List list3 = (List) obj;
                    x xVar2 = (x) list3.get(i12);
                    ArrayList arrayList4 = arrayList2;
                    list = list2;
                    i9 = i13;
                    if (a.b(xVar.f2725b, xVar.c, xVar2.f2725b, xVar2.c) <= 50.0d) {
                        list3.add(xVar);
                        arrayList = arrayList4;
                        break;
                    } else {
                        arrayList2 = arrayList4;
                        list2 = list;
                        i13 = i9;
                        i12 = 0;
                    }
                }
                i13 = i9 + 1;
                arrayList2 = arrayList;
                list2 = list;
                i12 = 0;
            }
            ArrayList arrayList5 = arrayList2;
            int size2 = arrayList5.size();
            int i15 = 0;
            while (i15 < size2) {
                int i16 = i15 + 1;
                List list4 = (List) arrayList5.get(i15);
                x xVar3 = (x) list4.get(0);
                double d = this.f1619j;
                double d9 = this.f1620k;
                double d10 = xVar3.f2725b;
                int i17 = xVar3.f2727g;
                double dB = a.b(d, d9, d10, xVar3.c);
                double d11 = this.f1619j;
                double d12 = this.f1620k;
                double d13 = xVar3.f2725b;
                double d14 = xVar3.c;
                double radians = Math.toRadians(d11);
                double radians2 = Math.toRadians(d13);
                double radians3 = Math.toRadians(d14 - d12);
                double degrees = ((Math.toDegrees(Math.atan2(Math.cos(radians2) * Math.sin(radians3), (Math.sin(radians2) * Math.cos(radians)) - (Math.cos(radians3) * (Math.cos(radians2) * Math.sin(radians))))) + 360.0d) % 360.0d) - ((double) this.f1621l);
                double d15 = ((double) width2) * dB;
                float fSin = (float) (((double) width) + (Math.sin(Math.toRadians(degrees)) * d15));
                float fCos = (float) (((double) i10) - (Math.cos(Math.toRadians(degrees)) * d15));
                Paint$Style paint$Style = Paint$Style.FILL;
                Paint paint = this.c;
                paint.setStyle(paint$Style);
                canvas2.drawCircle(fSin, fCos, 7.0f, paint);
                paint.setStyle(Paint$Style.STROKE);
                paint.setStrokeWidth(3.0f);
                canvas2.drawCircle(fSin, fCos, 10.0f, paint);
                StringBuilder sb = new StringBuilder();
                sb.append(m.h(new byte[]{-126, -50, -90, 4, -14, -119, 18}, new byte[]{-47, -66, -61, 97, -106, -77, 50, -94}));
                sb.append(xVar3.e);
                canvas2.drawText(q.i(new byte[]{-122, 101, 5, 53, 103}, new byte[]{-90, 14, 104, 26, 15, -32, -7, -116}, sb), 30.0f + fSin, fCos, this.d);
                Iterator it = list4.iterator();
                while (it.hasNext()) {
                    x xVar4 = (x) it.next();
                    float f9 = xVar4.f2728h * width2;
                    int i18 = xVar4.f2729i;
                    Iterator it2 = it;
                    float f10 = ((xVar4.f2727g - this.f1621l) + 360.0f) % 360.0f;
                    Path path2 = new Path();
                    path2.moveTo(fSin, fCos);
                    float f11 = i18 / 2.0f;
                    float f12 = f10 - f11;
                    float f13 = f10 + f11;
                    float f14 = f12;
                    while (f14 <= f13) {
                        int i19 = width;
                        double d16 = f9;
                        double d17 = f14;
                        path2.lineTo((float) ((Math.sin(Math.toRadians(d17)) * d16) + ((double) fSin)), (float) (((double) fCos) - (Math.cos(Math.toRadians(d17)) * d16)));
                        f14 += 1.0f;
                        width = i19;
                        i10 = i10;
                        width2 = width2;
                    }
                    path2.close();
                    canvas2.drawPath(path2, this.f1615f);
                    it = it2;
                    width = width;
                }
                int i20 = width;
                int i21 = i10;
                float f15 = width2;
                if (xVar3.f2726f != 0) {
                    double d18 = i17;
                    canvas2.drawLine(fSin, fCos, (float) ((Math.sin(Math.toRadians(d18)) * 100.0d) + ((double) fSin)), (float) (((double) fCos) - (Math.cos(Math.toRadians(d18)) * 100.0d)), this.f1615f);
                }
                canvas2 = canvas;
                i15 = i16;
                width = i20;
                i10 = i21;
                width2 = f15;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCameras(List<x> list) {
        this.f1618i = list;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCarDirection(float f8) {
        this.f1621l = f8;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRadarRadius(double d) {
        this.f1622m = d;
        invalidate();
    }
}
