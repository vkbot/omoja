package e4;

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
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t {
    public ColorStateList A;
    public Typeface B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2096b;
    public final int c;
    public final TimeInterpolator d;
    public final TimeInterpolator e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TimeInterpolator f2097f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Context f2098g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextInputLayout f2099h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f2100i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2101j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public FrameLayout f2102k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public AnimatorSet f2103l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f2104m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2105n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2106o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f2107p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2108q;
    public AppCompatTextView r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CharSequence f2109s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2110u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ColorStateList f2111v;
    public CharSequence w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2112x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public AppCompatTextView f2113y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2114z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f2098g = context;
        this.f2099h = textInputLayout;
        this.f2104m = context.getResources().getDimensionPixelSize(2131099792);
        this.f2095a = com.bumptech.glide.d.q(context, 2130904062, 217);
        this.f2096b = com.bumptech.glide.d.q(context, 2130904058, 167);
        this.c = com.bumptech.glide.d.q(context, 2130904062, 167);
        this.d = com.bumptech.glide.d.r(context, 2130904067, b3.a.d);
        LinearInterpolator linearInterpolator = b3.a.f305a;
        this.e = com.bumptech.glide.d.r(context, 2130904067, linearInterpolator);
        this.f2097f = com.bumptech.glide.d.r(context, 2130904070, linearInterpolator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(AppCompatTextView appCompatTextView, int i9) {
        if (this.f2100i == null && this.f2102k == null) {
            Context context = this.f2098g;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f2100i = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f2100i;
            TextInputLayout textInputLayout = this.f2099h;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f2102k = new FrameLayout(context);
            this.f2100i.addView(this.f2102k, new LinearLayout$LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i9 == 0 || i9 == 1) {
            this.f2102k.setVisibility(0);
            this.f2102k.addView(appCompatTextView);
        } else {
            this.f2100i.addView(appCompatTextView, new LinearLayout$LayoutParams(-2, -2));
        }
        this.f2100i.setVisibility(0);
        this.f2101j++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (this.f2100i != null) {
            TextInputLayout textInputLayout = this.f2099h;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.f2098g;
                boolean zD = w3.c.d(context);
                LinearLayout linearLayout = this.f2100i;
                int paddingStart = editText.getPaddingStart();
                if (zD) {
                    paddingStart = context.getResources().getDimensionPixelSize(2131100457);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131100456);
                if (zD) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(2131100458);
                }
                int paddingEnd = editText.getPaddingEnd();
                if (zD) {
                    paddingEnd = context.getResources().getDimensionPixelSize(2131100457);
                }
                linearLayout.setPaddingRelative(paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        AnimatorSet animatorSet = this.f2103l;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(ArrayList arrayList, boolean z8, AppCompatTextView appCompatTextView, int i9, int i10, int i11) {
        if (appCompatTextView == null || !z8) {
            return;
        }
        if (i9 == i11 || i9 == i10) {
            boolean z9 = i11 == i9;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.ALPHA, z9 ? 1.0f : 0.0f);
            int i12 = this.c;
            objectAnimatorOfFloat.setDuration(z9 ? this.f2096b : i12);
            objectAnimatorOfFloat.setInterpolator(z9 ? this.e : this.f2097f);
            if (i9 == i11 && i10 != 0) {
                objectAnimatorOfFloat.setStartDelay(i12);
            }
            arrayList.add(objectAnimatorOfFloat);
            if (i11 != i9 || i10 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.TRANSLATION_Y, -this.f2104m, 0.0f);
            objectAnimatorOfFloat2.setDuration(this.f2095a);
            objectAnimatorOfFloat2.setInterpolator(this.d);
            objectAnimatorOfFloat2.setStartDelay(i12);
            arrayList.add(objectAnimatorOfFloat2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextView e(int i9) {
        if (i9 == 1) {
            return this.r;
        }
        if (i9 != 2) {
            return null;
        }
        return this.f2113y;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        this.f2107p = null;
        c();
        if (this.f2105n == 1) {
            if (!this.f2112x || TextUtils.isEmpty(this.w)) {
                this.f2106o = 0;
            } else {
                this.f2106o = 2;
            }
        }
        i(this.f2105n, this.f2106o, h(this.r, ""));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(AppCompatTextView appCompatTextView, int i9) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f2100i;
        if (linearLayout == null) {
            return;
        }
        if ((i9 == 0 || i9 == 1) && (frameLayout = this.f2102k) != null) {
            frameLayout.removeView(appCompatTextView);
        } else {
            linearLayout.removeView(appCompatTextView);
        }
        int i10 = this.f2101j - 1;
        this.f2101j = i10;
        LinearLayout linearLayout2 = this.f2100i;
        if (i10 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean h(AppCompatTextView appCompatTextView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f2099h;
        if (textInputLayout.isLaidOut() && textInputLayout.isEnabled()) {
            return (this.f2106o == this.f2105n && appCompatTextView != null && TextUtils.equals(appCompatTextView.getText(), charSequence)) ? false : true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(int i9, int i10, boolean z8) {
        TextView textViewE;
        TextView textViewE2;
        if (i9 == i10) {
            return;
        }
        if (z8) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f2103l = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.f2112x, this.f2113y, 2, i9, i10);
            d(arrayList, this.f2108q, this.r, 1, i9, i10);
            b3.b.a(animatorSet, arrayList);
            animatorSet.addListener(new r(this, i10, e(i9), i9, e(i10)));
            animatorSet.start();
        } else if (i9 != i10) {
            if (i10 != 0 && (textViewE2 = e(i10)) != null) {
                textViewE2.setVisibility(0);
                textViewE2.setAlpha(1.0f);
            }
            if (i9 != 0 && (textViewE = e(i9)) != null) {
                textViewE.setVisibility(4);
                if (i9 == 1) {
                    textViewE.setText((CharSequence) null);
                }
            }
            this.f2105n = i10;
        }
        TextInputLayout textInputLayout = this.f2099h;
        textInputLayout.t();
        textInputLayout.w(z8, false);
        textInputLayout.z();
    }
}
