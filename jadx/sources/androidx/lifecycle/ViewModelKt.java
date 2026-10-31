package androidx.lifecycle;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import p010a9.AbstractC0055q;
import p034c9.C1018d;
import p224v8.AbstractC3387h0;
import p224v8.C3409o1;
import p224v8.InterfaceC3434x;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0014\u0010\u0001\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0015\u0010\u0007\u001a\u00020\u0004*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, m3159d2 = {"", "JOB_KEY", "Ljava/lang/String;", "Landroidx/lifecycle/ViewModel;", "Lv8/x;", "getViewModelScope", "(Landroidx/lifecycle/ViewModel;)Lv8/x;", "viewModelScope", "lifecycle-viewmodel-ktx_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ViewModelKt {
    private static final String JOB_KEY = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY";

    public static final InterfaceC3434x getViewModelScope(ViewModel viewModel) {
        viewModel.getClass();
        InterfaceC3434x interfaceC3434x = (InterfaceC3434x) viewModel.getTag(JOB_KEY);
        if (interfaceC3434x != null) {
            return interfaceC3434x;
        }
        C3409o1 c3409o1 = new C3409o1();
        C1018d c1018d = AbstractC3387h0.f9879a;
        Object tagIfAbsent = viewModel.setTagIfAbsent(JOB_KEY, new CloseableCoroutineScope(CoroutineContext.Element.DefaultImpls.plus(c3409o1, AbstractC0055q.f145a.f10512d)));
        tagIfAbsent.getClass();
        return (InterfaceC3434x) tagIfAbsent;
    }
}
