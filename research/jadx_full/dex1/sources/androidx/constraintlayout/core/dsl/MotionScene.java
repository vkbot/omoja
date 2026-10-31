package androidx.constraintlayout.core.dsl;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionScene {
    ArrayList<Transition> mTransitions = new ArrayList<>();
    ArrayList<ConstraintSet> mConstraintSets = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addConstraintSet(ConstraintSet constraintSet) {
        this.mConstraintSets.add(constraintSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addTransition(Transition transition) {
        this.mTransitions.add(transition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("{\n");
        int i9 = 0;
        if (!this.mTransitions.isEmpty()) {
            sb.append("Transitions:{\n");
            ArrayList<Transition> arrayList = this.mTransitions;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Transition transition = arrayList.get(i10);
                i10++;
                sb.append(transition.toString());
            }
            sb.append("},\n");
        }
        if (!this.mConstraintSets.isEmpty()) {
            sb.append("ConstraintSets:{\n");
            ArrayList<ConstraintSet> arrayList2 = this.mConstraintSets;
            int size2 = arrayList2.size();
            while (i9 < size2) {
                ConstraintSet constraintSet = arrayList2.get(i9);
                i9++;
                sb.append(constraintSet.toString());
            }
            sb.append("},\n");
        }
        sb.append("}\n");
        return sb.toString();
    }
}
