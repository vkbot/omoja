package mega.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.core.content.res.ResourcesCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import com.android.launcher3.testing.TestProtocol;
import com.mega.internal.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.time.DurationKt;
import mega.log.MLog;
import org.libpag.PAGComposition;
import org.libpag.PAGFile;
import org.libpag.PAGImageView;
import org.libpag.PAGLayer;

/* JADX INFO: compiled from: AnimationIconView.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0016\u0018\u0000 I2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002IJB\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB!\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0010J\u0014\u0010\"\u001a\u00020 2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00100$J\u000e\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u0019J\b\u0010'\u001a\u00020(H\u0016J\u0012\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010!\u001a\u00020\u0010H\u0002J\b\u0010+\u001a\u00020\u001eH\u0016J\u001a\u0010,\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0002J\u0010\u0010-\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0010H\u0002J\u0010\u0010.\u001a\u00020 2\u0006\u0010/\u001a\u00020\u0001H\u0016J\u0010\u00100\u001a\u00020 2\u0006\u0010/\u001a\u00020\u0001H\u0016J\u0010\u00101\u001a\u00020 2\u0006\u0010/\u001a\u00020\u0001H\u0016J\u0010\u00102\u001a\u00020 2\u0006\u0010/\u001a\u00020\u0001H\u0016J\u0010\u00103\u001a\u00020 2\u0006\u0010/\u001a\u00020\u0001H\u0016J\b\u00104\u001a\u00020 H\u0014J\b\u00105\u001a\u00020 H\u0014J\b\u00106\u001a\u00020 H\u0014J\u000e\u00107\u001a\u00020 2\u0006\u00108\u001a\u00020\fJ\u0016\u00109\u001a\u00020 2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020:0$H\u0002J\u0010\u0010;\u001a\u00020 2\u0006\u0010<\u001a\u00020=H\u0002J\u0006\u0010>\u001a\u00020 J\b\u0010?\u001a\u00020 H\u0002J\u000e\u0010@\u001a\u00020 2\u0006\u0010\u0014\u001a\u00020\fJ\u000e\u0010A\u001a\u00020 2\u0006\u0010\u0015\u001a\u00020\fJ\u0010\u0010B\u001a\u00020 2\u0006\u0010C\u001a\u00020DH\u0016J\u000e\u0010E\u001a\u00020 2\u0006\u0010F\u001a\u00020\fJ\u0010\u0010G\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0010H\u0002J\b\u0010H\u001a\u00020 H\u0002R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006K"}, d2 = {"Lmega/widget/AnimationIconView;", "Lorg/libpag/PAGImageView;", "Lorg/libpag/PAGImageView$PAGImageViewListener;", "Landroidx/lifecycle/ViewModelStoreOwner;", "Landroidx/lifecycle/LifecycleOwner;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "animConfigs", "Ljava/util/ArrayList;", "Lmega/widget/AnimationItemConfig;", "Lkotlin/collections/ArrayList;", "currentConfigRef", "Ljava/util/concurrent/atomic/AtomicReference;", "iconRes", "iconSelectedRes", "lifecycleRegistry", "Landroidx/lifecycle/LifecycleRegistry;", "pagFileLoadedCallback", "Lmega/widget/AnimationIconView$OnPAGFileLoadCallback;", "prevConfigRef", "rollbackFlagRef", "Ljava/util/concurrent/atomic/AtomicBoolean;", "viewModelStore", "Landroidx/lifecycle/ViewModelStore;", "addConfig", "", "config", "addConfigs", "list", "", "addPAGFileLoadedCallback", "callback", "getLifecycle", "Landroidx/lifecycle/Lifecycle;", "getPAGFile", "Lorg/libpag/PAGFile;", "getViewModelStore", "init", "loadAnimation", "onAnimationCancel", "pagImageView", "onAnimationEnd", "onAnimationRepeat", "onAnimationStart", "onAnimationUpdate", "onAttachedToWindow", "onDetachedFromWindow", "onInit", "performAnimation", TestProtocol.STATE_FIELD, "resolveConfigsArray", "", "resolveTypedArray", "typeArray", "Landroid/content/res/TypedArray;", "rollbackToPrevState", "rollbackToPrevStateInternal", "setImageResource", "setImageSelectedRes", "setSelected", "selected", "", "showTargetState", "targetState", "showTargetStateInternal", "updateIcon", "Companion", "OnPAGFileLoadCallback", "system-sdk-ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class AnimationIconView extends PAGImageView implements PAGImageView.PAGImageViewListener, ViewModelStoreOwner, LifecycleOwner {
    private static final double END_PROGRESS = 1.0d;
    private static final double START_PROGRESS = 0.0d;
    private static final String TAG = "AnimationIconView";
    private final ArrayList<AnimationItemConfig> animConfigs;
    private final AtomicReference<AnimationItemConfig> currentConfigRef;
    private int iconRes;
    private int iconSelectedRes;
    private final LifecycleRegistry lifecycleRegistry;
    private OnPAGFileLoadCallback pagFileLoadedCallback;
    private final AtomicReference<AnimationItemConfig> prevConfigRef;
    private final AtomicBoolean rollbackFlagRef;
    private ViewModelStore viewModelStore;

    /* JADX INFO: compiled from: AnimationIconView.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lmega/widget/AnimationIconView$OnPAGFileLoadCallback;", "", "onPAGFileLoaded", "", "pagFile", "Lorg/libpag/PAGFile;", "system-sdk-ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface OnPAGFileLoadCallback {
        void onPAGFileLoaded(PAGFile pagFile);
    }

    public final void addPAGFileLoadedCallback(OnPAGFileLoadCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.pagFileLoadedCallback = callback;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public ViewModelStore getViewModelStore() {
        return this.viewModelStore;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimationIconView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.currentConfigRef = new AtomicReference<>();
        this.prevConfigRef = new AtomicReference<>();
        this.rollbackFlagRef = new AtomicBoolean(false);
        this.animConfigs = new ArrayList<>();
        this.lifecycleRegistry = new LifecycleRegistry(this);
        this.viewModelStore = new ViewModelStore();
        init(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimationIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.currentConfigRef = new AtomicReference<>();
        this.prevConfigRef = new AtomicReference<>();
        this.rollbackFlagRef = new AtomicBoolean(false);
        this.animConfigs = new ArrayList<>();
        this.lifecycleRegistry = new LifecycleRegistry(this);
        this.viewModelStore = new ViewModelStore();
        init(context, attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimationIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.currentConfigRef = new AtomicReference<>();
        this.prevConfigRef = new AtomicReference<>();
        this.rollbackFlagRef = new AtomicBoolean(false);
        this.animConfigs = new ArrayList<>();
        this.lifecycleRegistry = new LifecycleRegistry(this);
        this.viewModelStore = new ViewModelStore();
        init(context, attributeSet);
    }

    private final void init(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.AnimationIconView);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…leable.AnimationIconView)");
            resolveTypedArray(typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        }
        setRepeatCount(1);
        addListener(this);
        onInit();
    }

    private final void resolveTypedArray(TypedArray typeArray) {
        ArrayList arrayList = new ArrayList();
        this.iconRes = typeArray.getResourceId(R.styleable.AnimationIconView_iconRes, 0);
        this.iconSelectedRes = typeArray.getResourceId(R.styleable.AnimationIconView_iconResSelected, 0);
        updateIcon();
        int resourceId = typeArray.getResourceId(R.styleable.AnimationIconView_animConfigs, 0);
        MLog.d(TAG, "configsArrayId: " + resourceId);
        if (resourceId != 0) {
            TypedArray typedArrayObtainTypedArray = getResources().obtainTypedArray(resourceId);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainTypedArray, "resources.obtainTypedArray(configsArrayId)");
            MLog.d(TAG, "configsArrayId: " + typedArrayObtainTypedArray.length());
            int length = typedArrayObtainTypedArray.length();
            for (int i = 0; i < length; i++) {
                String string = typedArrayObtainTypedArray.getString(i);
                if (string != null) {
                    arrayList.add(string);
                }
            }
            typedArrayObtainTypedArray.recycle();
        }
        resolveConfigsArray(arrayList);
    }

    private final void resolveConfigsArray(List<String> list) {
        for (String str : list) {
            MLog.d(TAG, "resolveConfigsItem " + str);
            List listSplit$default = StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null);
            if (listSplit$default.size() == 2) {
                try {
                    addConfig(new AnimationItemConfig(Integer.parseInt((String) listSplit$default.get(0)), (String) listSplit$default.get(2)));
                } catch (NumberFormatException e) {
                    MLog.e(TAG, "parse number exception: " + e);
                }
            }
        }
    }

    protected void onInit() {
        MLog.d(TAG, "onInit");
    }

    public final void setImageResource(int iconRes) {
        MLog.d(TAG, "setIconRes");
        this.iconRes = iconRes;
        updateIcon();
    }

    public final void setImageSelectedRes(int iconSelectedRes) {
        MLog.d(TAG, "setIconResSelected");
        this.iconSelectedRes = iconSelectedRes;
        updateIcon();
    }

    private final void updateIcon() {
        MLog.d(TAG, "updateIcon isSelected: " + isSelected());
        if (isPlaying()) {
            pause();
        }
        PAGComposition composition = getComposition();
        if (composition != null) {
            int iNumChildren = composition.numChildren();
            for (int i = 0; i < iNumChildren; i++) {
                PAGLayer layerAt = composition.getLayerAt(i);
                if (layerAt != null) {
                    layerAt.setVisible(false);
                }
            }
            flush();
        }
        this.currentConfigRef.set(null);
        this.prevConfigRef.set(null);
        setBackground(ResourcesCompat.getDrawable(getResources(), isSelected() ? this.iconSelectedRes : this.iconRes, null));
    }

    @Override // org.libpag.PAGImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START);
        this.lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
    }

    @Override // org.libpag.PAGImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.view.View
    public void setSelected(boolean selected) {
        super.setSelected(selected);
        updateIcon();
    }

    public final void addConfigs(List<AnimationItemConfig> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            addConfig((AnimationItemConfig) it.next());
        }
    }

    public final void addConfig(AnimationItemConfig config) {
        Object next;
        Intrinsics.checkNotNullParameter(config, "config");
        Iterator<T> it = this.animConfigs.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((AnimationItemConfig) next).getState() != config.getState());
        if (next == null) {
            MLog.d("addAnimationConfig: " + config);
            this.animConfigs.add(config);
        }
    }

    public final synchronized void performAnimation(int state) {
        Unit unit;
        Object next;
        Iterator<T> it = this.animConfigs.iterator();
        do {
            unit = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((AnimationItemConfig) next).getState() != state);
        AnimationItemConfig animationItemConfig = (AnimationItemConfig) next;
        if (animationItemConfig != null) {
            if (animationItemConfig.getLayerIndex() == -1) {
                loadAnimation(animationItemConfig);
            }
            PAGComposition composition = getComposition();
            if (composition != null) {
                Intrinsics.checkNotNullExpressionValue(composition, "composition");
                composition.setProgress(START_PROGRESS);
                int iNumChildren = composition.numChildren();
                int i = 0;
                while (i < iNumChildren) {
                    composition.getLayerAt(i).setVisible(animationItemConfig.getLayerIndex() == i);
                    i++;
                }
                AnimationItemConfig animationItemConfig2 = this.currentConfigRef.get();
                this.currentConfigRef.set(animationItemConfig);
                this.prevConfigRef.set(animationItemConfig2);
            }
            play();
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            AnimationIconView animationIconView = this;
            MLog.w(TAG, "can't match animation of " + state);
        }
    }

    public final synchronized void rollbackToPrevState() {
        MLog.d(TAG, "rollback called preConfig: " + this.prevConfigRef.get() + ",currentConfig: " + this.currentConfigRef.get() + ",isPlaying: " + isPlaying());
        if (isPlaying()) {
            this.rollbackFlagRef.set(true);
            pause();
        } else {
            rollbackToPrevStateInternal();
        }
    }

    public final synchronized void showTargetState(int targetState) {
        Object next;
        Iterator<T> it = this.animConfigs.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((AnimationItemConfig) next).getState() != targetState);
        AnimationItemConfig animationItemConfig = (AnimationItemConfig) next;
        MLog.d(TAG, "showTargetState: " + targetState + " ,matchedToStateConfig: " + animationItemConfig + " ,currentConfig: " + this.currentConfigRef.get());
        if (animationItemConfig != null && !Intrinsics.areEqual(animationItemConfig, this.currentConfigRef.get())) {
            showTargetStateInternal(animationItemConfig);
        }
    }

    private final void showTargetStateInternal(AnimationItemConfig config) {
        PAGLayer layerAt;
        if (config.getLayerIndex() == -1) {
            loadAnimation(config);
        }
        PAGComposition composition = getComposition();
        if (composition != null) {
            composition.setProgress(START_PROGRESS);
            int iNumChildren = composition.numChildren();
            int i = 0;
            while (i < iNumChildren) {
                composition.getLayerAt(i).setVisible(config.getLayerIndex() == i);
                i++;
            }
            this.currentConfigRef.set(config);
            this.prevConfigRef.set(null);
            if (config.getLayerIndex() < composition.numChildren() && (layerAt = composition.getLayerAt(config.getLayerIndex())) != null) {
                layerAt.setProgress(END_PROGRESS);
            }
            flush();
        }
    }

    private final void loadAnimation(AnimationItemConfig config) {
        PAGFile pAGFile = getPAGFile(config);
        if (pAGFile != null) {
            if (getComposition() == null) {
                setComposition(PAGComposition.Make(pAGFile.width(), pAGFile.height()));
            }
            MLog.d(TAG, "loadAnimation pagFile: " + pAGFile);
            PAGComposition composition = getComposition();
            if (composition != null) {
                Intrinsics.checkNotNullExpressionValue(composition, "composition");
                int iNumChildren = composition.numChildren();
                getComposition().addLayerAt(pAGFile, iNumChildren);
                config.setLayerIndex(iNumChildren);
                MLog.d(TAG, "setLayerIndex " + iNumChildren);
            }
        }
    }

    @Override // org.libpag.PAGImageView.PAGImageViewListener
    public void onAnimationStart(PAGImageView pagImageView) {
        Intrinsics.checkNotNullParameter(pagImageView, "pagImageView");
        MLog.d(TAG, "onAnimationStart currentAnimationConfig: " + this.currentConfigRef.get());
    }

    @Override // org.libpag.PAGImageView.PAGImageViewListener
    public void onAnimationEnd(PAGImageView pagImageView) {
        Intrinsics.checkNotNullParameter(pagImageView, "pagImageView");
        MLog.d(TAG, "onAnimationEnd currentAnimationConfig: " + this.currentConfigRef.get());
    }

    @Override // org.libpag.PAGImageView.PAGImageViewListener
    public void onAnimationCancel(PAGImageView pagImageView) {
        Intrinsics.checkNotNullParameter(pagImageView, "pagImageView");
        MLog.d(TAG, "onAnimationCancel currentAnimationConfig: " + this.rollbackFlagRef.get() + ",progress: " + getComposition().getProgress());
        getComposition().setProgress(START_PROGRESS);
        setCurrentFrame(0);
        if (this.rollbackFlagRef.get()) {
            rollbackToPrevStateInternal();
            this.rollbackFlagRef.set(false);
        }
    }

    @Override // org.libpag.PAGImageView.PAGImageViewListener
    public void onAnimationRepeat(PAGImageView pagImageView) {
        Intrinsics.checkNotNullParameter(pagImageView, "pagImageView");
        MLog.d(TAG, "onAnimationRepeat currentAnimationConfig: " + this.currentConfigRef.get());
    }

    @Override // org.libpag.PAGImageView.PAGImageViewListener
    public void onAnimationUpdate(PAGImageView pagImageView) {
        Intrinsics.checkNotNullParameter(pagImageView, "pagImageView");
        if (getBackground() == null || !isPlaying()) {
            return;
        }
        post(new Runnable() { // from class: mega.widget.AnimationIconView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AnimationIconView.onAnimationUpdate$lambda$13(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAnimationUpdate$lambda$13(AnimationIconView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setBackground(null);
    }

    private final PAGFile getPAGFile(AnimationItemConfig config) {
        PAGFile pAGFileLoad = PAGFile.Load(getContext().getAssets(), config.getAnimationFilePath());
        if (pAGFileLoad == null) {
            return null;
        }
        OnPAGFileLoadCallback onPAGFileLoadCallback = this.pagFileLoadedCallback;
        if (onPAGFileLoadCallback != null) {
            onPAGFileLoadCallback.onPAGFileLoaded(pAGFileLoad);
        }
        config.setAnimationFrames(Math.round((pAGFileLoad.duration() * pAGFileLoad.frameRate()) / DurationKt.NANOS_IN_MILLIS));
        MLog.d(TAG, "animationFrames: " + config.getAnimationFrames());
        return pAGFileLoad;
    }

    private final void rollbackToPrevStateInternal() {
        PAGLayer layerAt;
        PAGLayer layerAt2;
        AnimationItemConfig animationItemConfig = this.prevConfigRef.get();
        AnimationItemConfig animationItemConfig2 = this.currentConfigRef.get();
        PAGComposition composition = getComposition();
        MLog.d(TAG, "rollbackToPrevStateInternal preConfig: " + animationItemConfig + ", composition: " + composition);
        if (animationItemConfig == null || animationItemConfig2 == null) {
            this.currentConfigRef.set(null);
            updateIcon();
            return;
        }
        if (composition != null) {
            int iNumChildren = composition.numChildren();
            int i = 0;
            while (i < iNumChildren) {
                MLog.d(TAG, "rollbackToPrevStateInternal " + i + ", " + animationItemConfig.getLayerIndex());
                composition.getLayerAt(i).setVisible(animationItemConfig.getLayerIndex() == i);
                i++;
            }
            if (animationItemConfig.getLayerIndex() < composition.numChildren() && (layerAt2 = composition.getLayerAt(animationItemConfig.getLayerIndex())) != null) {
                layerAt2.setProgress(END_PROGRESS);
            }
            if (animationItemConfig2.getLayerIndex() < composition.numChildren() && (layerAt = composition.getLayerAt(animationItemConfig2.getLayerIndex())) != null) {
                layerAt.setProgress(START_PROGRESS);
            }
            flush();
            this.currentConfigRef.set(animationItemConfig);
            this.prevConfigRef.set(null);
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.lifecycleRegistry;
    }
}
