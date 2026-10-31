package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContracts$PickMultipleVisualMedia;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia$DefaultTab;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia$ImageAndVideo;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia$VisualMediaType;
import androidx.annotation.IntRange;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u001c\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005H\u0007\u001a.\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t\u001a6\u0010\u0000\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t¨\u0006\f"}, d2 = {"PickVisualMediaRequest", "Landroidx/activity/result/PickVisualMediaRequest;", "mediaType", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;", "maxItems", "", "isOrderedSelection", "", "defaultTab", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;", "accentColor", "", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class PickVisualMediaRequestKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final PickVisualMediaRequest PickVisualMediaRequest(long j9, ActivityResultContracts$PickVisualMedia$VisualMediaType activityResultContracts$PickVisualMedia$VisualMediaType, @IntRange(from = 2) int i9, boolean z8, ActivityResultContracts$PickVisualMedia$DefaultTab activityResultContracts$PickVisualMedia$DefaultTab) {
        activityResultContracts$PickVisualMedia$VisualMediaType.getClass();
        activityResultContracts$PickVisualMedia$DefaultTab.getClass();
        return new PickVisualMediaRequest$Builder().setMediaType(activityResultContracts$PickVisualMedia$VisualMediaType).setMaxItems(i9).setOrderedSelection(z8).setDefaultTab(activityResultContracts$PickVisualMedia$DefaultTab).setAccentColor(j9).build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(long j9, ActivityResultContracts$PickVisualMedia$VisualMediaType activityResultContracts$PickVisualMedia$VisualMediaType, int i9, boolean z8, ActivityResultContracts$PickVisualMedia$DefaultTab activityResultContracts$PickVisualMedia$DefaultTab, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            activityResultContracts$PickVisualMedia$VisualMediaType = ActivityResultContracts$PickVisualMedia$ImageAndVideo.INSTANCE;
        }
        ActivityResultContracts$PickVisualMedia$VisualMediaType activityResultContracts$PickVisualMedia$VisualMediaType2 = activityResultContracts$PickVisualMedia$VisualMediaType;
        if ((i10 & 4) != 0) {
            i9 = ActivityResultContracts$PickMultipleVisualMedia.Companion.getMaxItems$activity_release();
        }
        int i11 = i9;
        if ((i10 & 8) != 0) {
            z8 = false;
        }
        boolean z9 = z8;
        if ((i10 & 16) != 0) {
            activityResultContracts$PickVisualMedia$DefaultTab = ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab.INSTANCE;
        }
        return PickVisualMediaRequest(j9, activityResultContracts$PickVisualMedia$VisualMediaType2, i11, z9, activityResultContracts$PickVisualMedia$DefaultTab);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Superseded by PickVisualMediaRequest that take optional isOrderedSelection and defaultTab")
    public static final /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts$PickVisualMedia$VisualMediaType activityResultContracts$PickVisualMedia$VisualMediaType, @IntRange(from = 2) int i9) {
        activityResultContracts$PickVisualMedia$VisualMediaType.getClass();
        return new PickVisualMediaRequest$Builder().setMediaType(activityResultContracts$PickVisualMedia$VisualMediaType).setMaxItems(i9).build();
    }

    public static final PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts$PickVisualMedia$VisualMediaType activityResultContracts$PickVisualMedia$VisualMediaType, @IntRange(from = 2) int i9, boolean z8, ActivityResultContracts$PickVisualMedia$DefaultTab activityResultContracts$PickVisualMedia$DefaultTab) {
        activityResultContracts$PickVisualMedia$VisualMediaType.getClass();
        activityResultContracts$PickVisualMedia$DefaultTab.getClass();
        return new PickVisualMediaRequest$Builder().setMediaType(activityResultContracts$PickVisualMedia$VisualMediaType).setMaxItems(i9).setOrderedSelection(z8).setDefaultTab(activityResultContracts$PickVisualMedia$DefaultTab).build();
    }

    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(ActivityResultContracts$PickVisualMedia$VisualMediaType activityResultContracts$PickVisualMedia$VisualMediaType, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            activityResultContracts$PickVisualMedia$VisualMediaType = ActivityResultContracts$PickVisualMedia$ImageAndVideo.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            i9 = ActivityResultContracts$PickMultipleVisualMedia.Companion.getMaxItems$activity_release();
        }
        return PickVisualMediaRequest(activityResultContracts$PickVisualMedia$VisualMediaType, i9);
    }

    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(ActivityResultContracts$PickVisualMedia$VisualMediaType activityResultContracts$PickVisualMedia$VisualMediaType, int i9, boolean z8, ActivityResultContracts$PickVisualMedia$DefaultTab activityResultContracts$PickVisualMedia$DefaultTab, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            activityResultContracts$PickVisualMedia$VisualMediaType = ActivityResultContracts$PickVisualMedia$ImageAndVideo.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            i9 = ActivityResultContracts$PickMultipleVisualMedia.Companion.getMaxItems$activity_release();
        }
        if ((i10 & 4) != 0) {
            z8 = false;
        }
        if ((i10 & 8) != 0) {
            activityResultContracts$PickVisualMedia$DefaultTab = ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab.INSTANCE;
        }
        return PickVisualMediaRequest(activityResultContracts$PickVisualMedia$VisualMediaType, i9, z8, activityResultContracts$PickVisualMedia$DefaultTab);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Superseded by PickVisualMediaRequest that takes an optional maxItems")
    public static final /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts$PickVisualMedia$VisualMediaType activityResultContracts$PickVisualMedia$VisualMediaType) {
        activityResultContracts$PickVisualMedia$VisualMediaType.getClass();
        return new PickVisualMediaRequest$Builder().setMediaType(activityResultContracts$PickVisualMedia$VisualMediaType).build();
    }

    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(ActivityResultContracts$PickVisualMedia$VisualMediaType activityResultContracts$PickVisualMedia$VisualMediaType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            activityResultContracts$PickVisualMedia$VisualMediaType = ActivityResultContracts$PickVisualMedia$ImageAndVideo.INSTANCE;
        }
        return PickVisualMediaRequest(activityResultContracts$PickVisualMedia$VisualMediaType);
    }
}
