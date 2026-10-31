package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.IntRange;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001#B\u0007\b\u0000¢\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0017@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001d@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006$"}, m3159d2 = {"Landroidx/activity/result/PickVisualMediaRequest;", "", "()V", "<set-?>", "", "accentColor", "getAccentColor", "()J", "setAccentColor$activity_release", "(J)V", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;", "defaultTab", "getDefaultTab", "()Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;", "setDefaultTab$activity_release", "(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)V", "", "isCustomAccentColorApplied", "()Z", "setCustomAccentColorApplied$activity_release", "(Z)V", "isOrderedSelection", "setOrderedSelection$activity_release", "", "maxItems", "getMaxItems", "()I", "setMaxItems$activity_release", "(I)V", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;", "mediaType", "getMediaType", "()Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;", "setMediaType$activity_release", "(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)V", "Builder", "activity_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class PickVisualMediaRequest {
    private long accentColor;
    private boolean isCustomAccentColorApplied;
    private boolean isOrderedSelection;
    private ActivityResultContracts.PickVisualMedia.VisualMediaType mediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
    private int maxItems = ActivityResultContracts.PickMultipleVisualMedia.INSTANCE.getMaxItems$activity_release();
    private ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab = ActivityResultContracts.PickVisualMedia.DefaultTab.PhotosTab.INSTANCE;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0012\u001a\u00020\u00002\b\b\u0001\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m3159d2 = {"Landroidx/activity/result/PickVisualMediaRequest$Builder;", "", "()V", "accentColor", "", "defaultTab", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;", "isCustomAccentColorApplied", "", "isOrderedSelection", "maxItems", "", "mediaType", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;", "build", "Landroidx/activity/result/PickVisualMediaRequest;", "setAccentColor", "setDefaultTab", "setMaxItems", "setMediaType", "setOrderedSelection", "activity_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Builder {
        private long accentColor;
        private boolean isCustomAccentColorApplied;
        private boolean isOrderedSelection;
        private ActivityResultContracts.PickVisualMedia.VisualMediaType mediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
        private int maxItems = ActivityResultContracts.PickMultipleVisualMedia.INSTANCE.getMaxItems$activity_release();
        private ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab = ActivityResultContracts.PickVisualMedia.DefaultTab.PhotosTab.INSTANCE;

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

        public final Builder setAccentColor(long accentColor) {
            this.accentColor = accentColor;
            this.isCustomAccentColorApplied = true;
            return this;
        }

        public final Builder setDefaultTab(ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab) {
            defaultTab.getClass();
            this.defaultTab = defaultTab;
            return this;
        }

        public final Builder setMaxItems(@IntRange(from = 2) int maxItems) {
            this.maxItems = maxItems;
            return this;
        }

        public final Builder setMediaType(ActivityResultContracts.PickVisualMedia.VisualMediaType mediaType) {
            mediaType.getClass();
            this.mediaType = mediaType;
            return this;
        }

        public final Builder setOrderedSelection(boolean isOrderedSelection) {
            this.isOrderedSelection = isOrderedSelection;
            return this;
        }
    }

    public final long getAccentColor() {
        return this.accentColor;
    }

    public final ActivityResultContracts.PickVisualMedia.DefaultTab getDefaultTab() {
        return this.defaultTab;
    }

    public final int getMaxItems() {
        return this.maxItems;
    }

    public final ActivityResultContracts.PickVisualMedia.VisualMediaType getMediaType() {
        return this.mediaType;
    }

    /* JADX INFO: renamed from: isCustomAccentColorApplied, reason: from getter */
    public final boolean getIsCustomAccentColorApplied() {
        return this.isCustomAccentColorApplied;
    }

    /* JADX INFO: renamed from: isOrderedSelection, reason: from getter */
    public final boolean getIsOrderedSelection() {
        return this.isOrderedSelection;
    }

    public final void setAccentColor$activity_release(long j10) {
        this.accentColor = j10;
    }

    public final void setCustomAccentColorApplied$activity_release(boolean z9) {
        this.isCustomAccentColorApplied = z9;
    }

    public final void setDefaultTab$activity_release(ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab) {
        defaultTab.getClass();
        this.defaultTab = defaultTab;
    }

    public final void setMaxItems$activity_release(int i10) {
        this.maxItems = i10;
    }

    public final void setMediaType$activity_release(ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType) {
        visualMediaType.getClass();
        this.mediaType = visualMediaType;
    }

    public final void setOrderedSelection$activity_release(boolean z9) {
        this.isOrderedSelection = z9;
    }
}
