package androidx.core.view.inputmethod;

import android.os.Build$VERSION;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.pm.c;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class EditorInfoCompat {
    private static final String CONTENT_MIME_TYPES_INTEROP_KEY = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_MIME_TYPES_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_SELECTION_END_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END";
    private static final String CONTENT_SELECTION_HEAD_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD";
    private static final String CONTENT_SURROUNDING_TEXT_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT";
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;

    @VisibleForTesting
    static final int MAX_INITIAL_SELECTION_LENGTH = 1024;

    @VisibleForTesting
    static final int MEMORY_EFFICIENT_TEXT_LENGTH = 2048;
    private static final String STYLUS_HANDWRITING_ENABLED_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.STYLUS_HANDWRITING_ENABLED";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public EditorInfoCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static String[] getContentMimeTypes(@NonNull EditorInfo editorInfo) {
        if (Build$VERSION.SDK_INT >= 25) {
            String[] strArrO = c.o(editorInfo);
            return strArrO != null ? strArrO : EMPTY_STRING_ARRAY;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return EMPTY_STRING_ARRAY;
        }
        String[] stringArray = bundle.getStringArray(CONTENT_MIME_TYPES_KEY);
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray(CONTENT_MIME_TYPES_INTEROP_KEY);
        }
        return stringArray != null ? stringArray : EMPTY_STRING_ARRAY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static CharSequence getInitialSelectedText(@NonNull EditorInfo editorInfo, int i9) {
        CharSequence charSequence;
        if (Build$VERSION.SDK_INT >= 30) {
            return EditorInfoCompat$Api30Impl.getInitialSelectedText(editorInfo, i9);
        }
        if (editorInfo.extras == null) {
            return null;
        }
        int iMin = Math.min(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int iMax = Math.max(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int i10 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int i11 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        int i12 = iMax - iMin;
        if (editorInfo.initialSelStart < 0 || editorInfo.initialSelEnd < 0 || i11 - i10 != i12 || (charSequence = editorInfo.extras.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        return (i9 & 1) != 0 ? charSequence.subSequence(i10, i11) : TextUtils.substring(charSequence, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static CharSequence getInitialTextAfterCursor(@NonNull EditorInfo editorInfo, int i9, int i10) {
        CharSequence charSequence;
        if (Build$VERSION.SDK_INT >= 30) {
            return EditorInfoCompat$Api30Impl.getInitialTextAfterCursor(editorInfo, i9, i10);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int i11 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        int iMin = Math.min(i9, charSequence.length() - i11);
        return (i10 & 1) != 0 ? charSequence.subSequence(i11, iMin + i11) : TextUtils.substring(charSequence, i11, iMin + i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static CharSequence getInitialTextBeforeCursor(@NonNull EditorInfo editorInfo, int i9, int i10) {
        CharSequence charSequence;
        if (Build$VERSION.SDK_INT >= 30) {
            return EditorInfoCompat$Api30Impl.getInitialTextBeforeCursor(editorInfo, i9, i10);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int i11 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int iMin = Math.min(i9, i11);
        return (i10 & 1) != 0 ? charSequence.subSequence(i11 - iMin, i11) : TextUtils.substring(charSequence, i11 - iMin, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getProtocol(EditorInfo editorInfo) {
        if (Build$VERSION.SDK_INT >= 25) {
            return 1;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return 0;
        }
        boolean zContainsKey = bundle.containsKey(CONTENT_MIME_TYPES_KEY);
        boolean zContainsKey2 = editorInfo.extras.containsKey(CONTENT_MIME_TYPES_INTEROP_KEY);
        if (zContainsKey && zContainsKey2) {
            return 4;
        }
        if (zContainsKey) {
            return 3;
        }
        return zContainsKey2 ? 2 : 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isCutOnSurrogate(CharSequence charSequence, int i9, int i10) {
        if (i10 == 0) {
            return Character.isLowSurrogate(charSequence.charAt(i9));
        }
        if (i10 != 1) {
            return false;
        }
        return Character.isHighSurrogate(charSequence.charAt(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isPasswordInputType(int i9) {
        int i10 = i9 & 4095;
        return i10 == 129 || i10 == 225 || i10 == 18;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isStylusHandwritingEnabled(@NonNull EditorInfo editorInfo) {
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return false;
        }
        return bundle.getBoolean(STYLUS_HANDWRITING_ENABLED_KEY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr) {
        if (Build$VERSION.SDK_INT >= 25) {
            c.k(editorInfo, strArr);
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_KEY, strArr);
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_INTEROP_KEY, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setInitialSurroundingSubText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence, int i9) {
        Preconditions.checkNotNull(charSequence);
        if (Build$VERSION.SDK_INT >= 30) {
            EditorInfoCompat$Api30Impl.setInitialSurroundingSubText(editorInfo, charSequence, i9);
            return;
        }
        int i10 = editorInfo.initialSelStart;
        int i11 = editorInfo.initialSelEnd;
        int i12 = i10 > i11 ? i11 - i9 : i10 - i9;
        int i13 = i10 > i11 ? i10 - i9 : i11 - i9;
        int length = charSequence.length();
        if (i9 < 0 || i12 < 0 || i13 > length) {
            setSurroundingText(editorInfo, null, 0, 0);
            return;
        }
        if (isPasswordInputType(editorInfo.inputType)) {
            setSurroundingText(editorInfo, null, 0, 0);
        } else if (length <= 2048) {
            setSurroundingText(editorInfo, charSequence, i12, i13);
        } else {
            trimLongSurroundingText(editorInfo, charSequence, i12, i13);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setInitialSurroundingText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence) {
        if (Build$VERSION.SDK_INT >= 30) {
            EditorInfoCompat$Api30Impl.setInitialSurroundingSubText(editorInfo, charSequence, 0);
        } else {
            setInitialSurroundingSubText(editorInfo, charSequence, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setStylusHandwritingEnabled(@NonNull EditorInfo editorInfo, boolean z8) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putBoolean(STYLUS_HANDWRITING_ENABLED_KEY, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void setSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int i9, int i10) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence(CONTENT_SURROUNDING_TEXT_KEY, charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt(CONTENT_SELECTION_HEAD_KEY, i9);
        editorInfo.extras.putInt(CONTENT_SELECTION_END_KEY, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void trimLongSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int i9, int i10) {
        int i11 = i10 - i9;
        int i12 = i11 > 1024 ? 0 : i11;
        int i13 = 2048 - i12;
        int iMin = Math.min(charSequence.length() - i10, i13 - Math.min(i9, (int) (((double) i13) * 0.8d)));
        int iMin2 = Math.min(i9, i13 - iMin);
        int i14 = i9 - iMin2;
        if (isCutOnSurrogate(charSequence, i14, 0)) {
            i14++;
            iMin2--;
        }
        if (isCutOnSurrogate(charSequence, (i10 + iMin) - 1, 1)) {
            iMin--;
        }
        setSurroundingText(editorInfo, i12 != i11 ? TextUtils.concat(charSequence.subSequence(i14, i14 + iMin2), charSequence.subSequence(i10, iMin + i10)) : charSequence.subSequence(i14, iMin2 + i12 + iMin + i14), iMin2, i12 + iMin2);
    }
}
