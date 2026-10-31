package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.MainThread;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.os.BundleCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import com.sun.jna.Callback;
import j1.i;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000 72\u00020\u0001:\u0003678B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J#\u0010\u0015\u001a\u00020\u0016\"\u0004\b\u0000\u0010\u00172\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u0002H\u0017H\u0007¢\u0006\u0002\u0010\u001aJ\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007J8\u0010\u001e\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u00172\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u0002H\u0017\u0018\u00010\u0006H\u0002J\b\u0010 \u001a\u00020\nH\u0002JG\u0010!\u001a\u00020\u0012\"\u0004\b\u0000\u0010\"\"\u0004\b\u0001\u0010\u00172\u0006\u0010\u0018\u001a\u00020\n2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H\u00170$2\u0006\u0010%\u001a\u0002H\"2\b\u0010&\u001a\u0004\u0018\u00010'H'¢\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020\u00122\b\u0010*\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u000fJB\u0010-\u001a\b\u0012\u0004\u0012\u0002H\"0.\"\u0004\b\u0000\u0010\"\"\u0004\b\u0001\u0010\u00172\u0006\u0010\u0014\u001a\u00020\u00052\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H\u00170$2\f\u0010/\u001a\b\u0012\u0004\u0012\u0002H\u001700JJ\u0010-\u001a\b\u0012\u0004\u0012\u0002H\"0.\"\u0004\b\u0000\u0010\"\"\u0004\b\u0001\u0010\u00172\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u00101\u001a\u0002022\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u0002H\"\u0012\u0004\u0012\u0002H\u00170$2\f\u0010/\u001a\b\u0012\u0004\u0012\u0002H\u001700J\u0010\u00103\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u0015\u00104\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0005H\u0001¢\u0006\u0002\b5R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Landroidx/activity/result/ActivityResultRegistry;", "", "()V", "keyToCallback", "", "", "Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;", "keyToLifecycleContainers", "Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;", "keyToRc", "", "launchedKeys", "", "parsedPendingResults", "pendingResults", "Landroid/os/Bundle;", "rcToKey", "bindRcKey", "", "rc", "key", "dispatchResult", "", "O", "requestCode", "result", "(ILjava/lang/Object;)Z", "resultCode", "data", "Landroid/content/Intent;", "doDispatch", "callbackAndContract", "generateRandomNumber", "onLaunch", "I", "contract", "Landroidx/activity/result/contract/ActivityResultContract;", "input", "options", "Landroidx/core/app/ActivityOptionsCompat;", "(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V", "onRestoreInstanceState", "savedInstanceState", "onSaveInstanceState", "outState", "register", "Landroidx/activity/result/ActivityResultLauncher;", Callback.METHOD_NAME, "Landroidx/activity/result/ActivityResultCallback;", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "registerKey", "unregister", "unregister$activity_release", "CallbackAndContract", "Companion", "LifecycleContainer", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/result/ActivityResultRegistry\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,422:1\n123#2,2:423\n*S KotlinDebug\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/result/ActivityResultRegistry\n*L\n380#1:423,2\n*E\n"})
public abstract class ActivityResultRegistry {
    private static final ActivityResultRegistry$Companion Companion = new ActivityResultRegistry$Companion(null);
    private static final int INITIAL_REQUEST_CODE_VALUE = 65536;
    private static final String KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS = "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS";
    private static final String KEY_COMPONENT_ACTIVITY_PENDING_RESULTS = "KEY_COMPONENT_ACTIVITY_PENDING_RESULT";
    private static final String KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS = "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS";
    private static final String KEY_COMPONENT_ACTIVITY_REGISTERED_RCS = "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS";
    private static final String LOG_TAG = "ActivityResultRegistry";
    private final Map<Integer, String> rcToKey = new LinkedHashMap();
    private final Map<String, Integer> keyToRc = new LinkedHashMap();
    private final Map<String, ActivityResultRegistry$LifecycleContainer> keyToLifecycleContainers = new LinkedHashMap();
    private final List<String> launchedKeys = new ArrayList();
    private final transient Map<String, ActivityResultRegistry$CallbackAndContract<?>> keyToCallback = new LinkedHashMap();
    private final Map<String, Object> parsedPendingResults = new LinkedHashMap();
    private final Bundle pendingResults = new Bundle();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(ActivityResultRegistry activityResultRegistry, String str, ActivityResultCallback activityResultCallback, ActivityResultContract activityResultContract, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        register$lambda$1(activityResultRegistry, str, activityResultCallback, activityResultContract, lifecycleOwner, lifecycle$Event);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Map access$getKeyToRc$p(ActivityResultRegistry activityResultRegistry) {
        return activityResultRegistry.keyToRc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ List access$getLaunchedKeys$p(ActivityResultRegistry activityResultRegistry) {
        return activityResultRegistry.launchedKeys;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void bindRcKey(int rc, String key) {
        this.rcToKey.put(Integer.valueOf(rc), key);
        this.keyToRc.put(key, Integer.valueOf(rc));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final <O> void doDispatch(String key, int resultCode, Intent data, ActivityResultRegistry$CallbackAndContract<O> callbackAndContract) {
        if ((callbackAndContract != null ? callbackAndContract.getCallback() : null) == null || !this.launchedKeys.contains(key)) {
            this.parsedPendingResults.remove(key);
            this.pendingResults.putParcelable(key, new ActivityResult(resultCode, data));
        } else {
            callbackAndContract.getCallback().onActivityResult(callbackAndContract.getContract().parseResult(resultCode, data));
            this.launchedKeys.remove(key);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int generateRandomNumber() {
        for (Number number : SequencesKt.generateSequence(ActivityResultRegistry$generateRandomNumber$1.INSTANCE)) {
            if (!this.rcToKey.containsKey(Integer.valueOf(number.intValue()))) {
                return number.intValue();
            }
        }
        i.g("Sequence contains no element matching the predicate.");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void register$lambda$1(ActivityResultRegistry activityResultRegistry, String str, ActivityResultCallback activityResultCallback, ActivityResultContract activityResultContract, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        lifecycleOwner.getClass();
        lifecycle$Event.getClass();
        if (Lifecycle$Event.ON_START != lifecycle$Event) {
            if (Lifecycle$Event.ON_STOP == lifecycle$Event) {
                activityResultRegistry.keyToCallback.remove(str);
                return;
            } else {
                if (Lifecycle$Event.ON_DESTROY == lifecycle$Event) {
                    activityResultRegistry.unregister$activity_release(str);
                    return;
                }
                return;
            }
        }
        activityResultRegistry.keyToCallback.put(str, new ActivityResultRegistry$CallbackAndContract<>(activityResultCallback, activityResultContract));
        if (activityResultRegistry.parsedPendingResults.containsKey(str)) {
            Object obj = activityResultRegistry.parsedPendingResults.get(str);
            activityResultRegistry.parsedPendingResults.remove(str);
            activityResultCallback.onActivityResult(obj);
        }
        ActivityResult activityResult = (ActivityResult) BundleCompat.getParcelable(activityResultRegistry.pendingResults, str, ActivityResult.class);
        if (activityResult != null) {
            activityResultRegistry.pendingResults.remove(str);
            activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.getResultCode(), activityResult.getData()));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void registerKey(String key) {
        if (this.keyToRc.get(key) != null) {
            return;
        }
        bindRcKey(generateRandomNumber(), key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final <O> boolean dispatchResult(int requestCode, O result) {
        String str = this.rcToKey.get(Integer.valueOf(requestCode));
        if (str == null) {
            return false;
        }
        ActivityResultRegistry$CallbackAndContract<?> activityResultRegistry$CallbackAndContract = this.keyToCallback.get(str);
        if ((activityResultRegistry$CallbackAndContract != null ? activityResultRegistry$CallbackAndContract.getCallback() : null) == null) {
            this.pendingResults.remove(str);
            this.parsedPendingResults.put(str, result);
            return true;
        }
        ActivityResultCallback<?> callback = activityResultRegistry$CallbackAndContract.getCallback();
        callback.getClass();
        if (!this.launchedKeys.remove(str)) {
            return true;
        }
        callback.onActivityResult(result);
        return true;
    }

    @MainThread
    public abstract <I, O> void onLaunch(int requestCode, ActivityResultContract<I, O> contract, I input, ActivityOptionsCompat options);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void onRestoreInstanceState(Bundle savedInstanceState) {
        if (savedInstanceState == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = savedInstanceState.getIntegerArrayList(KEY_COMPONENT_ACTIVITY_REGISTERED_RCS);
        ArrayList<String> stringArrayList = savedInstanceState.getStringArrayList(KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS);
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        ArrayList<String> stringArrayList2 = savedInstanceState.getStringArrayList(KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS);
        if (stringArrayList2 != null) {
            this.launchedKeys.addAll(stringArrayList2);
        }
        Bundle bundle = savedInstanceState.getBundle(KEY_COMPONENT_ACTIVITY_PENDING_RESULTS);
        if (bundle != null) {
            this.pendingResults.putAll(bundle);
        }
        int size = stringArrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            String str = stringArrayList.get(i9);
            if (this.keyToRc.containsKey(str)) {
                Integer numRemove = this.keyToRc.remove(str);
                if (!this.pendingResults.containsKey(str)) {
                    TypeIntrinsics.asMutableMap(this.rcToKey).remove(numRemove);
                }
            }
            Integer num = integerArrayList.get(i9);
            num.getClass();
            int iIntValue = num.intValue();
            String str2 = stringArrayList.get(i9);
            str2.getClass();
            bindRcKey(iIntValue, str2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void onSaveInstanceState(Bundle outState) {
        outState.getClass();
        outState.putIntegerArrayList(KEY_COMPONENT_ACTIVITY_REGISTERED_RCS, new ArrayList<>(this.keyToRc.values()));
        outState.putStringArrayList(KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS, new ArrayList<>(this.keyToRc.keySet()));
        outState.putStringArrayList(KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS, new ArrayList<>(this.launchedKeys));
        outState.putBundle(KEY_COMPONENT_ACTIVITY_PENDING_RESULTS, new Bundle(this.pendingResults));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final <I, O> ActivityResultLauncher<I> register(String key, LifecycleOwner lifecycleOwner, ActivityResultContract<I, O> contract, ActivityResultCallback<O> callback) {
        key.getClass();
        lifecycleOwner.getClass();
        contract.getClass();
        callback.getClass();
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getState().isAtLeast(Lifecycle$State.STARTED)) {
            StringBuilder sb = new StringBuilder("LifecycleOwner ");
            sb.append(lifecycleOwner);
            Lifecycle$State currentState = lifecycle.getState();
            sb.append(" is attempting to register while current state is ");
            sb.append(currentState);
            sb.append(". LifecycleOwners must call register before they are STARTED.");
            throw new IllegalStateException(sb.toString().toString());
        }
        registerKey(key);
        ActivityResultRegistry$LifecycleContainer activityResultRegistry$LifecycleContainer = this.keyToLifecycleContainers.get(key);
        if (activityResultRegistry$LifecycleContainer == null) {
            activityResultRegistry$LifecycleContainer = new ActivityResultRegistry$LifecycleContainer(lifecycle);
        }
        activityResultRegistry$LifecycleContainer.addObserver(new b(this, key, callback, contract));
        this.keyToLifecycleContainers.put(key, activityResultRegistry$LifecycleContainer);
        return new ActivityResultRegistry$register$2(this, key, contract);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final void unregister$activity_release(String key) {
        Integer numRemove;
        key.getClass();
        if (!this.launchedKeys.contains(key) && (numRemove = this.keyToRc.remove(key)) != null) {
            this.rcToKey.remove(numRemove);
        }
        this.keyToCallback.remove(key);
        if (this.parsedPendingResults.containsKey(key)) {
            StringBuilder sbX = ai.onnxruntime.a.x("Dropping pending result for request ", key, ": ");
            sbX.append(this.parsedPendingResults.get(key));
            Log.w(LOG_TAG, sbX.toString());
            this.parsedPendingResults.remove(key);
        }
        if (this.pendingResults.containsKey(key)) {
            Log.w(LOG_TAG, "Dropping pending result for request " + key + ": " + ((ActivityResult) BundleCompat.getParcelable(this.pendingResults, key, ActivityResult.class)));
            this.pendingResults.remove(key);
        }
        ActivityResultRegistry$LifecycleContainer activityResultRegistry$LifecycleContainer = this.keyToLifecycleContainers.get(key);
        if (activityResultRegistry$LifecycleContainer != null) {
            activityResultRegistry$LifecycleContainer.clearObservers();
            this.keyToLifecycleContainers.remove(key);
        }
    }

    @MainThread
    public final boolean dispatchResult(int requestCode, int resultCode, Intent data) {
        String str = this.rcToKey.get(Integer.valueOf(requestCode));
        if (str == null) {
            return false;
        }
        doDispatch(str, resultCode, data, this.keyToCallback.get(str));
        return true;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: androidx.activity.result.ActivityResultCallback<O> */
    /* JADX WARN: Multi-variable type inference failed */
    public final <I, O> ActivityResultLauncher<I> register(String key, ActivityResultContract<I, O> contract, ActivityResultCallback<O> callback) {
        key.getClass();
        contract.getClass();
        callback.getClass();
        registerKey(key);
        this.keyToCallback.put(key, new ActivityResultRegistry$CallbackAndContract<>(callback, contract));
        if (this.parsedPendingResults.containsKey(key)) {
            Object obj = this.parsedPendingResults.get(key);
            this.parsedPendingResults.remove(key);
            callback.onActivityResult(obj);
        }
        ActivityResult activityResult = (ActivityResult) BundleCompat.getParcelable(this.pendingResults, key, ActivityResult.class);
        if (activityResult != null) {
            this.pendingResults.remove(key);
            callback.onActivityResult(contract.parseResult(activityResult.getResultCode(), activityResult.getData()));
        }
        return new ActivityResultRegistry$register$3(this, key, contract);
    }
}
