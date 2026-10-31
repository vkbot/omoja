package p051e4;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.EditText;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import com.google.android.material.internal.CheckableImageButton;
import org.apache.commons.net.ftp.FTPReply;
import p005a4.RunnableC0014g;
import p018b3.AbstractC0884a;

/* JADX INFO: renamed from: e4.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1471d extends AbstractC1484q {

    /* JADX INFO: renamed from: e */
    public final int f3562e;

    /* JADX INFO: renamed from: f */
    public final int f3563f;

    /* JADX INFO: renamed from: g */
    public final TimeInterpolator f3564g;

    /* JADX INFO: renamed from: h */
    public final TimeInterpolator f3565h;

    /* JADX INFO: renamed from: i */
    public EditText f3566i;

    /* JADX INFO: renamed from: j */
    public final ViewOnClickListenerC0675c f3567j;

    /* JADX INFO: renamed from: k */
    public final ViewOnFocusChangeListenerC1465a f3568k;

    /* JADX INFO: renamed from: l */
    public AnimatorSet f3569l;

    /* JADX INFO: renamed from: m */
    public ValueAnimator f3570m;

    public C1471d(C1483p c1483p) {
        super(c1483p);
        this.f3567j = new ViewOnClickListenerC0675c(7, this);
        this.f3568k = new ViewOnFocusChangeListenerC1465a(this, 0);
        this.f3562e = AbstractC1031d.m1287q(c1483p.getContext(), R.attr.motionDurationShort3, 100);
        this.f3563f = AbstractC1031d.m1287q(c1483p.getContext(), R.attr.motionDurationShort3, FTPReply.FILE_STATUS_OK);
        this.f3564g = AbstractC1031d.m1288r(c1483p.getContext(), R.attr.motionEasingLinearInterpolator, AbstractC0884a.f661a);
        this.f3565h = AbstractC1031d.m1288r(c1483p.getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0884a.f664d);
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: a */
    public final void mo2520a() {
        if (this.f3624b.f3616q != null) {
            return;
        }
        m2530s(m2531t());
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: c */
    public final int mo2521c() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: d */
    public final int mo2522d() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: e */
    public final View.OnFocusChangeListener mo2523e() {
        return this.f3568k;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: f */
    public final View.OnClickListener mo2524f() {
        return this.f3567j;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: g */
    public final View.OnFocusChangeListener mo2525g() {
        return this.f3568k;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: l */
    public final void mo2526l(EditText editText) {
        this.f3566i = editText;
        this.f3623a.setEndIconVisible(m2531t());
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: o */
    public final void mo2527o(boolean z9) {
        if (this.f3624b.f3616q == null) {
            return;
        }
        m2530s(z9);
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: q */
    public final void mo2528q() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.f3565h);
        valueAnimatorOfFloat.setDuration(this.f3563f);
        final int i10 = 1;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: e4.b

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ C1471d f3557b;

            {
                this.f3557b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i10) {
                    case 0:
                        this.f3557b.f3626d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = this.f3557b.f3626d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f3564g;
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        int i11 = this.f3562e;
        valueAnimatorOfFloat2.setDuration(i11);
        final int i12 = 0;
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: e4.b

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ C1471d f3557b;

            {
                this.f3557b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i12) {
                    case 0:
                        this.f3557b.f3626d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = this.f3557b.f3626d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.f3569l = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.f3569l.addListener(new C1469c(this, i12));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat3.setDuration(i11);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: e4.b

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ C1471d f3557b;

            {
                this.f3557b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i12) {
                    case 0:
                        this.f3557b.f3626d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = this.f3557b.f3626d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        this.f3570m = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new C1469c(this, i10));
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: r */
    public final void mo2529r() {
        EditText editText = this.f3566i;
        if (editText != null) {
            editText.post(new RunnableC0014g(25, this));
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m2530s(boolean z9) {
        boolean z10 = this.f3624b.m2546d() == z9;
        if (z9 && !this.f3569l.isRunning()) {
            this.f3570m.cancel();
            this.f3569l.start();
            if (z10) {
                this.f3569l.end();
                return;
            }
            return;
        }
        if (z9) {
            return;
        }
        this.f3569l.cancel();
        this.f3570m.start();
        if (z10) {
            this.f3570m.end();
        }
    }

    /* JADX INFO: renamed from: t */
    public final boolean m2531t() {
        EditText editText = this.f3566i;
        if (editText != null) {
            return (editText.hasFocus() || this.f3626d.hasFocus()) && this.f3566i.getText().length() > 0;
        }
        return false;
    }
}
