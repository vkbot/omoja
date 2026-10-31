package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.Paint$FontMetricsInt;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.util.TypedValue;
import android.view.ActionMode$Callback;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.StyleRes;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.text.PrecomputedTextCompat$Params;
import androidx.core.text.PrecomputedTextCompat$Params$Builder;
import androidx.core.util.Preconditions;
import j1.i;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class TextViewCompat {
    public static final int AUTO_SIZE_TEXT_TYPE_NONE = 0;
    public static final int AUTO_SIZE_TEXT_TYPE_UNIFORM = 1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TextViewCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.widget.TextView */
    /* JADX WARN: Multi-variable type inference failed */
    public static int getAutoSizeMaxTextSize(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return TextViewCompat$Api26Impl.getAutoSizeMaxTextSize(textView);
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeMaxTextSize();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.widget.TextView */
    /* JADX WARN: Multi-variable type inference failed */
    public static int getAutoSizeMinTextSize(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return TextViewCompat$Api26Impl.getAutoSizeMinTextSize(textView);
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeMinTextSize();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.widget.TextView */
    /* JADX WARN: Multi-variable type inference failed */
    public static int getAutoSizeStepGranularity(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return TextViewCompat$Api26Impl.getAutoSizeStepGranularity(textView);
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeStepGranularity();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.widget.TextView */
    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static int[] getAutoSizeTextAvailableSizes(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return TextViewCompat$Api26Impl.getAutoSizeTextAvailableSizes(textView);
        }
        return textView instanceof AutoSizeableTextView ? ((AutoSizeableTextView) textView).getAutoSizeTextAvailableSizes() : new int[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.widget.TextView */
    /* JADX WARN: Multi-variable type inference failed */
    public static int getAutoSizeTextType(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 27) {
            return TextViewCompat$Api26Impl.getAutoSizeTextType(textView);
        }
        if (textView instanceof AutoSizeableTextView) {
            return ((AutoSizeableTextView) textView).getAutoSizeTextType();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static ColorStateList getCompoundDrawableTintList(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView);
        return TextViewCompat$Api23Impl.getCompoundDrawableTintList(textView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static PorterDuff$Mode getCompoundDrawableTintMode(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView);
        return TextViewCompat$Api23Impl.getCompoundDrawableTintMode(textView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
        return textView.getCompoundDrawablesRelative();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getFirstBaselineToTopHeight(@NonNull TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getLastBaselineToBottomHeight(@NonNull TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getMaxLines(@NonNull TextView textView) {
        return textView.getMaxLines();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getMinLines(@NonNull TextView textView) {
        return textView.getMinLines();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int getTextDirection(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
        TextDirectionHeuristic textDirectionHeuristic2;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        if (textDirectionHeuristic == textDirectionHeuristic3 || textDirectionHeuristic == (textDirectionHeuristic2 = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == textDirectionHeuristic2) {
            return 6;
        }
        return textDirectionHeuristic == textDirectionHeuristic3 ? 7 : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static TextDirectionHeuristic getTextDirectionHeuristic(@NonNull TextView textView) {
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        if (Build$VERSION.SDK_INT >= 28 && (textView.getInputType() & 15) == 3) {
            byte directionality = Character.getDirectionality(TextViewCompat$Api28Impl.getDigitStrings(TextViewCompat$Api24Impl.getInstance(textView.getTextLocale()))[0].codePointAt(0));
            return (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        boolean z8 = textView.getLayoutDirection() == 1;
        switch (textView.getTextDirection()) {
            case 2:
                return TextDirectionHeuristics.ANYRTL_LTR;
            case 3:
                return TextDirectionHeuristics.LTR;
            case 4:
                return TextDirectionHeuristics.RTL;
            case 5:
                return TextDirectionHeuristics.LOCALE;
            case 6:
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
            case 7:
                return TextDirectionHeuristics.FIRSTSTRONG_RTL;
            default:
                return z8 ? TextDirectionHeuristics.FIRSTSTRONG_RTL : TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static PrecomputedTextCompat$Params getTextMetricsParams(@NonNull TextView textView) {
        if (Build$VERSION.SDK_INT >= 28) {
            return new PrecomputedTextCompat$Params(TextViewCompat$Api28Impl.getTextMetricsParams(textView));
        }
        PrecomputedTextCompat$Params$Builder precomputedTextCompat$Params$Builder = new PrecomputedTextCompat$Params$Builder(new TextPaint(textView.getPaint()));
        precomputedTextCompat$Params$Builder.setBreakStrategy(TextViewCompat$Api23Impl.getBreakStrategy(textView));
        precomputedTextCompat$Params$Builder.setHyphenationFrequency(TextViewCompat$Api23Impl.getHyphenationFrequency(textView));
        precomputedTextCompat$Params$Builder.setTextDirection(getTextDirectionHeuristic(textView));
        return precomputedTextCompat$Params$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.widget.TextView */
    /* JADX WARN: Multi-variable type inference failed */
    public static void setAutoSizeTextTypeUniformWithConfiguration(@NonNull TextView textView, int i9, int i10, int i11, int i12) {
        if (Build$VERSION.SDK_INT >= 27) {
            TextViewCompat$Api26Impl.setAutoSizeTextTypeUniformWithConfiguration(textView, i9, i10, i11, i12);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeUniformWithConfiguration(i9, i10, i11, i12);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.widget.TextView */
    /* JADX WARN: Multi-variable type inference failed */
    public static void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull TextView textView, @NonNull int[] iArr, int i9) {
        if (Build$VERSION.SDK_INT >= 27) {
            TextViewCompat$Api26Impl.setAutoSizeTextTypeUniformWithPresetSizes(textView, iArr, i9);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeUniformWithPresetSizes(iArr, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.widget.TextView */
    /* JADX WARN: Multi-variable type inference failed */
    public static void setAutoSizeTextTypeWithDefaults(@NonNull TextView textView, int i9) {
        if (Build$VERSION.SDK_INT >= 27) {
            TextViewCompat$Api26Impl.setAutoSizeTextTypeWithDefaults(textView, i9);
        } else if (textView instanceof AutoSizeableTextView) {
            ((AutoSizeableTextView) textView).setAutoSizeTextTypeWithDefaults(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCompoundDrawableTintList(@NonNull TextView textView, @Nullable ColorStateList colorStateList) {
        Preconditions.checkNotNull(textView);
        TextViewCompat$Api23Impl.setCompoundDrawableTintList(textView, colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCompoundDrawableTintMode(@NonNull TextView textView, @Nullable PorterDuff$Mode porterDuff$Mode) {
        Preconditions.checkNotNull(textView);
        TextViewCompat$Api23Impl.setCompoundDrawableTintMode(textView, porterDuff$Mode);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setCustomSelectionActionModeCallback(@NonNull TextView textView, @NonNull ActionMode$Callback actionMode$Callback) {
        textView.setCustomSelectionActionModeCallback(wrapCustomSelectionActionModeCallback(textView, actionMode$Callback));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setFirstBaselineToTopHeight(@NonNull TextView textView, @IntRange(from = ULong.MIN_VALUE) @Px int i9) {
        Preconditions.checkArgumentNonnegative(i9);
        if (Build$VERSION.SDK_INT >= 28) {
            TextViewCompat$Api28Impl.setFirstBaselineToTopHeight(textView, i9);
            return;
        }
        Paint$FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i10 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i9 > Math.abs(i10)) {
            textView.setPadding(textView.getPaddingLeft(), i9 + i10, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setLastBaselineToBottomHeight(@NonNull TextView textView, @IntRange(from = ULong.MIN_VALUE) @Px int i9) {
        Preconditions.checkArgumentNonnegative(i9);
        Paint$FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i10 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i9 > Math.abs(i10)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i9 - i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setLineHeight(@NonNull TextView textView, int i9, @FloatRange(from = 0.0d) float f8) {
        if (Build$VERSION.SDK_INT >= 34) {
            TextViewCompat$Api34Impl.setLineHeight(textView, i9, f8);
        } else {
            setLineHeight(textView, Math.round(TypedValue.applyDimension(i9, f8, textView.getResources().getDisplayMetrics())));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setPrecomputedText(@NonNull TextView textView, @NonNull PrecomputedTextCompat precomputedTextCompat) {
        if (Build$VERSION.SDK_INT >= 29) {
            textView.setText(TextViewCompat$Api28Impl.castToCharSequence(precomputedTextCompat.getPrecomputedText()));
        } else if (getTextMetricsParams(textView).equalsWithoutTextDirection(precomputedTextCompat.getParams())) {
            textView.setText(precomputedTextCompat);
        } else {
            i.k("Given text can not be applied to TextView.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setTextAppearance(@NonNull TextView textView, @StyleRes int i9) {
        textView.setTextAppearance(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setTextMetricsParams(@NonNull TextView textView, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params) {
        textView.setTextDirection(getTextDirection(precomputedTextCompat$Params.getTextDirection()));
        textView.getPaint().set(precomputedTextCompat$Params.getTextPaint());
        TextViewCompat$Api23Impl.setBreakStrategy(textView, precomputedTextCompat$Params.getBreakStrategy());
        TextViewCompat$Api23Impl.setHyphenationFrequency(textView, precomputedTextCompat$Params.getHyphenationFrequency());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static ActionMode$Callback unwrapCustomSelectionActionModeCallback(@Nullable ActionMode$Callback actionMode$Callback) {
        return (!(actionMode$Callback instanceof TextViewCompat$OreoCallback) || Build$VERSION.SDK_INT < 26) ? actionMode$Callback : ((TextViewCompat$OreoCallback) actionMode$Callback).getWrappedCallback();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static ActionMode$Callback wrapCustomSelectionActionModeCallback(@NonNull TextView textView, @Nullable ActionMode$Callback actionMode$Callback) {
        int i9 = Build$VERSION.SDK_INT;
        return (i9 < 26 || i9 > 27 || (actionMode$Callback instanceof TextViewCompat$OreoCallback) || actionMode$Callback == null) ? actionMode$Callback : new TextViewCompat$OreoCallback(actionMode$Callback, textView);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @DrawableRes int i9, @DrawableRes int i10, @DrawableRes int i11, @DrawableRes int i12) {
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(i9, i10, i11, i12);
    }

    public static void setLineHeight(@NonNull TextView textView, @IntRange(from = ULong.MIN_VALUE) @Px int i9) {
        Preconditions.checkArgumentNonnegative(i9);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i9 != fontMetricsInt) {
            textView.setLineSpacing(i9 - fontMetricsInt, 1.0f);
        }
    }
}
