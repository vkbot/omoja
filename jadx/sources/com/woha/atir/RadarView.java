package com.woha.atir;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p000a.AbstractC0000a;
import p047e0.AbstractC1387m;
import p094i7.C1775x;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class RadarView extends View {

    /* JADX INFO: renamed from: b */
    public final Paint f2863b;

    /* JADX INFO: renamed from: c */
    public final Paint f2864c;

    /* JADX INFO: renamed from: d */
    public final Paint f2865d;

    /* JADX INFO: renamed from: e */
    public final Paint f2866e;

    /* JADX INFO: renamed from: f */
    public final Paint f2867f;

    /* JADX INFO: renamed from: g */
    public final Paint f2868g;

    /* JADX INFO: renamed from: h */
    public final Paint f2869h;

    /* JADX INFO: renamed from: i */
    public List f2870i;

    /* JADX INFO: renamed from: j */
    public double f2871j;

    /* JADX INFO: renamed from: k */
    public double f2872k;

    /* JADX INFO: renamed from: l */
    public float f2873l;

    /* JADX INFO: renamed from: m */
    public double f2874m;

    public RadarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.f2863b = paint;
        paint.setColor(-16776961);
        Paint paint2 = this.f2863b;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        Paint paint3 = new Paint(1);
        this.f2864c = paint3;
        paint3.setColor(SupportMenu.CATEGORY_MASK);
        this.f2864c.setStyle(style);
        Paint paint4 = new Paint(1);
        this.f2866e = paint4;
        paint4.setColor(-16711936);
        Paint paint5 = this.f2866e;
        Paint.Style style2 = Paint.Style.STROKE;
        paint5.setStyle(style2);
        this.f2866e.setStrokeWidth(2.0f);
        Paint paint6 = new Paint();
        this.f2867f = paint6;
        paint6.setStyle(style);
        this.f2867f.setColor(Color.argb(50, 255, 0, 0));
        Paint paint7 = new Paint();
        this.f2868g = paint7;
        paint7.setColor(SupportMenu.CATEGORY_MASK);
        this.f2868g.setStyle(style2);
        this.f2868g.setStrokeWidth(4.0f);
        Paint paint8 = new Paint();
        this.f2869h = paint8;
        paint8.setColor(SupportMenu.CATEGORY_MASK);
        this.f2869h.setStyle(style);
        Paint paint9 = new Paint();
        this.f2867f = paint9;
        paint9.setColor(SupportMenu.CATEGORY_MASK);
        this.f2867f.setStyle(style);
        this.f2867f.setAlpha(100);
        Paint paint10 = new Paint();
        this.f2865d = paint10;
        paint10.setColor(-1);
        this.f2865d.setTextSize(30.0f);
        this.f2865d.setAntiAlias(true);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        List list;
        int i10;
        ArrayList arrayList;
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        int width = getWidth() / 2;
        int height = getHeight();
        int i11 = height - 100;
        float width2 = (float) (((double) getWidth()) / (this.f2874m * 2.0d));
        for (int i12 = 1; i12 <= 5; i12++) {
            canvas2.drawCircle(width, i11, i12 * 100 * width2, this.f2866e);
        }
        Path path = new Path();
        path.moveTo(width, height - 140);
        float f8 = height - 80;
        path.lineTo(width - 20, f8);
        path.lineTo(width + 20, f8);
        path.close();
        canvas2.drawPath(path, this.f2863b);
        List list2 = this.f2870i;
        if (list2 != null) {
            ArrayList arrayList2 = new ArrayList();
            int i13 = 0;
            int i14 = 0;
            while (i14 < list2.size()) {
                C1775x c1775x = (C1775x) list2.get(i14);
                int size = arrayList2.size();
                int i15 = i13;
                while (true) {
                    if (i15 >= size) {
                        list = list2;
                        i10 = i14;
                        ArrayList arrayList3 = new ArrayList();
                        arrayList3.add(c1775x);
                        arrayList = arrayList2;
                        arrayList.add(arrayList3);
                        break;
                    }
                    Object obj = arrayList2.get(i15);
                    i15++;
                    List list3 = (List) obj;
                    C1775x c1775x2 = (C1775x) list3.get(i13);
                    ArrayList arrayList4 = arrayList2;
                    list = list2;
                    i10 = i14;
                    if (AbstractC0000a.m2b(c1775x.f4661b, c1775x.f4662c, c1775x2.f4661b, c1775x2.f4662c) <= 50.0d) {
                        list3.add(c1775x);
                        arrayList = arrayList4;
                        break;
                    } else {
                        arrayList2 = arrayList4;
                        list2 = list;
                        i14 = i10;
                        i13 = 0;
                    }
                }
                i14 = i10 + 1;
                arrayList2 = arrayList;
                list2 = list;
                i13 = 0;
            }
            ArrayList arrayList5 = arrayList2;
            int size2 = arrayList5.size();
            int i16 = 0;
            while (i16 < size2) {
                int i17 = i16 + 1;
                List list4 = (List) arrayList5.get(i16);
                C1775x c1775x3 = (C1775x) list4.get(0);
                double d = this.f2871j;
                double d10 = this.f2872k;
                double d11 = c1775x3.f4661b;
                int i18 = c1775x3.f4666g;
                double dM2b = AbstractC0000a.m2b(d, d10, d11, c1775x3.f4662c);
                double d12 = this.f2871j;
                double d13 = this.f2872k;
                double d14 = c1775x3.f4661b;
                double d15 = c1775x3.f4662c;
                double radians = Math.toRadians(d12);
                double radians2 = Math.toRadians(d14);
                double radians3 = Math.toRadians(d15 - d13);
                double degrees = ((Math.toDegrees(Math.atan2(Math.cos(radians2) * Math.sin(radians3), (Math.sin(radians2) * Math.cos(radians)) - (Math.cos(radians3) * (Math.cos(radians2) * Math.sin(radians))))) + 360.0d) % 360.0d) - ((double) this.f2873l);
                double d16 = ((double) width2) * dM2b;
                float fSin = (float) (((double) width) + (Math.sin(Math.toRadians(degrees)) * d16));
                float fCos = (float) (((double) i11) - (Math.cos(Math.toRadians(degrees)) * d16));
                Paint.Style style = Paint.Style.FILL;
                Paint paint = this.f2864c;
                paint.setStyle(style);
                canvas2.drawCircle(fSin, fCos, 7.0f, paint);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(3.0f);
                canvas2.drawCircle(fSin, fCos, 10.0f, paint);
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{-126, -50, -90, 4, -14, -119, 18}, new byte[]{-47, -66, -61, 97, -106, -77, 50, -94}));
                sb.append(c1775x3.f4664e);
                canvas2.drawText(AbstractC1178q.m2075i(new byte[]{-122, 101, 5, 53, 103}, new byte[]{-90, 14, 104, 26, 15, -32, -7, -116}, sb), 30.0f + fSin, fCos, this.f2865d);
                Iterator it = list4.iterator();
                while (it.hasNext()) {
                    C1775x c1775x4 = (C1775x) it.next();
                    float f10 = c1775x4.f4667h * width2;
                    int i19 = c1775x4.f4668i;
                    Iterator it2 = it;
                    float f11 = ((c1775x4.f4666g - this.f2873l) + 360.0f) % 360.0f;
                    Path path2 = new Path();
                    path2.moveTo(fSin, fCos);
                    float f12 = i19 / 2.0f;
                    float f13 = f11 - f12;
                    float f14 = f11 + f12;
                    float f15 = f13;
                    while (f15 <= f14) {
                        int i20 = width;
                        double d17 = f10;
                        double d18 = f15;
                        path2.lineTo((float) ((Math.sin(Math.toRadians(d18)) * d17) + ((double) fSin)), (float) (((double) fCos) - (Math.cos(Math.toRadians(d18)) * d17)));
                        f15 += 1.0f;
                        width = i20;
                        i11 = i11;
                        width2 = width2;
                    }
                    path2.close();
                    canvas2.drawPath(path2, this.f2867f);
                    it = it2;
                    width = width;
                }
                int i21 = width;
                int i22 = i11;
                float f16 = width2;
                if (c1775x3.f4665f != 0) {
                    double d19 = i18;
                    canvas2.drawLine(fSin, fCos, (float) ((Math.sin(Math.toRadians(d19)) * 100.0d) + ((double) fSin)), (float) (((double) fCos) - (Math.cos(Math.toRadians(d19)) * 100.0d)), this.f2867f);
                }
                canvas2 = canvas;
                i16 = i17;
                width = i21;
                i11 = i22;
                width2 = f16;
            }
        }
    }

    public void setCameras(List<C1775x> list) {
        this.f2870i = list;
        invalidate();
    }

    public void setCarDirection(float f8) {
        this.f2873l = f8;
        invalidate();
    }

    public void setRadarRadius(double d) {
        this.f2874m = d;
        invalidate();
    }
}
