package androidx.core.view.accessibility;

import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder {
    private int mColumnIndex;
    private int mColumnSpan;
    private String mColumnTitle;
    private boolean mHeading;
    private int mRowIndex;
    private int mRowSpan;
    private String mRowTitle;
    private boolean mSelected;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat build() {
        return Build$VERSION.SDK_INT >= 33 ? AccessibilityNodeInfoCompat$Api33Impl.buildCollectionItemInfoCompat(this.mHeading, this.mColumnIndex, this.mRowIndex, this.mColumnSpan, this.mRowSpan, this.mSelected, this.mRowTitle, this.mColumnTitle) : AccessibilityNodeInfoCompat$Api21Impl.createCollectionItemInfo(this.mRowIndex, this.mRowSpan, this.mColumnIndex, this.mColumnSpan, this.mHeading, this.mSelected);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder setColumnIndex(int i9) {
        this.mColumnIndex = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder setColumnSpan(int i9) {
        this.mColumnSpan = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder setColumnTitle(@Nullable String str) {
        this.mColumnTitle = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder setHeading(boolean z8) {
        this.mHeading = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder setRowIndex(int i9) {
        this.mRowIndex = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder setRowSpan(int i9) {
        this.mRowSpan = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder setRowTitle(@Nullable String str) {
        this.mRowTitle = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder setSelected(boolean z8) {
        this.mSelected = z8;
        return this;
    }
}
