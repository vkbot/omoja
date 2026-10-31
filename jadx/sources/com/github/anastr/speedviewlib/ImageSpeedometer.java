package com.github.anastr.speedviewlib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.AbstractC1034g;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import p226w1.AbstractC3509f;
import p226w1.AbstractC3512i;
import p246y1.AbstractC3638b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\u000bJ\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u000f"}, m3159d2 = {"Lcom/github/anastr/speedviewlib/ImageSpeedometer;", "Lw1/i;", "Landroid/graphics/drawable/Drawable;", "getImageSpeedometer", "()Landroid/graphics/drawable/Drawable;", "", "imageResource", "", "setImageSpeedometer", "(I)V", "imageSpeedometer", "(Landroid/graphics/drawable/Drawable;)V", "Landroid/graphics/Bitmap;", "bitmapImage", "(Landroid/graphics/Bitmap;)V", "speedviewlib_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class ImageSpeedometer extends AbstractC3512i {

    /* JADX INFO: renamed from: s0 */
    public Drawable f1889s0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ImageSpeedometer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC3509f.f10390b, 0, 0);
        typedArrayObtainStyledAttributes.getClass();
        this.f1889s0 = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: renamed from: getImageSpeedometer, reason: from getter */
    public final Drawable getF1889s0() {
        return this.f1889s0;
    }

    @Override // p226w1.AbstractC3508e
    /* JADX INFO: renamed from: m */
    public final void mo1680m() {
        Canvas canvas;
        if (getSize() == 0) {
            canvas = new Canvas();
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getSize(), getSize(), Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.getClass();
            setBackgroundBitmap(bitmapCreateBitmap);
            canvas = new Canvas(getBackgroundBitmap());
            canvas.drawCircle(getSize() * 0.5f, getSize() * 0.5f, (getSize() * 0.5f) - getPadding(), this.f10410V);
            canvas.clipRect(0, 0, getSize(), getSize());
        }
        Drawable drawable = this.f1889s0;
        if (drawable != null) {
            drawable.getClass();
            drawable.setBounds(getPadding() + ((int) getViewLeft()), getPadding() + ((int) getViewTop()), ((int) getViewRight()) - getPadding(), ((int) getViewBottom()) - getPadding());
            Drawable drawable2 = this.f1889s0;
            drawable2.getClass();
            drawable2.draw(canvas);
        }
        Path path = this.f10413b0;
        path.reset();
        path.moveTo(getSize() * 0.5f, this.f10415d0 + getPadding());
        path.lineTo(getSize() * 0.5f, this.f10415d0 + this.f10416e0 + getPadding());
        canvas.save();
        canvas.rotate(getStartDegree() + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        float endDegree = getEndDegree() - getStartDegree();
        int i10 = this.f10414c0;
        float f8 = endDegree / (i10 + 1.0f);
        if (1 <= i10) {
            int i11 = 1;
            while (true) {
                canvas.rotate(f8, getSize() * 0.5f, getSize() * 0.5f);
                canvas.drawPath(path, this.f10412a0);
                if (i11 == i10) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        canvas.restore();
        if (this.f10424m0.isEmpty()) {
            return;
        }
        getTextPaint().setTextAlign(Paint.Align.LEFT);
        int i12 = this.f10419h0 - this.f10418g0;
        int i13 = 0;
        for (Object obj : this.f10424m0) {
            int i14 = i13 + 1;
            if (i13 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            float fFloatValue = (i12 * ((Number) obj).floatValue()) + this.f10418g0;
            canvas.save();
            float f10 = fFloatValue + 90.0f;
            canvas.rotate(f10, getSize() * 0.5f, getSize() * 0.5f);
            if (!this.f10425n0) {
                canvas.rotate(-f10, getSize() * 0.5f, getTextPaint().getTextSize() + this.f10426o0 + getPadding() + this.f10427p0);
            }
            Function2 function2 = this.f10428q0;
            CharSequence charSequence = function2 != null ? (CharSequence) function2.invoke(Integer.valueOf(i13), Float.valueOf(m5578q(fFloatValue))) : null;
            if (charSequence == null) {
                charSequence = String.format(getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(m5578q(fFloatValue))}, 1));
            }
            canvas.translate(0.0f, this.f10426o0 + getPadding() + this.f10427p0);
            StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), getTextPaint(), getSize()).setAlignment(Layout.Alignment.ALIGN_CENTER).build().draw(canvas);
            canvas.restore();
            i13 = i14;
        }
    }

    @Override // p226w1.AbstractC3512i, p226w1.AbstractC3508e, android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2;
        canvas.getClass();
        super.onDraw(canvas);
        m5570h(canvas);
        canvas.save();
        canvas.translate((getFulcrumX() - 0.5f) * getSize(), (getFulcrumY() - 0.5f) * getSize());
        canvas.rotate(this.f10420i0 + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        if (this.f10408T) {
            float fAbs = Math.abs(getPercentSpeed() - this.f10429r0) * 30.0f;
            this.f10429r0 = getPercentSpeed();
            float f8 = fAbs > 30.0f ? 30.0f : fAbs;
            SweepGradient sweepGradient = new SweepGradient(getSize() * 0.5f, getSize() * 0.5f, new int[]{this.f10409U, ViewCompat.MEASURED_SIZE_MASK}, new float[]{0.0f, f8 / 360.0f});
            Paint paint = this.f10411W;
            paint.setShader(sweepGradient);
            AbstractC3638b abstractC3638b = this.f10406R;
            paint.setStrokeWidth((abstractC3638b.m5824d() > abstractC3638b.mo5822b() ? abstractC3638b.mo5822b() : abstractC3638b.m5824d()) - this.f10406R.mo5825e());
            float strokeWidth = (paint.getStrokeWidth() * 0.5f) + this.f10406R.mo5825e();
            RectF rectF = new RectF(strokeWidth, strokeWidth, getSize() - strokeWidth, getSize() - strokeWidth);
            canvas.save();
            canvas.rotate(-90.0f, getSize() * 0.5f, getSize() * 0.5f);
            if (this.f10375m) {
                canvas.scale(1.0f, -1.0f, getSize() * 0.5f, getSize() * 0.5f);
            }
            canvas2 = canvas;
            canvas2.drawArc(rectF, 0.0f, f8, false, paint);
            canvas2.restore();
        } else {
            canvas2 = canvas;
        }
        this.f10406R.mo5821a(canvas2);
        canvas2.restore();
        Iterator it = this.f10421j0.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
    }

    @Override // p226w1.AbstractC3512i, p226w1.AbstractC3508e, android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        mo1680m();
    }

    public final void setImageSpeedometer(Bitmap bitmapImage) {
        bitmapImage.getClass();
        setImageSpeedometer(new BitmapDrawable(getContext().getResources(), bitmapImage));
    }

    public final void setImageSpeedometer(Drawable imageSpeedometer) {
        this.f1889s0 = imageSpeedometer;
        mo1680m();
    }

    public final void setImageSpeedometer(int imageResource) {
        setImageSpeedometer(getContext().getDrawable(imageResource));
    }
}
