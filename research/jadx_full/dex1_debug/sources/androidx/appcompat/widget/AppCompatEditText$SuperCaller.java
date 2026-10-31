package androidx.appcompat.widget;

import android.view.textclassifier.TextClassifier;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(api = 26)
public class AppCompatEditText$SuperCaller {
    final /* synthetic */ AppCompatEditText this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatEditText$SuperCaller(AppCompatEditText appCompatEditText) {
        this.this$0 = appCompatEditText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public TextClassifier getTextClassifier() {
        return AppCompatEditText.access$001(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextClassifier(TextClassifier textClassifier) {
        AppCompatEditText.access$101(this.this$0, textClassifier);
    }
}
