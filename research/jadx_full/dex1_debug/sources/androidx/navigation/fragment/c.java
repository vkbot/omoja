package androidx.navigation.fragment;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.navigation.NavigatorState;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements FragmentOnAttachListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NavigatorState f205b;
    public final /* synthetic */ FragmentNavigator c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(NavigatorState navigatorState, FragmentNavigator fragmentNavigator) {
        this.f205b = navigatorState;
        this.c = fragmentNavigator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentOnAttachListener
    public final void onAttachFragment(FragmentManager fragmentManager, Fragment fragment) {
        FragmentNavigator.a(this.f205b, this.c, fragmentManager, fragment);
    }
}
