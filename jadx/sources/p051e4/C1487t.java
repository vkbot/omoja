package p051e4;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import p018b3.AbstractC0884a;
import p018b3.AbstractC0885b;
import p228w3.AbstractC3518c;

/* JADX INFO: renamed from: e4.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1487t {

    /* JADX INFO: renamed from: A */
    public ColorStateList f3633A;

    /* JADX INFO: renamed from: B */
    public Typeface f3634B;

    /* JADX INFO: renamed from: a */
    public final int f3635a;

    /* JADX INFO: renamed from: b */
    public final int f3636b;

    /* JADX INFO: renamed from: c */
    public final int f3637c;

    /* JADX INFO: renamed from: d */
    public final TimeInterpolator f3638d;

    /* JADX INFO: renamed from: e */
    public final TimeInterpolator f3639e;

    /* JADX INFO: renamed from: f */
    public final TimeInterpolator f3640f;

    /* JADX INFO: renamed from: g */
    public final Context f3641g;

    /* JADX INFO: renamed from: h */
    public final TextInputLayout f3642h;

    /* JADX INFO: renamed from: i */
    public LinearLayout f3643i;

    /* JADX INFO: renamed from: j */
    public int f3644j;

    /* JADX INFO: renamed from: k */
    public FrameLayout f3645k;

    /* JADX INFO: renamed from: l */
    public AnimatorSet f3646l;

    /* JADX INFO: renamed from: m */
    public final float f3647m;

    /* JADX INFO: renamed from: n */
    public int f3648n;

    /* JADX INFO: renamed from: o */
    public int f3649o;

    /* JADX INFO: renamed from: p */
    public CharSequence f3650p;

    /* JADX INFO: renamed from: q */
    public boolean f3651q;

    /* JADX INFO: renamed from: r */
    public AppCompatTextView f3652r;

    /* JADX INFO: renamed from: s */
    public CharSequence f3653s;

    /* JADX INFO: renamed from: t */
    public int f3654t;

    /* JADX INFO: renamed from: u */
    public int f3655u;

    /* JADX INFO: renamed from: v */
    public ColorStateList f3656v;

    /* JADX INFO: renamed from: w */
    public CharSequence f3657w;

    /* JADX INFO: renamed from: x */
    public boolean f3658x;

    /* JADX INFO: renamed from: y */
    public AppCompatTextView f3659y;

    /* JADX INFO: renamed from: z */
    public int f3660z;

    public C1487t(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f3641g = context;
        this.f3642h = textInputLayout;
        this.f3647m = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        this.f3635a = AbstractC1031d.m1287q(context, R.attr.motionDurationShort4, 217);
        this.f3636b = AbstractC1031d.m1287q(context, R.attr.motionDurationMedium4, 167);
        this.f3637c = AbstractC1031d.m1287q(context, R.attr.motionDurationShort4, 167);
        this.f3638d = AbstractC1031d.m1288r(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, AbstractC0884a.f664d);
        LinearInterpolator linearInterpolator = AbstractC0884a.f661a;
        this.f3639e = AbstractC1031d.m1288r(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, linearInterpolator);
        this.f3640f = AbstractC1031d.m1288r(context, R.attr.motionEasingLinearInterpolator, linearInterpolator);
    }

    /* JADX INFO: renamed from: a */
    public final void m2560a(AppCompatTextView appCompatTextView, int i10) {
        if (this.f3643i == null && this.f3645k == null) {
            Context context = this.f3641g;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f3643i = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f3643i;
            TextInputLayout textInputLayout = this.f3642h;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f3645k = new FrameLayout(context);
            this.f3643i.addView(this.f3645k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                m2561b();
            }
        }
        if (i10 == 0 || i10 == 1) {
            this.f3645k.setVisibility(0);
            this.f3645k.addView(appCompatTextView);
        } else {
            this.f3643i.addView(appCompatTextView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f3643i.setVisibility(0);
        this.f3644j++;
    }

    /* JADX INFO: renamed from: b */
    public final void m2561b() {
        if (this.f3643i != null) {
            TextInputLayout textInputLayout = this.f3642h;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.f3641g;
                boolean zM5590d = AbstractC3518c.m5590d(context);
                LinearLayout linearLayout = this.f3643i;
                int paddingStart = editText.getPaddingStart();
                if (zM5590d) {
                    paddingStart = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
                if (zM5590d) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_top);
                }
                int paddingEnd = editText.getPaddingEnd();
                if (zM5590d) {
                    paddingEnd = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                linearLayout.setPaddingRelative(paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2562c() {
        AnimatorSet animatorSet = this.f3646l;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2563d(ArrayList arrayList, boolean z9, AppCompatTextView appCompatTextView, int i10, int i11, int i12) {
        if (appCompatTextView == null || !z9) {
            return;
        }
        if (i10 == i12 || i10 == i11) {
            boolean z10 = i12 == i10;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.ALPHA, z10 ? 1.0f : 0.0f);
            int i13 = this.f3637c;
            objectAnimatorOfFloat.setDuration(z10 ? this.f3636b : i13);
            objectAnimatorOfFloat.setInterpolator(z10 ? this.f3639e : this.f3640f);
            if (i10 == i12 && i11 != 0) {
                objectAnimatorOfFloat.setStartDelay(i13);
            }
            arrayList.add(objectAnimatorOfFloat);
            if (i12 != i10 || i11 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.TRANSLATION_Y, -this.f3647m, 0.0f);
            objectAnimatorOfFloat2.setDuration(this.f3635a);
            objectAnimatorOfFloat2.setInterpolator(this.f3638d);
            objectAnimatorOfFloat2.setStartDelay(i13);
            arrayList.add(objectAnimatorOfFloat2);
        }
    }

    /* JADX INFO: renamed from: e */
    public final TextView m2564e(int i10) {
        if (i10 == 1) {
            return this.f3652r;
        }
        if (i10 != 2) {
            return null;
        }
        return this.f3659y;
    }

    /* JADX INFO: renamed from: f */
    public final void m2565f() {
        this.f3650p = null;
        m2562c();
        if (this.f3648n == 1) {
            if (!this.f3658x || TextUtils.isEmpty(this.f3657w)) {
                this.f3649o = 0;
            } else {
                this.f3649o = 2;
            }
        }
        m2568i(this.f3648n, this.f3649o, m2567h(this.f3652r, ""));
    }

    /* JADX INFO: renamed from: g */
    public final void m2566g(AppCompatTextView appCompatTextView, int i10) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f3643i;
        if (linearLayout == null) {
            return;
        }
        if ((i10 == 0 || i10 == 1) && (frameLayout = this.f3645k) != null) {
            frameLayout.removeView(appCompatTextView);
        } else {
            linearLayout.removeView(appCompatTextView);
        }
        int i11 = this.f3644j - 1;
        this.f3644j = i11;
        LinearLayout linearLayout2 = this.f3643i;
        if (i11 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: renamed from: h */
    public final boolean m2567h(AppCompatTextView appCompatTextView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f3642h;
        if (textInputLayout.isLaidOut() && textInputLayout.isEnabled()) {
            return (this.f3649o == this.f3648n && appCompatTextView != null && TextUtils.equals(appCompatTextView.getText(), charSequence)) ? false : true;
        }
        return false;
    }

    /* JADX INFO: renamed from: i */
    public final void m2568i(int i10, int i11, boolean z9) {
        TextView textViewM2564e;
        TextView textViewM2564e2;
        if (i10 == i11) {
            return;
        }
        if (z9) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f3646l = animatorSet;
            ArrayList arrayList = new ArrayList();
            m2563d(arrayList, this.f3658x, this.f3659y, 2, i10, i11);
            m2563d(arrayList, this.f3651q, this.f3652r, 1, i10, i11);
            AbstractC0885b.m1018a(animatorSet, arrayList);
            animatorSet.addListener(new C1485r(this, i11, m2564e(i10), i10, m2564e(i11)));
            animatorSet.start();
        } else if (i10 != i11) {
            if (i11 != 0 && (textViewM2564e2 = m2564e(i11)) != null) {
                textViewM2564e2.setVisibility(0);
                textViewM2564e2.setAlpha(1.0f);
            }
            if (i10 != 0 && (textViewM2564e = m2564e(i10)) != null) {
                textViewM2564e.setVisibility(4);
                if (i10 == 1) {
                    textViewM2564e.setText((CharSequence) null);
                }
            }
            this.f3648n = i11;
        }
        TextInputLayout textInputLayout = this.f3642h;
        textInputLayout.m1865t();
        textInputLayout.m1868w(z9, false);
        textInputLayout.m1871z();
    }
}
