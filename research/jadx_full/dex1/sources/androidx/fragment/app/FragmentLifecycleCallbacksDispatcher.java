package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class FragmentLifecycleCallbacksDispatcher {

    @NonNull
    private final FragmentManager mFragmentManager;

    @NonNull
    private final CopyOnWriteArrayList<FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder> mLifecycleCallbacks = new CopyOnWriteArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentLifecycleCallbacksDispatcher(@NonNull FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentActivityCreated(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentActivityCreated(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentActivityCreated(this.mFragmentManager, fragment, bundle);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentAttached(@NonNull Fragment fragment, boolean z8) {
        Context context = this.mFragmentManager.getHost().getContext();
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentAttached(fragment, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentAttached(this.mFragmentManager, fragment, context);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentCreated(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentCreated(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentCreated(this.mFragmentManager, fragment, bundle);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentDestroyed(@NonNull Fragment fragment, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentDestroyed(fragment, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentDestroyed(this.mFragmentManager, fragment);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentDetached(@NonNull Fragment fragment, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentDetached(fragment, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentDetached(this.mFragmentManager, fragment);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentPaused(@NonNull Fragment fragment, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentPaused(fragment, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentPaused(this.mFragmentManager, fragment);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentPreAttached(@NonNull Fragment fragment, boolean z8) {
        Context context = this.mFragmentManager.getHost().getContext();
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentPreAttached(fragment, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentPreAttached(this.mFragmentManager, fragment, context);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentPreCreated(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentPreCreated(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentPreCreated(this.mFragmentManager, fragment, bundle);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentResumed(@NonNull Fragment fragment, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentResumed(fragment, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentResumed(this.mFragmentManager, fragment);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentSaveInstanceState(@NonNull Fragment fragment, @NonNull Bundle bundle, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentSaveInstanceState(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentSaveInstanceState(this.mFragmentManager, fragment, bundle);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentStarted(@NonNull Fragment fragment, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentStarted(fragment, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentStarted(this.mFragmentManager, fragment);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentStopped(@NonNull Fragment fragment, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentStopped(fragment, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentStopped(this.mFragmentManager, fragment);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentViewCreated(@NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentViewCreated(fragment, view, bundle, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentViewCreated(this.mFragmentManager, fragment, view, bundle);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnFragmentViewDestroyed(@NonNull Fragment fragment, boolean z8) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentViewDestroyed(fragment, true);
        }
        for (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z8 || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.mCallback.onFragmentViewDestroyed(this.mFragmentManager, fragment);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerFragmentLifecycleCallbacks(@NonNull FragmentManager$FragmentLifecycleCallbacks fragmentManager$FragmentLifecycleCallbacks, boolean z8) {
        this.mLifecycleCallbacks.add(new FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder(fragmentManager$FragmentLifecycleCallbacks, z8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregisterFragmentLifecycleCallbacks(@NonNull FragmentManager$FragmentLifecycleCallbacks fragmentManager$FragmentLifecycleCallbacks) {
        synchronized (this.mLifecycleCallbacks) {
            try {
                int size = this.mLifecycleCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    if (this.mLifecycleCallbacks.get(i9).mCallback == fragmentManager$FragmentLifecycleCallbacks) {
                        this.mLifecycleCallbacks.remove(i9);
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
