package androidx.core.app;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j1.i;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class RemoteInput$Builder {
    private CharSequence[] mChoices;
    private CharSequence mLabel;
    private final String mResultKey;
    private final Set<String> mAllowedDataTypes = new HashSet();
    private final Bundle mExtras = new Bundle();
    private boolean mAllowFreeFormTextInput = true;
    private int mEditChoicesBeforeSending = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RemoteInput$Builder(@NonNull String str) {
        if (str != null) {
            this.mResultKey = str;
        } else {
            i.k("Result key can't be null");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RemoteInput$Builder addExtras(@NonNull Bundle bundle) {
        if (bundle != null) {
            this.mExtras.putAll(bundle);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RemoteInput build() {
        return new RemoteInput(this.mResultKey, this.mLabel, this.mChoices, this.mAllowFreeFormTextInput, this.mEditChoicesBeforeSending, this.mExtras, this.mAllowedDataTypes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Bundle getExtras() {
        return this.mExtras;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RemoteInput$Builder setAllowDataType(@NonNull String str, boolean z8) {
        Set<String> set = this.mAllowedDataTypes;
        if (z8) {
            set.add(str);
            return this;
        }
        set.remove(str);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RemoteInput$Builder setAllowFreeFormInput(boolean z8) {
        this.mAllowFreeFormTextInput = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RemoteInput$Builder setChoices(@Nullable CharSequence[] charSequenceArr) {
        this.mChoices = charSequenceArr;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RemoteInput$Builder setEditChoicesBeforeSending(int i9) {
        this.mEditChoicesBeforeSending = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RemoteInput$Builder setLabel(@Nullable CharSequence charSequence) {
        this.mLabel = charSequence;
        return this;
    }
}
