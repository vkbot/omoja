package androidx.core.view.contentcapture;

import android.os.Build$VERSION;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewStructureCompat;
import androidx.core.view.autofill.AutofillIdCompat;
import androidx.core.view.n;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ContentCaptureSessionCompat {
    private static final String KEY_VIEW_TREE_APPEARED = "TREAT_AS_VIEW_TREE_APPEARED";
    private static final String KEY_VIEW_TREE_APPEARING = "TREAT_AS_VIEW_TREE_APPEARING";
    private final View mView;
    private final Object mWrappedObj;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
    private ContentCaptureSessionCompat(@NonNull ContentCaptureSession contentCaptureSession, @NonNull View view) {
        this.mWrappedObj = contentCaptureSession;
        this.mView = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
    public static ContentCaptureSessionCompat toContentCaptureSessionCompat(@NonNull ContentCaptureSession contentCaptureSession, @NonNull View view) {
        return new ContentCaptureSessionCompat(contentCaptureSession, view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public AutofillId newAutofillId(long j9) {
        if (Build$VERSION.SDK_INT < 29) {
            return null;
        }
        ContentCaptureSession contentCaptureSessionM = n.m(this.mWrappedObj);
        AutofillIdCompat autofillId = ViewCompat.getAutofillId(this.mView);
        Objects.requireNonNull(autofillId);
        return ContentCaptureSessionCompat$Api29Impl.newAutofillId(contentCaptureSessionM, autofillId.toAutofillId(), j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ViewStructureCompat newVirtualViewStructure(@NonNull AutofillId autofillId, long j9) {
        if (Build$VERSION.SDK_INT >= 29) {
            return ViewStructureCompat.toViewStructureCompat(ContentCaptureSessionCompat$Api29Impl.newVirtualViewStructure(n.m(this.mWrappedObj), autofillId, j9));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyViewTextChanged(@NonNull AutofillId autofillId, @Nullable CharSequence charSequence) {
        if (Build$VERSION.SDK_INT >= 29) {
            ContentCaptureSessionCompat$Api29Impl.notifyViewTextChanged(n.m(this.mWrappedObj), autofillId, charSequence);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyViewsAppeared(@NonNull List<ViewStructure> list) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 34) {
            ContentCaptureSessionCompat$Api34Impl.notifyViewsAppeared(n.m(this.mWrappedObj), list);
            return;
        }
        if (i9 < 29) {
            return;
        }
        ViewStructure viewStructureNewViewStructure = ContentCaptureSessionCompat$Api29Impl.newViewStructure(n.m(this.mWrappedObj), this.mView);
        ContentCaptureSessionCompat$Api23Impl.getExtras(viewStructureNewViewStructure).putBoolean(KEY_VIEW_TREE_APPEARING, true);
        ContentCaptureSessionCompat$Api29Impl.notifyViewAppeared(n.m(this.mWrappedObj), viewStructureNewViewStructure);
        int i10 = 0;
        while (true) {
            int size = list.size();
            Object obj = this.mWrappedObj;
            if (i10 >= size) {
                ViewStructure viewStructureNewViewStructure2 = ContentCaptureSessionCompat$Api29Impl.newViewStructure(n.m(obj), this.mView);
                ContentCaptureSessionCompat$Api23Impl.getExtras(viewStructureNewViewStructure2).putBoolean(KEY_VIEW_TREE_APPEARED, true);
                ContentCaptureSessionCompat$Api29Impl.notifyViewAppeared(n.m(this.mWrappedObj), viewStructureNewViewStructure2);
                return;
            }
            ContentCaptureSessionCompat$Api29Impl.notifyViewAppeared(n.m(obj), list.get(i10));
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyViewsDisappeared(@NonNull long[] jArr) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 34) {
            ContentCaptureSession contentCaptureSessionM = n.m(this.mWrappedObj);
            AutofillIdCompat autofillId = ViewCompat.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId);
            ContentCaptureSessionCompat$Api29Impl.notifyViewsDisappeared(contentCaptureSessionM, autofillId.toAutofillId(), jArr);
            return;
        }
        if (i9 >= 29) {
            ViewStructure viewStructureNewViewStructure = ContentCaptureSessionCompat$Api29Impl.newViewStructure(n.m(this.mWrappedObj), this.mView);
            ContentCaptureSessionCompat$Api23Impl.getExtras(viewStructureNewViewStructure).putBoolean(KEY_VIEW_TREE_APPEARING, true);
            ContentCaptureSessionCompat$Api29Impl.notifyViewAppeared(n.m(this.mWrappedObj), viewStructureNewViewStructure);
            ContentCaptureSession contentCaptureSessionM2 = n.m(this.mWrappedObj);
            AutofillIdCompat autofillId2 = ViewCompat.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId2);
            ContentCaptureSessionCompat$Api29Impl.notifyViewsDisappeared(contentCaptureSessionM2, autofillId2.toAutofillId(), jArr);
            ViewStructure viewStructureNewViewStructure2 = ContentCaptureSessionCompat$Api29Impl.newViewStructure(n.m(this.mWrappedObj), this.mView);
            ContentCaptureSessionCompat$Api23Impl.getExtras(viewStructureNewViewStructure2).putBoolean(KEY_VIEW_TREE_APPEARED, true);
            ContentCaptureSessionCompat$Api29Impl.notifyViewAppeared(n.m(this.mWrappedObj), viewStructureNewViewStructure2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
    public ContentCaptureSession toContentCaptureSession() {
        return n.m(this.mWrappedObj);
    }
}
