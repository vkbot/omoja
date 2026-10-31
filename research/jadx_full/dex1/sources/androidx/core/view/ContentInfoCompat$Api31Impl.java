package androidx.core.view;

import android.content.ClipData;
import android.content.ClipData$Item;
import android.util.Pair;
import android.view.ContentInfo;
import android.view.ContentInfo$Builder;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
public final class ContentInfoCompat$Api31Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ContentInfoCompat$Api31Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @DoNotInline
    public static Pair<ContentInfo, ContentInfo> partition(@NonNull ContentInfo contentInfo, @NonNull Predicate<ClipData$Item> predicate) {
        ClipData clip = contentInfo.getClip();
        if (clip.getItemCount() == 1) {
            boolean zTest = predicate.test(clip.getItemAt(0));
            ContentInfo contentInfo2 = zTest ? contentInfo : null;
            if (zTest) {
                contentInfo = null;
            }
            return Pair.create(contentInfo2, contentInfo);
        }
        Objects.requireNonNull(predicate);
        Pair<ClipData, ClipData> pairPartition = ContentInfoCompat.partition(clip, new a(predicate));
        if (pairPartition.first == null) {
            return Pair.create(null, contentInfo);
        }
        return pairPartition.second == null ? Pair.create(contentInfo, null) : Pair.create(new ContentInfo$Builder(contentInfo).setClip((ClipData) pairPartition.first).build(), new ContentInfo$Builder(contentInfo).setClip((ClipData) pairPartition.second).build());
    }
}
