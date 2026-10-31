package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.example.navistart.R;
import java.util.ArrayList;
import p022b7.AbstractC0910f;
import p022b7.C0909e;
import p022b7.C0925u;
import p043d6.AbstractC1309h;
import p260z5.C3759o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ViewfinderView extends View {

    /* JADX INFO: renamed from: m */
    public static final int[] f2819m = {0, 64, 128, 192, 255, 192, 128, 64};

    /* JADX INFO: renamed from: b */
    public final Paint f2820b;

    /* JADX INFO: renamed from: c */
    public int f2821c;

    /* JADX INFO: renamed from: d */
    public final int f2822d;

    /* JADX INFO: renamed from: e */
    public final int f2823e;

    /* JADX INFO: renamed from: f */
    public boolean f2824f;

    /* JADX INFO: renamed from: g */
    public int f2825g;

    /* JADX INFO: renamed from: h */
    public ArrayList f2826h;

    /* JADX INFO: renamed from: i */
    public ArrayList f2827i;

    /* JADX INFO: renamed from: j */
    public AbstractC0910f f2828j;

    /* JADX INFO: renamed from: k */
    public Rect f2829k;

    /* JADX INFO: renamed from: l */
    public C0925u f2830l;

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2820b = new Paint(1);
        Resources resources = getResources();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC1309h.f3123b);
        this.f2821c = typedArrayObtainStyledAttributes.getColor(4, resources.getColor(R.color.zxing_viewfinder_mask));
        typedArrayObtainStyledAttributes.getColor(1, resources.getColor(R.color.zxing_result_view));
        this.f2822d = typedArrayObtainStyledAttributes.getColor(2, resources.getColor(R.color.zxing_viewfinder_laser));
        this.f2823e = typedArrayObtainStyledAttributes.getColor(0, resources.getColor(R.color.zxing_possible_result_points));
        this.f2824f = typedArrayObtainStyledAttributes.getBoolean(3, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f2825g = 0;
        this.f2826h = new ArrayList(20);
        this.f2827i = new ArrayList(20);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        C0925u c0925u;
        AbstractC0910f abstractC0910f = this.f2828j;
        if (abstractC0910f != null) {
            Rect framingRect = abstractC0910f.getFramingRect();
            C0925u previewSize = this.f2828j.getPreviewSize();
            if (framingRect != null && previewSize != null) {
                this.f2829k = framingRect;
                this.f2830l = previewSize;
            }
        }
        Rect rect = this.f2829k;
        if (rect == null || (c0925u = this.f2830l) == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int i10 = this.f2821c;
        Paint paint = this.f2820b;
        paint.setColor(i10);
        float f8 = width;
        canvas.drawRect(0.0f, 0.0f, f8, rect.top, paint);
        canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, paint);
        canvas.drawRect(rect.right + 1, rect.top, f8, rect.bottom + 1, paint);
        canvas.drawRect(0.0f, rect.bottom + 1, f8, height, paint);
        if (this.f2824f) {
            paint.setColor(this.f2822d);
            paint.setAlpha(f2819m[this.f2825g]);
            this.f2825g = (this.f2825g + 1) % 8;
            int iHeight = (rect.height() / 2) + rect.top;
            canvas.drawRect(rect.left + 2, iHeight - 1, rect.right - 1, iHeight + 2, paint);
        }
        float width2 = getWidth() / c0925u.f777b;
        float height2 = getHeight() / c0925u.f778c;
        boolean zIsEmpty = this.f2827i.isEmpty();
        int i11 = 0;
        int i12 = this.f2823e;
        if (!zIsEmpty) {
            paint.setAlpha(80);
            paint.setColor(i12);
            ArrayList arrayList = this.f2827i;
            int size = arrayList.size();
            int i13 = 0;
            while (i13 < size) {
                Object obj = arrayList.get(i13);
                i13++;
                C3759o c3759o = (C3759o) obj;
                canvas.drawCircle((int) (c3759o.f11214a * width2), (int) (c3759o.f11215b * height2), 3.0f, paint);
            }
            this.f2827i.clear();
        }
        if (!this.f2826h.isEmpty()) {
            paint.setAlpha(160);
            paint.setColor(i12);
            ArrayList arrayList2 = this.f2826h;
            int size2 = arrayList2.size();
            while (i11 < size2) {
                Object obj2 = arrayList2.get(i11);
                i11++;
                C3759o c3759o2 = (C3759o) obj2;
                canvas.drawCircle((int) (c3759o2.f11214a * width2), (int) (c3759o2.f11215b * height2), 6.0f, paint);
            }
            ArrayList arrayList3 = this.f2826h;
            ArrayList arrayList4 = this.f2827i;
            this.f2826h = arrayList4;
            this.f2827i = arrayList3;
            arrayList4.clear();
        }
        postInvalidateDelayed(80L, rect.left - 6, rect.top - 6, rect.right + 6, rect.bottom + 6);
    }

    public void setCameraPreview(AbstractC0910f abstractC0910f) {
        this.f2828j = abstractC0910f;
        abstractC0910f.f718k.add(new C0909e(2, this));
    }

    public void setLaserVisibility(boolean z9) {
        this.f2824f = z9;
    }

    public void setMaskColor(int i10) {
        this.f2821c = i10;
    }
}
