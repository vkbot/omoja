package androidx.profileinstaller;

import ai.onnxruntime.AbstractC0074a;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
enum FileSectionType {
    DEX_FILES(0),
    EXTRA_DESCRIPTORS(1),
    CLASSES(2),
    METHODS(3),
    AGGREGATION_COUNT(4);

    private final long mValue;

    FileSectionType(long j10) {
        this.mValue = j10;
    }

    public static FileSectionType fromValue(long j10) {
        FileSectionType[] fileSectionTypeArrValues = values();
        for (int i10 = 0; i10 < fileSectionTypeArrValues.length; i10++) {
            if (fileSectionTypeArrValues[i10].getValue() == j10) {
                return fileSectionTypeArrValues[i10];
            }
        }
        C1929i.m3029k(AbstractC0074a.m157h(j10, "Unsupported FileSection Type "));
        return null;
    }

    public long getValue() {
        return this.mValue;
    }
}
