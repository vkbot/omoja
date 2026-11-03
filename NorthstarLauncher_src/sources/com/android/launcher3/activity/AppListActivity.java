package com.android.launcher3.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.R;
import com.android.launcher3.activity.model.AppListViewModel;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.util.FlavorUtils;
import com.android.launcher3.views.AppTransitionContext;
import com.mega.carlink.view.CarLinkMixLauncherViewModel;
import com.mega.hicar.view.HiCarMixLauncherViewModel;
import com.mega.nexus.content.pm.MegaPackageManager;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class AppListActivity extends AppCompatActivity implements AppListContext, AppTransitionContext {
    private static final String EXTRA_MIX_LAUNCHER_POSITION = "mix_launcher_position";
    private static final String EXTRA_TO_TAB = "to_tab";
    private static final String FRAG_TAG_APP_LIST = "frag_tag_app_list";
    private static final String FRAG_TAG_MIX_LAUNCHER = "frag_tag_mix_launcher";
    public static final int POS_CAR_LINK = 0;
    public static final int POS_HICAR = 1;
    private static final int REQUEST_CODE_CARLINK_DIALOG = 101;
    private static final int REQUEST_CODE_HICAR_DIALOG = 100;
    public static final int TAB_APPS = 0;
    public static final int TAB_MIX_LAUNCHER = 1;
    private static final String TAG = "AppListActivity";
    private ViewGroup mAppBg;
    private AppListFragment mAppListFragment;
    private AppListTransition mAppListTransition;
    private CarLinkMixLauncherViewModel mCarLinkViewModel;
    private HiCarMixLauncherViewModel mHiCarViewModel;
    private boolean mInterceptTouch;
    private MotionEvent mLastMoveEvent;
    private MixLauncherFragment mMixLauncherFragment;
    private boolean mTouchInProgress;
    private AppListViewModel mViewModel;

    static /* synthetic */ boolean lambda$setupVoiceScroll$2(View view, MotionEvent motionEvent) {
        return true;
    }

    static /* synthetic */ boolean lambda$setupVoiceScroll$3(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // com.android.launcher3.views.AppTransitionContext
    public Activity getHostActivity() {
        return this;
    }

    @Override // com.android.launcher3.views.AppTransitionContext
    public ViewGroup getHostView() {
        return this.mAppBg;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MLog.d(TAG, "onCreate: start. taskId=" + getTaskId() + " " + hashCode());
        setContentView(R.layout.activity_applist);
        AppListViewModel appListViewModel = (AppListViewModel) new ViewModelProvider(this).get(AppListViewModel.class);
        this.mViewModel = appListViewModel;
        appListViewModel.loadApps(this, "onCreate");
        this.mHiCarViewModel = (HiCarMixLauncherViewModel) new ViewModelProvider(this).get(HiCarMixLauncherViewModel.class);
        this.mCarLinkViewModel = (CarLinkMixLauncherViewModel) new ViewModelProvider(this).get(CarLinkMixLauncherViewModel.class);
        this.mAppListTransition = new AppListTransition(this);
        initData(savedInstanceState);
        handleIntent(getIntent(), "onCreate");
        this.mViewModel.getTabPosition().observe(this, new Observer() { // from class: com.android.launcher3.activity.AppListActivity$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m55lambda$onCreate$0$comandroidlauncher3activityAppListActivity((Integer) obj);
            }
        });
        this.mViewModel.getMixLauncherPosition().observe(this, new Observer() { // from class: com.android.launcher3.activity.AppListActivity$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m56lambda$onCreate$1$comandroidlauncher3activityAppListActivity((Integer) obj);
            }
        });
        MLog.d(TAG, "onCreate: end.");
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-android-launcher3-activity-AppListActivity, reason: not valid java name */
    /* synthetic */ void m55lambda$onCreate$0$comandroidlauncher3activityAppListActivity(Integer num) {
        updateSelected(num.intValue(), true, this.mViewModel.getMixLauncherPositionValue(), false);
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-android-launcher3-activity-AppListActivity, reason: not valid java name */
    /* synthetic */ void m56lambda$onCreate$1$comandroidlauncher3activityAppListActivity(Integer num) {
        updateSelected(this.mViewModel.getTabPositionValue(), false, num.intValue(), true);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MLog.d(TAG, "onDestroy: " + hashCode());
    }

    private void updateSelected(int tabPosition, boolean tabChanged, int mixLauncherPosition, boolean mixLauncherChanged) {
        MLog.d(TAG, "updateSelected: tab=" + tabPosition + "_" + tabChanged + " mixLauncher=" + mixLauncherPosition + "_" + mixLauncherChanged);
        if (tabPosition == 1) {
            showMixLauncherFragment();
        } else {
            hideMixLauncherFragment();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        MLog.d(TAG, "onResume");
        this.mAppListTransition.registerRemoteAnimations();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        MLog.d(TAG, "onPause");
        this.mAppListTransition.unregisterRemoteAnimations();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        MLog.d(TAG, "onNewIntent: intent=" + intent);
        handleIntent(intent, "onNewIntent");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MLog.d(TAG, "onBackPressed: ");
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.addFlags(MegaPackageManager.MATCH_DEBUG_TRIAGED_MISSING);
        startActivity(intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        MLog.d(TAG, "onWindowFocusChanged: hasFocus=" + hasFocus);
        if (hasFocus) {
            return;
        }
        cancelMotionEvent();
    }

    private void cancelMotionEvent() {
        MotionEvent motionEventObtain;
        MLog.d(TAG, "cancelMotionEvent: mTouchInProgress=" + this.mTouchInProgress);
        if (this.mTouchInProgress) {
            MotionEvent motionEvent = this.mLastMoveEvent;
            if (motionEvent != null) {
                motionEventObtain = MotionEvent.obtain(motionEvent);
            } else {
                motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
            }
            motionEventObtain.setAction(3);
            dispatchTouchEvent(motionEventObtain);
            this.mInterceptTouch = true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0015  */
    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.mTouchInProgress = true;
            this.mInterceptTouch = false;
            setMotionEvent(ev);
        } else if (action == 1) {
            this.mTouchInProgress = false;
        } else if (action == 2) {
            setMotionEvent(ev);
        } else if (action == 3) {
            this.mTouchInProgress = false;
        }
        if (this.mInterceptTouch) {
            return true;
        }
        return super.dispatchTouchEvent(ev);
    }

    private void setMotionEvent(MotionEvent ev) {
        MotionEvent motionEvent = this.mLastMoveEvent;
        if (motionEvent != null) {
            motionEvent.recycle();
        }
        this.mLastMoveEvent = MotionEvent.obtain(ev);
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (fragment instanceof AppListFragment) {
            ((AppListFragment) fragment).setAppListTransition(this.mAppListTransition);
        }
    }

    public void onClickHiCar(View view, String reason) {
        if (!this.mViewModel.useActive()) {
            MLog.d(TAG, "onClickHiCar: too often. skip");
            return;
        }
        MLog.d(TAG, "onClickHiCar: " + reason);
        Intent intent = new Intent();
        intent.setAction("com.mega.hicar.action.MIXLAUNCHER");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setPackage("com.mega.hicar");
        intent.putExtra("select_from_tab", true);
        startActivityForResultSafely(intent, 100, this.mAppListTransition.getActivityLaunchOptions(this, view).toBundle());
    }

    public void onClickCarLink(View view, String reason) {
        if (!this.mViewModel.useActive()) {
            MLog.d(TAG, "onClickCarLink: too often. skip");
            return;
        }
        MLog.d(TAG, "onClickCarLink: " + reason);
        Intent intent = new Intent();
        intent.setAction("com.mega.carlink.action.MIXLAUNCHER");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setPackage("com.mega.carlink");
        intent.putExtra("select_from_tab", true);
        startActivityForResultSafely(intent, 101, this.mAppListTransition.getActivityLaunchOptions(this, view).toBundle());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 100) {
            if (resultCode != -1 || data == null) {
                MLog.w(TAG, "onActivityResult: REQUEST_CODE_HICAR_DIALOG invalid resultCode=" + resultCode + " data=" + data);
                resetSelection("hiCar1");
                return;
            }
            int intExtra = data.getIntExtra("result", -1);
            MLog.w(TAG, "onActivityResult: REQUEST_CODE_HICAR_DIALOG result=" + intExtra);
            if (intExtra == 1) {
                this.mViewModel.changeTab(1, "onActivityResult_HiCar");
                this.mViewModel.changeMixLauncher(1, "onActivityResult_HiCar");
            } else {
                resetSelection("hiCar2");
            }
        }
        if (requestCode == 101) {
            if (resultCode != -1 || data == null) {
                MLog.w(TAG, "onActivityResult: REQUEST_CODE_CARLINK_DIALOG invalid resultCode=" + resultCode + " data=" + data);
                resetSelection("carLink1");
                return;
            }
            int intExtra2 = data.getIntExtra("result", -1);
            MLog.w(TAG, "onActivityResult: REQUEST_CODE_CARLINK_DIALOG result=" + intExtra2);
            if (intExtra2 == 1) {
                this.mViewModel.changeTab(1, "onActivityResult_CarLink");
                this.mViewModel.changeMixLauncher(0, "onActivityResult_CarLink");
            } else {
                resetSelection("carLink2");
            }
        }
    }

    private void resetSelection(String reason) {
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag("t1gc_tag");
        if (fragmentFindFragmentByTag instanceof TabT1gcFragment) {
            ((TabT1gcFragment) fragmentFindFragmentByTag).resetSelection(reason);
        }
    }

    private void startActivityForResultSafely(Intent intent, int requestCode, Bundle options) {
        try {
            startActivityForResult(intent, requestCode, options);
        } catch (RuntimeException e) {
            MLog.e(TAG, "startActivityForResultSafely: failed. ", e);
        }
    }

    private void handleIntent(Intent intent, String reason) {
        AppListViewModel appListViewModel;
        AppListViewModel appListViewModel2;
        int intExtra = intent.getIntExtra("to_tab", -1);
        int intExtra2 = intent.getIntExtra(EXTRA_MIX_LAUNCHER_POSITION, -1);
        intent.removeExtra("to_tab");
        intent.removeExtra(EXTRA_MIX_LAUNCHER_POSITION);
        String stringExtra = intent.getStringExtra("needToJump");
        MLog.d("handleIntent: " + stringExtra + ", toTab=" + intExtra + " mixLauncherPosition=" + intExtra2 + " reason=" + reason);
        if (intExtra != -1 && (appListViewModel2 = this.mViewModel) != null) {
            appListViewModel2.changeTab(intExtra, "handleIntent");
        }
        if ((intExtra2 == 1 || intExtra2 == 0) && (appListViewModel = this.mViewModel) != null) {
            appListViewModel.changeMixLauncher(intExtra2, "handleIntent");
        }
        AppListFragment appListFragment = this.mAppListFragment;
        if (appListFragment != null) {
            appListFragment.handleIntentMsg(stringExtra);
        }
    }

    private void initData(Bundle savedInstanceState) {
        MLog.d(TAG, "initData");
        getWindow().getDecorView().setSystemUiVisibility(7680);
        this.mAppBg = (ViewGroup) findViewById(R.id.app_bg);
        if (savedInstanceState != null) {
            this.mMixLauncherFragment = (MixLauncherFragment) getSupportFragmentManager().findFragmentByTag(FRAG_TAG_MIX_LAUNCHER);
            this.mAppListFragment = (AppListFragment) getSupportFragmentManager().findFragmentByTag(FRAG_TAG_APP_LIST);
        }
        AppListFragment appListFragment = this.mAppListFragment;
        if (appListFragment != null) {
            appListFragment.setAppListTransition(this.mAppListTransition);
        }
        View viewFindViewById = findViewById(R.id.tab_container);
        if (!FlavorUtils.isT28() && !FlavorUtils.isT1GC()) {
            viewFindViewById.setVisibility(4);
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = getResources().getDimensionPixelSize(R.dimen.app_list_selector_height_no_hicar);
            }
            viewFindViewById.requestLayout();
        } else if (savedInstanceState == null) {
            getSupportFragmentManager().beginTransaction().add(R.id.tab_container, new TabT1gcFragment(), "t1gc_tag").commitAllowingStateLoss();
        }
        showAppListFragment();
        setupVoiceScroll();
    }

    private void setupVoiceScroll() {
        View viewFindViewById = findViewById(R.id.view_left);
        View viewFindViewById2 = findViewById(R.id.view_right);
        if (viewFindViewById != null) {
            viewFindViewById.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.launcher3.activity.AppListActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return AppListActivity.lambda$setupVoiceScroll$2(view, motionEvent);
                }
            });
        }
        if (viewFindViewById != null) {
            viewFindViewById2.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.launcher3.activity.AppListActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return AppListActivity.lambda$setupVoiceScroll$3(view, motionEvent);
                }
            });
        }
    }

    @Override // com.android.launcher3.views.AppTransitionContext
    public View findItemView(ComponentName taskComponent, int flags) {
        AppListFragment appListFragment = this.mAppListFragment;
        if (appListFragment != null) {
            return appListFragment.findItemView(taskComponent, flags);
        }
        return null;
    }

    @Override // com.android.launcher3.views.AppTransitionContext
    public IconCache getIconCache() {
        return LauncherAppState.getInstance(LauncherAppState.getInstance(this).getContext()).getIconCache();
    }

    @Override // com.android.launcher3.views.AppTransitionContext
    public DeviceProfile getDeviceProfile() {
        return LauncherAppState.getInstance(this).getInvariantDeviceProfile().getDeviceProfile(this);
    }

    @Override // com.android.launcher3.views.AppTransitionContext
    public int getIconBitmapSize() {
        return LauncherAppState.getInstance(this).getInvariantDeviceProfile().iconBitmapSize;
    }

    @Override // com.android.launcher3.views.AppTransitionContext
    public boolean useDefaultAnimation() {
        return this.mViewModel.getTabPositionValue() != 0;
    }

    @Override // com.android.launcher3.views.AppTransitionContext
    public ComponentName getComponentName(int taskId) {
        return LauncherApplication.get().getComponent(taskId);
    }

    private void showAppListFragment() {
        MLog.d(TAG, "showAppListFragment: " + this.mAppListFragment);
        if (this.mAppListFragment == null) {
            this.mAppListFragment = new AppListFragment();
            getSupportFragmentManager().beginTransaction().replace(R.id.system_apps_container, this.mAppListFragment, FRAG_TAG_APP_LIST).commitAllowingStateLoss();
        } else {
            getSupportFragmentManager().beginTransaction().show(this.mAppListFragment).commitAllowingStateLoss();
        }
    }

    private void showMixLauncherFragment() {
        MLog.d(TAG, "showMixLauncherFragment: " + this.mMixLauncherFragment);
        if (this.mMixLauncherFragment == null) {
            this.mMixLauncherFragment = new MixLauncherFragment();
            getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.mix_launcher_fragment_enter, R.anim.mix_launcher_fragment_exit).replace(R.id.mix_launcher_container, this.mMixLauncherFragment, FRAG_TAG_MIX_LAUNCHER).commitAllowingStateLoss();
        } else {
            getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.mix_launcher_fragment_enter, R.anim.mix_launcher_fragment_exit).show(this.mMixLauncherFragment).commitAllowingStateLoss();
        }
    }

    private void hideMixLauncherFragment() {
        MLog.d(TAG, "hideMixLauncherFragment: " + this.mMixLauncherFragment);
        if (this.mMixLauncherFragment != null) {
            getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.mix_launcher_fragment_enter, R.anim.mix_launcher_fragment_exit).hide(this.mMixLauncherFragment).commitAllowingStateLoss();
        }
    }

    @Override // com.android.launcher3.activity.AppListContext
    public boolean changeTab(int tab) {
        if (this.mViewModel.getTabPositionValue() == tab) {
            return false;
        }
        this.mViewModel.changeTab(tab, "changeTab");
        return true;
    }
}
