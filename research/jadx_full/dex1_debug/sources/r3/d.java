package r3;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.graphics.Matrix;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements ValueAnimator$AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f4953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f4954b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;
    public final /* synthetic */ float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ float f4955f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ float f4956g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ float f4957h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Matrix f4958i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(h hVar, float f8, float f9, float f10, float f11, float f12, float f13, float f14, Matrix matrix) {
        this.f4953a = hVar;
        this.f4954b = f8;
        this.c = f9;
        this.d = f10;
        this.e = f11;
        this.f4955f = f12;
        this.f4956g = f13;
        this.f4957h = f14;
        this.f4958i = matrix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        h hVar = this.f4953a;
        FloatingActionButton floatingActionButton = hVar.f4978s;
        floatingActionButton.setAlpha(b3.a.b(this.f4954b, this.c, 0.0f, 0.2f, fFloatValue));
        float f8 = this.d;
        float f9 = this.e;
        floatingActionButton.setScaleX(b3.a.a(f8, f9, fFloatValue));
        floatingActionButton.setScaleY(b3.a.a(this.f4955f, f9, fFloatValue));
        float f10 = this.f4956g;
        float f11 = this.f4957h;
        hVar.f4976p = b3.a.a(f10, f11, fFloatValue);
        float fA = b3.a.a(f10, f11, fFloatValue);
        Matrix matrix = this.f4958i;
        hVar.a(fA, matrix);
        floatingActionButton.setImageMatrix(matrix);
    }
}
