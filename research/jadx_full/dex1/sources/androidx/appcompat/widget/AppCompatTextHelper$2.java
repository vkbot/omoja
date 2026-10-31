package androidx.appcompat.widget;

import android.graphics.Typeface;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatTextHelper$2 implements Runnable {
    final /* synthetic */ AppCompatTextHelper this$0;
    final /* synthetic */ int val$style;
    final /* synthetic */ TextView val$textView;
    final /* synthetic */ Typeface val$typeface;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public AppCompatTextHelper$2(AppCompatTextHelper appCompatTextHelper, TextView textView, Typeface typeface, int i9) {
        this.this$0 = appCompatTextHelper;
        this.val$textView = textView;
        this.val$typeface = typeface;
        this.val$style = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.val$textView.setTypeface(this.val$typeface, this.val$style);
    }
}
