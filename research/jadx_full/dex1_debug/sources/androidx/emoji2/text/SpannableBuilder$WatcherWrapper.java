package androidx.emoji2.text;

import android.os.Build$VERSION;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextWatcher;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SpannableBuilder$WatcherWrapper implements TextWatcher, SpanWatcher {
    private final AtomicInteger mBlockCalls = new AtomicInteger(0);
    final Object mObject;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpannableBuilder$WatcherWrapper(Object obj) {
        this.mObject = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isEmojiSpan(Object obj) {
        return obj instanceof EmojiSpan;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        ((TextWatcher) this.mObject).afterTextChanged(editable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        ((TextWatcher) this.mObject).beforeTextChanged(charSequence, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void blockCalls() {
        this.mBlockCalls.incrementAndGet();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.SpanWatcher
    public void onSpanAdded(Spannable spannable, Object obj, int i9, int i10) {
        if (this.mBlockCalls.get() <= 0 || !isEmojiSpan(obj)) {
            ((SpanWatcher) this.mObject).onSpanAdded(spannable, obj, i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:14:0x001e A[PHI: r11
  0x001e: PHI (r11v1 int) = (r11v0 int), (r11v3 int) binds: [B:8:0x0013, B:12:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.text.SpanWatcher
    public void onSpanChanged(Spannable spannable, Object obj, int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        if (this.mBlockCalls.get() <= 0 || !isEmojiSpan(obj)) {
            if (Build$VERSION.SDK_INT >= 28) {
                i13 = i9;
                i14 = i11;
            } else {
                if (i9 > i10) {
                    i9 = 0;
                }
                if (i11 > i12) {
                    i13 = i9;
                    i14 = 0;
                } else {
                    i13 = i9;
                    i14 = i11;
                }
            }
            ((SpanWatcher) this.mObject).onSpanChanged(spannable, obj, i13, i10, i14, i12);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.SpanWatcher
    public void onSpanRemoved(Spannable spannable, Object obj, int i9, int i10) {
        if (this.mBlockCalls.get() <= 0 || !isEmojiSpan(obj)) {
            ((SpanWatcher) this.mObject).onSpanRemoved(spannable, obj, i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        ((TextWatcher) this.mObject).onTextChanged(charSequence, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void unblockCalls() {
        this.mBlockCalls.decrementAndGet();
    }
}
