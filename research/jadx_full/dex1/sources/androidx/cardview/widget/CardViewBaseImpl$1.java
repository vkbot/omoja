package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CardViewBaseImpl$1 implements RoundRectDrawableWithShadow$RoundRectHelper {
    final /* synthetic */ CardViewBaseImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CardViewBaseImpl$1(CardViewBaseImpl cardViewBaseImpl) {
        this.this$0 = cardViewBaseImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.RoundRectDrawableWithShadow$RoundRectHelper
    public void drawRoundRect(Canvas canvas, RectF rectF, float f8, Paint paint) {
        float f9 = 2.0f * f8;
        float fWidth = (rectF.width() - f9) - 1.0f;
        float fHeight = (rectF.height() - f9) - 1.0f;
        if (f8 >= 1.0f) {
            float f10 = f8 + 0.5f;
            float f11 = -f10;
            this.this$0.mCornerRect.set(f11, f11, f10, f10);
            int iSave = canvas.save();
            canvas.translate(rectF.left + f10, rectF.top + f10);
            canvas.drawArc(this.this$0.mCornerRect, 180.0f, 90.0f, true, paint);
            canvas.translate(fWidth, 0.0f);
            canvas.rotate(90.0f);
            canvas.drawArc(this.this$0.mCornerRect, 180.0f, 90.0f, true, paint);
            canvas.translate(fHeight, 0.0f);
            canvas.rotate(90.0f);
            canvas.drawArc(this.this$0.mCornerRect, 180.0f, 90.0f, true, paint);
            canvas.translate(fWidth, 0.0f);
            canvas.rotate(90.0f);
            canvas.drawArc(this.this$0.mCornerRect, 180.0f, 90.0f, true, paint);
            canvas.restoreToCount(iSave);
            float f12 = (rectF.left + f10) - 1.0f;
            float f13 = rectF.top;
            canvas.drawRect(f12, f13, (rectF.right - f10) + 1.0f, f13 + f10, paint);
            float f14 = (rectF.left + f10) - 1.0f;
            float f15 = rectF.bottom;
            canvas.drawRect(f14, f15 - f10, (rectF.right - f10) + 1.0f, f15, paint);
        }
        canvas.drawRect(rectF.left, rectF.top + f8, rectF.right, rectF.bottom - f8, paint);
    }
}
