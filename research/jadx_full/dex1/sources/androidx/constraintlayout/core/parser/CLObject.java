package androidx.constraintlayout.core.parser;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CLObject extends CLContainer implements Iterable<CLKey> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CLObject(char[] cArr) {
        super(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CLObject allocate(char[] cArr) {
        return new CLObject(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    @NonNull
    public CLObject clone() {
        return (CLObject) super.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Iterable
    public Iterator<CLKey> iterator() {
        return new CLObject$CLObjectIterator(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i9, int i10) {
        StringBuilder sb = new StringBuilder(getDebugName());
        sb.append("{\n");
        ArrayList<CLElement> arrayList = this.mElements;
        int size = arrayList.size();
        boolean z8 = true;
        int i11 = 0;
        while (i11 < size) {
            CLElement cLElement = arrayList.get(i11);
            i11++;
            CLElement cLElement2 = cLElement;
            if (z8) {
                z8 = false;
            } else {
                sb.append(",\n");
            }
            sb.append(cLElement2.toFormattedJSON(CLElement.sBaseIndent + i9, i10 - 1));
        }
        sb.append("\n");
        addIndent(sb, i9);
        sb.append("}");
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb = new StringBuilder(getDebugName() + "{ ");
        ArrayList<CLElement> arrayList = this.mElements;
        int size = arrayList.size();
        boolean z8 = true;
        int i9 = 0;
        while (i9 < size) {
            CLElement cLElement = arrayList.get(i9);
            i9++;
            CLElement cLElement2 = cLElement;
            if (z8) {
                z8 = false;
            } else {
                sb.append(", ");
            }
            sb.append(cLElement2.toJSON());
        }
        sb.append(" }");
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    @NonNull
    public /* bridge */ /* synthetic */ CLElement clone() {
        return clone();
    }

    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    @NonNull
    /* JADX INFO: renamed from: clone */
    public /* bridge */ /* synthetic */ Object mo28clone() {
        return clone();
    }

    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    @NonNull
    public /* bridge */ /* synthetic */ CLContainer clone() {
        return clone();
    }

    public String toFormattedJSON() {
        return toFormattedJSON(0, 0);
    }
}
