package androidx.appcompat.widget;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class DropDownListView$Api30Impl {
    private static boolean sHasMethods;
    private static Method sPositionSelector;
    private static Method sSetNextSelectedPositionInt;
    private static Method sSetSelectedPositionInt;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            Class cls = Integer.TYPE;
            Class cls2 = Boolean.TYPE;
            Class cls3 = Float.TYPE;
            Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, cls2, cls3, cls3);
            sPositionSelector = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
            sSetSelectedPositionInt = declaredMethod2;
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
            sSetNextSelectedPositionInt = declaredMethod3;
            declaredMethod3.setAccessible(true);
            sHasMethods = true;
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DropDownListView$Api30Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean canPositionSelectorForHoveredItem() {
        return sHasMethods;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void positionSelectorForHoveredItem(DropDownListView dropDownListView, int i9, View view) {
        try {
            sPositionSelector.invoke(dropDownListView, Integer.valueOf(i9), view, Boolean.FALSE, -1, -1);
            sSetSelectedPositionInt.invoke(dropDownListView, Integer.valueOf(i9));
            sSetNextSelectedPositionInt.invoke(dropDownListView, Integer.valueOf(i9));
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
        }
    }
}
