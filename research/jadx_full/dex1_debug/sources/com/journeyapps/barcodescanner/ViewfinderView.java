package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import b7.e;
import b7.f;
import b7.u;
import d6.h;
import java.util.ArrayList;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewfinderView extends View {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f1589m = {0, 64, 128, 192, 255, 192, 128, 64};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f1590b;
    public int c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1591f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1592g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f1593h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList f1594i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public f f1595j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f1596k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public u f1597l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1590b = new Paint(1);
        Resources resources = getResources();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, h.f1789b);
        this.c = typedArrayObtainStyledAttributes.getColor(4, resources.getColor(2131035124));
        typedArrayObtainStyledAttributes.getColor(1, resources.getColor(2131035120));
        this.d = typedArrayObtainStyledAttributes.getColor(2, resources.getColor(2131035123));
        this.e = typedArrayObtainStyledAttributes.getColor(0, resources.getColor(2131035119));
        this.f1591f = typedArrayObtainStyledAttributes.getBoolean(3, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f1592g = 0;
        this.f1593h = new ArrayList(20);
        this.f1594i = new ArrayList(20);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        u uVar;
        f fVar = this.f1595j;
        if (fVar != null) {
            Rect framingRect = fVar.getFramingRect();
            u previewSize = this.f1595j.getPreviewSize();
            if (framingRect != null && previewSize != null) {
                this.f1596k = framingRect;
                this.f1597l = previewSize;
            }
        }
        Rect rect = this.f1596k;
        if (rect == null || (uVar = this.f1597l) == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int i9 = this.c;
        Paint paint = this.f1590b;
        paint.setColor(i9);
        float f8 = width;
        canvas.drawRect(0.0f, 0.0f, f8, rect.top, paint);
        canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, paint);
        canvas.drawRect(rect.right + 1, rect.top, f8, rect.bottom + 1, paint);
        canvas.drawRect(0.0f, rect.bottom + 1, f8, height, paint);
        if (this.f1591f) {
            paint.setColor(this.d);
            paint.setAlpha(f1589m[this.f1592g]);
            this.f1592g = (this.f1592g + 1) % 8;
            int iHeight = (rect.height() / 2) + rect.top;
            canvas.drawRect(rect.left + 2, iHeight - 1, rect.right - 1, iHeight + 2, paint);
        }
        float width2 = getWidth() / uVar.f389b;
        float height2 = getHeight() / uVar.c;
        boolean zIsEmpty = this.f1594i.isEmpty();
        int i10 = 0;
        int i11 = this.e;
        if (!zIsEmpty) {
            paint.setAlpha(80);
            paint.setColor(i11);
            ArrayList arrayList = this.f1594i;
            int size = arrayList.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj = arrayList.get(i12);
                i12++;
                o oVar = (o) obj;
                canvas.drawCircle((int) (oVar.f6339a * width2), (int) (oVar.f6340b * height2), 3.0f, paint);
            }
            this.f1594i.clear();
        }
        if (!this.f1593h.isEmpty()) {
            paint.setAlpha(160);
            paint.setColor(i11);
            ArrayList arrayList2 = this.f1593h;
            int size2 = arrayList2.size();
            while (i10 < size2) {
                Object obj2 = arrayList2.get(i10);
                i10++;
                o oVar2 = (o) obj2;
                canvas.drawCircle((int) (oVar2.f6339a * width2), (int) (oVar2.f6340b * height2), 6.0f, paint);
            }
            ArrayList arrayList3 = this.f1593h;
            ArrayList arrayList4 = this.f1594i;
            this.f1593h = arrayList4;
            this.f1594i = arrayList3;
            arrayList4.clear();
        }
        postInvalidateDelayed(80L, rect.left - 6, rect.top - 6, rect.right + 6, rect.bottom + 6);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCameraPreview(f fVar) {
        this.f1595j = fVar;
        fVar.f346k.add(new e(2, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLaserVisibility(boolean z8) {
        this.f1591f = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaskColor(int i9) {
        this.c = i9;
    }
}
