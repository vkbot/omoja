package androidx.constraintlayout.core.parser;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.motion.utils.TypedValues$AttributesType;
import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CLKey extends CLContainer {
    private static ArrayList<String> sSections;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ArrayList<String> arrayList = new ArrayList<>();
        sSections = arrayList;
        arrayList.add("ConstraintSets");
        sSections.add("Variables");
        sSections.add("Generate");
        sSections.add(TypedValues$TransitionType.NAME);
        sSections.add("KeyFrames");
        sSections.add(TypedValues$AttributesType.NAME);
        sSections.add("KeyPositions");
        sSections.add("KeyCycles");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CLKey(char[] cArr) {
        super(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CLElement allocate(String str, CLElement cLElement) {
        CLKey cLKey = new CLKey(str.toCharArray());
        cLKey.setStart(0L);
        cLKey.setEnd(str.length() - 1);
        cLKey.set(cLElement);
        return cLKey;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CLKey) || Objects.equals(getName(), ((CLKey) obj).getName())) {
            return super.equals(obj);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName() {
        return content();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CLElement getValue() {
        if (this.mElements.size() > 0) {
            return this.mElements.get(0);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    public int hashCode() {
        return super.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void set(CLElement cLElement) {
        int size = this.mElements.size();
        ArrayList<CLElement> arrayList = this.mElements;
        if (size > 0) {
            arrayList.set(0, cLElement);
        } else {
            arrayList.add(cLElement);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i9, int i10) {
        StringBuilder sb = new StringBuilder(getDebugName());
        addIndent(sb, i9);
        String strContent = content();
        if (this.mElements.size() <= 0) {
            return a.C(strContent, ": <> ");
        }
        sb.append(strContent);
        sb.append(": ");
        if (sSections.contains(strContent)) {
            i10 = 3;
        }
        ArrayList<CLElement> arrayList = this.mElements;
        if (i10 > 0) {
            sb.append(arrayList.get(0).toFormattedJSON(i9, i10 - 1));
        } else {
            String json = arrayList.get(0).toJSON();
            if (json.length() + i9 < CLElement.sMaxLine) {
                sb.append(json);
            } else {
                sb.append(this.mElements.get(0).toFormattedJSON(i9, i10 - 1));
            }
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        if (this.mElements.size() <= 0) {
            return getDebugName() + content() + ": <> ";
        }
        return getDebugName() + content() + ": " + this.mElements.get(0).toJSON();
    }

    public static CLElement allocate(char[] cArr) {
        return new CLKey(cArr);
    }
}
