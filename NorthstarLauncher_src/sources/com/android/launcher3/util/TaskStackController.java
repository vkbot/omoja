package com.android.launcher3.util;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import android.util.LruCache;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.systemui.shared.recents.model.Task;
import com.mega.nexus.app.MegaActivityManagerProxy;
import com.mega.nexus.app.MegaTaskStackListener;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: TaskStackController.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\u0018\u0000 \u00192\u00020\u0001:\u0003\u0019\u001a\u001bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007J\u0006\u0010\u0014\u001a\u00020\u0012J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0016\u001a\u00020\u000eJ\u000e\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\n0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00060\u0010R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/android/launcher3/util/TaskStackController;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "listeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/android/launcher3/util/TaskStackController$OnTaskChangeListener;", "skipComponents", "Ljava/util/HashSet;", "Landroid/content/ComponentName;", "Lkotlin/collections/HashSet;", "taskCache", "Landroid/util/LruCache;", "", "taskStackListener", "Lcom/android/launcher3/util/TaskStackController$TaskStackListener;", "addOnTaskChangedListener", "", "listener", "destroy", "getComponent", "taskId", "removeOnTaskChangedListener", "setup", "Companion", "OnTaskChangeListener", "TaskStackListener", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class TaskStackController {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "TaskStackController";
    private final Context context;
    private final CopyOnWriteArrayList<OnTaskChangeListener> listeners;
    private final HashSet<ComponentName> skipComponents;
    private final LruCache<Integer, ComponentName> taskCache;
    private final TaskStackListener taskStackListener;

    /* JADX INFO: compiled from: TaskStackController.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/android/launcher3/util/TaskStackController$OnTaskChangeListener;", "", "onTaskEnter", "", BaseIconCache.IconDB.COLUMN_COMPONENT, "Landroid/content/ComponentName;", "onTaskExit", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface OnTaskChangeListener {
        void onTaskEnter(ComponentName componentName);

        void onTaskExit(ComponentName componentName);
    }

    public /* synthetic */ TaskStackController(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private TaskStackController(Context context) {
        this.context = context;
        this.taskStackListener = new TaskStackListener();
        this.listeners = new CopyOnWriteArrayList<>();
        this.taskCache = new LruCache<>(100);
        HashSet<ComponentName> hashSet = new HashSet<>();
        hashSet.add(new ComponentName("com.mega.androidauto", "com.mega.androidauto.ui.MainActivity"));
        this.skipComponents = hashSet;
    }

    public final void setup() {
        MegaActivityManagerProxy.registerTaskStackListener(this.taskStackListener);
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) this.context.getSystemService(ActivityManager.class)).getRunningTasks(100);
        Intrinsics.checkNotNullExpressionValue(runningTasks, "am.getRunningTasks(100)");
        for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
            Task.TaskKey taskKey = new Task.TaskKey(runningTaskInfo);
            ComponentName component = taskKey.sourceComponent != null ? taskKey.sourceComponent : taskKey.getComponent();
            if (!this.skipComponents.contains(component)) {
                this.taskCache.put(Integer.valueOf(runningTaskInfo.taskId), component);
            }
        }
    }

    public final void destroy() throws RemoteException {
        MegaActivityManagerProxy.unregisterTaskStackListener(this.taskStackListener);
    }

    public final ComponentName getComponent(int taskId) {
        return this.taskCache.get(Integer.valueOf(taskId));
    }

    /* JADX INFO: compiled from: TaskStackController.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\r"}, d2 = {"Lcom/android/launcher3/util/TaskStackController$TaskStackListener;", "Lcom/mega/nexus/app/MegaTaskStackListener;", "(Lcom/android/launcher3/util/TaskStackController;)V", "onTaskCreated", "", "taskId", "", BaseIconCache.IconDB.COLUMN_COMPONENT, "Landroid/content/ComponentName;", "onTaskFocusChanged", "focused", "", "onTaskRemoved", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private final class TaskStackListener extends MegaTaskStackListener {
        public TaskStackListener() {
        }

        public void onTaskCreated(int taskId, ComponentName componentName) {
            super.onTaskCreated(taskId, componentName);
            if (componentName != null) {
                boolean zContains = TaskStackController.this.skipComponents.contains(componentName);
                MLog.d(TaskStackController.TAG, "onTaskCreated: " + taskId + ' ' + componentName + " skip=" + zContains);
                if (zContains) {
                    return;
                }
                TaskStackController.this.taskCache.put(Integer.valueOf(taskId), componentName);
            }
        }

        public void onTaskRemoved(int taskId) {
            super.onTaskRemoved(taskId);
            MLog.d(TaskStackController.TAG, "onTaskRemoved: " + taskId + ' ' + ((ComponentName) TaskStackController.this.taskCache.remove(Integer.valueOf(taskId))));
        }

        public void onTaskFocusChanged(int taskId, boolean focused) {
            super.onTaskFocusChanged(taskId, focused);
            ComponentName component = TaskStackController.this.getComponent(taskId);
            if (component == null) {
                return;
            }
            MLog.d(TaskStackController.TAG, "onTaskFocusChanged: " + taskId + " focused=" + focused + ' ' + component);
            if (focused) {
                Iterator it = TaskStackController.this.listeners.iterator();
                while (it.hasNext()) {
                    ((OnTaskChangeListener) it.next()).onTaskEnter(component);
                }
            } else {
                Iterator it2 = TaskStackController.this.listeners.iterator();
                while (it2.hasNext()) {
                    ((OnTaskChangeListener) it2.next()).onTaskExit(component);
                }
            }
        }
    }

    public final void addOnTaskChangedListener(OnTaskChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    public final void removeOnTaskChangedListener(OnTaskChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.remove(listener);
    }

    /* JADX INFO: compiled from: TaskStackController.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/android/launcher3/util/TaskStackController$Companion;", "Lcom/android/launcher3/util/SingletonHolder;", "Lcom/android/launcher3/util/TaskStackController;", "Landroid/content/Context;", "()V", "TAG", "", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion extends SingletonHolder<TaskStackController, Context> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: renamed from: com.android.launcher3.util.TaskStackController$Companion$1, reason: invalid class name */
        /* JADX INFO: compiled from: TaskStackController.kt */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<Context, TaskStackController> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1, TaskStackController.class, "<init>", "<init>(Landroid/content/Context;)V", 0);
            }

            @Override // kotlin.jvm.functions.Function1
            public final TaskStackController invoke(Context p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return new TaskStackController(p0, null);
            }
        }

        private Companion() {
            super(AnonymousClass1.INSTANCE);
        }
    }
}
