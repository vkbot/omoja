package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public class DragShadowView extends View {
    private final Paint mPaint;

    public DragShadowView(Context context) {
        super(context);
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(context.getColor(R.color.bg_workspace_bubbletext_outline));
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeWidth(10.0f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawRoundRect(0.0f, 0.0f, getWidth(), getHeight(), 32.0f, 32.0f, this.mPaint);
    }
}
