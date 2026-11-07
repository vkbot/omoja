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
public class MegaServicePolicyManager {
    private static final IMegaServicePolicyFactory MEGA_SERVICE_POLICY_FACTORY;
    private static final String MEGA_SERVICE_REMOTE_CLASS = "com.mega.service.MegaServicePolicyFactory";

    static {
        try {
            MEGA_SERVICE_POLICY_FACTORY = (IMegaServicePolicyFactory) Class.forName(MEGA_SERVICE_REMOTE_CLASS).newInstance();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("com.mega.service.MegaServicePolicyFactory could not be loaded", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("com.mega.service.MegaServicePolicyFactory could not be instantiated", e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException("com.mega.service.MegaServicePolicyFactory could not be instantiated", e3);
        }
    }

    private MegaServicePolicyManager() {
    }

    public static PhoneWindowManager makeNewPhoneWindowManager() {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewPhoneWindowManager();
    }

    public static ActivityTaskManagerService makeNewActivityManagerService(Context context) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewActivityManagerService(context);
    }

    public static IBinder getMegaActivityManagerInjector() {
        return MEGA_SERVICE_POLICY_FACTORY.getMegaActivityManagerInjector();
    }

    public static Object makeNewAppErrors(Context context, ActivityManagerService service) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewAppErrors(context, service);
    }

    public static Object makeNewActivityStarter(ActivityManagerService service, ActivityStackSupervisor supervisor) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewActivityStarter(service, supervisor);
    }

    public static ActivityStackSupervisor makeNewActivityStackSupervisor(ActivityManagerService service, Looper looper) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewActivityStackSupervisor(service, looper);
    }

    public static WindowManagerService makeNewWindowManagerService(Context context, InputManagerService inputManager, boolean showBootMsgs, boolean onlyCore, WindowManagerPolicy policy, ActivityTaskManagerService atm) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewWindowManagerService(context, inputManager, showBootMsgs, onlyCore, policy, atm);
    }

    public static IBinder getMegaWindowManagerInjector() {
        return MEGA_SERVICE_POLICY_FACTORY.getMegaWindowManagerInjector();
    }

    public static Object makeNewWindowStateAnimater(Object win) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewWindowStateAnimater(win);
    }

    public static Object makeNewRootWindowContainer(WindowManagerService service) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewRootWindowContainer(service);
    }

    public static Object makeNewDisplayContent(Display display, WindowManagerService service, Object controller, Object wallpaperContrller) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewDisplayContent(display, service, controller, wallpaperContrller);
    }

    public static TaskTapPointerEventListener makeNewTaskTapPointerEventListener(WindowManagerService service, Object displayContent) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewTaskTapPointerEventListener(service, displayContent);
    }

    public static PackageManagerService makeNewPackageManagerService(Context context, Installer installer, boolean factoryTest, boolean onlyCore) {
        return MEGA_SERVICE_POLICY_FACTORY.makeNewPackageManagerService(context, installer, factoryTest, onlyCore);
    }

    public static PhoneWindowManager getPhoneWindowManager() {
        return MEGA_SERVICE_POLICY_FACTORY.getPhoneWindowManager();
    }
}
