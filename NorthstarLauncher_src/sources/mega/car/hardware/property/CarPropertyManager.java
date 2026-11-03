package mega.car.hardware.property;

import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import mega.car.CarManagerBase;
import mega.car.MegaCar;
import mega.car.hardware.CarPropertyConfig;
import mega.car.hardware.CarPropertyValue;
import mega.car.utils.CarStateErrorException;
import mega.car.utils.LogUtil;
import mega.car.utils.SingleMessageHandler;

/* JADX INFO: loaded from: classes2.dex */
public class CarPropertyManager extends CarManagerBase {
    private static final boolean DBG = false;
    private static final int MSG_GENERIC_EVENT = 0;
    private static final String TAG = "CarPropertyManager";
    private final SparseArray<CarPropertyListeners> mActivePropertyListener;
    private ICarPropertyEventListener mCarPropertyEventToService;
    private final ConcurrentHashMap<Integer, CarPropertyConfig> mConfigCache;
    private final SingleMessageHandler<CarPropertyEvent> mHandler;
    private ICarProperty mService;

    public interface CarPropertyEventCallback {
        default boolean isSticky() {
            return true;
        }

        void onChangeEvent(CarPropertyValue carPropertyValue);

        void onErrorEvent(int i, int i2);
    }

    public CarPropertyManager(MegaCar megaCar, IBinder iBinder) {
        super(megaCar);
        this.mCarPropertyEventToService = null;
        this.mActivePropertyListener = new SparseArray<>();
        this.mConfigCache = new ConcurrentHashMap<>();
        this.mService = ICarProperty.Stub.asInterface(iBinder);
        Handler eventHandler = getEventHandler();
        if (eventHandler == null) {
            this.mHandler = null;
        } else {
            this.mHandler = new SingleMessageHandler<CarPropertyEvent>(eventHandler.getLooper(), 0) { // from class: mega.car.hardware.property.CarPropertyManager.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // mega.car.utils.SingleMessageHandler
                public void handleEvent(CarPropertyEvent carPropertyEvent) {
                    CarPropertyListeners carPropertyListeners;
                    CarPropertyValue<?> carPropertyValue = carPropertyEvent.getCarPropertyValue();
                    synchronized (CarPropertyManager.this.mActivePropertyListener) {
                        carPropertyListeners = (CarPropertyListeners) CarPropertyManager.this.mActivePropertyListener.get(carPropertyValue.getPropertyId());
                    }
                    if (carPropertyListeners != null) {
                        int eventType = carPropertyEvent.getEventType();
                        if (eventType == 0) {
                            carPropertyListeners.onPropertyChanged(carPropertyEvent);
                        } else {
                            if (eventType == 1) {
                                carPropertyListeners.onErrorEvent(carPropertyEvent);
                                return;
                            }
                            throw new IllegalArgumentException();
                        }
                    }
                }
            };
        }
    }

    public void setIntProp(int i, int i2, int i3) throws CarStateErrorException {
        setProperty(Integer.class, i, i2, Integer.valueOf(i3));
    }

    public int getIntProp(int i, int i2) {
        CarPropertyValue property = getProperty(Integer.class, i, i2);
        if (property == null || property.getValue() == null) {
            return -1;
        }
        return ((Integer) property.getValue()).intValue();
    }

    public void setFloatProp(int i, int i2, float f) throws CarStateErrorException {
        setProperty(Float.class, i, i2, Float.valueOf(f));
    }

    public Float getFloatProp(int i, int i2) throws CarStateErrorException {
        CarPropertyValue property = getProperty(Float.class, i, i2);
        return Float.valueOf((property == null || property.getValue() == null) ? -1.0f : ((Float) property.getValue()).floatValue());
    }

    public <E> void setProperty(Class<E> cls, int i, int i2, E e) {
        try {
            this.mService.setProperty(new CarPropertyValue(i, i2, e));
        } catch (RemoteException e2) {
            handleRemoteExceptionFromCarService(e2);
        }
    }

    public <E> CarPropertyValue<E> getProperty(Class<E> cls, int i, int i2) {
        Class<?> cls2;
        try {
            CarPropertyValue<E> property = this.mService.getProperty(i, i2);
            if (property != null && property.getValue() != null && (cls2 = property.getValue().getClass()) != cls) {
                throw new IllegalArgumentException("Invalid property type: 0x" + Integer.toHexString(i) + ", Expected: " + cls + ", but was: " + cls2);
            }
            return property;
        } catch (RemoteException e) {
            return (CarPropertyValue) handleRemoteExceptionFromCarService(e, null);
        }
    }

