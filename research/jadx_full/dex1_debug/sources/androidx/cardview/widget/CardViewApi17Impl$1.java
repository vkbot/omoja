package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CardViewApi17Impl$1 implements RoundRectDrawableWithShadow$RoundRectHelper {
    final /* synthetic */ CardViewApi17Impl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CardViewApi17Impl$1(CardViewApi17Impl cardViewApi17Impl) {
        this.this$0 = cardViewApi17Impl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.RoundRectDrawableWithShadow$RoundRectHelper
    public void drawRoundRect(Canvas canvas, RectF rectF, float f8, Paint paint) {
        canvas.drawRoundRect(rectF, f8, f8, paint);
    }
}
