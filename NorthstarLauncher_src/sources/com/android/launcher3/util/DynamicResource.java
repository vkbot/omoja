package com.android.launcher3.util;

import android.content.Context;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.ResourceProvider;

/* JADX INFO: loaded from: classes.dex */
public class DynamicResource implements ResourceProvider, PluginListener<ResourceProvider> {
    private static final MainThreadInitializedObject<DynamicResource> INSTANCE = new MainThreadInitializedObject<>(new MainThreadInitializedObject.ObjectProvider() { // from class: com.android.launcher3.util.DynamicResource$$ExternalSyntheticLambda0
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return DynamicResource.$r8$lambda$H76pgZzgL_y1hqAVfGzB3i_vAOw(context);
        }
    });
    private final Context mContext;
    private ResourceProvider mPlugin;

    public static /* synthetic */ DynamicResource $r8$lambda$H76pgZzgL_y1hqAVfGzB3i_vAOw(Context context) {
        return new DynamicResource(context);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginConnected(ResourceProvider plugin, Context context) {
        this.mPlugin = plugin;
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(ResourceProvider plugin) {
        this.mPlugin = null;
    }

    private DynamicResource(Context context) {
        this.mContext = context;
        PluginManagerWrapper.INSTANCE.m166x39265fe7(context).addPluginListener(this, ResourceProvider.class, false);
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public int getInt(int resId) {
        return this.mContext.getResources().getInteger(resId);
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public float getFraction(int resId) {
        return this.mContext.getResources().getFraction(resId, 1, 1);
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public float getDimension(int resId) {
        return this.mContext.getResources().getDimension(resId);
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public int getColor(int resId) {
        return this.mContext.getResources().getColor(resId, null);
    }

    @Override // com.android.systemui.plugins.ResourceProvider
    public float getFloat(int resId) {
        return this.mContext.getResources().getFloat(resId);
    }

    public static ResourceProvider provider(Context context) {
        DynamicResource dynamicResourceM166x39265fe7 = INSTANCE.m166x39265fe7(context);
        ResourceProvider resourceProvider = dynamicResourceM166x39265fe7.mPlugin;
        return resourceProvider == null ? dynamicResourceM166x39265fe7 : resourceProvider;
    }
}
