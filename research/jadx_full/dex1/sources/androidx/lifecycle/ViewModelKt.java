package androidx.lifecycle;

import a9.q;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import c9.d;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext$Element$DefaultImpls;
import v8.h0;
import v8.o1;
import v8.x;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0014\u0010\u0001\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0015\u0010\u0007\u001a\u00020\u0004*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"", "JOB_KEY", "Ljava/lang/String;", "Landroidx/lifecycle/ViewModel;", "Lv8/x;", "getViewModelScope", "(Landroidx/lifecycle/ViewModel;)Lv8/x;", "viewModelScope", "lifecycle-viewmodel-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ViewModelKt {
    private static final String JOB_KEY = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final x getViewModelScope(ViewModel viewModel) {
        viewModel.getClass();
        x xVar = (x) viewModel.getTag(JOB_KEY);
        if (xVar != null) {
            return xVar;
        }
        o1 o1Var = new o1();
        d dVar = h0.a;
        Object tagIfAbsent = viewModel.setTagIfAbsent(JOB_KEY, new CloseableCoroutineScope(CoroutineContext$Element$DefaultImpls.plus(o1Var, q.a.d)));
        tagIfAbsent.getClass();
        return (x) tagIfAbsent;
    }
}
