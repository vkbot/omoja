package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContracts$PickMultipleVisualMedia;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia$DefaultTab;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia$ImageAndVideo;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia$VisualMediaType;
import androidx.annotation.IntRange;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0012\u001a\u00020\u00002\b\b\u0001\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/activity/result/PickVisualMediaRequest$Builder;", "", "()V", "accentColor", "", "defaultTab", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;", "isCustomAccentColorApplied", "", "isOrderedSelection", "maxItems", "", "mediaType", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;", "build", "Landroidx/activity/result/PickVisualMediaRequest;", "setAccentColor", "setDefaultTab", "setMaxItems", "setMediaType", "setOrderedSelection", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class PickVisualMediaRequest$Builder {
    private long accentColor;
    private boolean isCustomAccentColorApplied;
    private boolean isOrderedSelection;
    private ActivityResultContracts$PickVisualMedia$VisualMediaType mediaType = ActivityResultContracts$PickVisualMedia$ImageAndVideo.INSTANCE;
    private int maxItems = ActivityResultContracts$PickMultipleVisualMedia.Companion.getMaxItems$activity_release();
    private ActivityResultContracts$PickVisualMedia$DefaultTab defaultTab = ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab.INSTANCE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final PickVisualMediaRequest build() {
        PickVisualMediaRequest pickVisualMediaRequest = new PickVisualMediaRequest();
        pickVisualMediaRequest.setMediaType$activity_release(this.mediaType);
        pickVisualMediaRequest.setMaxItems$activity_release(this.maxItems);
        pickVisualMediaRequest.setOrderedSelection$activity_release(this.isOrderedSelection);
        pickVisualMediaRequest.setDefaultTab$activity_release(this.defaultTab);
        pickVisualMediaRequest.setCustomAccentColorApplied$activity_release(this.isCustomAccentColorApplied);
        pickVisualMediaRequest.setAccentColor$activity_release(this.accentColor);
        return pickVisualMediaRequest;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final PickVisualMediaRequest$Builder setAccentColor(long accentColor) {
        this.accentColor = accentColor;
        this.isCustomAccentColorApplied = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final PickVisualMediaRequest$Builder setDefaultTab(ActivityResultContracts$PickVisualMedia$DefaultTab defaultTab) {
        defaultTab.getClass();
        this.defaultTab = defaultTab;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final PickVisualMediaRequest$Builder setMaxItems(@IntRange(from = 2) int maxItems) {
        this.maxItems = maxItems;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final PickVisualMediaRequest$Builder setMediaType(ActivityResultContracts$PickVisualMedia$VisualMediaType mediaType) {
        mediaType.getClass();
        this.mediaType = mediaType;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final PickVisualMediaRequest$Builder setOrderedSelection(boolean isOrderedSelection) {
        this.isOrderedSelection = isOrderedSelection;
        return this;
    }
}
