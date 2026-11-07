package com.android.server.mega;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.view.Display;
import com.android.server.am.ActivityManagerService;
import com.android.server.input.InputManagerService;
import com.android.server.pm.Installer;
import com.android.server.pm.PackageManagerService;
import com.android.server.policy.PhoneWindowManager;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.wm.ActivityStackSupervisor;
import com.android.server.wm.ActivityTaskManagerService;
import com.android.server.wm.TaskTapPointerEventListener;
import com.android.server.wm.WindowManagerService;

/* JADX INFO: loaded from: classes.dex */
public interface IMegaServicePolicyFactory {
    IBinder getMegaActivityManagerInjector();

    IBinder getMegaWindowManagerInjector();

    PhoneWindowManager getPhoneWindowManager();

    ActivityTaskManagerService makeNewActivityManagerService(Context context);

    ActivityStackSupervisor makeNewActivityStackSupervisor(ActivityManagerService activityManagerService, Looper looper);

    Object makeNewActivityStarter(ActivityManagerService activityManagerService, ActivityStackSupervisor activityStackSupervisor);

    Object makeNewAppErrors(Context context, ActivityManagerService activityManagerService);

    Object makeNewDisplayContent(Display display, WindowManagerService windowManagerService, Object obj, Object obj2);

    PackageManagerService makeNewPackageManagerService(Context context, Installer installer, boolean z, boolean z2);

    PhoneWindowManager makeNewPhoneWindowManager();

    Object makeNewRootWindowContainer(WindowManagerService windowManagerService);

    TaskTapPointerEventListener makeNewTaskTapPointerEventListener(WindowManagerService windowManagerService, Object obj);

    WindowManagerService makeNewWindowManagerService(Context context, InputManagerService inputManagerService, boolean z, boolean z2, WindowManagerPolicy windowManagerPolicy, ActivityTaskManagerService activityTaskManagerService);

    Object makeNewWindowStateAnimater(Object obj);
}
