package androidx.core.content;

import android.content.ClipData$Item;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.util.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
public class IntentSanitizer$Api31Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private IntentSanitizer$Api31Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void checkOtherMembers(int i9, ClipData$Item clipData$Item, Consumer<String> consumer) {
        if (clipData$Item.getHtmlText() == null && clipData$Item.getIntent() == null && clipData$Item.getTextLinks() == null) {
            return;
        }
        consumer.accept("ClipData item at position " + i9 + " contains htmlText, textLinks or intent: " + clipData$Item);
    }
}
