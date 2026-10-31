package androidx.constraintlayout.core.motion.parse;

import androidx.constraintlayout.core.motion.utils.TypedValues$AttributesType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements KeyParser$Ids, KeyParser$DataType {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.parse.KeyParser$DataType
    public int get(int i9) {
        return TypedValues$AttributesType.getType(i9);
    }

    @Override // androidx.constraintlayout.core.motion.parse.KeyParser$Ids
    public int get(String str) {
        return TypedValues$AttributesType.getId(str);
    }
}
