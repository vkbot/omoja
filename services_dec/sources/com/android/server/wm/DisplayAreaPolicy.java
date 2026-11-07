package com.android.server.wm;

import android.R;
import android.content.res.Resources;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DisplayAreaPolicy {
    protected final DisplayContent mContent;
    protected final DisplayArea<? extends WindowContainer> mImeContainer;
    protected final DisplayArea.Root mRoot;
    protected final List<TaskDisplayArea> mTaskDisplayAreas;
    protected final WindowManagerService mWmService;

    public abstract void addWindow(WindowToken windowToken);

    public abstract void attachDisplayAreas();

    protected DisplayAreaPolicy(WindowManagerService wmService, DisplayContent content, DisplayArea.Root root, DisplayArea<? extends WindowContainer> imeContainer, List<TaskDisplayArea> taskDisplayAreas) {
        this.mWmService = wmService;
        this.mContent = content;
        this.mRoot = root;
        this.mImeContainer = imeContainer;
        this.mTaskDisplayAreas = taskDisplayAreas;
    }

    public int getTaskDisplayAreaCount() {
        return this.mTaskDisplayAreas.size();
    }

    public TaskDisplayArea getTaskDisplayAreaAt(int index) {
        return this.mTaskDisplayAreas.get(index);
    }

    static final class DefaultProvider implements Provider {
        DefaultProvider() {
        }

        @Override // com.android.server.wm.DisplayAreaPolicy.Provider
        public DisplayAreaPolicy instantiate(WindowManagerService wmService, DisplayContent content, DisplayArea.Root root, DisplayArea<? extends WindowContainer> imeContainer) {
            TaskDisplayArea defaultTaskDisplayArea = new TaskDisplayArea(content, wmService, "DefaultTaskDisplayArea", 1);
            List<TaskDisplayArea> tdaList = new ArrayList<>();
            tdaList.add(defaultTaskDisplayArea);
            return new DisplayAreaPolicyBuilder().build(wmService, content, root, imeContainer, tdaList);
        }
    }

    public interface Provider {
        DisplayAreaPolicy instantiate(WindowManagerService windowManagerService, DisplayContent displayContent, DisplayArea.Root root, DisplayArea<? extends WindowContainer> displayArea);

        static Provider fromResources(Resources res) {
            String name = res.getString(R.string.config_extensionFallbackServiceName);
            if (TextUtils.isEmpty(name)) {
                return new DefaultProvider();
            }
            try {
                return (Provider) Class.forName(name).newInstance();
            } catch (ClassCastException | ReflectiveOperationException e) {
                throw new IllegalStateException("Couldn't instantiate class " + name + " for config_deviceSpecificDisplayAreaPolicyProvider: make sure it has a public zero-argument constructor and implements DisplayAreaPolicy.Provider", e);
            }
        }
    }
}
