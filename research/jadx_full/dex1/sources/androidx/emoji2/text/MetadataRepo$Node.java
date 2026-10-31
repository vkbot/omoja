package androidx.emoji2.text;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class MetadataRepo$Node {
    private final SparseArray<MetadataRepo$Node> mChildren;
    private TypefaceEmojiRasterizer mData;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MetadataRepo$Node(int i9) {
        this.mChildren = new SparseArray<>(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MetadataRepo$Node get(int i9) {
        SparseArray<MetadataRepo$Node> sparseArray = this.mChildren;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TypefaceEmojiRasterizer getData() {
        return this.mData;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void put(@NonNull TypefaceEmojiRasterizer typefaceEmojiRasterizer, int i9, int i10) {
        MetadataRepo$Node metadataRepo$Node = get(typefaceEmojiRasterizer.getCodepointAt(i9));
        if (metadataRepo$Node == null) {
            metadataRepo$Node = new MetadataRepo$Node();
            this.mChildren.put(typefaceEmojiRasterizer.getCodepointAt(i9), metadataRepo$Node);
        }
        if (i10 > i9) {
            metadataRepo$Node.put(typefaceEmojiRasterizer, i9 + 1, i10);
        } else {
            metadataRepo$Node.mData = typefaceEmojiRasterizer;
        }
    }

    private MetadataRepo$Node() {
        this(1);
    }
}
