package androidx.transition;

import ai.onnxruntime.AbstractC0074a;
import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();
    final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    public TransitionValues(@NonNull View view) {
        this.view = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TransitionValues)) {
            return false;
        }
        TransitionValues transitionValues = (TransitionValues) obj;
        return this.view == transitionValues.view && this.values.equals(transitionValues.values);
    }

    public int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    @NonNull
    public String toString() {
        StringBuilder sbM172w = AbstractC0074a.m172w("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        sbM172w.append(this.view);
        sbM172w.append("\n");
        String strConcat = sbM172w.toString().concat("    values:");
        for (String str : this.values.keySet()) {
            strConcat = strConcat + "    " + str + ": " + this.values.get(str) + "\n";
        }
        return strConcat;
    }

    @Deprecated
    public TransitionValues() {
    }
}
