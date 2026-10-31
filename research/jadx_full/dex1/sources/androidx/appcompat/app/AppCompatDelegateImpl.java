package androidx.appcompat.app;

import android.R$attr;
import android.R$id;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.LayoutInflater$Factory2;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.Window$Callback;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R$color;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$style;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ActionMode$Callback;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.StandaloneActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuBuilder$Callback;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NavUtils;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat$ThemeCompat;
import androidx.core.os.LocaleListCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.KeyEventDispatcher$Component;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.PopupWindowCompat;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import j1.i;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder$Callback, LayoutInflater$Factory2 {
    static final String EXCEPTION_HANDLER_MESSAGE_SUFFIX = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";
    private static boolean sInstalledExceptionHandler;
    ActionBar mActionBar;
    private AppCompatDelegateImpl$ActionMenuPresenterCallback mActionMenuPresenterCallback;
    ActionMode mActionMode;
    PopupWindow mActionModePopup;
    ActionBarContextView mActionModeView;
    private int mActivityHandlesConfigFlags;
    private boolean mActivityHandlesConfigFlagsChecked;
    final AppCompatCallback mAppCompatCallback;
    private AppCompatViewInflater mAppCompatViewInflater;
    private AppCompatDelegateImpl$AppCompatWindowCallback mAppCompatWindowCallback;
    private AppCompatDelegateImpl$AutoNightModeManager mAutoBatteryNightModeManager;
    private AppCompatDelegateImpl$AutoNightModeManager mAutoTimeNightModeManager;
    private OnBackInvokedCallback mBackCallback;
    private boolean mBaseContextAttached;
    private boolean mClosingActionMenu;
    final Context mContext;
    private boolean mCreated;
    private DecorContentParent mDecorContentParent;
    boolean mDestroyed;
    private OnBackInvokedDispatcher mDispatcher;
    private Configuration mEffectiveConfiguration;
    private boolean mEnableDefaultActionBarUp;
    ViewPropertyAnimatorCompat mFadeAnim;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    private boolean mHandleNativeActionModes;
    boolean mHasActionBar;
    final Object mHost;
    int mInvalidatePanelMenuFeatures;
    boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable;
    boolean mIsFloating;
    private LayoutIncludeDetector mLayoutIncludeDetector;
    private int mLocalNightMode;
    private boolean mLongPressBackDown;
    MenuInflater mMenuInflater;
    boolean mOverlayActionBar;
    boolean mOverlayActionMode;
    private AppCompatDelegateImpl$PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private AppCompatDelegateImpl$PanelFeatureState[] mPanels;
    private AppCompatDelegateImpl$PanelFeatureState mPreparedPanel;
    Runnable mShowActionModePopup;
    private View mStatusGuard;
    ViewGroup mSubDecor;
    private boolean mSubDecorInstalled;
    private Rect mTempRect1;
    private Rect mTempRect2;
    private int mThemeResId;
    private CharSequence mTitle;
    private TextView mTitleView;
    Window mWindow;
    boolean mWindowNoTitle;
    private static final SimpleArrayMap<String, Integer> sLocalNightModes = new SimpleArrayMap<>();
    private static final boolean IS_PRE_LOLLIPOP = false;
    private static final int[] sWindowBackgroundStyleable = {R$attr.windowBackground};
    private static final boolean sCanReturnDifferentContext = !"robolectric".equals(Build.FINGERPRINT);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        SimpleArrayMap<String, Integer> simpleArrayMap;
        Integer num;
        AppCompatActivity appCompatActivityTryUnwrapContext;
        this.mFadeAnim = null;
        this.mHandleNativeActionModes = true;
        this.mLocalNightMode = -100;
        this.mInvalidatePanelMenuRunnable = new AppCompatDelegateImpl$2(this);
        this.mContext = context;
        this.mAppCompatCallback = appCompatCallback;
        this.mHost = obj;
        if (this.mLocalNightMode == -100 && (obj instanceof Dialog) && (appCompatActivityTryUnwrapContext = tryUnwrapContext()) != null) {
            this.mLocalNightMode = appCompatActivityTryUnwrapContext.getDelegate().getLocalNightMode();
        }
        if (this.mLocalNightMode == -100 && (num = (simpleArrayMap = sLocalNightModes).get(obj.getClass().getName())) != null) {
            this.mLocalNightMode = num.intValue();
            simpleArrayMap.remove(obj.getClass().getName());
        }
        if (window != null) {
            attachToWindow(window);
        }
        AppCompatDrawableManager.preload();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean applyApplicationSpecificConfig(boolean z8, boolean z9) {
        if (this.mDestroyed) {
            return false;
        }
        int iCalculateNightMode = calculateNightMode();
        int iMapNightMode = mapNightMode(this.mContext, iCalculateNightMode);
        LocaleListCompat localeListCompatCalculateApplicationLocales = Build$VERSION.SDK_INT < 33 ? calculateApplicationLocales(this.mContext) : null;
        if (!z9 && localeListCompatCalculateApplicationLocales != null) {
            localeListCompatCalculateApplicationLocales = getConfigurationLocales(this.mContext.getResources().getConfiguration());
        }
        boolean zUpdateAppConfiguration = updateAppConfiguration(iMapNightMode, localeListCompatCalculateApplicationLocales, z8);
        if (iCalculateNightMode == 0) {
            getAutoTimeNightModeManager(this.mContext).setup();
        } else {
            AppCompatDelegateImpl$AutoNightModeManager appCompatDelegateImpl$AutoNightModeManager = this.mAutoTimeNightModeManager;
            if (appCompatDelegateImpl$AutoNightModeManager != null) {
                appCompatDelegateImpl$AutoNightModeManager.cleanup();
            }
        }
        if (iCalculateNightMode == 3) {
            getAutoBatteryNightModeManager(this.mContext).setup();
            return zUpdateAppConfiguration;
        }
        AppCompatDelegateImpl$AutoNightModeManager appCompatDelegateImpl$AutoNightModeManager2 = this.mAutoBatteryNightModeManager;
        if (appCompatDelegateImpl$AutoNightModeManager2 != null) {
            appCompatDelegateImpl$AutoNightModeManager2.cleanup();
        }
        return zUpdateAppConfiguration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void applyFixedSizeWindow() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.mSubDecor.findViewById(R$id.content);
        View decorView = this.mWindow.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(R$styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void attachToWindow(@NonNull Window window) {
        if (this.mWindow != null) {
            i.l("AppCompat has already installed itself into the Window");
            return;
        }
        Window$Callback callback = window.getCallback();
        if (callback instanceof AppCompatDelegateImpl$AppCompatWindowCallback) {
            i.l("AppCompat has already installed itself into the Window");
            return;
        }
        AppCompatDelegateImpl$AppCompatWindowCallback appCompatDelegateImpl$AppCompatWindowCallback = new AppCompatDelegateImpl$AppCompatWindowCallback(this, callback);
        this.mAppCompatWindowCallback = appCompatDelegateImpl$AppCompatWindowCallback;
        window.setCallback(appCompatDelegateImpl$AppCompatWindowCallback);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mContext, (AttributeSet) null, sWindowBackgroundStyleable);
        Drawable drawableIfKnown = tintTypedArrayObtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            window.setBackgroundDrawable(drawableIfKnown);
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        this.mWindow = window;
        if (Build$VERSION.SDK_INT < 33 || this.mDispatcher != null) {
            return;
        }
        setOnBackInvokedDispatcher(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int calculateNightMode() {
        int i9 = this.mLocalNightMode;
        return i9 != -100 ? i9 : AppCompatDelegate.getDefaultNightMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void cleanupAutoManagers() {
        AppCompatDelegateImpl$AutoNightModeManager appCompatDelegateImpl$AutoNightModeManager = this.mAutoTimeNightModeManager;
        if (appCompatDelegateImpl$AutoNightModeManager != null) {
            appCompatDelegateImpl$AutoNightModeManager.cleanup();
        }
        AppCompatDelegateImpl$AutoNightModeManager appCompatDelegateImpl$AutoNightModeManager2 = this.mAutoBatteryNightModeManager;
        if (appCompatDelegateImpl$AutoNightModeManager2 != null) {
            appCompatDelegateImpl$AutoNightModeManager2.cleanup();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private Configuration createOverrideAppConfiguration(@NonNull Context context, int i9, @Nullable LocaleListCompat localeListCompat, @Nullable Configuration configuration, boolean z8) {
        int i10;
        if (i9 == 1) {
            i10 = 16;
        } else if (i9 != 2) {
            i10 = z8 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i10 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i10 | (configuration2.uiMode & (-49));
        if (localeListCompat != null) {
            setConfigurationLocales(configuration2, localeListCompat);
        }
        return configuration2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewGroup createSubDecor() {
        ViewGroup viewGroup;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(R$styleable.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            i.l("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
            return null;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowNoTitle, false)) {
            requestWindowFeature(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBar, false)) {
            requestWindowFeature(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            requestWindowFeature(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            requestWindowFeature(10);
        }
        this.mIsFloating = typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        ensureWindow();
        this.mWindow.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        if (this.mWindowNoTitle) {
            viewGroup = this.mOverlayActionMode ? (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.mIsFloating) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_dialog_title_material, (ViewGroup) null);
            this.mOverlayActionBar = false;
            this.mHasActionBar = false;
        } else if (this.mHasActionBar) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(androidx.appcompat.R$attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new ContextThemeWrapper(this.mContext, typedValue.resourceId) : this.mContext).inflate(R$layout.abc_screen_toolbar, (ViewGroup) null);
            DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(androidx.appcompat.R$id.decor_content_parent);
            this.mDecorContentParent = decorContentParent;
            decorContentParent.setWindowCallback(getWindowCallback());
            if (this.mOverlayActionBar) {
                this.mDecorContentParent.initFeature(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
            }
            if (this.mFeatureProgress) {
                this.mDecorContentParent.initFeature(2);
            }
            if (this.mFeatureIndeterminateProgress) {
                this.mDecorContentParent.initFeature(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.mHasActionBar + ", windowActionBarOverlay: " + this.mOverlayActionBar + ", android:windowIsFloating: " + this.mIsFloating + ", windowActionModeOverlay: " + this.mOverlayActionMode + ", windowNoTitle: " + this.mWindowNoTitle + " }");
        }
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new AppCompatDelegateImpl$3(this));
        if (this.mDecorContentParent == null) {
            this.mTitleView = (TextView) viewGroup.findViewById(androidx.appcompat.R$id.title);
        }
        ViewUtils.makeOptionalFitsSystemWindows(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(androidx.appcompat.R$id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.mWindow.findViewById(R$id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R$id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.mWindow.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new AppCompatDelegateImpl$5(this));
        return viewGroup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureSubDecor() {
        if (this.mSubDecorInstalled) {
            return;
        }
        this.mSubDecor = createSubDecor();
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            DecorContentParent decorContentParent = this.mDecorContentParent;
            if (decorContentParent != null) {
                decorContentParent.setWindowTitle(title);
            } else if (peekSupportActionBar() != null) {
                peekSupportActionBar().setWindowTitle(title);
            } else {
                TextView textView = this.mTitleView;
                if (textView != null) {
                    textView.setText(title);
                }
            }
        }
        applyFixedSizeWindow();
        onSubDecorInstalled(this.mSubDecor);
        this.mSubDecorInstalled = true;
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, false);
        if (this.mDestroyed) {
            return;
        }
        if (panelState == null || panelState.menu == null) {
            invalidatePanelMenu(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureWindow() {
        if (this.mWindow == null) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                attachToWindow(((Activity) obj).getWindow());
            }
        }
        if (this.mWindow != null) {
            return;
        }
        i.l("We have not been given a Window");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private static Configuration generateConfigDelta(@NonNull Configuration configuration, @Nullable Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f8 = configuration.fontScale;
            float f9 = configuration2.fontScale;
            if (f8 != f9) {
                configuration3.fontScale = f9;
            }
            int i9 = configuration.mcc;
            int i10 = configuration2.mcc;
            if (i9 != i10) {
                configuration3.mcc = i10;
            }
            int i11 = configuration.mnc;
            int i12 = configuration2.mnc;
            if (i11 != i12) {
                configuration3.mnc = i12;
            }
            AppCompatDelegateImpl$Api24Impl.generateConfigDelta_locale(configuration, configuration2, configuration3);
            int i13 = configuration.touchscreen;
            int i14 = configuration2.touchscreen;
            if (i13 != i14) {
                configuration3.touchscreen = i14;
            }
            int i15 = configuration.keyboard;
            int i16 = configuration2.keyboard;
            if (i15 != i16) {
                configuration3.keyboard = i16;
            }
            int i17 = configuration.keyboardHidden;
            int i18 = configuration2.keyboardHidden;
            if (i17 != i18) {
                configuration3.keyboardHidden = i18;
            }
            int i19 = configuration.navigation;
            int i20 = configuration2.navigation;
            if (i19 != i20) {
                configuration3.navigation = i20;
            }
            int i21 = configuration.navigationHidden;
            int i22 = configuration2.navigationHidden;
            if (i21 != i22) {
                configuration3.navigationHidden = i22;
            }
            int i23 = configuration.orientation;
            int i24 = configuration2.orientation;
            if (i23 != i24) {
                configuration3.orientation = i24;
            }
            int i25 = configuration.screenLayout & 15;
            int i26 = configuration2.screenLayout;
            if (i25 != (i26 & 15)) {
                configuration3.screenLayout |= i26 & 15;
            }
            int i27 = configuration.screenLayout & 192;
            int i28 = configuration2.screenLayout;
            if (i27 != (i28 & 192)) {
                configuration3.screenLayout |= i28 & 192;
            }
            int i29 = configuration.screenLayout & 48;
            int i30 = configuration2.screenLayout;
            if (i29 != (i30 & 48)) {
                configuration3.screenLayout |= i30 & 48;
            }
            int i31 = configuration.screenLayout & 768;
            int i32 = configuration2.screenLayout;
            if (i31 != (i32 & 768)) {
                configuration3.screenLayout |= i32 & 768;
            }
            if (Build$VERSION.SDK_INT >= 26) {
                AppCompatDelegateImpl$Api26Impl.generateConfigDelta_colorMode(configuration, configuration2, configuration3);
            }
            int i33 = configuration.uiMode & 15;
            int i34 = configuration2.uiMode;
            if (i33 != (i34 & 15)) {
                configuration3.uiMode |= i34 & 15;
            }
            int i35 = configuration.uiMode & 48;
            int i36 = configuration2.uiMode;
            if (i35 != (i36 & 48)) {
                configuration3.uiMode |= i36 & 48;
            }
            int i37 = configuration.screenWidthDp;
            int i38 = configuration2.screenWidthDp;
            if (i37 != i38) {
                configuration3.screenWidthDp = i38;
            }
            int i39 = configuration.screenHeightDp;
            int i40 = configuration2.screenHeightDp;
            if (i39 != i40) {
                configuration3.screenHeightDp = i40;
            }
            int i41 = configuration.smallestScreenWidthDp;
            int i42 = configuration2.smallestScreenWidthDp;
            if (i41 != i42) {
                configuration3.smallestScreenWidthDp = i42;
            }
            int i43 = configuration.densityDpi;
            int i44 = configuration2.densityDpi;
            if (i43 != i44) {
                configuration3.densityDpi = i44;
            }
        }
        return configuration3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getActivityHandlesConfigChangesFlags(Context context) {
        if (!this.mActivityHandlesConfigFlagsChecked && (this.mHost instanceof Activity)) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return 0;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, this.mHost.getClass()), Build$VERSION.SDK_INT >= 29 ? 269221888 : 786432);
                if (activityInfo != null) {
                    this.mActivityHandlesConfigFlags = activityInfo.configChanges;
                }
            } catch (PackageManager$NameNotFoundException e) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                this.mActivityHandlesConfigFlags = 0;
            }
        }
        this.mActivityHandlesConfigFlagsChecked = true;
        return this.mActivityHandlesConfigFlags;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AppCompatDelegateImpl$AutoNightModeManager getAutoBatteryNightModeManager(@NonNull Context context) {
        if (this.mAutoBatteryNightModeManager == null) {
            this.mAutoBatteryNightModeManager = new AppCompatDelegateImpl$AutoBatteryNightModeManager(this, context);
        }
        return this.mAutoBatteryNightModeManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AppCompatDelegateImpl$AutoNightModeManager getAutoTimeNightModeManager(@NonNull Context context) {
        if (this.mAutoTimeNightModeManager == null) {
            this.mAutoTimeNightModeManager = new AppCompatDelegateImpl$AutoTimeNightModeManager(this, TwilightManager.getInstance(context));
        }
        return this.mAutoTimeNightModeManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initWindowDecorActionBar() {
        ensureSubDecor();
        if (this.mHasActionBar && this.mActionBar == null) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                this.mActionBar = new WindowDecorActionBar((Activity) this.mHost, this.mOverlayActionBar);
            } else if (obj instanceof Dialog) {
                this.mActionBar = new WindowDecorActionBar((Dialog) this.mHost);
            }
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                actionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean initializePanelContent(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState) {
        View view = appCompatDelegateImpl$PanelFeatureState.createdPanelView;
        if (view != null) {
            appCompatDelegateImpl$PanelFeatureState.shownPanelView = view;
            return true;
        }
        if (appCompatDelegateImpl$PanelFeatureState.menu == null) {
            return false;
        }
        if (this.mPanelMenuPresenterCallback == null) {
            this.mPanelMenuPresenterCallback = new AppCompatDelegateImpl$PanelMenuPresenterCallback(this);
        }
        View view2 = (View) appCompatDelegateImpl$PanelFeatureState.getListMenuView(this.mPanelMenuPresenterCallback);
        appCompatDelegateImpl$PanelFeatureState.shownPanelView = view2;
        return view2 != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean initializePanelDecor(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState) {
        appCompatDelegateImpl$PanelFeatureState.setStyle(getActionBarThemedContext());
        appCompatDelegateImpl$PanelFeatureState.decorView = new AppCompatDelegateImpl$ListMenuDecorView(this, appCompatDelegateImpl$PanelFeatureState.listPresenterContext);
        appCompatDelegateImpl$PanelFeatureState.gravity = 81;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean initializePanelMenu(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState) {
        Resources$Theme resources$ThemeNewTheme;
        Context context = this.mContext;
        int i9 = appCompatDelegateImpl$PanelFeatureState.featureId;
        if ((i9 == 0 || i9 == 108) && this.mDecorContentParent != null) {
            TypedValue typedValue = new TypedValue();
            Resources$Theme theme = context.getTheme();
            theme.resolveAttribute(androidx.appcompat.R$attr.actionBarTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                resources$ThemeNewTheme = context.getResources().newTheme();
                resources$ThemeNewTheme.setTo(theme);
                resources$ThemeNewTheme.applyStyle(typedValue.resourceId, true);
                resources$ThemeNewTheme.resolveAttribute(androidx.appcompat.R$attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(androidx.appcompat.R$attr.actionBarWidgetTheme, typedValue, true);
                resources$ThemeNewTheme = null;
            }
            if (typedValue.resourceId != 0) {
                if (resources$ThemeNewTheme == null) {
                    resources$ThemeNewTheme = context.getResources().newTheme();
                    resources$ThemeNewTheme.setTo(theme);
                }
                resources$ThemeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (resources$ThemeNewTheme != null) {
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(resources$ThemeNewTheme);
                context = contextThemeWrapper;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.setCallback(this);
        appCompatDelegateImpl$PanelFeatureState.setMenu(menuBuilder);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void invalidatePanelMenu(int i9) {
        this.mInvalidatePanelMenuFeatures = (1 << i9) | this.mInvalidatePanelMenuFeatures;
        if (this.mInvalidatePanelMenuPosted) {
            return;
        }
        ViewCompat.postOnAnimation(this.mWindow.getDecorView(), this.mInvalidatePanelMenuRunnable);
        this.mInvalidatePanelMenuPosted = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean onKeyDownPanel(int i9, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(i9, true);
        if (panelState.isOpen) {
            return false;
        }
        return preparePanel(panelState, keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    private boolean onKeyUpPanel(int i9, KeyEvent keyEvent) {
        boolean zPreparePanel;
        DecorContentParent decorContentParent;
        if (this.mActionMode != null) {
            return false;
        }
        boolean zHideOverflowMenu = true;
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(i9, true);
        if (i9 != 0 || (decorContentParent = this.mDecorContentParent) == null || !decorContentParent.canShowOverflowMenu() || ViewConfiguration.get(this.mContext).hasPermanentMenuKey()) {
            boolean z8 = panelState.isOpen;
            if (z8 || panelState.isHandled) {
                closePanel(panelState, true);
                zHideOverflowMenu = z8;
            } else if (panelState.isPrepared) {
                if (panelState.refreshMenuContent) {
                    panelState.isPrepared = false;
                    zPreparePanel = preparePanel(panelState, keyEvent);
                } else {
                    zPreparePanel = true;
                }
                if (zPreparePanel) {
                    openPanel(panelState, keyEvent);
                } else {
                    zHideOverflowMenu = false;
                }
            } else {
                zHideOverflowMenu = false;
            }
        } else if (this.mDecorContentParent.isOverflowMenuShowing()) {
            zHideOverflowMenu = this.mDecorContentParent.hideOverflowMenu();
        } else if (this.mDestroyed || !preparePanel(panelState, keyEvent)) {
            zHideOverflowMenu = false;
        } else {
            zHideOverflowMenu = this.mDecorContentParent.showOverflowMenu();
        }
        if (zHideOverflowMenu) {
            AudioManager audioManager = (AudioManager) this.mContext.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
                return zHideOverflowMenu;
            }
            Log.w("AppCompatDelegate", "Couldn't get audio manager");
        }
        return zHideOverflowMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:64:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:70:? A[RETURN, SYNTHETIC] */
    private void openPanel(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, KeyEvent keyEvent) {
        int i9;
        ViewGroup$LayoutParams layoutParams;
        if (appCompatDelegateImpl$PanelFeatureState.isOpen || this.mDestroyed) {
            return;
        }
        if (appCompatDelegateImpl$PanelFeatureState.featureId == 0 && (this.mContext.getResources().getConfiguration().screenLayout & 15) == 4) {
            return;
        }
        Window$Callback windowCallback = getWindowCallback();
        if (windowCallback != null && !windowCallback.onMenuOpened(appCompatDelegateImpl$PanelFeatureState.featureId, appCompatDelegateImpl$PanelFeatureState.menu)) {
            closePanel(appCompatDelegateImpl$PanelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && preparePanel(appCompatDelegateImpl$PanelFeatureState, keyEvent)) {
            ViewGroup viewGroup = appCompatDelegateImpl$PanelFeatureState.decorView;
            if (viewGroup != null && !appCompatDelegateImpl$PanelFeatureState.refreshDecorView) {
                View view = appCompatDelegateImpl$PanelFeatureState.createdPanelView;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i9 = -1;
                }
                appCompatDelegateImpl$PanelFeatureState.isHandled = false;
                WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(i9, -2, appCompatDelegateImpl$PanelFeatureState.f115x, appCompatDelegateImpl$PanelFeatureState.f116y, PointerIconCompat.TYPE_HAND, 8519680, -3);
                windowManager$LayoutParams.gravity = appCompatDelegateImpl$PanelFeatureState.gravity;
                windowManager$LayoutParams.windowAnimations = appCompatDelegateImpl$PanelFeatureState.windowAnimations;
                windowManager.addView(appCompatDelegateImpl$PanelFeatureState.decorView, windowManager$LayoutParams);
                appCompatDelegateImpl$PanelFeatureState.isOpen = true;
                if (appCompatDelegateImpl$PanelFeatureState.featureId == 0) {
                    updateBackInvokedCallbackState();
                }
            }
            if (viewGroup == null) {
                if (!initializePanelDecor(appCompatDelegateImpl$PanelFeatureState) || appCompatDelegateImpl$PanelFeatureState.decorView == null) {
                    return;
                }
            } else if (appCompatDelegateImpl$PanelFeatureState.refreshDecorView && viewGroup.getChildCount() > 0) {
                appCompatDelegateImpl$PanelFeatureState.decorView.removeAllViews();
            }
            if (!initializePanelContent(appCompatDelegateImpl$PanelFeatureState) || !appCompatDelegateImpl$PanelFeatureState.hasPanelItems()) {
                appCompatDelegateImpl$PanelFeatureState.refreshDecorView = true;
                return;
            }
            ViewGroup$LayoutParams layoutParams2 = appCompatDelegateImpl$PanelFeatureState.shownPanelView.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams2 = new ViewGroup$LayoutParams(-2, -2);
            }
            appCompatDelegateImpl$PanelFeatureState.decorView.setBackgroundResource(appCompatDelegateImpl$PanelFeatureState.background);
            ViewParent parent = appCompatDelegateImpl$PanelFeatureState.shownPanelView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(appCompatDelegateImpl$PanelFeatureState.shownPanelView);
            }
            appCompatDelegateImpl$PanelFeatureState.decorView.addView(appCompatDelegateImpl$PanelFeatureState.shownPanelView, layoutParams2);
            if (!appCompatDelegateImpl$PanelFeatureState.shownPanelView.hasFocus()) {
                appCompatDelegateImpl$PanelFeatureState.shownPanelView.requestFocus();
            }
            i9 = -2;
            appCompatDelegateImpl$PanelFeatureState.isHandled = false;
            WindowManager$LayoutParams windowManager$LayoutParams2 = new WindowManager$LayoutParams(i9, -2, appCompatDelegateImpl$PanelFeatureState.f115x, appCompatDelegateImpl$PanelFeatureState.f116y, PointerIconCompat.TYPE_HAND, 8519680, -3);
            windowManager$LayoutParams2.gravity = appCompatDelegateImpl$PanelFeatureState.gravity;
            windowManager$LayoutParams2.windowAnimations = appCompatDelegateImpl$PanelFeatureState.windowAnimations;
            windowManager.addView(appCompatDelegateImpl$PanelFeatureState.decorView, windowManager$LayoutParams2);
            appCompatDelegateImpl$PanelFeatureState.isOpen = true;
            if (appCompatDelegateImpl$PanelFeatureState.featureId == 0) {
                updateBackInvokedCallbackState();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean performPanelShortcut(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, int i9, KeyEvent keyEvent, int i10) {
        MenuBuilder menuBuilder;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((appCompatDelegateImpl$PanelFeatureState.isPrepared || preparePanel(appCompatDelegateImpl$PanelFeatureState, keyEvent)) && (menuBuilder = appCompatDelegateImpl$PanelFeatureState.menu) != null) {
            zPerformShortcut = menuBuilder.performShortcut(i9, keyEvent, i10);
        }
        if (zPerformShortcut && (i10 & 1) == 0 && this.mDecorContentParent == null) {
            closePanel(appCompatDelegateImpl$PanelFeatureState, true);
        }
        return zPerformShortcut;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean preparePanel(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        DecorContentParent decorContentParent3;
        if (this.mDestroyed) {
            return false;
        }
        if (appCompatDelegateImpl$PanelFeatureState.isPrepared) {
            return true;
        }
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState2 = this.mPreparedPanel;
        if (appCompatDelegateImpl$PanelFeatureState2 != null && appCompatDelegateImpl$PanelFeatureState2 != appCompatDelegateImpl$PanelFeatureState) {
            closePanel(appCompatDelegateImpl$PanelFeatureState2, false);
        }
        Window$Callback windowCallback = getWindowCallback();
        if (windowCallback != null) {
            appCompatDelegateImpl$PanelFeatureState.createdPanelView = windowCallback.onCreatePanelView(appCompatDelegateImpl$PanelFeatureState.featureId);
        }
        int i9 = appCompatDelegateImpl$PanelFeatureState.featureId;
        boolean z8 = i9 == 0 || i9 == 108;
        if (z8 && (decorContentParent3 = this.mDecorContentParent) != null) {
            decorContentParent3.setMenuPrepared();
        }
        if (appCompatDelegateImpl$PanelFeatureState.createdPanelView == null && (!z8 || !(peekSupportActionBar() instanceof ToolbarActionBar))) {
            MenuBuilder menuBuilder = appCompatDelegateImpl$PanelFeatureState.menu;
            if (menuBuilder == null || appCompatDelegateImpl$PanelFeatureState.refreshMenuContent) {
                if (menuBuilder == null && (!initializePanelMenu(appCompatDelegateImpl$PanelFeatureState) || appCompatDelegateImpl$PanelFeatureState.menu == null)) {
                    return false;
                }
                if (z8 && this.mDecorContentParent != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new AppCompatDelegateImpl$ActionMenuPresenterCallback(this);
                    }
                    this.mDecorContentParent.setMenu(appCompatDelegateImpl$PanelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                appCompatDelegateImpl$PanelFeatureState.menu.stopDispatchingItemsChanged();
                if (!windowCallback.onCreatePanelMenu(appCompatDelegateImpl$PanelFeatureState.featureId, appCompatDelegateImpl$PanelFeatureState.menu)) {
                    appCompatDelegateImpl$PanelFeatureState.setMenu(null);
                    if (z8 && (decorContentParent = this.mDecorContentParent) != null) {
                        decorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                    }
                    return false;
                }
                appCompatDelegateImpl$PanelFeatureState.refreshMenuContent = false;
            }
            appCompatDelegateImpl$PanelFeatureState.menu.stopDispatchingItemsChanged();
            Bundle bundle = appCompatDelegateImpl$PanelFeatureState.frozenActionViewState;
            if (bundle != null) {
                appCompatDelegateImpl$PanelFeatureState.menu.restoreActionViewStates(bundle);
                appCompatDelegateImpl$PanelFeatureState.frozenActionViewState = null;
            }
            if (!windowCallback.onPreparePanel(0, appCompatDelegateImpl$PanelFeatureState.createdPanelView, appCompatDelegateImpl$PanelFeatureState.menu)) {
                if (z8 && (decorContentParent2 = this.mDecorContentParent) != null) {
                    decorContentParent2.setMenu(null, this.mActionMenuPresenterCallback);
                }
                appCompatDelegateImpl$PanelFeatureState.menu.startDispatchingItemsChanged();
                return false;
            }
            boolean z9 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            appCompatDelegateImpl$PanelFeatureState.qwertyMode = z9;
            appCompatDelegateImpl$PanelFeatureState.menu.setQwertyMode(z9);
            appCompatDelegateImpl$PanelFeatureState.menu.startDispatchingItemsChanged();
        }
        appCompatDelegateImpl$PanelFeatureState.isPrepared = true;
        appCompatDelegateImpl$PanelFeatureState.isHandled = false;
        this.mPreparedPanel = appCompatDelegateImpl$PanelFeatureState;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void reopenMenu(boolean z8) {
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent == null || !decorContentParent.canShowOverflowMenu() || (ViewConfiguration.get(this.mContext).hasPermanentMenuKey() && !this.mDecorContentParent.isOverflowMenuShowPending())) {
            AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, true);
            panelState.refreshDecorView = true;
            closePanel(panelState, false);
            openPanel(panelState, null);
            return;
        }
        Window$Callback windowCallback = getWindowCallback();
        if (this.mDecorContentParent.isOverflowMenuShowing() && z8) {
            this.mDecorContentParent.hideOverflowMenu();
            if (this.mDestroyed) {
                return;
            }
            windowCallback.onPanelClosed(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, getPanelState(0, true).menu);
            return;
        }
        if (windowCallback == null || this.mDestroyed) {
            return;
        }
        if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 1) != 0) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuRunnable.run();
        }
        AppCompatDelegateImpl$PanelFeatureState panelState2 = getPanelState(0, true);
        MenuBuilder menuBuilder = panelState2.menu;
        if (menuBuilder == null || panelState2.refreshMenuContent || !windowCallback.onPreparePanel(0, panelState2.createdPanelView, menuBuilder)) {
            return;
        }
        windowCallback.onMenuOpened(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, panelState2.menu);
        this.mDecorContentParent.showOverflowMenu();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int sanitizeWindowFeatureId(int i9) {
        if (i9 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR;
        }
        if (i9 != 9) {
            return i9;
        }
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean shouldInheritContext(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.mWindow.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ((View) viewParent).isAttachedToWindow()) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void throwFeatureRequestIfSubDecorInstalled() {
        if (this.mSubDecorInstalled) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private AppCompatActivity tryUnwrapContext() {
        for (Context baseContext = this.mContext; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof AppCompatActivity) {
                return (AppCompatActivity) baseContext;
            }
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: android.app.Activity */
    /* JADX WARN: Multi-variable type inference failed */
    private void updateActivityConfiguration(Configuration configuration) {
        Activity activity = (Activity) this.mHost;
        if (activity instanceof LifecycleOwner) {
            if (((LifecycleOwner) activity).getLifecycle().getState().isAtLeast(Lifecycle$State.CREATED)) {
                activity.onConfigurationChanged(configuration);
            }
        } else {
            if (!this.mCreated || this.mDestroyed) {
                return;
            }
            activity.onConfigurationChanged(configuration);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:36:0x008c  */
    private boolean updateAppConfiguration(int i9, @Nullable LocaleListCompat localeListCompat, boolean z8) {
        boolean z9;
        Configuration configurationCreateOverrideAppConfiguration = createOverrideAppConfiguration(this.mContext, i9, localeListCompat, null, false);
        int activityHandlesConfigChangesFlags = getActivityHandlesConfigChangesFlags(this.mContext);
        Configuration configuration = this.mEffectiveConfiguration;
        if (configuration == null) {
            configuration = this.mContext.getResources().getConfiguration();
        }
        int i10 = configuration.uiMode & 48;
        int i11 = configurationCreateOverrideAppConfiguration.uiMode & 48;
        LocaleListCompat configurationLocales = getConfigurationLocales(configuration);
        LocaleListCompat configurationLocales2 = localeListCompat == null ? null : getConfigurationLocales(configurationCreateOverrideAppConfiguration);
        int i12 = i10 != i11 ? 512 : 0;
        if (configurationLocales2 != null && !configurationLocales.equals(configurationLocales2)) {
            i12 |= 8196;
        }
        boolean z10 = true;
        if (((~activityHandlesConfigChangesFlags) & i12) != 0 && z8 && this.mBaseContextAttached && (sCanReturnDifferentContext || this.mCreated)) {
            Object obj = this.mHost;
            if (!(obj instanceof Activity) || ((Activity) obj).isChild()) {
                z9 = false;
            } else {
                if (Build$VERSION.SDK_INT >= 31 && (i12 & 8192) != 0) {
                    ((Activity) this.mHost).getWindow().getDecorView().setLayoutDirection(configurationCreateOverrideAppConfiguration.getLayoutDirection());
                }
                ActivityCompat.recreate((Activity) this.mHost);
                z9 = true;
            }
        } else {
            z9 = false;
        }
        if (z9 || i12 == 0) {
            z10 = z9;
        } else {
            updateResourcesConfiguration(i11, configurationLocales2, (i12 & activityHandlesConfigChangesFlags) == i12, null);
        }
        if (z10) {
            Object obj2 = this.mHost;
            if (obj2 instanceof AppCompatActivity) {
                if ((i12 & 512) != 0) {
                    ((AppCompatActivity) obj2).onNightModeChanged(i9);
                }
                if ((i12 & 4) != 0) {
                    ((AppCompatActivity) this.mHost).onLocalesChanged(localeListCompat);
                }
            }
        }
        if (configurationLocales2 != null) {
            setDefaultLocalesForLocaleList(getConfigurationLocales(this.mContext.getResources().getConfiguration()));
        }
        return z10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateResourcesConfiguration(int i9, @Nullable LocaleListCompat localeListCompat, boolean z8, @Nullable Configuration configuration) {
        Resources resources = this.mContext.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i9 | (resources.getConfiguration().uiMode & (-49));
        if (localeListCompat != null) {
            setConfigurationLocales(configuration2, localeListCompat);
        }
        resources.updateConfiguration(configuration2, null);
        if (Build$VERSION.SDK_INT < 26) {
            ResourcesFlusher.flush(resources);
        }
        int i10 = this.mThemeResId;
        if (i10 != 0) {
            this.mContext.setTheme(i10);
            this.mContext.getTheme().applyStyle(this.mThemeResId, true);
        }
        if (z8 && (this.mHost instanceof Activity)) {
            updateActivityConfiguration(configuration2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateStatusGuardColor(View view) {
        int windowSystemUiVisibility = ViewCompat.getWindowSystemUiVisibility(view) & 8192;
        Context context = this.mContext;
        view.setBackgroundColor(windowSystemUiVisibility != 0 ? ContextCompat.getColor(context, R$color.abc_decor_view_status_guard_light) : ContextCompat.getColor(context, R$color.abc_decor_view_status_guard));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void addContentView(View view, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        ensureSubDecor();
        ((ViewGroup) this.mSubDecor.findViewById(R$id.content)).addView(view, viewGroup$LayoutParams);
        this.mAppCompatWindowCallback.bypassOnContentChanged(this.mWindow.getCallback());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean applyAppLocales() {
        if (AppCompatDelegate.isAutoStorageOptedIn(this.mContext) && AppCompatDelegate.getRequestedAppLocales() != null && !AppCompatDelegate.getRequestedAppLocales().equals(AppCompatDelegate.getStoredAppLocales())) {
            asyncExecuteSyncRequestedAndStoredLocales(this.mContext);
        }
        return applyApplicationSpecificConfig(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean applyDayNight() {
        return applyApplicationSpecificConfig(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    @NonNull
    @CallSuper
    public Context attachBaseContext2(@NonNull Context context) {
        Context context2;
        this.mBaseContextAttached = true;
        int iMapNightMode = mapNightMode(context, calculateNightMode());
        if (AppCompatDelegate.isAutoStorageOptedIn(context)) {
            AppCompatDelegate.syncRequestedAndStoredLocales(context);
        }
        LocaleListCompat localeListCompatCalculateApplicationLocales = calculateApplicationLocales(context);
        if (context instanceof android.view.ContextThemeWrapper) {
            context2 = context;
            try {
                ((android.view.ContextThemeWrapper) context2).applyOverrideConfiguration(createOverrideAppConfiguration(context2, iMapNightMode, localeListCompatCalculateApplicationLocales, null, false));
                return context2;
            } catch (IllegalStateException unused) {
            }
        } else {
            context2 = context;
        }
        if (context2 instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context2).applyOverrideConfiguration(createOverrideAppConfiguration(context2, iMapNightMode, localeListCompatCalculateApplicationLocales, null, false));
                return context2;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!sCanReturnDifferentContext) {
            return super.attachBaseContext2(context2);
        }
        Configuration configuration = new Configuration();
        configuration.uiMode = -1;
        configuration.fontScale = 0.0f;
        Configuration configuration2 = context2.createConfigurationContext(configuration).getResources().getConfiguration();
        Configuration configuration3 = context2.getResources().getConfiguration();
        configuration2.uiMode = configuration3.uiMode;
        Configuration configurationCreateOverrideAppConfiguration = createOverrideAppConfiguration(context2, iMapNightMode, localeListCompatCalculateApplicationLocales, !configuration2.equals(configuration3) ? generateConfigDelta(configuration2, configuration3) : null, true);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context2, R$style.Theme_AppCompat_Empty);
        contextThemeWrapper.applyOverrideConfiguration(configurationCreateOverrideAppConfiguration);
        try {
            if (context2.getTheme() != null) {
                ResourcesCompat$ThemeCompat.rebase(contextThemeWrapper.getTheme());
            }
        } catch (NullPointerException unused3) {
        }
        return super.attachBaseContext2(contextThemeWrapper);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public LocaleListCompat calculateApplicationLocales(@NonNull Context context) {
        LocaleListCompat requestedAppLocales;
        if (Build$VERSION.SDK_INT >= 33 || (requestedAppLocales = AppCompatDelegate.getRequestedAppLocales()) == null) {
            return null;
        }
        LocaleListCompat configurationLocales = getConfigurationLocales(context.getApplicationContext().getResources().getConfiguration());
        LocaleListCompat localeListCompatCombineLocalesIfOverlayExists = LocaleOverlayHelper.combineLocalesIfOverlayExists(requestedAppLocales, configurationLocales);
        return localeListCompatCombineLocalesIfOverlayExists.isEmpty() ? configurationLocales : localeListCompatCombineLocalesIfOverlayExists;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void callOnPanelClosed(int i9, AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, Menu menu) {
        if (menu == null) {
            if (appCompatDelegateImpl$PanelFeatureState == null && i9 >= 0) {
                AppCompatDelegateImpl$PanelFeatureState[] appCompatDelegateImpl$PanelFeatureStateArr = this.mPanels;
                if (i9 < appCompatDelegateImpl$PanelFeatureStateArr.length) {
                    appCompatDelegateImpl$PanelFeatureState = appCompatDelegateImpl$PanelFeatureStateArr[i9];
                }
            }
            if (appCompatDelegateImpl$PanelFeatureState != null) {
                menu = appCompatDelegateImpl$PanelFeatureState.menu;
            }
        }
        if ((appCompatDelegateImpl$PanelFeatureState == null || appCompatDelegateImpl$PanelFeatureState.isOpen) && !this.mDestroyed) {
            this.mAppCompatWindowCallback.bypassOnPanelClosed(this.mWindow.getCallback(), i9, menu);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void checkCloseActionMenu(@NonNull MenuBuilder menuBuilder) {
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        this.mDecorContentParent.dismissPopups();
        Window$Callback windowCallback = getWindowCallback();
        if (windowCallback != null && !this.mDestroyed) {
            windowCallback.onPanelClosed(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, menuBuilder);
        }
        this.mClosingActionMenu = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void closePanel(AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState, boolean z8) {
        ViewGroup viewGroup;
        DecorContentParent decorContentParent;
        if (z8 && appCompatDelegateImpl$PanelFeatureState.featureId == 0 && (decorContentParent = this.mDecorContentParent) != null && decorContentParent.isOverflowMenuShowing()) {
            checkCloseActionMenu(appCompatDelegateImpl$PanelFeatureState.menu);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && appCompatDelegateImpl$PanelFeatureState.isOpen && (viewGroup = appCompatDelegateImpl$PanelFeatureState.decorView) != null) {
            windowManager.removeView(viewGroup);
            if (z8) {
                callOnPanelClosed(appCompatDelegateImpl$PanelFeatureState.featureId, appCompatDelegateImpl$PanelFeatureState, null);
            }
        }
        appCompatDelegateImpl$PanelFeatureState.isPrepared = false;
        appCompatDelegateImpl$PanelFeatureState.isHandled = false;
        appCompatDelegateImpl$PanelFeatureState.isOpen = false;
        appCompatDelegateImpl$PanelFeatureState.shownPanelView = null;
        appCompatDelegateImpl$PanelFeatureState.refreshDecorView = true;
        if (this.mPreparedPanel == appCompatDelegateImpl$PanelFeatureState) {
            this.mPreparedPanel = null;
        }
        if (appCompatDelegateImpl$PanelFeatureState.featureId == 0) {
            updateBackInvokedCallbackState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r11v0, resolved type: android.view.View */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z8;
        if (this.mAppCompatViewInflater == null) {
            TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(R$styleable.AppCompatTheme);
            String string = typedArrayObtainStyledAttributes.getString(R$styleable.AppCompatTheme_viewInflaterClass);
            typedArrayObtainStyledAttributes.recycle();
            if (string == null) {
                this.mAppCompatViewInflater = new AppCompatViewInflater();
            } else {
                try {
                    this.mAppCompatViewInflater = (AppCompatViewInflater) this.mContext.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.mAppCompatViewInflater = new AppCompatViewInflater();
                }
            }
        }
        boolean z9 = IS_PRE_LOLLIPOP;
        boolean zShouldInheritContext = false;
        if (z9) {
            if (this.mLayoutIncludeDetector == null) {
                this.mLayoutIncludeDetector = new LayoutIncludeDetector();
            }
            if (this.mLayoutIncludeDetector.detect(attributeSet)) {
                z8 = true;
            } else {
                if (!(attributeSet instanceof XmlPullParser)) {
                    zShouldInheritContext = shouldInheritContext((ViewParent) view);
                } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zShouldInheritContext = true;
                }
                z8 = zShouldInheritContext;
            }
        } else {
            z8 = zShouldInheritContext;
        }
        return this.mAppCompatViewInflater.createView(view, str, context, attributeSet, z8, z9, true, VectorEnabledTintResources.shouldBeUsed());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dismissPopups() {
        MenuBuilder menuBuilder;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null) {
            decorContentParent.dismissPopups();
        }
        if (this.mActionModePopup != null) {
            this.mWindow.getDecorView().removeCallbacks(this.mShowActionModePopup);
            if (this.mActionModePopup.isShowing()) {
                try {
                    this.mActionModePopup.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.mActionModePopup = null;
        }
        endOnGoingFadeAnimation();
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, false);
        if (panelState == null || (menuBuilder = panelState.menu) == null) {
            return;
        }
        menuBuilder.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.mHost;
        if (((obj instanceof KeyEventDispatcher$Component) || (obj instanceof AppCompatDialog)) && (decorView = this.mWindow.getDecorView()) != null && KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.mAppCompatWindowCallback.bypassDispatchKeyEvent(this.mWindow.getCallback(), keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? onKeyDown(keyCode, keyEvent) : onKeyUp(keyCode, keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void doInvalidatePanelMenu(int i9) {
        AppCompatDelegateImpl$PanelFeatureState panelState;
        AppCompatDelegateImpl$PanelFeatureState panelState2 = getPanelState(i9, true);
        if (panelState2.menu != null) {
            Bundle bundle = new Bundle();
            panelState2.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState2.frozenActionViewState = bundle;
            }
            panelState2.menu.stopDispatchingItemsChanged();
            panelState2.menu.clear();
        }
        panelState2.refreshMenuContent = true;
        panelState2.refreshDecorView = true;
        if ((i9 != 108 && i9 != 0) || this.mDecorContentParent == null || (panelState = getPanelState(0, false)) == null) {
            return;
        }
        panelState.isPrepared = false;
        preparePanel(panelState, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void endOnGoingFadeAnimation() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mFadeAnim;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$PanelFeatureState findMenuPanel(Menu menu) {
        AppCompatDelegateImpl$PanelFeatureState[] appCompatDelegateImpl$PanelFeatureStateArr = this.mPanels;
        int length = appCompatDelegateImpl$PanelFeatureStateArr != null ? appCompatDelegateImpl$PanelFeatureStateArr.length : 0;
        for (int i9 = 0; i9 < length; i9++) {
            AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState = appCompatDelegateImpl$PanelFeatureStateArr[i9];
            if (appCompatDelegateImpl$PanelFeatureState != null && appCompatDelegateImpl$PanelFeatureState.menu == menu) {
                return appCompatDelegateImpl$PanelFeatureState;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    @Nullable
    public <T extends View> T findViewById(@IdRes int i9) {
        ensureSubDecor();
        return (T) this.mWindow.findViewById(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Context getActionBarThemedContext() {
        ActionBar supportActionBar = getSupportActionBar();
        Context themedContext = supportActionBar != null ? supportActionBar.getThemedContext() : null;
        return themedContext == null ? this.mContext : themedContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocaleListCompat getConfigurationLocales(Configuration configuration) {
        return AppCompatDelegateImpl$Api24Impl.getLocales(configuration);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public Context getContextForDelegate() {
        return this.mContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionBarDrawerToggle$Delegate getDrawerToggleDelegate() {
        return new AppCompatDelegateImpl$ActionBarDrawableToggleImpl(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public int getLocalNightMode() {
        return this.mLocalNightMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            this.mMenuInflater = new SupportMenuInflater(actionBar != null ? actionBar.getThemedContext() : this.mContext);
        }
        return this.mMenuInflater;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$PanelFeatureState getPanelState(int i9, boolean z8) {
        AppCompatDelegateImpl$PanelFeatureState[] appCompatDelegateImpl$PanelFeatureStateArr = this.mPanels;
        if (appCompatDelegateImpl$PanelFeatureStateArr == null || appCompatDelegateImpl$PanelFeatureStateArr.length <= i9) {
            AppCompatDelegateImpl$PanelFeatureState[] appCompatDelegateImpl$PanelFeatureStateArr2 = new AppCompatDelegateImpl$PanelFeatureState[i9 + 1];
            if (appCompatDelegateImpl$PanelFeatureStateArr != null) {
                System.arraycopy(appCompatDelegateImpl$PanelFeatureStateArr, 0, appCompatDelegateImpl$PanelFeatureStateArr2, 0, appCompatDelegateImpl$PanelFeatureStateArr.length);
            }
            this.mPanels = appCompatDelegateImpl$PanelFeatureStateArr2;
            appCompatDelegateImpl$PanelFeatureStateArr = appCompatDelegateImpl$PanelFeatureStateArr2;
        }
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState = appCompatDelegateImpl$PanelFeatureStateArr[i9];
        if (appCompatDelegateImpl$PanelFeatureState != null) {
            return appCompatDelegateImpl$PanelFeatureState;
        }
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState2 = new AppCompatDelegateImpl$PanelFeatureState(i9);
        appCompatDelegateImpl$PanelFeatureStateArr[i9] = appCompatDelegateImpl$PanelFeatureState2;
        return appCompatDelegateImpl$PanelFeatureState2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewGroup getSubDecor() {
        return this.mSubDecor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionBar getSupportActionBar() {
        initWindowDecorActionBar();
        return this.mActionBar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CharSequence getTitle() {
        Object obj = this.mHost;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.mTitle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Window$Callback getWindowCallback() {
        return this.mWindow.getCallback();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean hasWindowFeature(int i9) {
        boolean z8;
        int iSanitizeWindowFeatureId = sanitizeWindowFeatureId(i9);
        if (iSanitizeWindowFeatureId == 1) {
            z8 = this.mWindowNoTitle;
        } else if (iSanitizeWindowFeatureId == 2) {
            z8 = this.mFeatureProgress;
        } else if (iSanitizeWindowFeatureId == 5) {
            z8 = this.mFeatureIndeterminateProgress;
        } else if (iSanitizeWindowFeatureId == 10) {
            z8 = this.mOverlayActionMode;
        } else if (iSanitizeWindowFeatureId != 108) {
            z8 = iSanitizeWindowFeatureId != 109 ? false : this.mOverlayActionBar;
        } else {
            z8 = this.mHasActionBar;
        }
        return z8 || this.mWindow.hasFeature(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void installViewFactory() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof AppCompatDelegateImpl) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void invalidateOptionsMenu() {
        if (peekSupportActionBar() == null || getSupportActionBar().invalidateOptionsMenu()) {
            return;
        }
        invalidatePanelMenu(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean isHandleNativeActionModesEnabled() {
        return this.mHandleNativeActionModes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int mapNightMode(@NonNull Context context, int i9) {
        if (i9 == -100) {
            return -1;
        }
        if (i9 != -1) {
            if (i9 == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return getAutoTimeNightModeManager(context).getApplyableNightMode();
            }
            if (i9 != 1 && i9 != 2) {
                if (i9 == 3) {
                    return getAutoBatteryNightModeManager(context).getApplyableNightMode();
                }
                i.l("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                return 0;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onBackPressed() {
        boolean z8 = this.mLongPressBackDown;
        this.mLongPressBackDown = false;
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, false);
        if (panelState != null && panelState.isOpen) {
            if (!z8) {
                closePanel(panelState, true);
            }
            return true;
        }
        ActionMode actionMode = this.mActionMode;
        if (actionMode != null) {
            actionMode.finish();
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        return supportActionBar != null && supportActionBar.collapseActionView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onConfigurationChanged(Configuration configuration) {
        ActionBar supportActionBar;
        if (this.mHasActionBar && this.mSubDecorInstalled && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.mContext);
        this.mEffectiveConfiguration = new Configuration(this.mContext.getResources().getConfiguration());
        applyApplicationSpecificConfig(false, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onCreate(Bundle bundle) {
        String parentActivityName;
        this.mBaseContextAttached = true;
        applyApplicationSpecificConfig(false);
        ensureWindow();
        Object obj = this.mHost;
        if (obj instanceof Activity) {
            try {
                parentActivityName = NavUtils.getParentActivityName((Activity) obj);
            } catch (IllegalArgumentException unused) {
                parentActivityName = null;
            }
            if (parentActivityName != null) {
                ActionBar actionBarPeekSupportActionBar = peekSupportActionBar();
                if (actionBarPeekSupportActionBar == null) {
                    this.mEnableDefaultActionBarUp = true;
                } else {
                    actionBarPeekSupportActionBar.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
            AppCompatDelegate.addActiveDelegate(this);
        }
        this.mEffectiveConfiguration = new Configuration(this.mContext.getResources().getConfiguration());
        this.mCreated = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.LayoutInflater$Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x0045  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onDestroy() {
        if (this.mHost instanceof Activity) {
            AppCompatDelegate.removeActivityDelegate(this);
        }
        if (this.mInvalidatePanelMenuPosted) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
        }
        this.mDestroyed = true;
        if (this.mLocalNightMode != -100) {
            Object obj = this.mHost;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                sLocalNightModes.put(this.mHost.getClass().getName(), Integer.valueOf(this.mLocalNightMode));
            } else {
                sLocalNightModes.remove(this.mHost.getClass().getName());
            }
        } else {
            sLocalNightModes.remove(this.mHost.getClass().getName());
        }
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.onDestroy();
        }
        cleanupAutoManagers();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 == 4) {
            this.mLongPressBackDown = (keyEvent.getFlags() & 128) != 0;
        } else if (i9 == 82) {
            onKeyDownPanel(0, keyEvent);
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onKeyShortcut(int i9, KeyEvent keyEvent) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null && supportActionBar.onKeyShortcut(i9, keyEvent)) {
            return true;
        }
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState = this.mPreparedPanel;
        if (appCompatDelegateImpl$PanelFeatureState != null && performPanelShortcut(appCompatDelegateImpl$PanelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureState2 = this.mPreparedPanel;
            if (appCompatDelegateImpl$PanelFeatureState2 != null) {
                appCompatDelegateImpl$PanelFeatureState2.isHandled = true;
            }
            return true;
        }
        if (this.mPreparedPanel == null) {
            AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, true);
            preparePanel(panelState, keyEvent);
            boolean zPerformPanelShortcut = performPanelShortcut(panelState, keyEvent.getKeyCode(), keyEvent, 1);
            panelState.isPrepared = false;
            if (zPerformPanelShortcut) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onKeyUp(int i9, KeyEvent keyEvent) {
        if (i9 != 4) {
            if (i9 == 82) {
                onKeyUpPanel(0, keyEvent);
                return true;
            }
        } else if (onBackPressed()) {
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuBuilder$Callback
    public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureStateFindMenuPanel;
        Window$Callback windowCallback = getWindowCallback();
        if (windowCallback == null || this.mDestroyed || (appCompatDelegateImpl$PanelFeatureStateFindMenuPanel = findMenuPanel(menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return windowCallback.onMenuItemSelected(appCompatDelegateImpl$PanelFeatureStateFindMenuPanel.featureId, menuItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.menu.MenuBuilder$Callback
    public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
        reopenMenu(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onMenuOpened(int i9) {
        ActionBar supportActionBar;
        if (i9 != 108 || (supportActionBar = getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.dispatchMenuVisibilityChanged(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onPanelClosed(int i9) {
        if (i9 == 108) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.dispatchMenuVisibilityChanged(false);
                return;
            }
            return;
        }
        if (i9 == 0) {
            AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(i9, true);
            if (panelState.isOpen) {
                closePanel(panelState, false);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostCreate(Bundle bundle) {
        ensureSubDecor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostResume() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStart() {
        applyApplicationSpecificConfig(true, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStop() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ActionBar peekSupportActionBar() {
        return this.mActionBar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean requestWindowFeature(int i9) {
        int iSanitizeWindowFeatureId = sanitizeWindowFeatureId(i9);
        if (this.mWindowNoTitle && iSanitizeWindowFeatureId == 108) {
            return false;
        }
        if (this.mHasActionBar && iSanitizeWindowFeatureId == 1) {
            this.mHasActionBar = false;
        }
        if (iSanitizeWindowFeatureId == 1) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mWindowNoTitle = true;
            return true;
        }
        if (iSanitizeWindowFeatureId == 2) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mFeatureProgress = true;
            return true;
        }
        if (iSanitizeWindowFeatureId == 5) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mFeatureIndeterminateProgress = true;
            return true;
        }
        if (iSanitizeWindowFeatureId == 10) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mOverlayActionMode = true;
            return true;
        }
        if (iSanitizeWindowFeatureId == 108) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mHasActionBar = true;
            return true;
        }
        if (iSanitizeWindowFeatureId != 109) {
            return this.mWindow.requestFeature(iSanitizeWindowFeatureId);
        }
        throwFeatureRequestIfSubDecorInstalled();
        this.mOverlayActionBar = true;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setConfigurationLocales(Configuration configuration, @NonNull LocaleListCompat localeListCompat) {
        AppCompatDelegateImpl$Api24Impl.setLocales(configuration, localeListCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(int i9) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R$id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i9, viewGroup);
        this.mAppCompatWindowCallback.bypassOnContentChanged(this.mWindow.getCallback());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDefaultLocalesForLocaleList(LocaleListCompat localeListCompat) {
        AppCompatDelegateImpl$Api24Impl.setDefaultLocales(localeListCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setHandleNativeActionModesEnabled(boolean z8) {
        this.mHandleNativeActionModes = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setLocalNightMode(int i9) {
        if (this.mLocalNightMode != i9) {
            this.mLocalNightMode = i9;
            if (this.mBaseContextAttached) {
                applyDayNight();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    @RequiresApi(33)
    public void setOnBackInvokedDispatcher(@Nullable OnBackInvokedDispatcher onBackInvokedDispatcher) {
        OnBackInvokedCallback onBackInvokedCallback;
        super.setOnBackInvokedDispatcher(onBackInvokedDispatcher);
        OnBackInvokedDispatcher onBackInvokedDispatcher2 = this.mDispatcher;
        if (onBackInvokedDispatcher2 != null && (onBackInvokedCallback = this.mBackCallback) != null) {
            AppCompatDelegateImpl$Api33Impl.unregisterOnBackInvokedCallback(onBackInvokedDispatcher2, onBackInvokedCallback);
            this.mBackCallback = null;
        }
        if (onBackInvokedDispatcher == null) {
            Object obj = this.mHost;
            if (!(obj instanceof Activity) || ((Activity) obj).getWindow() == null) {
                this.mDispatcher = onBackInvokedDispatcher;
            } else {
                this.mDispatcher = AppCompatDelegateImpl$Api33Impl.getOnBackInvokedDispatcher((Activity) this.mHost);
            }
        } else {
            this.mDispatcher = onBackInvokedDispatcher;
        }
        updateBackInvokedCallbackState();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setSupportActionBar(Toolbar toolbar) {
        if (this.mHost instanceof Activity) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar instanceof WindowDecorActionBar) {
                i.l("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
                return;
            }
            this.mMenuInflater = null;
            if (supportActionBar != null) {
                supportActionBar.onDestroy();
            }
            this.mActionBar = null;
            if (toolbar != null) {
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, getTitle(), this.mAppCompatWindowCallback);
                this.mActionBar = toolbarActionBar;
                this.mAppCompatWindowCallback.setActionBarCallback(toolbarActionBar.mMenuCallback);
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                this.mAppCompatWindowCallback.setActionBarCallback(null);
            }
            invalidateOptionsMenu();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setTheme(@StyleRes int i9) {
        this.mThemeResId = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null) {
            decorContentParent.setWindowTitle(charSequence);
            return;
        }
        if (peekSupportActionBar() != null) {
            peekSupportActionBar().setWindowTitle(charSequence);
            return;
        }
        TextView textView = this.mTitleView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean shouldAnimateActionModeView() {
        ViewGroup viewGroup;
        return this.mSubDecorInstalled && (viewGroup = this.mSubDecor) != null && viewGroup.isLaidOut();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldRegisterBackInvokedCallback() {
        if (this.mDispatcher == null) {
            return false;
        }
        AppCompatDelegateImpl$PanelFeatureState panelState = getPanelState(0, false);
        return (panelState != null && panelState.isOpen) || this.mActionMode != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionMode startSupportActionMode(@NonNull ActionMode$Callback actionMode$Callback) {
        AppCompatCallback appCompatCallback;
        if (actionMode$Callback == null) {
            i.k("ActionMode callback can not be null.");
            return null;
        }
        ActionMode actionMode = this.mActionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        AppCompatDelegateImpl$ActionModeCallbackWrapperV9 appCompatDelegateImpl$ActionModeCallbackWrapperV9 = new AppCompatDelegateImpl$ActionModeCallbackWrapperV9(this, actionMode$Callback);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            ActionMode actionModeStartActionMode = supportActionBar.startActionMode(appCompatDelegateImpl$ActionModeCallbackWrapperV9);
            this.mActionMode = actionModeStartActionMode;
            if (actionModeStartActionMode != null && (appCompatCallback = this.mAppCompatCallback) != null) {
                appCompatCallback.onSupportActionModeStarted(actionModeStartActionMode);
            }
        }
        if (this.mActionMode == null) {
            this.mActionMode = startSupportActionModeFromWindow(appCompatDelegateImpl$ActionModeCallbackWrapperV9);
        }
        updateBackInvokedCallbackState();
        return this.mActionMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionMode startSupportActionModeFromWindow(@NonNull ActionMode$Callback actionMode$Callback) {
        ActionMode actionModeOnWindowStartingSupportActionMode;
        AppCompatCallback appCompatCallback;
        endOnGoingFadeAnimation();
        ActionMode actionMode = this.mActionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        if (!(actionMode$Callback instanceof AppCompatDelegateImpl$ActionModeCallbackWrapperV9)) {
            actionMode$Callback = new AppCompatDelegateImpl$ActionModeCallbackWrapperV9(this, actionMode$Callback);
        }
        AppCompatCallback appCompatCallback2 = this.mAppCompatCallback;
        if (appCompatCallback2 == null || this.mDestroyed) {
            actionModeOnWindowStartingSupportActionMode = null;
        } else {
            try {
                actionModeOnWindowStartingSupportActionMode = appCompatCallback2.onWindowStartingSupportActionMode(actionMode$Callback);
            } catch (AbstractMethodError unused) {
                actionModeOnWindowStartingSupportActionMode = null;
            }
        }
        if (actionModeOnWindowStartingSupportActionMode != null) {
            this.mActionMode = actionModeOnWindowStartingSupportActionMode;
        } else {
            if (this.mActionModeView == null) {
                if (this.mIsFloating) {
                    TypedValue typedValue = new TypedValue();
                    Resources$Theme theme = this.mContext.getTheme();
                    theme.resolveAttribute(androidx.appcompat.R$attr.actionBarTheme, typedValue, true);
                    int i9 = typedValue.resourceId;
                    Context contextThemeWrapper = this.mContext;
                    if (i9 != 0) {
                        Resources$Theme resources$ThemeNewTheme = contextThemeWrapper.getResources().newTheme();
                        resources$ThemeNewTheme.setTo(theme);
                        resources$ThemeNewTheme.applyStyle(typedValue.resourceId, true);
                        contextThemeWrapper = new ContextThemeWrapper(this.mContext, 0);
                        contextThemeWrapper.getTheme().setTo(resources$ThemeNewTheme);
                    }
                    this.mActionModeView = new ActionBarContextView(contextThemeWrapper);
                    PopupWindow popupWindow = new PopupWindow(contextThemeWrapper, (AttributeSet) null, androidx.appcompat.R$attr.actionModePopupWindowStyle);
                    this.mActionModePopup = popupWindow;
                    PopupWindowCompat.setWindowLayoutType(popupWindow, 2);
                    this.mActionModePopup.setContentView(this.mActionModeView);
                    this.mActionModePopup.setWidth(-1);
                    contextThemeWrapper.getTheme().resolveAttribute(androidx.appcompat.R$attr.actionBarSize, typedValue, true);
                    this.mActionModeView.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, contextThemeWrapper.getResources().getDisplayMetrics()));
                    this.mActionModePopup.setHeight(-2);
                    this.mShowActionModePopup = new AppCompatDelegateImpl$6(this);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.mSubDecor.findViewById(androidx.appcompat.R$id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(getActionBarThemedContext()));
                        this.mActionModeView = (ActionBarContextView) viewStubCompat.inflate();
                    }
                }
            }
            if (this.mActionModeView != null) {
                endOnGoingFadeAnimation();
                this.mActionModeView.killMode();
                StandaloneActionMode standaloneActionMode = new StandaloneActionMode(this.mActionModeView.getContext(), this.mActionModeView, actionMode$Callback, this.mActionModePopup == null);
                if (actionMode$Callback.onCreateActionMode(standaloneActionMode, standaloneActionMode.getMenu())) {
                    standaloneActionMode.invalidate();
                    this.mActionModeView.initForMode(standaloneActionMode);
                    this.mActionMode = standaloneActionMode;
                    boolean zShouldAnimateActionModeView = shouldAnimateActionModeView();
                    ActionBarContextView actionBarContextView = this.mActionModeView;
                    if (zShouldAnimateActionModeView) {
                        actionBarContextView.setAlpha(0.0f);
                        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(this.mActionModeView).alpha(1.0f);
                        this.mFadeAnim = viewPropertyAnimatorCompatAlpha;
                        viewPropertyAnimatorCompatAlpha.setListener(new AppCompatDelegateImpl$7(this));
                    } else {
                        actionBarContextView.setAlpha(1.0f);
                        this.mActionModeView.setVisibility(0);
                        if (this.mActionModeView.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) this.mActionModeView.getParent());
                        }
                    }
                    if (this.mActionModePopup != null) {
                        this.mWindow.getDecorView().post(this.mShowActionModePopup);
                    }
                } else {
                    this.mActionMode = null;
                }
            }
        }
        ActionMode actionMode2 = this.mActionMode;
        if (actionMode2 != null && (appCompatCallback = this.mAppCompatCallback) != null) {
            appCompatCallback.onSupportActionModeStarted(actionMode2);
        }
        updateBackInvokedCallbackState();
        return this.mActionMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateBackInvokedCallbackState() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build$VERSION.SDK_INT >= 33) {
            boolean zShouldRegisterBackInvokedCallback = shouldRegisterBackInvokedCallback();
            if (zShouldRegisterBackInvokedCallback && this.mBackCallback == null) {
                this.mBackCallback = AppCompatDelegateImpl$Api33Impl.registerOnBackPressedCallback(this.mDispatcher, this);
            } else {
                if (zShouldRegisterBackInvokedCallback || (onBackInvokedCallback = this.mBackCallback) == null) {
                    return;
                }
                AppCompatDelegateImpl$Api33Impl.unregisterOnBackInvokedCallback(this.mDispatcher, onBackInvokedCallback);
                this.mBackCallback = null;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int updateStatusGuard(@Nullable WindowInsetsCompat windowInsetsCompat, @Nullable Rect rect) {
        int systemWindowInsetTop;
        boolean z8;
        boolean z9;
        if (windowInsetsCompat != null) {
            systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        } else {
            systemWindowInsetTop = rect != null ? rect.top : 0;
        }
        ActionBarContextView actionBarContextView = this.mActionModeView;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup$MarginLayoutParams)) {
            z8 = false;
        } else {
            ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) this.mActionModeView.getLayoutParams();
            boolean z10 = true;
            if (this.mActionModeView.isShown()) {
                if (this.mTempRect1 == null) {
                    this.mTempRect1 = new Rect();
                    this.mTempRect2 = new Rect();
                }
                Rect rect2 = this.mTempRect1;
                Rect rect3 = this.mTempRect2;
                if (windowInsetsCompat == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                }
                ViewUtils.computeFitSystemWindows(this.mSubDecor, rect2, rect3);
                int i9 = rect2.top;
                int i10 = rect2.left;
                int i11 = rect2.right;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.mSubDecor);
                int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                if (viewGroup$MarginLayoutParams.topMargin == i9 && viewGroup$MarginLayoutParams.leftMargin == i10 && viewGroup$MarginLayoutParams.rightMargin == i11) {
                    z9 = false;
                } else {
                    viewGroup$MarginLayoutParams.topMargin = i9;
                    viewGroup$MarginLayoutParams.leftMargin = i10;
                    viewGroup$MarginLayoutParams.rightMargin = i11;
                    z9 = true;
                }
                if (i9 <= 0 || this.mStatusGuard != null) {
                    View view = this.mStatusGuard;
                    if (view != null) {
                        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams2 = (ViewGroup$MarginLayoutParams) view.getLayoutParams();
                        int i12 = viewGroup$MarginLayoutParams2.height;
                        int i13 = viewGroup$MarginLayoutParams.topMargin;
                        if (i12 != i13 || viewGroup$MarginLayoutParams2.leftMargin != systemWindowInsetLeft || viewGroup$MarginLayoutParams2.rightMargin != systemWindowInsetRight) {
                            viewGroup$MarginLayoutParams2.height = i13;
                            viewGroup$MarginLayoutParams2.leftMargin = systemWindowInsetLeft;
                            viewGroup$MarginLayoutParams2.rightMargin = systemWindowInsetRight;
                            this.mStatusGuard.setLayoutParams(viewGroup$MarginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.mContext);
                    this.mStatusGuard = view2;
                    view2.setVisibility(8);
                    FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(-1, viewGroup$MarginLayoutParams.topMargin, 51);
                    frameLayout$LayoutParams.leftMargin = systemWindowInsetLeft;
                    frameLayout$LayoutParams.rightMargin = systemWindowInsetRight;
                    this.mSubDecor.addView(this.mStatusGuard, -1, frameLayout$LayoutParams);
                }
                View view3 = this.mStatusGuard;
                z10 = view3 != null;
                if (z10 && view3.getVisibility() != 0) {
                    updateStatusGuardColor(this.mStatusGuard);
                }
                if (!this.mOverlayActionMode && z10) {
                    systemWindowInsetTop = 0;
                }
                z8 = z10;
                z10 = z9;
            } else if (viewGroup$MarginLayoutParams.topMargin != 0) {
                viewGroup$MarginLayoutParams.topMargin = 0;
                z8 = false;
            } else {
                z8 = false;
                z10 = false;
            }
            if (z10) {
                this.mActionModeView.setLayoutParams(viewGroup$MarginLayoutParams);
            }
        }
        View view4 = this.mStatusGuard;
        if (view4 != null) {
            view4.setVisibility(z8 ? 0 : 8);
        }
        return systemWindowInsetTop;
    }

    @Override // android.view.LayoutInflater$Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return createView(view, str, context, attributeSet);
    }

    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    @VisibleForTesting
    public final AppCompatDelegateImpl$AutoNightModeManager getAutoTimeNightModeManager() {
        return getAutoTimeNightModeManager(this.mContext);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onSubDecorInstalled(ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R$id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mAppCompatWindowCallback.bypassOnContentChanged(this.mWindow.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R$id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, viewGroup$LayoutParams);
        this.mAppCompatWindowCallback.bypassOnContentChanged(this.mWindow.getCallback());
    }

    public void closePanel(int i9) {
        closePanel(getPanelState(i9, true), true);
    }

    private boolean applyApplicationSpecificConfig(boolean z8) {
        return applyApplicationSpecificConfig(z8, true);
    }

    public AppCompatDelegateImpl(Dialog dialog, AppCompatCallback appCompatCallback) {
        this(dialog.getContext(), dialog.getWindow(), appCompatCallback, dialog);
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback) {
        this(context, window, appCompatCallback, context);
    }

    public AppCompatDelegateImpl(Context context, Activity activity, AppCompatCallback appCompatCallback) {
        this(context, null, appCompatCallback, activity);
    }

    public AppCompatDelegateImpl(Activity activity, AppCompatCallback appCompatCallback) {
        this(activity, null, appCompatCallback, activity);
    }
}
