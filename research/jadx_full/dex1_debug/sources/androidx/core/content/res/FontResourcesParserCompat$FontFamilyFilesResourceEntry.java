package androidx.core.content.res;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FontResourcesParserCompat$FontFamilyFilesResourceEntry implements FontResourcesParserCompat$FamilyResourceEntry {

    @NonNull
    private final FontResourcesParserCompat$FontFileResourceEntry[] mEntries;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FontResourcesParserCompat$FontFamilyFilesResourceEntry(@NonNull FontResourcesParserCompat$FontFileResourceEntry[] fontResourcesParserCompat$FontFileResourceEntryArr) {
        this.mEntries = fontResourcesParserCompat$FontFileResourceEntryArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FontResourcesParserCompat$FontFileResourceEntry[] getEntries() {
        return this.mEntries;
    }
}
