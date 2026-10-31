package p051e4;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.widget.TextViewCompat;
import com.example.navistart.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import p099j1.C1929i;
import p192s3.AbstractC3203q;
import p228w3.AbstractC3518c;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e4.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1492y extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public final TextInputLayout f3676b;

    /* JADX INFO: renamed from: c */
    public final AppCompatTextView f3677c;

    /* JADX INFO: renamed from: d */
    public CharSequence f3678d;

    /* JADX INFO: renamed from: e */
    public final CheckableImageButton f3679e;

    /* JADX INFO: renamed from: f */
    public ColorStateList f3680f;

    /* JADX INFO: renamed from: g */
    public PorterDuff.Mode f3681g;

    /* JADX INFO: renamed from: h */
    public int f3682h;

    /* JADX INFO: renamed from: i */
    public ImageView.ScaleType f3683i;

    /* JADX INFO: renamed from: j */
    public View.OnLongClickListener f3684j;

    /* JADX INFO: renamed from: k */
    public boolean f3685k;

    public C1492y(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f3676b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f3679e = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f3677c = appCompatTextView;
        if (AbstractC3518c.m5590d(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.f3684j;
        checkableImageButton.setOnClickListener(null);
        AbstractC3656k.m5873s(checkableImageButton, onLongClickListener);
        this.f3684j = null;
        checkableImageButton.setOnLongClickListener(null);
        AbstractC3656k.m5873s(checkableImageButton, null);
        if (tintTypedArray.hasValue(70)) {
            this.f3680f = AbstractC3518c.m5588b(getContext(), tintTypedArray, 70);
        }
        if (tintTypedArray.hasValue(71)) {
            this.f3681g = AbstractC3203q.m5139b(tintTypedArray.getInt(71, -1), null);
        }
        if (tintTypedArray.hasValue(67)) {
            m2574b(tintTypedArray.getDrawable(67));
            if (tintTypedArray.hasValue(66) && checkableImageButton.getContentDescription() != (text = tintTypedArray.getText(66))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(tintTypedArray.getBoolean(65, true));
        }
        int dimensionPixelSize = tintTypedArray.getDimensionPixelSize(68, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            C1929i.m3029k("startIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.f3682h) {
            this.f3682h = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (tintTypedArray.hasValue(69)) {
            ImageView.ScaleType scaleTypeM5858d = AbstractC3656k.m5858d(tintTypedArray.getInt(69, -1));
            this.f3683i = scaleTypeM5858d;
            checkableImageButton.setScaleType(scaleTypeM5858d);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        appCompatTextView.setAccessibilityLiveRegion(1);
        TextViewCompat.setTextAppearance(appCompatTextView, tintTypedArray.getResourceId(61, 0));
        if (tintTypedArray.hasValue(62)) {
            appCompatTextView.setTextColor(tintTypedArray.getColorStateList(62));
        }
        CharSequence text2 = tintTypedArray.getText(60);
        this.f3678d = TextUtils.isEmpty(text2) ? null : text2;
        appCompatTextView.setText(text2);
        m2577e();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    /* JADX INFO: renamed from: a */
    public final int m2573a() {
        int marginEnd;
        CheckableImageButton checkableImageButton = this.f3679e;
        if (checkableImageButton.getVisibility() == 0) {
            marginEnd = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth();
        } else {
            marginEnd = 0;
        }
        return this.f3677c.getPaddingStart() + getPaddingStart() + marginEnd;
    }

    /* JADX INFO: renamed from: b */
    public final void m2574b(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f3679e;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f3680f;
            PorterDuff.Mode mode = this.f3681g;
            TextInputLayout textInputLayout = this.f3676b;
            AbstractC3656k.m5856b(textInputLayout, checkableImageButton, colorStateList, mode);
            m2575c(true);
            AbstractC3656k.m5869o(textInputLayout, checkableImageButton, this.f3680f);
            return;
        }
        m2575c(false);
        View.OnLongClickListener onLongClickListener = this.f3684j;
        checkableImageButton.setOnClickListener(null);
        AbstractC3656k.m5873s(checkableImageButton, onLongClickListener);
        this.f3684j = null;
        checkableImageButton.setOnLongClickListener(null);
        AbstractC3656k.m5873s(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2575c(boolean z9) {
        CheckableImageButton checkableImageButton = this.f3679e;
        if ((checkableImageButton.getVisibility() == 0) != z9) {
            checkableImageButton.setVisibility(z9 ? 0 : 8);
            m2576d();
            m2577e();
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2576d() {
        EditText editText = this.f3676b.f2522f;
        if (editText == null) {
            return;
        }
        this.f3677c.setPaddingRelative(this.f3679e.getVisibility() == 0 ? 0 : editText.getPaddingStart(), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    /* JADX INFO: renamed from: e */
    public final void m2577e() {
        int i10 = (this.f3678d == null || this.f3685k) ? 8 : 0;
        setVisibility((this.f3679e.getVisibility() == 0 || i10 == 0) ? 0 : 8);
        this.f3677c.setVisibility(i10);
        this.f3676b.m1864s();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        m2576d();
    }
}
