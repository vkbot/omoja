package com.android.server.wm;

import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.SurfaceControl;
import android.window.IDisplayAreaOrganizer;
import android.window.IDisplayAreaOrganizerController;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayAreaOrganizerController extends IDisplayAreaOrganizerController.Stub {
    private static final String TAG = "DisplayAreaOrganizerController";
    private final WindowManagerGlobalLock mGlobalLock;
    private final HashMap<Integer, IDisplayAreaOrganizer> mOrganizersByFeatureIds = new HashMap<>();
    final ActivityTaskManagerService mService;

    /* JADX INFO: Access modifiers changed from: private */
    class DeathRecipient implements IBinder.DeathRecipient {
        int mFeature;
        IDisplayAreaOrganizer mOrganizer;

        DeathRecipient(IDisplayAreaOrganizer organizer, int feature) {
            this.mOrganizer = organizer;
            this.mFeature = feature;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (DisplayAreaOrganizerController.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayAreaOrganizerController.this.mOrganizersByFeatureIds.remove(Integer.valueOf(this.mFeature));
                    DisplayAreaOrganizerController.this.mService.mRootWindowContainer.forAllDisplayAreas(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayAreaOrganizerController$DeathRecipient$FujCJdznizIJlEYYGuBL_SwOexc
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            this.f$0.lambda$binderDied$0$DisplayAreaOrganizerController$DeathRecipient((DisplayArea) obj);
                        }
                    });
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public /* synthetic */ void lambda$binderDied$0$DisplayAreaOrganizerController$DeathRecipient(DisplayArea da) {
            if (da.mOrganizer != this.mOrganizer) {
                return;
            }
            da.setOrganizer(null);
        }
    }

    DisplayAreaOrganizerController(ActivityTaskManagerService atm) {
        this.mService = atm;
        this.mGlobalLock = atm.mGlobalLock;
    }

    private void enforceStackPermission(String func) {
        this.mService.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", func);
    }

    public void registerOrganizer(final IDisplayAreaOrganizer organizer, final int feature) {
        enforceStackPermission("registerOrganizer()");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (this.mOrganizersByFeatureIds.get(Integer.valueOf(feature)) != null) {
                        throw new IllegalStateException("Replacing existing organizer currently unsupported");
                    }
                    DeathRecipient dr = new DeathRecipient(organizer, feature);
                    try {
                        organizer.asBinder().linkToDeath(dr, 0);
                    } catch (RemoteException e) {
                    }
                    this.mService.mRootWindowContainer.forAllDisplayAreas(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            DisplayAreaOrganizerController.lambda$registerOrganizer$0(feature, organizer, (DisplayArea) obj);
                        }
                    });
                    this.mOrganizersByFeatureIds.put(Integer.valueOf(feature), organizer);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    static /* synthetic */ void lambda$registerOrganizer$0(int feature, IDisplayAreaOrganizer organizer, DisplayArea da) {
        if (da.mFeatureId != feature) {
            return;
        }
        da.setOrganizer(organizer);
    }

    public void unregisterOrganizer(final IDisplayAreaOrganizer organizer) {
        enforceStackPermission("unregisterTaskOrganizer()");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    this.mOrganizersByFeatureIds.entrySet().removeIf(new Predicate() { // from class: com.android.server.wm.-$$Lambda$DisplayAreaOrganizerController$nRbzpv86yu_hPtn9WaGp64X2Pt0
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return DisplayAreaOrganizerController.lambda$unregisterOrganizer$1(organizer, (Map.Entry) obj);
                        }
                    });
                    this.mService.mRootWindowContainer.forAllDisplayAreas(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayAreaOrganizerController$PjbOQsmTo9SsqYA5W_I1Ng23PYc
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            DisplayAreaOrganizerController.lambda$unregisterOrganizer$2(organizer, (DisplayArea) obj);
                        }
                    });
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    static /* synthetic */ boolean lambda$unregisterOrganizer$1(IDisplayAreaOrganizer organizer, Map.Entry entry) {
        return ((IDisplayAreaOrganizer) entry.getValue()).asBinder() == organizer.asBinder();
    }

    static /* synthetic */ void lambda$unregisterOrganizer$2(IDisplayAreaOrganizer organizer, DisplayArea da) {
        if (da.mOrganizer != organizer) {
            return;
        }
        da.setOrganizer(null);
    }

    void onDisplayAreaAppeared(IDisplayAreaOrganizer organizer, DisplayArea da) {
        try {
            SurfaceControl outSurfaceControl = new SurfaceControl(da.getSurfaceControl(), "DisplayAreaOrganizerController.onDisplayAreaAppeared");
            organizer.onDisplayAreaAppeared(da.getDisplayAreaInfo(), outSurfaceControl);
        } catch (RemoteException e) {
        }
    }

    void onDisplayAreaVanished(IDisplayAreaOrganizer organizer, DisplayArea da) {
        try {
            organizer.onDisplayAreaVanished(da.getDisplayAreaInfo());
        } catch (RemoteException e) {
        }
    }

    void onDisplayAreaInfoChanged(IDisplayAreaOrganizer organizer, DisplayArea da) {
        try {
            organizer.onDisplayAreaInfoChanged(da.getDisplayAreaInfo());
        } catch (RemoteException e) {
        }
    }
}
