package androidx.constraintlayout.core.parser;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CLArray extends CLContainer {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CLArray(char[] cArr) {
        super(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CLElement allocate(char[] cArr) {
        return new CLArray(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i9, int i10) {
        StringBuilder sb = new StringBuilder();
        String json = toJSON();
        if (i10 > 0 || json.length() + i9 >= CLElement.sMaxLine) {
            sb.append("[\n");
            ArrayList<CLElement> arrayList = this.mElements;
            int size = arrayList.size();
            int i11 = 0;
            boolean z8 = true;
            while (i11 < size) {
                CLElement cLElement = arrayList.get(i11);
                i11++;
                CLElement cLElement2 = cLElement;
                if (z8) {
                    z8 = false;
                } else {
                    sb.append(",\n");
                }
                addIndent(sb, CLElement.sBaseIndent + i9);
                sb.append(cLElement2.toFormattedJSON(CLElement.sBaseIndent + i9, i10 - 1));
            }
            sb.append("\n");
            addIndent(sb, i9);
            sb.append("]");
        } else {
            sb.append(json);
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb = new StringBuilder(getDebugName() + "[");
        boolean z8 = true;
        for (int i9 = 0; i9 < this.mElements.size(); i9++) {
            if (z8) {
                z8 = false;
            } else {
                sb.append(", ");
            }
            sb.append(this.mElements.get(i9).toJSON());
        }
        return ((Object) sb) + "]";
    }
}
