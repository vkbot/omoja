package com.mega.nexus;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.SurfaceControl;
import com.mega.nexus.app.IFlyingScreenStateListener;
import com.mega.nexus.app.IRunningTaskChangeListener;
import com.mega.nexus.app.ITopStackExchangeListener;
import com.mega.nexus.content.pm.UserInfo;
import com.mega.nexus.os.IScreenRequestListener;
import com.mega.nexus.os.IScreenStateChangeListener;
import com.mega.nexus.view.IUserActivityListener;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IMegaNexusManager extends IInterface {

    public static class Default implements IMegaNexusManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void backgroundWhitelistUid(int i) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public UserInfo createProfileForUser(String str, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public UserInfo createUser(String str, int i) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void disableFivePointerGesture(boolean z) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void disableFivePointerGestureByDisplay(boolean z, int i) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void disableSystemUIGesture(boolean z) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void disableSystemUIGestureByDisplay(boolean z, int i) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public boolean exchangeDisplayTopStack(int i, int i2) throws RemoteException {
            return false;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void forceStopPackage(String str, int i) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public ApplicationInfo getApplicationInfoAsUser(String str, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public List<String> getCurrentDuckFocusPackages(int i) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public List<String> getCurrentFocusPackages(int i) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public int getCurrentScreenControlUsage(int i) throws RemoteException {
            return 0;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public List<String> getDisplayAllTopResumedActivities(int i) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public String getDisplayTopResumedActivity(int i) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public boolean getGroupMute(int i) throws RemoteException {
            return false;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public List<PackageInfo> getInstalledPackagesAsUser(int i, int i2) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public String getOverlayPackageName(String str) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public PackageInfo getPackageInfoAsUser(String str, int i, int i2) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public int getScreenState(int i) throws RemoteException {
            return 0;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public SurfaceControl getSurfaceControlByTaskId(int i) throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public List<UserInfo> getUsers() throws RemoteException {
            return null;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public boolean isOneKeyMute() throws RemoteException {
            return false;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public boolean moveTopStackToDisplay(int i, int i2) throws RemoteException {
            return false;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void registerFlyingStateListener(IFlyingScreenStateListener iFlyingScreenStateListener) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void registerScreenStateChangeListener(IScreenStateChangeListener iScreenStateChangeListener) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void registerTaskChangeListener(IRunningTaskChangeListener iRunningTaskChangeListener) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void registerTopStackExchangeListener(ITopStackExchangeListener iTopStackExchangeListener) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void registerUserActivityListener(IUserActivityListener iUserActivityListener) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void releaseScreenOff(int i, int i2) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void releaseScreenOn(int i, int i2) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public boolean removeUser(int i) throws RemoteException {
            return false;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void requestScreenOff(int i, IScreenRequestListener iScreenRequestListener, int i2) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void requestScreenOn(int i, IScreenRequestListener iScreenRequestListener, int i2) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public boolean setFlyingScreenMode(int i) throws RemoteException {
            return false;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public int setGroupMute(int i, boolean z) throws RemoteException {
            return 0;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public int setOneKeyMute(boolean z) throws RemoteException {
            return 0;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public boolean setOverlayEnabled(String str, boolean z, int i) throws RemoteException {
            return false;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public boolean setOverlayEnabledExclusive(String str, boolean z, int i) throws RemoteException {
            return false;
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void setUserName(int i, String str) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void unRegisterFlyingStateListener(IFlyingScreenStateListener iFlyingScreenStateListener) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void unRegisterTaskChangeListener(IRunningTaskChangeListener iRunningTaskChangeListener) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void unRegisterTopStackExchangeListener(ITopStackExchangeListener iTopStackExchangeListener) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void unRegisterUserActivityListener(IUserActivityListener iUserActivityListener) throws RemoteException {
        }

        @Override // com.mega.nexus.IMegaNexusManager
        public void unregisterScreenStateChangeListener(IScreenStateChangeListener iScreenStateChangeListener) throws RemoteException {
        }
    }

    void backgroundWhitelistUid(int i) throws RemoteException;

    UserInfo createProfileForUser(String str, int i, int i2) throws RemoteException;

    UserInfo createUser(String str, int i) throws RemoteException;

    void disableFivePointerGesture(boolean z) throws RemoteException;

    void disableFivePointerGestureByDisplay(boolean z, int i) throws RemoteException;

    void disableSystemUIGesture(boolean z) throws RemoteException;

    void disableSystemUIGestureByDisplay(boolean z, int i) throws RemoteException;

    boolean exchangeDisplayTopStack(int i, int i2) throws RemoteException;

    void forceStopPackage(String str, int i) throws RemoteException;

    ApplicationInfo getApplicationInfoAsUser(String str, int i, int i2) throws RemoteException;

    List<String> getCurrentDuckFocusPackages(int i) throws RemoteException;

    List<String> getCurrentFocusPackages(int i) throws RemoteException;

    int getCurrentScreenControlUsage(int i) throws RemoteException;

    List<String> getDisplayAllTopResumedActivities(int i) throws RemoteException;

    String getDisplayTopResumedActivity(int i) throws RemoteException;

    boolean getGroupMute(int i) throws RemoteException;

    List<PackageInfo> getInstalledPackagesAsUser(int i, int i2) throws RemoteException;

    String getOverlayPackageName(String str) throws RemoteException;

    PackageInfo getPackageInfoAsUser(String str, int i, int i2) throws RemoteException;

    int getScreenState(int i) throws RemoteException;

    SurfaceControl getSurfaceControlByTaskId(int i) throws RemoteException;

    List<UserInfo> getUsers() throws RemoteException;

    boolean isOneKeyMute() throws RemoteException;

    boolean moveTopStackToDisplay(int i, int i2) throws RemoteException;

    void registerFlyingStateListener(IFlyingScreenStateListener iFlyingScreenStateListener) throws RemoteException;

    void registerScreenStateChangeListener(IScreenStateChangeListener iScreenStateChangeListener) throws RemoteException;

    void registerTaskChangeListener(IRunningTaskChangeListener iRunningTaskChangeListener) throws RemoteException;

    void registerTopStackExchangeListener(ITopStackExchangeListener iTopStackExchangeListener) throws RemoteException;

    void registerUserActivityListener(IUserActivityListener iUserActivityListener) throws RemoteException;

    void releaseScreenOff(int i, int i2) throws RemoteException;

    void releaseScreenOn(int i, int i2) throws RemoteException;

    boolean removeUser(int i) throws RemoteException;

    void requestScreenOff(int i, IScreenRequestListener iScreenRequestListener, int i2) throws RemoteException;

    void requestScreenOn(int i, IScreenRequestListener iScreenRequestListener, int i2) throws RemoteException;

    boolean setFlyingScreenMode(int i) throws RemoteException;

    int setGroupMute(int i, boolean z) throws RemoteException;

    int setOneKeyMute(boolean z) throws RemoteException;

    boolean setOverlayEnabled(String str, boolean z, int i) throws RemoteException;

    boolean setOverlayEnabledExclusive(String str, boolean z, int i) throws RemoteException;

    void setUserName(int i, String str) throws RemoteException;

    void unRegisterFlyingStateListener(IFlyingScreenStateListener iFlyingScreenStateListener) throws RemoteException;

    void unRegisterTaskChangeListener(IRunningTaskChangeListener iRunningTaskChangeListener) throws RemoteException;

    void unRegisterTopStackExchangeListener(ITopStackExchangeListener iTopStackExchangeListener) throws RemoteException;

    void unRegisterUserActivityListener(IUserActivityListener iUserActivityListener) throws RemoteException;

    void unregisterScreenStateChangeListener(IScreenStateChangeListener iScreenStateChangeListener) throws RemoteException;

    public static abstract class Stub extends Binder implements IMegaNexusManager {
        private static final String DESCRIPTOR = "com.mega.nexus.IMegaNexusManager";
        static final int TRANSACTION_backgroundWhitelistUid = 4;
        static final int TRANSACTION_createProfileForUser = 39;
        static final int TRANSACTION_createUser = 14;
        static final int TRANSACTION_disableFivePointerGesture = 48;
        static final int TRANSACTION_disableFivePointerGestureByDisplay = 59;
        static final int TRANSACTION_disableSystemUIGesture = 47;
        static final int TRANSACTION_disableSystemUIGestureByDisplay = 58;
        static final int TRANSACTION_exchangeDisplayTopStack = 51;
        static final int TRANSACTION_forceStopPackage = 3;
        static final int TRANSACTION_getApplicationInfoAsUser = 23;
        static final int TRANSACTION_getCurrentDuckFocusPackages = 37;
        static final int TRANSACTION_getCurrentFocusPackages = 32;
        static final int TRANSACTION_getCurrentScreenControlUsage = 60;
        static final int TRANSACTION_getDisplayAllTopResumedActivities = 64;
        static final int TRANSACTION_getDisplayTopResumedActivity = 30;
        static final int TRANSACTION_getGroupMute = 34;
        static final int TRANSACTION_getInstalledPackagesAsUser = 21;
        static final int TRANSACTION_getOverlayPackageName = 31;
        static final int TRANSACTION_getPackageInfoAsUser = 22;
        static final int TRANSACTION_getScreenState = 44;
        static final int TRANSACTION_getSurfaceControlByTaskId = 63;
        static final int TRANSACTION_getUsers = 18;
        static final int TRANSACTION_isOneKeyMute = 36;
        static final int TRANSACTION_moveTopStackToDisplay = 54;
        static final int TRANSACTION_registerFlyingStateListener = 49;
        static final int TRANSACTION_registerScreenStateChangeListener = 45;
        static final int TRANSACTION_registerTaskChangeListener = 61;
        static final int TRANSACTION_registerTopStackExchangeListener = 55;
        static final int TRANSACTION_registerUserActivityListener = 52;
        static final int TRANSACTION_releaseScreenOff = 43;
        static final int TRANSACTION_releaseScreenOn = 41;
        static final int TRANSACTION_removeUser = 15;
        static final int TRANSACTION_requestScreenOff = 42;
        static final int TRANSACTION_requestScreenOn = 40;
        static final int TRANSACTION_setFlyingScreenMode = 38;
        static final int TRANSACTION_setGroupMute = 33;
        static final int TRANSACTION_setOneKeyMute = 35;
        static final int TRANSACTION_setOverlayEnabled = 29;
        static final int TRANSACTION_setOverlayEnabledExclusive = 57;
        static final int TRANSACTION_setUserName = 16;
        static final int TRANSACTION_unRegisterFlyingStateListener = 50;
        static final int TRANSACTION_unRegisterTaskChangeListener = 62;
        static final int TRANSACTION_unRegisterTopStackExchangeListener = 56;
        static final int TRANSACTION_unRegisterUserActivityListener = 53;
        static final int TRANSACTION_unregisterScreenStateChangeListener = 46;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMegaNexusManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMegaNexusManager)) {
                return (IMegaNexusManager) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                forceStopPackage(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                backgroundWhitelistUid(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i == 18) {
                parcel.enforceInterface(DESCRIPTOR);
                List<UserInfo> users = getUsers();
                parcel2.writeNoException();
                parcel2.writeTypedList(users);
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    UserInfo userInfoCreateUser = createUser(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (userInfoCreateUser != null) {
                        parcel2.writeInt(1);
                        userInfoCreateUser.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveUser = removeUser(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveUser ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUserName(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    switch (i) {
                        case 21:
                            parcel.enforceInterface(DESCRIPTOR);
                            List<PackageInfo> installedPackagesAsUser = getInstalledPackagesAsUser(parcel.readInt(), parcel.readInt());
                            parcel2.writeNoException();
                            parcel2.writeTypedList(installedPackagesAsUser);
                            return true;
                        case 22:
                            parcel.enforceInterface(DESCRIPTOR);
                            PackageInfo packageInfoAsUser = getPackageInfoAsUser(parcel.readString(), parcel.readInt(), parcel.readInt());
                            parcel2.writeNoException();
                            if (packageInfoAsUser != null) {
                                parcel2.writeInt(1);
                                packageInfoAsUser.writeToParcel(parcel2, 1);
                            } else {
                                parcel2.writeInt(0);
                            }
                            return true;
                        case 23:
                            parcel.enforceInterface(DESCRIPTOR);
                            ApplicationInfo applicationInfoAsUser = getApplicationInfoAsUser(parcel.readString(), parcel.readInt(), parcel.readInt());
                            parcel2.writeNoException();
                            if (applicationInfoAsUser != null) {
                                parcel2.writeInt(1);
                                applicationInfoAsUser.writeToParcel(parcel2, 1);
                            } else {
                                parcel2.writeInt(0);
                            }
                            return true;
                        default:
                            switch (i) {
                                case 29:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    boolean overlayEnabled = setOverlayEnabled(parcel.readString(), parcel.readInt() != 0, parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeInt(overlayEnabled ? 1 : 0);
                                    return true;
                                case 30:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    String displayTopResumedActivity = getDisplayTopResumedActivity(parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeString(displayTopResumedActivity);
                                    return true;
                                case 31:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    String overlayPackageName = getOverlayPackageName(parcel.readString());
                                    parcel2.writeNoException();
                                    parcel2.writeString(overlayPackageName);
                                    return true;
                                case 32:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    List<String> currentFocusPackages = getCurrentFocusPackages(parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeStringList(currentFocusPackages);
                                    return true;
                                case 33:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    int groupMute = setGroupMute(parcel.readInt(), parcel.readInt() != 0);
                                    parcel2.writeNoException();
                                    parcel2.writeInt(groupMute);
                                    return true;
                                case 34:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    boolean groupMute2 = getGroupMute(parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeInt(groupMute2 ? 1 : 0);
                                    return true;
                                case 35:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    int oneKeyMute = setOneKeyMute(parcel.readInt() != 0);
                                    parcel2.writeNoException();
                                    parcel2.writeInt(oneKeyMute);
                                    return true;
                                case 36:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    boolean zIsOneKeyMute = isOneKeyMute();
                                    parcel2.writeNoException();
                                    parcel2.writeInt(zIsOneKeyMute ? 1 : 0);
                                    return true;
                                case 37:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    List<String> currentDuckFocusPackages = getCurrentDuckFocusPackages(parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeStringList(currentDuckFocusPackages);
                                    return true;
                                case 38:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    boolean flyingScreenMode = setFlyingScreenMode(parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeInt(flyingScreenMode ? 1 : 0);
                                    return true;
                                case 39:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    UserInfo userInfoCreateProfileForUser = createProfileForUser(parcel.readString(), parcel.readInt(), parcel.readInt());
                                    parcel2.writeNoException();
                                    if (userInfoCreateProfileForUser != null) {
                                        parcel2.writeInt(1);
                                        userInfoCreateProfileForUser.writeToParcel(parcel2, 1);
                                    } else {
                                        parcel2.writeInt(0);
                                    }
                                    return true;
                                case 40:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    requestScreenOn(parcel.readInt(), IScreenRequestListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                                    parcel2.writeNoException();
                                    return true;
                                case 41:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    releaseScreenOn(parcel.readInt(), parcel.readInt());
                                    parcel2.writeNoException();
                                    return true;
                                case 42:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    requestScreenOff(parcel.readInt(), IScreenRequestListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                                    parcel2.writeNoException();
                                    return true;
                                case 43:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    releaseScreenOff(parcel.readInt(), parcel.readInt());
                                    parcel2.writeNoException();
                                    return true;
                                case 44:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    int screenState = getScreenState(parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeInt(screenState);
                                    return true;
                                case 45:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    registerScreenStateChangeListener(IScreenStateChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 46:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    unregisterScreenStateChangeListener(IScreenStateChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 47:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    disableSystemUIGesture(parcel.readInt() != 0);
                                    parcel2.writeNoException();
                                    return true;
                                case 48:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    disableFivePointerGesture(parcel.readInt() != 0);
                                    parcel2.writeNoException();
                                    return true;
                                case 49:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    registerFlyingStateListener(IFlyingScreenStateListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 50:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    unRegisterFlyingStateListener(IFlyingScreenStateListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 51:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    boolean zExchangeDisplayTopStack = exchangeDisplayTopStack(parcel.readInt(), parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeInt(zExchangeDisplayTopStack ? 1 : 0);
                                    return true;
                                case 52:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    registerUserActivityListener(IUserActivityListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 53:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    unRegisterUserActivityListener(IUserActivityListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 54:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    boolean zMoveTopStackToDisplay = moveTopStackToDisplay(parcel.readInt(), parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeInt(zMoveTopStackToDisplay ? 1 : 0);
                                    return true;
                                case 55:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    registerTopStackExchangeListener(ITopStackExchangeListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 56:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    unRegisterTopStackExchangeListener(ITopStackExchangeListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 57:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    boolean overlayEnabledExclusive = setOverlayEnabledExclusive(parcel.readString(), parcel.readInt() != 0, parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeInt(overlayEnabledExclusive ? 1 : 0);
                                    return true;
                                case 58:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    disableSystemUIGestureByDisplay(parcel.readInt() != 0, parcel.readInt());
                                    parcel2.writeNoException();
                                    return true;
                                case 59:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    disableFivePointerGestureByDisplay(parcel.readInt() != 0, parcel.readInt());
                                    parcel2.writeNoException();
                                    return true;
                                case 60:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    int currentScreenControlUsage = getCurrentScreenControlUsage(parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeInt(currentScreenControlUsage);
                                    return true;
                                case 61:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    registerTaskChangeListener(IRunningTaskChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 62:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    unRegisterTaskChangeListener(IRunningTaskChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                                    parcel2.writeNoException();
                                    return true;
                                case 63:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    SurfaceControl surfaceControlByTaskId = getSurfaceControlByTaskId(parcel.readInt());
                                    parcel2.writeNoException();
                                    if (surfaceControlByTaskId != null) {
                                        parcel2.writeInt(1);
                                        surfaceControlByTaskId.writeToParcel(parcel2, 1);
                                    } else {
                                        parcel2.writeInt(0);
                                    }
                                    return true;
                                case 64:
                                    parcel.enforceInterface(DESCRIPTOR);
                                    List<String> displayAllTopResumedActivities = getDisplayAllTopResumedActivities(parcel.readInt());
                                    parcel2.writeNoException();
                                    parcel2.writeStringList(displayAllTopResumedActivities);
                                    return true;
                                default:
                                    return super.onTransact(i, parcel, parcel2, i2);
                            }
                    }
            }
        }

        private static class Proxy implements IMegaNexusManager {
            public static IMegaNexusManager sDefaultImpl;
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void forceStopPackage(String str, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().forceStopPackage(str, i);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void backgroundWhitelistUid(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().backgroundWhitelistUid(i);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public UserInfo createUser(String str, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createUser(str, i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? UserInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public boolean removeUser(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().removeUser(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void setUserName(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setUserName(i, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public List<UserInfo> getUsers() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUsers();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(UserInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public List<PackageInfo> getInstalledPackagesAsUser(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getInstalledPackagesAsUser(i, i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(PackageInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public PackageInfo getPackageInfoAsUser(String str, int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPackageInfoAsUser(str, i, i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (PackageInfo) PackageInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public ApplicationInfo getApplicationInfoAsUser(String str, int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getApplicationInfoAsUser(str, i, i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ApplicationInfo) ApplicationInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public boolean setOverlayEnabled(String str, boolean z, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setOverlayEnabled(str, z, i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public String getDisplayTopResumedActivity(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getDisplayTopResumedActivity(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public String getOverlayPackageName(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getOverlayPackageName(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public List<String> getCurrentFocusPackages(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentFocusPackages(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public int setGroupMute(int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setGroupMute(i, z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public boolean getGroupMute(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getGroupMute(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public int setOneKeyMute(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setOneKeyMute(z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public boolean isOneKeyMute() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isOneKeyMute();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public List<String> getCurrentDuckFocusPackages(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentDuckFocusPackages(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public boolean setFlyingScreenMode(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setFlyingScreenMode(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public UserInfo createProfileForUser(String str, int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createProfileForUser(str, i, i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? UserInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void requestScreenOn(int i, IScreenRequestListener iScreenRequestListener, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeStrongBinder(iScreenRequestListener != null ? iScreenRequestListener.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestScreenOn(i, iScreenRequestListener, i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void releaseScreenOn(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(41, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().releaseScreenOn(i, i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void requestScreenOff(int i, IScreenRequestListener iScreenRequestListener, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeStrongBinder(iScreenRequestListener != null ? iScreenRequestListener.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(42, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestScreenOff(i, iScreenRequestListener, i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void releaseScreenOff(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(43, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().releaseScreenOff(i, i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public int getScreenState(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(44, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getScreenState(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void registerScreenStateChangeListener(IScreenStateChangeListener iScreenStateChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iScreenStateChangeListener != null ? iScreenStateChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(45, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerScreenStateChangeListener(iScreenStateChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void unregisterScreenStateChangeListener(IScreenStateChangeListener iScreenStateChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iScreenStateChangeListener != null ? iScreenStateChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(46, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterScreenStateChangeListener(iScreenStateChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void disableSystemUIGesture(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(47, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().disableSystemUIGesture(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void disableFivePointerGesture(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(48, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().disableFivePointerGesture(z);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void registerFlyingStateListener(IFlyingScreenStateListener iFlyingScreenStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFlyingScreenStateListener != null ? iFlyingScreenStateListener.asBinder() : null);
                    if (!this.mRemote.transact(49, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerFlyingStateListener(iFlyingScreenStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void unRegisterFlyingStateListener(IFlyingScreenStateListener iFlyingScreenStateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iFlyingScreenStateListener != null ? iFlyingScreenStateListener.asBinder() : null);
                    if (!this.mRemote.transact(50, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unRegisterFlyingStateListener(iFlyingScreenStateListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public boolean exchangeDisplayTopStack(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(51, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().exchangeDisplayTopStack(i, i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void registerUserActivityListener(IUserActivityListener iUserActivityListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUserActivityListener != null ? iUserActivityListener.asBinder() : null);
                    if (!this.mRemote.transact(52, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerUserActivityListener(iUserActivityListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void unRegisterUserActivityListener(IUserActivityListener iUserActivityListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUserActivityListener != null ? iUserActivityListener.asBinder() : null);
                    if (!this.mRemote.transact(53, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unRegisterUserActivityListener(iUserActivityListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public boolean moveTopStackToDisplay(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.mRemote.transact(54, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().moveTopStackToDisplay(i, i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void registerTopStackExchangeListener(ITopStackExchangeListener iTopStackExchangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTopStackExchangeListener != null ? iTopStackExchangeListener.asBinder() : null);
                    if (!this.mRemote.transact(55, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerTopStackExchangeListener(iTopStackExchangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void unRegisterTopStackExchangeListener(ITopStackExchangeListener iTopStackExchangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTopStackExchangeListener != null ? iTopStackExchangeListener.asBinder() : null);
                    if (!this.mRemote.transact(56, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unRegisterTopStackExchangeListener(iTopStackExchangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public boolean setOverlayEnabledExclusive(String str, boolean z, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(57, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setOverlayEnabledExclusive(str, z, i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void disableSystemUIGestureByDisplay(boolean z, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(58, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().disableSystemUIGestureByDisplay(z, i);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void disableFivePointerGestureByDisplay(boolean z, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(59, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().disableFivePointerGestureByDisplay(z, i);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public int getCurrentScreenControlUsage(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(60, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentScreenControlUsage(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void registerTaskChangeListener(IRunningTaskChangeListener iRunningTaskChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRunningTaskChangeListener != null ? iRunningTaskChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(61, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerTaskChangeListener(iRunningTaskChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public void unRegisterTaskChangeListener(IRunningTaskChangeListener iRunningTaskChangeListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRunningTaskChangeListener != null ? iRunningTaskChangeListener.asBinder() : null);
                    if (!this.mRemote.transact(62, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unRegisterTaskChangeListener(iRunningTaskChangeListener);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public SurfaceControl getSurfaceControlByTaskId(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(63, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSurfaceControlByTaskId(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (SurfaceControl) SurfaceControl.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.IMegaNexusManager
            public List<String> getDisplayAllTopResumedActivities(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (!this.mRemote.transact(64, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getDisplayAllTopResumedActivities(i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IMegaNexusManager iMegaNexusManager) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iMegaNexusManager == null) {
                return false;
            }
            Proxy.sDefaultImpl = iMegaNexusManager;
            return true;
        }

        public static IMegaNexusManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
