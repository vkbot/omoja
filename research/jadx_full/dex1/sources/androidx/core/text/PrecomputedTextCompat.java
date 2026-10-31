package androidx.core.text;

import android.os.Build$VERSION;
import android.os.Trace;
import android.text.PrecomputedText;
import android.text.PrecomputedText$Params;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout$Builder;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.activity.j;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.UiThread;
import androidx.core.util.Preconditions;
import j1.i;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PrecomputedTextCompat implements Spannable {
    private static final char LINE_FEED = '\n';

    @NonNull
    @GuardedBy("sLock")
    private static Executor sExecutor;
    private static final Object sLock = new Object();

    @NonNull
    private final int[] mParagraphEnds;

    @NonNull
    private final PrecomputedTextCompat$Params mParams;

    @NonNull
    private final Spannable mText;

    @Nullable
    private final PrecomputedText mWrapped;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(28)
    private PrecomputedTextCompat(@NonNull PrecomputedText precomputedText, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params) {
        this.mText = PrecomputedTextCompat$Api28Impl.castToSpannable(precomputedText);
        this.mParams = precomputedTextCompat$Params;
        this.mParagraphEnds = null;
        this.mWrapped = Build$VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static PrecomputedTextCompat create(@NonNull CharSequence charSequence, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params) {
        PrecomputedText$Params precomputedText$Params;
        Preconditions.checkNotNull(charSequence);
        Preconditions.checkNotNull(precomputedTextCompat$Params);
        try {
            Trace.beginSection("PrecomputedText");
            if (Build$VERSION.SDK_INT >= 29 && (precomputedText$Params = precomputedTextCompat$Params.mWrapped) != null) {
                return new PrecomputedTextCompat(j.o(charSequence, precomputedText$Params), precomputedTextCompat$Params);
            }
            ArrayList arrayList = new ArrayList();
            int length = charSequence.length();
            int i9 = 0;
            while (i9 < length) {
                int iIndexOf = TextUtils.indexOf(charSequence, LINE_FEED, i9, length);
                i9 = iIndexOf < 0 ? length : iIndexOf + 1;
                arrayList.add(Integer.valueOf(i9));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                iArr[i10] = ((Integer) arrayList.get(i10)).intValue();
            }
            StaticLayout$Builder.obtain(charSequence, 0, charSequence.length(), precomputedTextCompat$Params.getTextPaint(), Integer.MAX_VALUE).setBreakStrategy(precomputedTextCompat$Params.getBreakStrategy()).setHyphenationFrequency(precomputedTextCompat$Params.getHyphenationFrequency()).setTextDirection(precomputedTextCompat$Params.getTextDirection()).build();
            return new PrecomputedTextCompat(charSequence, precomputedTextCompat$Params, iArr);
        } finally {
            Trace.endSection();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @UiThread
    public static Future<PrecomputedTextCompat> getTextFuture(@NonNull CharSequence charSequence, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params, @Nullable Executor executor) {
        PrecomputedTextCompat$PrecomputedTextFutureTask precomputedTextCompat$PrecomputedTextFutureTask = new PrecomputedTextCompat$PrecomputedTextFutureTask(precomputedTextCompat$Params, charSequence);
        if (executor == null) {
            synchronized (sLock) {
                try {
                    if (sExecutor == null) {
                        sExecutor = Executors.newFixedThreadPool(1);
                    }
                    executor = sExecutor;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        executor.execute(precomputedTextCompat$PrecomputedTextFutureTask);
        return precomputedTextCompat$PrecomputedTextFutureTask;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.CharSequence
    public char charAt(int i9) {
        return this.mText.charAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public int getParagraphCount() {
        return Build$VERSION.SDK_INT >= 29 ? j.c(this.mWrapped) : this.mParagraphEnds.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public int getParagraphEnd(@IntRange(from = ULong.MIN_VALUE) int i9) {
        Preconditions.checkArgumentInRange(i9, 0, getParagraphCount(), "paraIndex");
        return Build$VERSION.SDK_INT >= 29 ? j.d(this.mWrapped, i9) : this.mParagraphEnds[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public int getParagraphStart(@IntRange(from = ULong.MIN_VALUE) int i9) {
        Preconditions.checkArgumentInRange(i9, 0, getParagraphCount(), "paraIndex");
        if (Build$VERSION.SDK_INT >= 29) {
            return j.B(this.mWrapped, i9);
        }
        if (i9 == 0) {
            return 0;
        }
        return this.mParagraphEnds[i9 - 1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public PrecomputedTextCompat$Params getParams() {
        return this.mParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(28)
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public PrecomputedText getPrecomputedText() {
        if (j.y(this.mText)) {
            return j.p(this.mText);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.mText.getSpanEnd(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.mText.getSpanFlags(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.mText.getSpanStart(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.Spanned
    public <T> T[] getSpans(int i9, int i10, Class<T> cls) {
        return Build$VERSION.SDK_INT >= 29 ? (T[]) j.z(this.mWrapped, i9, i10, cls) : (T[]) this.mText.getSpans(i9, i10, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.CharSequence
    public int length() {
        return this.mText.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.Spanned
    public int nextSpanTransition(int i9, int i10, Class cls) {
        return this.mText.nextSpanTransition(i9, i10, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            i.k("MetricAffectingSpan can not be removed from PrecomputedText.");
        } else if (Build$VERSION.SDK_INT >= 29) {
            j.u(this.mWrapped, obj);
        } else {
            this.mText.removeSpan(obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.Spannable
    public void setSpan(Object obj, int i9, int i10, int i11) {
        if (obj instanceof MetricAffectingSpan) {
            i.k("MetricAffectingSpan can not be set to PrecomputedText.");
        } else if (Build$VERSION.SDK_INT >= 29) {
            j.v(this.mWrapped, obj, i9, i10, i11);
        } else {
            this.mText.setSpan(obj, i9, i10, i11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i9, int i10) {
        return this.mText.subSequence(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.CharSequence
    @NonNull
    public String toString() {
        return this.mText.toString();
    }

    private PrecomputedTextCompat(@NonNull CharSequence charSequence, @NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params, @NonNull int[] iArr) {
        this.mText = new SpannableString(charSequence);
        this.mParams = precomputedTextCompat$Params;
        this.mParagraphEnds = iArr;
        this.mWrapped = null;
    }
}
