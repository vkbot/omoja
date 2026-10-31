package androidx.profileinstaller;

import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
enum FileSectionType {
    DEX_FILES(0),
    EXTRA_DESCRIPTORS(1),
    CLASSES(2),
    METHODS(3),
    AGGREGATION_COUNT(4);

    private final long mValue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    FileSectionType(long j9) {
        this.mValue = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileSectionType fromValue(long j9) {
        FileSectionType[] fileSectionTypeArrValues = values();
        for (int i9 = 0; i9 < fileSectionTypeArrValues.length; i9++) {
            if (fileSectionTypeArrValues[i9].getValue() == j9) {
                return fileSectionTypeArrValues[i9];
            }
        }
        i.k(ai.onnxruntime.a.h(j9, "Unsupported FileSection Type "));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getValue() {
        return this.mValue;
    }
}
