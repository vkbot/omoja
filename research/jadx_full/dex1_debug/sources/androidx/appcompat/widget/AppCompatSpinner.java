package androidx.appcompat.widget;

import android.R$attr;
import android.R$layout;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.Adapter;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.StyleableRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.view.TintableBackgroundView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatSpinner extends Spinner implements TintableBackgroundView {

    @StyleableRes
    private static final int[] ATTRS_ANDROID_SPINNERMODE = {R$attr.spinnerMode};
    private static final int MAX_ITEMS_MEASURED = 15;
    private static final int MODE_DIALOG = 0;
    private static final int MODE_DROPDOWN = 1;
    private static final int MODE_THEME = -1;
    private static final String TAG = "AppCompatSpinner";
    private final AppCompatBackgroundHelper mBackgroundTintHelper;
    int mDropDownWidth;
    private ForwardingListener mForwardingListener;
    private AppCompatSpinner$SpinnerPopup mPopup;
    private final Context mPopupContext;
    private final boolean mPopupSet;
    private SpinnerAdapter mTempAdapter;
    final Rect mTempRect;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:18:0x0053 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:21:0x0059 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:45:0x003d */
    /* JADX WARN: Code duplicated, block: B:33:0x0070 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x0073  */
    /* JADX WARN: Code duplicated, block: B:36:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:42:0x00db  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.view.View, androidx.appcompat.widget.AppCompatSpinner] */
    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10, Resources$Theme resources$Theme) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        CharSequence[] textArray;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, i9);
        this.mTempRect = new Rect();
        ThemeUtils.checkAppCompatTheme(this, getContext());
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R$styleable.Spinner, i9, 0);
        this.mBackgroundTintHelper = new AppCompatBackgroundHelper(this);
        if (resources$Theme != null) {
            this.mPopupContext = new ContextThemeWrapper(context, resources$Theme);
        } else {
            int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(R$styleable.Spinner_popupTheme, 0);
            if (resourceId != 0) {
                this.mPopupContext = new ContextThemeWrapper(context, resourceId);
            } else {
                this.mPopupContext = context;
            }
        }
        ?? r11 = -1;
        ?? r9 = 0;
        try {
            if (i10 == -1) {
                try {
                    typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS_ANDROID_SPINNERMODE, i9, 0);
                    try {
                        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(0);
                        r11 = typedArrayObtainStyledAttributes;
                        if (zHasValue) {
                            i10 = typedArrayObtainStyledAttributes.getInt(0, 0);
                            r11 = typedArrayObtainStyledAttributes;
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.i(TAG, "Could not read android:spinnerMode", e);
                        r11 = typedArrayObtainStyledAttributes;
                        if (typedArrayObtainStyledAttributes != null) {
                        }
                        if (i10 != 0) {
                            AppCompatSpinner$DialogPopup appCompatSpinner$DialogPopup = new AppCompatSpinner$DialogPopup(this);
                            this.mPopup = appCompatSpinner$DialogPopup;
                            appCompatSpinner$DialogPopup.setPromptText(tintTypedArrayObtainStyledAttributes.getString(R$styleable.Spinner_android_prompt));
                        } else if (i10 == 1) {
                            AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup = new AppCompatSpinner$DropdownPopup(this, this.mPopupContext, attributeSet, i9);
                            TintTypedArray tintTypedArrayObtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(this.mPopupContext, attributeSet, R$styleable.Spinner, i9, 0);
                            this.mDropDownWidth = tintTypedArrayObtainStyledAttributes2.getLayoutDimension(R$styleable.Spinner_android_dropDownWidth, -2);
                            appCompatSpinner$DropdownPopup.setBackgroundDrawable(tintTypedArrayObtainStyledAttributes2.getDrawable(R$styleable.Spinner_android_popupBackground));
                            appCompatSpinner$DropdownPopup.setPromptText(tintTypedArrayObtainStyledAttributes.getString(R$styleable.Spinner_android_prompt));
                            tintTypedArrayObtainStyledAttributes2.recycle();
                            this.mPopup = appCompatSpinner$DropdownPopup;
                            this.mForwardingListener = new AppCompatSpinner$1(this, this, appCompatSpinner$DropdownPopup);
                        }
                        textArray = tintTypedArrayObtainStyledAttributes.getTextArray(R$styleable.Spinner_android_entries);
                        if (textArray != null) {
                            ArrayAdapter arrayAdapter = new ArrayAdapter(context, R$layout.simple_spinner_item, textArray);
                            arrayAdapter.setDropDownViewResource(androidx.appcompat.R$layout.support_simple_spinner_dropdown_item);
                            setAdapter(arrayAdapter);
                        }
                        tintTypedArrayObtainStyledAttributes.recycle();
                        this.mPopupSet = true;
                        spinnerAdapter = this.mTempAdapter;
                        if (spinnerAdapter != null) {
                            setAdapter(spinnerAdapter);
                            this.mTempAdapter = null;
                        }
                        this.mBackgroundTintHelper.loadFromAttributes(attributeSet, i9);
                    }
                } catch (Exception e6) {
                    e = e6;
                    typedArrayObtainStyledAttributes = null;
                } catch (Throwable th) {
                    th = th;
                    if (r9 != 0) {
                        r9.recycle();
                    }
                    throw th;
                }
                r11.recycle();
            }
            if (i10 != 0) {
                AppCompatSpinner$DialogPopup appCompatSpinner$DialogPopup2 = new AppCompatSpinner$DialogPopup(this);
                this.mPopup = appCompatSpinner$DialogPopup2;
                appCompatSpinner$DialogPopup2.setPromptText(tintTypedArrayObtainStyledAttributes.getString(R$styleable.Spinner_android_prompt));
            } else if (i10 == 1) {
                AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup2 = new AppCompatSpinner$DropdownPopup(this, this.mPopupContext, attributeSet, i9);
                TintTypedArray tintTypedArrayObtainStyledAttributes3 = TintTypedArray.obtainStyledAttributes(this.mPopupContext, attributeSet, R$styleable.Spinner, i9, 0);
                this.mDropDownWidth = tintTypedArrayObtainStyledAttributes3.getLayoutDimension(R$styleable.Spinner_android_dropDownWidth, -2);
                appCompatSpinner$DropdownPopup2.setBackgroundDrawable(tintTypedArrayObtainStyledAttributes3.getDrawable(R$styleable.Spinner_android_popupBackground));
                appCompatSpinner$DropdownPopup2.setPromptText(tintTypedArrayObtainStyledAttributes.getString(R$styleable.Spinner_android_prompt));
                tintTypedArrayObtainStyledAttributes3.recycle();
                this.mPopup = appCompatSpinner$DropdownPopup2;
                this.mForwardingListener = new AppCompatSpinner$1(this, this, appCompatSpinner$DropdownPopup2);
            }
            textArray = tintTypedArrayObtainStyledAttributes.getTextArray(R$styleable.Spinner_android_entries);
            if (textArray != null) {
                ArrayAdapter arrayAdapter2 = new ArrayAdapter(context, R$layout.simple_spinner_item, textArray);
                arrayAdapter2.setDropDownViewResource(androidx.appcompat.R$layout.support_simple_spinner_dropdown_item);
                setAdapter(arrayAdapter2);
            }
            tintTypedArrayObtainStyledAttributes.recycle();
            this.mPopupSet = true;
            spinnerAdapter = this.mTempAdapter;
            if (spinnerAdapter != null) {
                setAdapter(spinnerAdapter);
                this.mTempAdapter = null;
            }
            this.mBackgroundTintHelper.loadFromAttributes(attributeSet, i9);
        } catch (Throwable th2) {
            th = th2;
            r9 = r11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int compatMeasureContentWidth(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i9 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i9) {
                view = null;
                i9 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup$LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.mTempRect);
        Rect rect = this.mTempRect;
        return rect.left + rect.right + iMax2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.applySupportBackgroundTint();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        return appCompatSpinner$SpinnerPopup != null ? appCompatSpinner$SpinnerPopup.getHorizontalOffset() : super.getDropDownHorizontalOffset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        return appCompatSpinner$SpinnerPopup != null ? appCompatSpinner$SpinnerPopup.getVerticalOffset() : super.getDropDownVerticalOffset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.mPopup != null ? this.mDropDownWidth : super.getDropDownWidth();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public final AppCompatSpinner$SpinnerPopup getInternalPopup() {
        return this.mPopup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        return appCompatSpinner$SpinnerPopup != null ? appCompatSpinner$SpinnerPopup.getBackground() : super.getPopupBackground();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.mPopupContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        return appCompatSpinner$SpinnerPopup != null ? appCompatSpinner$SpinnerPopup.getHintText() : super.getPrompt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.getSupportBackgroundTintList();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff$Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.getSupportBackgroundTintMode();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        if (appCompatSpinner$SpinnerPopup == null || !appCompatSpinner$SpinnerPopup.isShowing()) {
            return;
        }
        this.mPopup.dismiss();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        if (this.mPopup == null || View$MeasureSpec.getMode(i9) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), compatMeasureContentWidth(getAdapter(), getBackground())), View$MeasureSpec.getSize(i9)), getMeasuredHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        AppCompatSpinner$SavedState appCompatSpinner$SavedState = (AppCompatSpinner$SavedState) parcelable;
        super.onRestoreInstanceState(appCompatSpinner$SavedState.getSuperState());
        if (!appCompatSpinner$SavedState.mShowDropdown || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new AppCompatSpinner$2(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        AppCompatSpinner$SavedState appCompatSpinner$SavedState = new AppCompatSpinner$SavedState(super.onSaveInstanceState());
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        appCompatSpinner$SavedState.mShowDropdown = appCompatSpinner$SpinnerPopup != null && appCompatSpinner$SpinnerPopup.isShowing();
        return appCompatSpinner$SavedState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener = this.mForwardingListener;
        if (forwardingListener == null || !forwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        if (appCompatSpinner$SpinnerPopup == null) {
            return super.performClick();
        }
        if (appCompatSpinner$SpinnerPopup.isShowing()) {
            return true;
        }
        showPopup();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.mPopupSet) {
            this.mTempAdapter = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.mPopup != null) {
            Context context = this.mPopupContext;
            if (context == null) {
                context = getContext();
            }
            this.mPopup.setAdapter(new AppCompatSpinner$DropDownAdapter(spinnerAdapter, context.getTheme()));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.onSetBackgroundDrawable(drawable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i9) {
        super.setBackgroundResource(i9);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.onSetBackgroundResource(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i9) {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        if (appCompatSpinner$SpinnerPopup == null) {
            super.setDropDownHorizontalOffset(i9);
        } else {
            appCompatSpinner$SpinnerPopup.setHorizontalOriginalOffset(i9);
            this.mPopup.setHorizontalOffset(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i9) {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        if (appCompatSpinner$SpinnerPopup != null) {
            appCompatSpinner$SpinnerPopup.setVerticalOffset(i9);
        } else {
            super.setDropDownVerticalOffset(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public void setDropDownWidth(int i9) {
        if (this.mPopup != null) {
            this.mDropDownWidth = i9;
        } else {
            super.setDropDownWidth(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        if (appCompatSpinner$SpinnerPopup != null) {
            appCompatSpinner$SpinnerPopup.setBackgroundDrawable(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(@DrawableRes int i9) {
        setPopupBackgroundDrawable(AppCompatResources.getDrawable(getPopupContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        AppCompatSpinner$SpinnerPopup appCompatSpinner$SpinnerPopup = this.mPopup;
        if (appCompatSpinner$SpinnerPopup != null) {
            appCompatSpinner$SpinnerPopup.setPromptText(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setSupportBackgroundTintList(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setSupportBackgroundTintMode(porterDuff$Mode);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void showPopup() {
        this.mPopup.show(getTextDirection(), getTextAlignment());
    }

    @Override // android.widget.AdapterView
    public /* bridge */ /* synthetic */ void setAdapter(Adapter adapter) {
        setAdapter((SpinnerAdapter) adapter);
    }

    public AppCompatSpinner(@NonNull Context context, int i9) {
        this(context, null, androidx.appcompat.R$attr.spinnerStyle, i9);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R$attr.spinnerStyle);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, -1);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        this(context, attributeSet, i9, i10, null);
    }

    public AppCompatSpinner(@NonNull Context context) {
        this(context, (AttributeSet) null);
    }
}
