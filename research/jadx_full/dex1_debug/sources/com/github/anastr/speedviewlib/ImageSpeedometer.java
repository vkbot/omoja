package com.github.anastr.speedviewlib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Align;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout$Alignment;
import android.text.StaticLayout$Builder;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.g;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import w1.f;
import w1.i;
import y1.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\u000bJ\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/github/anastr/speedviewlib/ImageSpeedometer;", "Lw1/i;", "Landroid/graphics/drawable/Drawable;", "getImageSpeedometer", "()Landroid/graphics/drawable/Drawable;", "", "imageResource", "", "setImageSpeedometer", "(I)V", "imageSpeedometer", "(Landroid/graphics/drawable/Drawable;)V", "Landroid/graphics/Bitmap;", "bitmapImage", "(Landroid/graphics/Bitmap;)V", "speedviewlib_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class ImageSpeedometer extends i {

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public Drawable f1018s0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ImageSpeedometer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, f.f5862b, 0, 0);
        typedArrayObtainStyledAttributes.getClass();
        this.f1018s0 = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getImageSpeedometer, reason: from getter */
    public final Drawable getF1018s0() {
        return this.f1018s0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w1.e
    public final void m() {
        Canvas canvas;
        if (getSize() == 0) {
            canvas = new Canvas();
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getSize(), getSize(), Bitmap$Config.ARGB_8888);
            bitmapCreateBitmap.getClass();
            setBackgroundBitmap(bitmapCreateBitmap);
            canvas = new Canvas(getBackgroundBitmap());
            canvas.drawCircle(getSize() * 0.5f, getSize() * 0.5f, (getSize() * 0.5f) - getPadding(), this.V);
            canvas.clipRect(0, 0, getSize(), getSize());
        }
        Drawable drawable = this.f1018s0;
        if (drawable != null) {
            drawable.getClass();
            drawable.setBounds(getPadding() + ((int) getViewLeft()), getPadding() + ((int) getViewTop()), ((int) getViewRight()) - getPadding(), ((int) getViewBottom()) - getPadding());
            Drawable drawable2 = this.f1018s0;
            drawable2.getClass();
            drawable2.draw(canvas);
        }
        Path path = this.f5874b0;
        path.reset();
        path.moveTo(getSize() * 0.5f, this.f5876d0 + getPadding());
        path.lineTo(getSize() * 0.5f, this.f5876d0 + this.f5877e0 + getPadding());
        canvas.save();
        canvas.rotate(getStartDegree() + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        float endDegree = getEndDegree() - getStartDegree();
        int i9 = this.f5875c0;
        float f8 = endDegree / (i9 + 1.0f);
        if (1 <= i9) {
            int i10 = 1;
            while (true) {
                canvas.rotate(f8, getSize() * 0.5f, getSize() * 0.5f);
                canvas.drawPath(path, this.f5873a0);
                if (i10 == i9) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        canvas.restore();
        if (this.f5885m0.isEmpty()) {
            return;
        }
        getTextPaint().setTextAlign(Paint$Align.LEFT);
        int i11 = this.f5880h0 - this.f5879g0;
        int i12 = 0;
        for (Object obj : this.f5885m0) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            float fFloatValue = (i11 * ((Number) obj).floatValue()) + this.f5879g0;
            canvas.save();
            float f9 = fFloatValue + 90.0f;
            canvas.rotate(f9, getSize() * 0.5f, getSize() * 0.5f);
            if (!this.f5886n0) {
                canvas.rotate(-f9, getSize() * 0.5f, getTextPaint().getTextSize() + this.f5887o0 + getPadding() + this.f5888p0);
            }
            Function2 function2 = this.f5889q0;
            CharSequence charSequence = function2 != null ? (CharSequence) function2.invoke(Integer.valueOf(i12), Float.valueOf(q(fFloatValue))) : null;
            if (charSequence == null) {
                charSequence = String.format(getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(q(fFloatValue))}, 1));
            }
            canvas.translate(0.0f, this.f5887o0 + getPadding() + this.f5888p0);
            StaticLayout$Builder.obtain(charSequence, 0, charSequence.length(), getTextPaint(), getSize()).setAlignment(Layout$Alignment.ALIGN_CENTER).build().draw(canvas);
            canvas.restore();
            i12 = i13;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w1.i, w1.e, android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2;
        canvas.getClass();
        super.onDraw(canvas);
        h(canvas);
        canvas.save();
        canvas.translate((getFulcrumX() - 0.5f) * getSize(), (getFulcrumY() - 0.5f) * getSize());
        canvas.rotate(this.f5881i0 + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        if (this.T) {
            float fAbs = Math.abs(getPercentSpeed() - this.f5890r0) * 30.0f;
            this.f5890r0 = getPercentSpeed();
            float f8 = fAbs > 30.0f ? 30.0f : fAbs;
            SweepGradient sweepGradient = new SweepGradient(getSize() * 0.5f, getSize() * 0.5f, new int[]{this.U, ViewCompat.MEASURED_SIZE_MASK}, new float[]{0.0f, f8 / 360.0f});
            Paint paint = this.W;
            paint.setShader(sweepGradient);
            b bVar = this.R;
            paint.setStrokeWidth((bVar.d() > bVar.b() ? bVar.b() : bVar.d()) - this.R.e());
            float strokeWidth = (paint.getStrokeWidth() * 0.5f) + this.R.e();
            RectF rectF = new RectF(strokeWidth, strokeWidth, getSize() - strokeWidth, getSize() - strokeWidth);
            canvas.save();
            canvas.rotate(-90.0f, getSize() * 0.5f, getSize() * 0.5f);
            if (this.f5850m) {
                canvas.scale(1.0f, -1.0f, getSize() * 0.5f, getSize() * 0.5f);
            }
            canvas2 = canvas;
            canvas2.drawArc(rectF, 0.0f, f8, false, paint);
            canvas2.restore();
        } else {
            canvas2 = canvas;
        }
        this.R.a(canvas2);
        canvas2.restore();
        Iterator it = this.f5882j0.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w1.i, w1.e, android.view.View
    public final void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        m();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setImageSpeedometer(Bitmap bitmapImage) {
        bitmapImage.getClass();
        setImageSpeedometer(new BitmapDrawable(getContext().getResources(), bitmapImage));
    }

    public final void setImageSpeedometer(Drawable imageSpeedometer) {
        this.f1018s0 = imageSpeedometer;
        m();
    }

    public final void setImageSpeedometer(int imageResource) {
        setImageSpeedometer(getContext().getDrawable(imageResource));
    }
}
