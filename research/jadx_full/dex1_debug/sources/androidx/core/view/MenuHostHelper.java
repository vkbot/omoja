package androidx.core.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MenuHostHelper {
    private final Runnable mOnInvalidateMenuCallback;
    private final CopyOnWriteArrayList<MenuProvider> mMenuProviders = new CopyOnWriteArrayList<>();
    private final Map<MenuProvider, MenuHostHelper$LifecycleContainer> mProviderToLifecycleContainers = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MenuHostHelper(@NonNull Runnable runnable) {
        this.mOnInvalidateMenuCallback = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(MenuHostHelper menuHostHelper, Lifecycle$State lifecycle$State, MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        menuHostHelper.lambda$addMenuProvider$1(lifecycle$State, menuProvider, lifecycleOwner, lifecycle$Event);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(MenuHostHelper menuHostHelper, MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        menuHostHelper.lambda$addMenuProvider$0(menuProvider, lifecycleOwner, lifecycle$Event);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$addMenuProvider$0(MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$addMenuProvider$1(Lifecycle$State lifecycle$State, MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.upTo(lifecycle$State)) {
            addMenuProvider(menuProvider);
            return;
        }
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        } else if (lifecycle$Event == Lifecycle$Event.downFrom(lifecycle$State)) {
            this.mMenuProviders.remove(menuProvider);
            this.mOnInvalidateMenuCallback.run();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner) {
        addMenuProvider(menuProvider);
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        MenuHostHelper$LifecycleContainer menuHostHelper$LifecycleContainerRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (menuHostHelper$LifecycleContainerRemove != null) {
            menuHostHelper$LifecycleContainerRemove.clearObservers();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new MenuHostHelper$LifecycleContainer(lifecycle, new f(this, menuProvider)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onCreateMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onCreateMenu(menu, menuInflater);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onMenuClosed(@NonNull Menu menu) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onMenuClosed(menu);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onMenuItemSelected(@NonNull MenuItem menuItem) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            if (it.next().onMenuItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onPrepareMenu(@NonNull Menu menu) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onPrepareMenu(menu);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeMenuProvider(@NonNull MenuProvider menuProvider) {
        this.mMenuProviders.remove(menuProvider);
        MenuHostHelper$LifecycleContainer menuHostHelper$LifecycleContainerRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (menuHostHelper$LifecycleContainerRemove != null) {
            menuHostHelper$LifecycleContainerRemove.clearObservers();
        }
        this.mOnInvalidateMenuCallback.run();
    }

    public void addMenuProvider(@NonNull MenuProvider menuProvider) {
        this.mMenuProviders.add(menuProvider);
        this.mOnInvalidateMenuCallback.run();
    }

    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle$State lifecycle$State) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        MenuHostHelper$LifecycleContainer menuHostHelper$LifecycleContainerRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (menuHostHelper$LifecycleContainerRemove != null) {
            menuHostHelper$LifecycleContainerRemove.clearObservers();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new MenuHostHelper$LifecycleContainer(lifecycle, new e(this, lifecycle$State, menuProvider)));
    }
}
