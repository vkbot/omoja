package mega.car;

import android.app.AppGlobals;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseArray;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import mega.car.hardware.CarPropertyConfig;
import mega.car.hardware.CarPropertyValue;
import mega.car.hardware.property.CarPropertyManager;
import mega.car.utils.CarStateErrorException;
import mega.car.utils.LogUtil;

/* JADX INFO: loaded from: classes2.dex */
public class MegaCarProperty {
    public static final int CAR_PROP_UNKNOWN = -1;
    private static final boolean FORCE_RECONNECT = true;
    private static final String TAG = "MegaCarProperty";
    private static final Handler sHandler;
    private static volatile MegaCarProperty sInstance;
    private final List<MegaCar.CarServiceLifecycleListener> mCarServiceLifecycleListeners = new CopyOnWriteArrayList();
    private CarPropertyManager mManager;
    private volatile MegaCar mMegaCar;

    public MegaCar getMegaCar() {
        return this.mMegaCar;
    }

    static {
        HandlerThread handlerThread = new HandlerThread("MegaCarProperty");
        handlerThread.start();
        sHandler = new Handler(handlerThread.getLooper());
    }

    private MegaCarProperty(Context context, boolean z) {
        this.mMegaCar = MegaCar.createCar(context, sHandler, -1L, new MegaCar.CarServiceLifecycleListener() { // from class: mega.car.MegaCarProperty$$ExternalSyntheticLambda1
            @Override // mega.car.MegaCar.CarServiceLifecycleListener
            public final void onLifecycleChanged(MegaCar megaCar, boolean z2) {
                this.f$0.m1794lambda$new$0$megacarMegaCarProperty(megaCar, z2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$mega-car-MegaCarProperty, reason: not valid java name */
    /* synthetic */ void m1794lambda$new$0$megacarMegaCarProperty(MegaCar megaCar, boolean z) {
        if (z) {
            LogUtil.i(TAG, "CarService connected");
            this.mMegaCar = megaCar;
        } else {
            LogUtil.i(TAG, "CarService disconnected");
            this.mMegaCar = null;
            this.mManager = null;
        }
        if (this.mCarServiceLifecycleListeners.isEmpty()) {
            return;
        }
        for (MegaCar.CarServiceLifecycleListener carServiceLifecycleListener : this.mCarServiceLifecycleListeners) {
            if (carServiceLifecycleListener != null) {
                carServiceLifecycleListener.onLifecycleChanged(megaCar, z);
            }
        }
    }

    @Deprecated
    public static MegaCarProperty getInstance(Context context) {
        initInner();
        return sInstance;
    }

    public static MegaCarProperty getInstance() {
        initInner();
        return sInstance;
    }

    public static void initBackground() {
        sHandler.post(new Runnable() { // from class: mega.car.MegaCarProperty$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MegaCarProperty.initInner();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initInner() {
        if (sInstance == null) {
            synchronized (MegaCarProperty.class) {
                if (sInstance == null) {
                    sInstance = new MegaCarProperty(AppGlobals.getInitialApplication().getApplicationContext(), true);
                }
            }
        }
    }

    public synchronized CarPropertyManager getCarPropertyManager() {
        CarPropertyManager carPropertyManager = this.mManager;
        if (carPropertyManager != null) {
            return carPropertyManager;
        }
        if (this.mMegaCar == null) {
            LogUtil.i(TAG, "Null MegaCar");
            return null;
        }
        CarPropertyManager carPropertyManager2 = (CarPropertyManager) this.mMegaCar.getCarManager(MegaCar.PROPERTY_SERVICE);
        this.mManager = carPropertyManager2;
        if (carPropertyManager2 == null) {
            LogUtil.i(TAG, "Null CarPropertyManager");
        }
        return this.mManager;
    }

    public void registerCallback(CarPropertyManager.CarPropertyEventCallback carPropertyEventCallback, Set<Integer> set) {
        if (set == null || set.isEmpty()) {
            LogUtil.i(TAG, "registerCallback ids null");
            return;
        }
        SparseArray<Float> sparseArray = new SparseArray<>(set.size());
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            sparseArray.put(it.next().intValue(), Float.valueOf(0.0f));
        }
        registerCallback(carPropertyEventCallback, sparseArray);
    }

    public void registerCallback(CarPropertyManager.CarPropertyEventCallback carPropertyEventCallback, SparseArray<Float> sparseArray) {
        try {
            CarPropertyManager carPropertyManager = getCarPropertyManager();
            if (carPropertyManager != null) {
                carPropertyManager.registerCallback(carPropertyEventCallback, sparseArray);
            } else {
                LogUtil.i(TAG, "registerCallback manager null");
            }
        } catch (CarStateErrorException e) {
            LogUtil.i(TAG, "registerCallback manager exception: ", e);
        }
    }

    public void unregisterCallback(CarPropertyManager.CarPropertyEventCallback carPropertyEventCallback, Set<Integer> set) {
        if (set != null && set.size() != 0) {
            CarPropertyManager carPropertyManager = getCarPropertyManager();
            if (carPropertyManager != null) {
                carPropertyManager.unregisterCallback(carPropertyEventCallback, set);
                return;
            } else {
                LogUtil.i(TAG, "unregisterCallback manager null");
                return;
            }
        }
        LogUtil.i(TAG, "unregisterCallback ids null");
    }

    public void addCarServiceLifecycleListener(MegaCar.CarServiceLifecycleListener carServiceLifecycleListener) {
        if (carServiceLifecycleListener == null || this.mCarServiceLifecycleListeners.contains(carServiceLifecycleListener)) {
            return;
        }
        this.mCarServiceLifecycleListeners.add(carServiceLifecycleListener);
    }

    public void removeCarServiceLifecycleListener(MegaCar.CarServiceLifecycleListener carServiceLifecycleListener) {
        if (carServiceLifecycleListener == null) {
            return;
        }
        this.mCarServiceLifecycleListeners.remove(carServiceLifecycleListener);
    }

    public <E> CarPropertyValue<E> getProperty(Class<E> cls, int i) {
        CarPropertyManager carPropertyManager = getCarPropertyManager();
        if (carPropertyManager != null) {
            return carPropertyManager.getProperty(cls, i, 0);
        }
        LogUtil.i(TAG, "getProperty manager null");
        return null;
    }

    public int getIntProp(int i) {
        CarPropertyManager carPropertyManager = getCarPropertyManager();
        if (carPropertyManager != null) {
            return carPropertyManager.getIntProp(i, 0);
        }
        LogUtil.i(TAG, "getIntProp manager null");
        return -1;
    }

    public void setIntProp(int i, int i2) {
        try {
            CarPropertyManager carPropertyManager = getCarPropertyManager();
            if (carPropertyManager != null) {
                carPropertyManager.setIntProp(i, 0, i2);
            } else {
                LogUtil.i(TAG, "setIntProp manager null");
            }
        } catch (CarStateErrorException e) {
            LogUtil.i(TAG, "setIntProp CarStateErrorException:", e);
        }
    }

    public float getFloatProp(int i) {
        try {
            CarPropertyManager carPropertyManager = getCarPropertyManager();
            if (carPropertyManager != null) {
                Float floatProp = carPropertyManager.getFloatProp(i, 0);
                if (floatProp == null) {
                    return -1.0f;
                }
                return floatProp.floatValue();
            }
            LogUtil.i(TAG, "getFloatProp manager null");
            return -1.0f;
        } catch (CarStateErrorException e) {
            LogUtil.e(TAG, "getFloatProp: ", e);
        }
    }

    public void setFloatProp(int i, float f) {
        try {
            CarPropertyManager carPropertyManager = getCarPropertyManager();
            if (carPropertyManager != null) {
                carPropertyManager.setFloatProp(i, 0, f);
            } else {
                LogUtil.i(TAG, "setFloatProp manager null");
            }
        } catch (CarStateErrorException e) {
            LogUtil.e(TAG, "setFloatProp: ", e);
        }
    }

    public CarPropertyValue<?> getPropertyRaw(int i) {
        try {
            CarPropertyManager carPropertyManager = getCarPropertyManager();
            if (carPropertyManager != null) {
                return carPropertyManager.getPropertyRaw(i, 0);
            }
            LogUtil.i(TAG, "getPropertyRaw manager null");
            return null;
        } catch (CarStateErrorException e) {
            LogUtil.i(TAG, "getPropertyRaw CarStateErrorException", e);
            return null;
        }
    }

    public void setRawProp(CarPropertyValue<?> carPropertyValue) {
        try {
            CarPropertyManager carPropertyManager = getCarPropertyManager();
            if (carPropertyManager != null) {
                carPropertyManager.setPropertyRaw(carPropertyValue);
            } else {
                LogUtil.i(TAG, "setRawProp manager null");
            }
        } catch (CarStateErrorException e) {
            LogUtil.i(TAG, "setRawProp CarStateErrorException", e);
        }
    }

    public String getNameById(int i) {
        CarPropertyManager carPropertyManager = getCarPropertyManager();
        if (carPropertyManager != null) {
            CarPropertyConfig configById = carPropertyManager.getConfigById(i);
            if (configById != null) {
                return configById.getName();
            }
            LogUtil.i(TAG, "getNameById config null");
        } else {
            LogUtil.i(TAG, "getNameById manager null");
        }
        return "0x" + Integer.toHexString(i);
    }

    public Object getDefValueOfCarProperty(int i) {
        CarPropertyConfig configById = getInstance().getCarPropertyManager().getConfigById(i);
        if (configById == null) {
            return null;
        }
        Class propertyType = configById.getPropertyType();
        if (propertyType == Integer.class) {
            return 0;
        }
        if (propertyType == Long.class) {
            return 0L;
        }
        if (propertyType != Boolean.class && propertyType != Boolean.TYPE) {
            if (propertyType == Float.class) {
                return Float.valueOf(0.0f);
            }
            if (propertyType == int[].class) {
                return new int[0];
            }
            if (propertyType == Integer[].class) {
                return new Integer[0];
            }
            if (propertyType == float[].class) {
                return new float[0];
            }
            if (propertyType == Float[].class) {
                return new Float[0];
            }
            if (propertyType == long[].class) {
                return new long[0];
            }
            if (propertyType == Long[].class) {
                return new Long[0];
            }
            if (propertyType == String.class) {
                return "";
            }
            if (propertyType == byte[].class) {
                return new byte[0];
            }
            return null;
        }
        return false;
    }
}