    public List<CarPropertyConfig> getPropertyList() throws CarStateErrorException {
        try {
            for (CarPropertyConfig carPropertyConfig : this.mService.getPropertyList()) {
                if (!this.mConfigCache.containsKey(Integer.valueOf(carPropertyConfig.getPropertyId()))) {
                    this.mConfigCache.put(Integer.valueOf(carPropertyConfig.getPropertyId()), carPropertyConfig);
                }
            }
            return this.mService.getPropertyList();
        } catch (RemoteException e) {
            return (List) handleRemoteExceptionFromCarService(e, null);
        }
    }

    public CarPropertyValue getPropertyRaw(int i, int i2) throws CarStateErrorException {
        try {
            return this.mService.getProperty(i, i2);
        } catch (RemoteException e) {
            return (CarPropertyValue) handleRemoteExceptionFromCarService(e, null);
        }
    }

    public void setPropertyRaw(CarPropertyValue carPropertyValue) throws CarStateErrorException {
        try {
            this.mService.setProperty(carPropertyValue);
        } catch (RemoteException e) {
            handleRemoteExceptionFromCarService(e);
        }
    }

    public void registerCallback(final CarPropertyEventCallback carPropertyEventCallback, final SparseArray<Float> sparseArray) throws CarStateErrorException {
        if (carPropertyEventCallback == null || sparseArray == null || sparseArray.size() == 0) {
            return;
        }
        synchronized (this.mActivePropertyListener) {
            if (this.mCarPropertyEventToService == null) {
                this.mCarPropertyEventToService = new CarPropertyEventListenerToService(this);
            }
            SparseArray<Float> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                int iKeyAt = sparseArray.keyAt(i);
                float fFloatValue = sparseArray.valueAt(i).floatValue();
                CarPropertyListeners carPropertyListeners = this.mActivePropertyListener.get(iKeyAt);
                if (carPropertyListeners == null) {
                    carPropertyListeners = new CarPropertyListeners(fFloatValue);
                    this.mActivePropertyListener.put(iKeyAt, carPropertyListeners);
                    sparseArray2.put(iKeyAt, Float.valueOf(fFloatValue));
                }
                if (carPropertyListeners.addAndUpdateRate(carPropertyEventCallback, fFloatValue)) {
                    sparseArray2.put(iKeyAt, Float.valueOf(fFloatValue));
                }
            }
            if (sparseArray2.size() != 0) {
                registerOrUpdatePropertyListener(sparseArray2);
            }
            getEventHandler().post(new Runnable() { // from class: mega.car.hardware.property.CarPropertyManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1795x814ed2d8(carPropertyEventCallback, sparseArray);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$registerCallback$0$mega-car-hardware-property-CarPropertyManager, reason: not valid java name */
    /* synthetic */ void m1795x814ed2d8(CarPropertyEventCallback carPropertyEventCallback, SparseArray sparseArray) {
        try {
            getAndDispatchPropertyInitValue(carPropertyEventCallback, sparseArray);
        } catch (CarStateErrorException e) {
            throw new RuntimeException(e);
        }
    }

    private void getAndDispatchPropertyInitValue(CarPropertyEventCallback carPropertyEventCallback, SparseArray<Float> sparseArray) throws CarStateErrorException {
        if (carPropertyEventCallback.isSticky()) {
            int size = sparseArray.size();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < sparseArray.size(); i++) {
                int iKeyAt = sparseArray.keyAt(i);
                if (!this.mConfigCache.containsKey(Integer.valueOf(iKeyAt)) && iKeyAt != -1) {
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
            }
            if (!arrayList.isEmpty()) {
                int[] iArr = new int[arrayList.size()];
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                }
                try {
                    for (CarPropertyConfig carPropertyConfig : this.mService.getPropertyConfigs(iArr)) {
                        this.mConfigCache.put(Integer.valueOf(carPropertyConfig.getPropertyId()), carPropertyConfig);
                    }
                } catch (RemoteException e) {
                    handleRemoteExceptionFromCarService(e);
                }
            }
            for (int i3 = 0; i3 < size; i3++) {
                int iKeyAt2 = sparseArray.keyAt(i3);
                CarPropertyConfig carPropertyConfig2 = this.mConfigCache.get(Integer.valueOf(iKeyAt2));
                if (carPropertyConfig2 == null) {
                    LogUtil.e(TAG, "not found CarPropertyConfig for 0x" + Integer.toHexString(iKeyAt2));
                } else {
                    for (int i4 : carPropertyConfig2.getAreaIds()) {
                        CarPropertyValue propertyRaw = getPropertyRaw(iKeyAt2, i4);
                        if (propertyRaw != null) {
                            if (propertyRaw.getStatus() == 0) {
                                carPropertyEventCallback.onChangeEvent(propertyRaw);
                            } else {
                                carPropertyEventCallback.onErrorEvent(iKeyAt2, i4);
                            }
                        }
                    }
                }
            }
        }
    }

    public CarPropertyConfig getConfigById(int i) {
        if (i == -1) {
            LogUtil.d(TAG, "getConfigById illegal propId : " + i);
            return null;
        }
        if (!this.mConfigCache.containsKey(Integer.valueOf(i))) {
            try {
                List<CarPropertyConfig> propertyConfigs = this.mService.getPropertyConfigs(new int[]{i});
                if (propertyConfigs.size() != 0) {
                    this.mConfigCache.put(Integer.valueOf(propertyConfigs.get(0).getPropertyId()), propertyConfigs.get(0));
                }
            } catch (RemoteException e) {
                handleRemoteExceptionFromCarService(e);
            }
        }
        return this.mConfigCache.get(Integer.valueOf(i));
    }

    private synchronized void registerOrUpdatePropertyListener(SparseArray<Float> sparseArray) throws CarStateErrorException {
        int size;
        int[] iArr;
        float[] fArr;
        synchronized (this.mActivePropertyListener) {
            size = sparseArray.size();
            iArr = new int[size];
            fArr = new float[size];
            for (int i = 0; i < size; i++) {
                iArr[i] = sparseArray.keyAt(i);
                fArr[i] = sparseArray.valueAt(i).floatValue();
            }
        }
        if (size == 0) {
            return;
        }
        try {
            this.mService.registerListener(this.mCarPropertyEventToService, iArr, fArr);
        } catch (RemoteException e) {
            handleRemoteExceptionFromCarService(e);
        }
    }

    public void unregisterCallback(CarPropertyEventCallback carPropertyEventCallback, Set<Integer> set) {
        if (carPropertyEventCallback == null) {
            return;
        }
        synchronized (this.mActivePropertyListener) {
            try {
                doUnregisterListenerLocked(carPropertyEventCallback, set);
            } catch (CarStateErrorException e) {
                LogUtil.e(TAG, "unregisterCallback: ", e);
            }
        }
    }

    private void doUnregisterListenerLocked(CarPropertyEventCallback carPropertyEventCallback, Set<Integer> set) throws CarStateErrorException {
        SparseArray<Float> sparseArray = new SparseArray<>();
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            CarPropertyListeners carPropertyListeners = this.mActivePropertyListener.get(iIntValue);
            if (carPropertyListeners != null) {
                boolean zRemove = carPropertyListeners.contains(carPropertyEventCallback) ? carPropertyListeners.remove(carPropertyEventCallback) : false;
                if (carPropertyListeners.isEmpty()) {
                    try {
                        this.mService.unregisterCallback(iIntValue, this.mCarPropertyEventToService);
                    } catch (RemoteException e) {
                        handleRemoteExceptionFromCarService(e);
                    }
                    this.mActivePropertyListener.remove(iIntValue);
                } else if (zRemove) {
                    sparseArray.put(iIntValue, Float.valueOf(carPropertyListeners.getRate()));
                }
            }
            if (sparseArray.size() != 0) {
                registerOrUpdatePropertyListener(sparseArray);
            }
        }
    }

    public void injectEvent(String str, List<CarPropertyEvent> list) {
        try {
            this.mService.injectEvent(str, list);
        } catch (RemoteException e) {
            handleRemoteExceptionFromCarService(e);
        }
    }

    public void addBlacklist(String str, int[] iArr) {
        try {
            this.mService.addBlacklist(str, iArr);
        } catch (RemoteException e) {
            handleRemoteExceptionFromCarService(e);
        }
    }

    public void removeBlacklist(String str, int[] iArr) {
        try {
            this.mService.removeBlacklist(str, iArr);
        } catch (RemoteException e) {
            LogUtil.e(TAG, "removeBlacklist: ", e);
        }
    }

    private SparseArray<Float> getAllPropRateMap() {
        SparseArray<Float> sparseArray = new SparseArray<>();
        synchronized (this.mActivePropertyListener) {
            for (int i = 0; i < this.mActivePropertyListener.size(); i++) {
                sparseArray.put(this.mActivePropertyListener.keyAt(i), Float.valueOf(this.mActivePropertyListener.valueAt(i).getRate()));
            }
        }
        return sparseArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CarPropertyListeners extends CarRatedFloatListeners<CarPropertyEventCallback> {
        CarPropertyListeners(float f) {
            super(f);
        }

        void onPropertyChanged(final CarPropertyEvent carPropertyEvent) {
            ArrayList arrayList;
            final long timestamp = carPropertyEvent.getCarPropertyValue().getTimestamp();
            if (needUpdateForAreaId(carPropertyEvent.getCarPropertyValue().getAreaId(), timestamp)) {
                synchronized (CarPropertyManager.this.mActivePropertyListener) {
                    arrayList = new ArrayList(getListeners());
                }
                arrayList.forEach(new Consumer() { // from class: mega.car.hardware.property.CarPropertyManager$CarPropertyListeners$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.m1796x2e443b44(timestamp, carPropertyEvent, (CarPropertyManager.CarPropertyEventCallback) obj);
                    }
                });
                return;
            }
            LogUtil.w(CarPropertyManager.TAG, "dropping old property data:" + carPropertyEvent.getCarPropertyValue());
        }

        /* JADX INFO: renamed from: lambda$onPropertyChanged$0$mega-car-hardware-property-CarPropertyManager$CarPropertyListeners, reason: not valid java name */
        /* synthetic */ void m1796x2e443b44(long j, CarPropertyEvent carPropertyEvent, CarPropertyEventCallback carPropertyEventCallback) {
            if (needUpdateForSelectedListener(carPropertyEventCallback, j)) {
                carPropertyEventCallback.onChangeEvent(carPropertyEvent.getCarPropertyValue());
            }
        }

        void onErrorEvent(CarPropertyEvent carPropertyEvent) {
            ArrayList arrayList;
            final CarPropertyValue<?> carPropertyValue = carPropertyEvent.getCarPropertyValue();
            synchronized (CarPropertyManager.this.mActivePropertyListener) {
                arrayList = new ArrayList(getListeners());
            }
            arrayList.forEach(new Consumer() { // from class: mega.car.hardware.property.CarPropertyManager$CarPropertyListeners$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CarPropertyValue carPropertyValue2 = carPropertyValue;
                    ((CarPropertyManager.CarPropertyEventCallback) obj).onErrorEvent(carPropertyValue2.getPropertyId(), carPropertyValue2.getAreaId());
                }
            });
        }
    }

