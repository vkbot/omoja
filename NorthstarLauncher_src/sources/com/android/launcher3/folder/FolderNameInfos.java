package com.android.launcher3.folder;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class FolderNameInfos {
    public static final int ERROR_ALL_APP_LOOKUP_FAILED = 32;
    public static final int ERROR_ALL_LABEL_LOOKUP_FAILED = 256;
    public static final int ERROR_APP_LOOKUP_FAILED = 16;
    public static final int ERROR_LABEL_LOOKUP_FAILED = 128;
    public static final int ERROR_NO_LABELS_GENERATED = 64;
    public static final int ERROR_NO_PACKAGES = 512;
    public static final int ERROR_NO_PROVIDER = 8;
    public static final int HAS_PRIMARY = 2;
    public static final int HAS_SUGGESTIONS = 4;
    public static final int SUCCESS = 1;
    private int mStatus = 0;
    private final CharSequence[] mLabels = new CharSequence[4];
    private final Float[] mScores = new Float[4];

    public CharSequence[] getLabels() {
        return this.mLabels;
    }

    public Float[] getScores() {
        return this.mScores;
    }

    public void setStatus(int statusBit) {
        this.mStatus = statusBit | this.mStatus;
    }

    public int status() {
        return this.mStatus;
    }

    public boolean hasPrimary() {
        return (this.mStatus & 2) > 0 && this.mLabels[0] != null;
    }

    public boolean hasSuggestions() {
        for (CharSequence charSequence : this.mLabels) {
            if (charSequence != null && !TextUtils.isEmpty(charSequence)) {
                return true;
            }
        }
        return false;
    }

    public void setLabel(int index, CharSequence label, Float score) {
        CharSequence[] charSequenceArr = this.mLabels;
        if (index < charSequenceArr.length) {
            charSequenceArr[index] = label;
            this.mScores[index] = score;
        }
    }

    public boolean contains(final CharSequence label) {
        return Arrays.stream(this.mLabels).filter(new Predicate() { // from class: com.android.launcher3.folder.FolderNameInfos$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((CharSequence) obj);
            }
        }).anyMatch(new Predicate() { // from class: com.android.launcher3.folder.FolderNameInfos$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CharSequence) obj).toString().equalsIgnoreCase(label.toString());
            }
        });
    }

    public String toString() {
        return String.format("status=%s, labels=%s", Integer.toBinaryString(this.mStatus), Arrays.toString(this.mLabels));
    }
}
