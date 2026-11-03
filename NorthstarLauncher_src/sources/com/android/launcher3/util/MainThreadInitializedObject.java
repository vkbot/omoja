package com.android.launcher3.util;

import android.content.Context;
import android.os.Looper;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class MainThreadInitializedObject<T> {
    private final ObjectProvider<T> mProvider;
    private T mValue;

    public interface ObjectProvider<T> {
        T get(Context context);
    }

    public T getNoCreate() {
        return this.mValue;
    }

    public void initializeForTesting(T value) {
        this.mValue = value;
    }

    public MainThreadInitializedObject(ObjectProvider<T> provider) {
        this.mProvider = provider;
    }

    /* JADX INFO: renamed from: get, reason: merged with bridge method [inline-methods] */
    public T m166x39265fe7(final Context context) {
        if (context instanceof LauncherPreviewRenderer.PreviewContext) {
            return (T) ((LauncherPreviewRenderer.PreviewContext) context).getObject(this, this.mProvider);
        }
        if (this.mValue == null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.mValue = (T) TraceHelper.allowIpcs("main.thread.object", new Supplier() { // from class: com.android.launcher3.util.MainThreadInitializedObject$$ExternalSyntheticLambda0
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return this.f$0.m165x37f00d08(context);
                    }
                });
            } else {
                try {
                    return Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: com.android.launcher3.util.MainThreadInitializedObject$$ExternalSyntheticLambda1
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f$0.m166x39265fe7(context);
                        }
                    }).get();
                } catch (InterruptedException | ExecutionException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return this.mValue;
    }

    /* JADX INFO: renamed from: lambda$get$0$com-android-launcher3-util-MainThreadInitializedObject, reason: not valid java name */
    /* synthetic */ Object m165x37f00d08(Context context) {
        return this.mProvider.get(context.getApplicationContext());
    }

    public static <T extends ResourceBasedOverride> MainThreadInitializedObject<T> forOverride(final Class<T> clazz, final int resourceId) {
        return new MainThreadInitializedObject<>(new ObjectProvider() { // from class: com.android.launcher3.util.MainThreadInitializedObject$$ExternalSyntheticLambda2
            @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
            public final Object get(Context context) {
                return ResourceBasedOverride.Overrides.getObject(clazz, context, resourceId);
            }
        });
    }
}
