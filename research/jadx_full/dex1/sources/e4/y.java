package e4;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View$OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup$MarginLayoutParams;
import android.widget.EditText;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextInputLayout f2124b;
    public final AppCompatTextView c;
    public CharSequence d;
    public final CheckableImageButton e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ColorStateList f2125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public PorterDuff$Mode f2126g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2127h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView$ScaleType f2128i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View$OnLongClickListener f2129j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2130k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f2124b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout$LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(2131492934, (ViewGroup) this, false);
        this.e = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.c = appCompatTextView;
        if (w3.c.d(getContext())) {
            ((ViewGroup$MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View$OnLongClickListener view$OnLongClickListener = this.f2129j;
        checkableImageButton.setOnClickListener(null);
        y5.k.s(checkableImageButton, view$OnLongClickListener);
        this.f2129j = null;
        checkableImageButton.setOnLongClickListener(null);
        y5.k.s(checkableImageButton, null);
        if (tintTypedArray.hasValue(70)) {
            this.f2125f = w3.c.b(getContext(), tintTypedArray, 70);
        }
        if (tintTypedArray.hasValue(71)) {
            this.f2126g = s3.q.b(tintTypedArray.getInt(71, -1), null);
        }
        if (tintTypedArray.hasValue(67)) {
            b(tintTypedArray.getDrawable(67));
            if (tintTypedArray.hasValue(66) && checkableImageButton.getContentDescription() != (text = tintTypedArray.getText(66))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(tintTypedArray.getBoolean(65, true));
        }
        int dimensionPixelSize = tintTypedArray.getDimensionPixelSize(68, getResources().getDimensionPixelSize(2131100589));
        if (dimensionPixelSize < 0) {
            j1.i.k("startIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.f2127h) {
            this.f2127h = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (tintTypedArray.hasValue(69)) {
            ImageView$ScaleType imageView$ScaleTypeD = y5.k.d(tintTypedArray.getInt(69, -1));
            this.f2128i = imageView$ScaleTypeD;
            checkableImageButton.setScaleType(imageView$ScaleTypeD);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(2131297648);
        appCompatTextView.setLayoutParams(new LinearLayout$LayoutParams(-2, -2));
        appCompatTextView.setAccessibilityLiveRegion(1);
        TextViewCompat.setTextAppearance(appCompatTextView, tintTypedArray.getResourceId(61, 0));
        if (tintTypedArray.hasValue(62)) {
            appCompatTextView.setTextColor(tintTypedArray.getColorStateList(62));
        }
        CharSequence text2 = tintTypedArray.getText(60);
        this.d = TextUtils.isEmpty(text2) ? null : text2;
        appCompatTextView.setText(text2);
        e();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a() {
        int marginEnd;
        CheckableImageButton checkableImageButton = this.e;
        if (checkableImageButton.getVisibility() == 0) {
            marginEnd = ((ViewGroup$MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth();
        } else {
            marginEnd = 0;
        }
        return this.c.getPaddingStart() + getPaddingStart() + marginEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.e;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f2125f;
            PorterDuff$Mode porterDuff$Mode = this.f2126g;
            TextInputLayout textInputLayout = this.f2124b;
            y5.k.b(textInputLayout, checkableImageButton, colorStateList, porterDuff$Mode);
            c(true);
            y5.k.o(textInputLayout, checkableImageButton, this.f2125f);
            return;
        }
        c(false);
        View$OnLongClickListener view$OnLongClickListener = this.f2129j;
        checkableImageButton.setOnClickListener(null);
        y5.k.s(checkableImageButton, view$OnLongClickListener);
        this.f2129j = null;
        checkableImageButton.setOnLongClickListener(null);
        y5.k.s(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(boolean z8) {
        CheckableImageButton checkableImageButton = this.e;
        if ((checkableImageButton.getVisibility() == 0) != z8) {
            checkableImageButton.setVisibility(z8 ? 0 : 8);
            d();
            e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        EditText editText = this.f2124b.f1386f;
        if (editText == null) {
            return;
        }
        this.c.setPaddingRelative(this.e.getVisibility() == 0 ? 0 : editText.getPaddingStart(), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(2131100459), editText.getCompoundPaddingBottom());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        int i9 = (this.d == null || this.f2130k) ? 8 : 0;
        setVisibility((this.e.getVisibility() == 0 || i9 == 0) ? 0 : 8);
        this.c.setVisibility(i9);
        this.f2124b.s();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        d();
    }
}
