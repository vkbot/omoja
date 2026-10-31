package p051e4;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: renamed from: e4.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1466a0 extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a */
    public final TextInputLayout f3555a;

    public C1466a0(TextInputLayout textInputLayout) {
        this.f3555a = textInputLayout;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        TextInputLayout textInputLayout = this.f3555a;
        EditText editText = textInputLayout.getEditText();
        CharSequence text = editText != null ? editText.getText() : null;
        CharSequence hint = textInputLayout.getHint();
        CharSequence error = textInputLayout.getError();
        CharSequence placeholderText = textInputLayout.getPlaceholderText();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        boolean zIsEmpty2 = TextUtils.isEmpty(hint);
        boolean z9 = textInputLayout.f2557w0;
        boolean zIsEmpty3 = TextUtils.isEmpty(error);
        boolean z10 = (zIsEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
        String string = !zIsEmpty2 ? hint.toString() : "";
        C1492y c1492y = textInputLayout.f2516c;
        View view2 = c1492y.f3677c;
        if (view2.getVisibility() == 0) {
            accessibilityNodeInfoCompat.setLabelFor(view2);
            accessibilityNodeInfoCompat.setTraversalAfter(view2);
        } else {
            accessibilityNodeInfoCompat.setTraversalAfter(c1492y.f3679e);
        }
        if (!zIsEmpty) {
            accessibilityNodeInfoCompat.setText(text);
        } else if (!TextUtils.isEmpty(string)) {
            accessibilityNodeInfoCompat.setText(string);
            if (!z9 && placeholderText != null) {
                accessibilityNodeInfoCompat.setText(string + ", " + ((Object) placeholderText));
            }
        } else if (placeholderText != null) {
            accessibilityNodeInfoCompat.setText(placeholderText);
        }
        if (!TextUtils.isEmpty(string)) {
            if (Build.VERSION.SDK_INT >= 26) {
                accessibilityNodeInfoCompat.setHintText(string);
            } else {
                if (!zIsEmpty) {
                    string = ((Object) text) + ", " + string;
                }
                accessibilityNodeInfoCompat.setText(string);
            }
            accessibilityNodeInfoCompat.setShowingHintText(zIsEmpty);
        }
        if (text == null || text.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
        if (z10) {
            if (zIsEmpty3) {
                error = counterOverflowDescription;
            }
            accessibilityNodeInfoCompat.setError(error);
        }
        View view3 = textInputLayout.f2534l.f3659y;
        if (view3 != null) {
            accessibilityNodeInfoCompat.setLabelFor(view3);
        }
        textInputLayout.f2518d.m2544b().mo2537m(accessibilityNodeInfoCompat);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(view, accessibilityEvent);
        this.f3555a.f2518d.m2544b().mo2538n(accessibilityEvent);
    }
}
