package androidx.lifecycle;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public class ClassesInfoCache$CallbackInfo {
    final Map<Lifecycle$Event, List<ClassesInfoCache$MethodReference>> mEventToHandlers = new HashMap();
    final Map<ClassesInfoCache$MethodReference, Lifecycle$Event> mHandlerToEvent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ClassesInfoCache$CallbackInfo(Map<ClassesInfoCache$MethodReference, Lifecycle$Event> map) {
        this.mHandlerToEvent = map;
        for (Map$Entry<ClassesInfoCache$MethodReference, Lifecycle$Event> map$Entry : map.entrySet()) {
            Lifecycle$Event value = map$Entry.getValue();
            List<ClassesInfoCache$MethodReference> arrayList = this.mEventToHandlers.get(value);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.mEventToHandlers.put(value, arrayList);
            }
            arrayList.add(map$Entry.getKey());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void invokeMethodsForEvent(List<ClassesInfoCache$MethodReference> list, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event, Object obj) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                list.get(size).invokeCallback(lifecycleOwner, lifecycle$Event, obj);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invokeCallbacks(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event, Object obj) {
        invokeMethodsForEvent(this.mEventToHandlers.get(lifecycle$Event), lifecycleOwner, lifecycle$Event, obj);
        invokeMethodsForEvent(this.mEventToHandlers.get(Lifecycle$Event.ON_ANY), lifecycleOwner, lifecycle$Event, obj);
    }
}
