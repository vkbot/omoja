package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLString;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSetParser$LayoutVariables {
    HashMap<String, Integer> mMargins = new HashMap<>();
    HashMap<String, ConstraintSetParser$GeneratedValue> mGenerators = new HashMap<>();
    HashMap<String, ArrayList<String>> mArrayIds = new HashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float get(Object obj) {
        if (!(obj instanceof CLString)) {
            if (obj instanceof CLNumber) {
                return ((CLNumber) obj).getFloat();
            }
            return 0.0f;
        }
        String strContent = ((CLString) obj).content();
        if (this.mGenerators.containsKey(strContent)) {
            return this.mGenerators.get(strContent).value();
        }
        if (this.mMargins.containsKey(strContent)) {
            return this.mMargins.get(strContent).floatValue();
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList<String> getList(String str) {
        if (this.mArrayIds.containsKey(str)) {
            return this.mArrayIds.get(str);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void put(String str, float f8, float f9, float f10, String str2, String str3) {
        if (this.mGenerators.containsKey(str) && (this.mGenerators.get(str) instanceof ConstraintSetParser$OverrideValue)) {
            return;
        }
        ConstraintSetParser$FiniteGenerator constraintSetParser$FiniteGenerator = new ConstraintSetParser$FiniteGenerator(f8, f9, f10, str2, str3);
        this.mGenerators.put(str, constraintSetParser$FiniteGenerator);
        this.mArrayIds.put(str, constraintSetParser$FiniteGenerator.array());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void putOverride(String str, float f8) {
        this.mGenerators.put(str, new ConstraintSetParser$OverrideValue(f8));
    }

    public void put(String str, float f8, float f9) {
        if (this.mGenerators.containsKey(str) && (this.mGenerators.get(str) instanceof ConstraintSetParser$OverrideValue)) {
            return;
        }
        this.mGenerators.put(str, new ConstraintSetParser$Generator(f8, f9));
    }

    public void put(String str, int i9) {
        this.mMargins.put(str, Integer.valueOf(i9));
    }

    public void put(String str, ArrayList<String> arrayList) {
        this.mArrayIds.put(str, arrayList);
    }
}