    class CarPropertyEventListenerToService extends ICarPropertyEventListener.Stub {
        private final WeakReference<CarPropertyManager> mManager;

        public CarPropertyEventListenerToService(CarPropertyManager carPropertyManager) {
            this.mManager = new WeakReference<>(carPropertyManager);
        }

        @Override // mega.car.hardware.property.ICarPropertyEventListener
        public void onEvent(List<CarPropertyEvent> list) throws RemoteException {
            CarPropertyManager carPropertyManager = this.mManager.get();
            if (carPropertyManager != null) {
                carPropertyManager.handleEvent(list);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEvent(List<CarPropertyEvent> list) {
        SingleMessageHandler<CarPropertyEvent> singleMessageHandler = this.mHandler;
        if (singleMessageHandler != null) {
            singleMessageHandler.sendEvents(list);
        }
    }

    @Override // mega.car.CarManagerBase
    protected void onCarDisconnected() {
        LogUtil.d(TAG, "onCarDisconnected.");
        try {
            this.mService.unregisterListener(this.mCarPropertyEventToService);
        } catch (RemoteException e) {
            LogUtil.e(TAG, "Failed to unregister listener: " + e);
        }
        synchronized (this.mActivePropertyListener) {
            this.mActivePropertyListener.clear();
            this.mCarPropertyEventToService = null;
        }
    }
}
