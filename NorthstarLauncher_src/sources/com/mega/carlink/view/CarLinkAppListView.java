package com.mega.carlink.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.testing.TestProtocol;
import com.mega.carlink.CarLinkDeviceManager;
import com.mega.carlink.lib.R;
import com.mega.carlink.model.AppInfo;
import com.mega.carlink.util.HandlerUtil;
import com.mega.carlink.view.widget.CarLinkAppListIndicator;
import com.mega.carlink.view.widget.CarLinkPagerGridLayoutManager;
import com.mega.carlink.view.widget.CarLinkPagerGridSnapHelper;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import mega.log.MLog;

/* JADX INFO: compiled from: CarLinkAppListView.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u00012\u00020\u0002:\u0001EB%\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010-\u001a\u00020.H\u0016J\b\u0010/\u001a\u00020.H\u0002J\u0016\u00100\u001a\u00020.2\f\u00101\u001a\b\u0012\u0004\u0012\u00020302H\u0016J\u0016\u00104\u001a\u00020.2\f\u00101\u001a\b\u0012\u0004\u0012\u00020302H\u0016J\u0016\u00105\u001a\u00020.2\f\u00101\u001a\b\u0012\u0004\u0012\u00020302H\u0016J\u0010\u00106\u001a\u00020.2\u0006\u00107\u001a\u00020#H\u0016J\u0018\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020\b2\u0006\u0010:\u001a\u00020#H\u0016J(\u0010;\u001a\u00020.2\u0006\u0010<\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\b2\u0006\u0010>\u001a\u00020\u000b2\u0006\u0010?\u001a\u00020\u000bH\u0016J\u0016\u0010@\u001a\u00020.2\f\u00101\u001a\b\u0012\u0004\u0012\u00020302H\u0016J\u0012\u0010A\u001a\u00020.2\b\u0010B\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010C\u001a\u00020.2\u0006\u0010D\u001a\u00020#H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006F"}, d2 = {"Lcom/mega/carlink/view/CarLinkAppListView;", "Landroid/widget/RelativeLayout;", "Lcom/mega/carlink/view/ICarLinkAppListView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "TAG", "", "mCarLinkAppIndicator", "Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;", "mCarLinkAppListAdapter", "Lcom/mega/carlink/view/CarLinkAppListAdapter;", "mCarLinkIvLoading", "Landroid/widget/ImageView;", "mCarLinkTvNumber1", "Landroid/widget/TextView;", "mCarLinkTvNumber2", "mCarLinkTvNumber3", "mCarLinkTvNumber4", "mCarLinkTvNumber5", "mCarLinkTvNumber6", "mConnectingAnimationDrawable", "Landroid/graphics/drawable/AnimationDrawable;", "mContext", "mCurrentPageIndex", "mLlBluetoothOpening", "Landroid/widget/LinearLayout;", "mLlCarLinkConnecting", "mLlPinCode", "mLlPinCodeInput", "mMixCarLinkVisible", "", "mPageListener", "Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager$PageListener;", "mRlCarLinkAppList", "mRvCarLinkAppList", "Landroidx/recyclerview/widget/RecyclerView;", "mTvCarLinkConnectingNotice", "mTvCarLinkConnectingProgress", "mUiThreadHandler", "Landroid/os/Handler;", "initApplistManager", "", "initView", "onAppInfoAdd", "list", "", "Lcom/mega/carlink/model/AppInfo;", "onAppInfoRemove", "onAppInfoUpdate", "onBluetoothEnableStatusChanged", "enable", "onCarLinkConnectStatusChanged", TestProtocol.STATE_FIELD, "showAnim", "onConnectingProgress", "deviceID", "progress", "deviceName", "productName", "onLoadAllAppInfo", "onPinCodeChange", "pinCode", "onVisibilityAggregated", "isVisible", "AppListPaddingDecoration", "carlink-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CarLinkAppListView extends RelativeLayout implements ICarLinkAppListView {
    private final String TAG;
    private CarLinkAppListIndicator mCarLinkAppIndicator;
    private CarLinkAppListAdapter mCarLinkAppListAdapter;
    private ImageView mCarLinkIvLoading;
    private TextView mCarLinkTvNumber1;
    private TextView mCarLinkTvNumber2;
    private TextView mCarLinkTvNumber3;
    private TextView mCarLinkTvNumber4;
    private TextView mCarLinkTvNumber5;
    private TextView mCarLinkTvNumber6;
    private AnimationDrawable mConnectingAnimationDrawable;
    private Context mContext;
    private int mCurrentPageIndex;
    private LinearLayout mLlBluetoothOpening;
    private LinearLayout mLlCarLinkConnecting;
    private LinearLayout mLlPinCode;
    private LinearLayout mLlPinCodeInput;
    private boolean mMixCarLinkVisible;
    private final CarLinkPagerGridLayoutManager.PageListener mPageListener;
    private RelativeLayout mRlCarLinkAppList;
    private RecyclerView mRvCarLinkAppList;
    private TextView mTvCarLinkConnectingNotice;
    private TextView mTvCarLinkConnectingProgress;
    private Handler mUiThreadHandler;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CarLinkAppListView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CarLinkAppListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ CarLinkAppListView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarLinkAppListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.TAG = "CarLinkAppListView";
        this.mUiThreadHandler = new Handler(Looper.getMainLooper());
        this.mPageListener = new CarLinkPagerGridLayoutManager.PageListener() { // from class: com.mega.carlink.view.CarLinkAppListView$mPageListener$1
            @Override // com.mega.carlink.view.widget.CarLinkPagerGridLayoutManager.PageListener
            public void onPageSizeChanged(int pageSize) {
                CarLinkAppListIndicator carLinkAppListIndicator;
                MLog.i("onPageSizeChanged " + pageSize);
                if (this.this$0.mCarLinkAppIndicator == null || (carLinkAppListIndicator = this.this$0.mCarLinkAppIndicator) == null) {
                    return;
                }
                carLinkAppListIndicator.setCellCount(pageSize);
            }

            @Override // com.mega.carlink.view.widget.CarLinkPagerGridLayoutManager.PageListener
            public void onPageSelect(int pageIndex) {
                CarLinkAppListIndicator carLinkAppListIndicator;
                MLog.i("onPageSelect " + pageIndex);
                this.this$0.mCurrentPageIndex = pageIndex;
                if (this.this$0.mCarLinkAppIndicator == null || (carLinkAppListIndicator = this.this$0.mCarLinkAppIndicator) == null) {
                    return;
                }
                carLinkAppListIndicator.setCurrentPosition(pageIndex);
            }
        };
        MLog.d("CarLinkAppListView", "initforkotlin CarLinkAppListView");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.mContext = applicationContext;
        RelativeLayout.inflate(context, R.layout.carlink_layout_carlink_applist, this);
        initView();
        initApplistManager();
        HandlerUtil.postDelayed(500L, new Runnable() { // from class: com.mega.carlink.view.CarLinkAppListView$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                CarLinkAppListView._init_$lambda$1(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(final CarLinkAppListView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean zIsCarLinkConnected = CarLinkDeviceManager.getInstance(this$0.mContext).isCarLinkConnected();
        MLog.d(this$0.TAG, "init carLinkConnected = " + zIsCarLinkConnected);
        if (zIsCarLinkConnected) {
            final List<AppInfo> carLinkAllAppInfoList = CarLinkDeviceManager.getInstance(this$0.mContext).getCarLinkAllAppInfoList();
            MLog.d(this$0.TAG, "init carLinkAllAppInfoList = " + (carLinkAllAppInfoList != null ? Integer.valueOf(carLinkAllAppInfoList.size()) : null));
            if (carLinkAllAppInfoList == null || carLinkAllAppInfoList.size() == 0) {
                return;
            }
            this$0.mUiThreadHandler.post(new Runnable() { // from class: com.mega.carlink.view.CarLinkAppListView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    CarLinkAppListView.lambda$1$lambda$0(this.f$0, carLinkAllAppInfoList);
                }
            });
        }
    }

    static final void lambda$1$lambda$0(CarLinkAppListView this$0, List carLinkAllAppInfoList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MLog.d(this$0.TAG, "initforkotlin: mLlCarLinkConnecting gone");
        LinearLayout linearLayout = this$0.mLlCarLinkConnecting;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        if (!carLinkAllAppInfoList.isEmpty()) {
            LinearLayout linearLayout2 = this$0.mLlBluetoothOpening;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            LinearLayout linearLayout3 = this$0.mLlPinCode;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            RelativeLayout relativeLayout = this$0.mRlCarLinkAppList;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
        } else {
            RelativeLayout relativeLayout2 = this$0.mRlCarLinkAppList;
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(8);
            }
        }
        CarLinkAppListAdapter carLinkAppListAdapter = this$0.mCarLinkAppListAdapter;
        if (carLinkAppListAdapter != null) {
            Intrinsics.checkNotNullExpressionValue(carLinkAllAppInfoList, "carLinkAllAppInfoList");
            carLinkAppListAdapter.setAppInfoList(carLinkAllAppInfoList);
        }
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean isVisible) {
        MLog.d(this.TAG, "onVisibilityAggregated isVisible = " + isVisible);
        super.onVisibilityAggregated(isVisible);
        this.mMixCarLinkVisible = isVisible;
        CarLinkAppListManager.INSTANCE.getInstance(this.mContext).setMAppListViewVisible(isVisible);
        Intent intent = new Intent(CarLinkDeviceManager.CARLINK_MIX_LAUNCHER_ACTION);
        intent.putExtra("mixLauncher", isVisible);
        this.mContext.sendBroadcast(intent);
        if (isVisible) {
            CarLinkAppListManager.INSTANCE.getInstance(this.mContext).checkCarLinkState();
        } else {
            CarLinkAppListManager.INSTANCE.getInstance(this.mContext).dismissAllDialog();
        }
    }

    private final void initView() {
        this.mRlCarLinkAppList = (RelativeLayout) findViewById(R.id.rl_hicar_app_list);
        this.mRvCarLinkAppList = (RecyclerView) findViewById(R.id.rv_hicar_app_list);
        this.mCarLinkAppIndicator = (CarLinkAppListIndicator) findViewById(R.id.hicar_app_indicator);
        this.mLlBluetoothOpening = (LinearLayout) findViewById(R.id.ll_bluetooth_opening);
        this.mLlCarLinkConnecting = (LinearLayout) findViewById(R.id.ll_hicar_connecting);
        ImageView imageView = (ImageView) findViewById(R.id.iv_loading);
        this.mCarLinkIvLoading = imageView;
        this.mConnectingAnimationDrawable = (AnimationDrawable) (imageView != null ? imageView.getDrawable() : null);
        this.mTvCarLinkConnectingProgress = (TextView) findViewById(R.id.tv_connecting_progress);
        this.mTvCarLinkConnectingNotice = (TextView) findViewById(R.id.tv_connecting_notice);
        this.mLlPinCode = (LinearLayout) findViewById(R.id.ll_pin_code);
        this.mLlPinCodeInput = (LinearLayout) findViewById(R.id.ll_pin_code_input);
        this.mCarLinkTvNumber1 = (TextView) findViewById(R.id.hicar_tv_number1);
        this.mCarLinkTvNumber2 = (TextView) findViewById(R.id.hicar_tv_number2);
        this.mCarLinkTvNumber3 = (TextView) findViewById(R.id.hicar_tv_number3);
        this.mCarLinkTvNumber4 = (TextView) findViewById(R.id.hicar_tv_number4);
        this.mCarLinkTvNumber5 = (TextView) findViewById(R.id.hicar_tv_number5);
        this.mCarLinkTvNumber6 = (TextView) findViewById(R.id.hicar_tv_number6);
        this.mCarLinkAppListAdapter = new CarLinkAppListAdapter(this.mContext);
        CarLinkPagerGridLayoutManager carLinkPagerGridLayoutManager = new CarLinkPagerGridLayoutManager(3, 6, 1);
        carLinkPagerGridLayoutManager.setPageListener(this.mPageListener);
        RecyclerView recyclerView = this.mRvCarLinkAppList;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(carLinkPagerGridLayoutManager);
        }
        RecyclerView recyclerView2 = this.mRvCarLinkAppList;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.mCarLinkAppListAdapter);
        }
        RecyclerView recyclerView3 = this.mRvCarLinkAppList;
        if (recyclerView3 != null) {
            recyclerView3.addItemDecoration(new AppListPaddingDecoration());
        }
        CarLinkPagerGridSnapHelper carLinkPagerGridSnapHelper = new CarLinkPagerGridSnapHelper();
        RecyclerView recyclerView4 = this.mRvCarLinkAppList;
        if (recyclerView4 != null) {
            carLinkPagerGridSnapHelper.attachToRecyclerView(recyclerView4);
        }
    }

    @Override // com.mega.carlink.view.ICarLinkAppListView
    public void initApplistManager() {
        CarLinkAppListManager.INSTANCE.getInstance(this.mContext).init(this);
    }

    @Override // com.mega.carlink.view.ICarLinkAppListView
    public void onPinCodeChange(final String pinCode) {
        MLog.d(this.TAG, "onPinCodeChange() pinCode:" + pinCode);
        if (pinCode == null || pinCode.length() != 6) {
            MLog.e(this.TAG, "invalid pin code!");
        } else {
            this.mUiThreadHandler.post(new Runnable() { // from class: com.mega.carlink.view.CarLinkAppListView$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    CarLinkAppListView.onPinCodeChange$lambda$3(this.f$0, pinCode);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPinCodeChange$lambda$3(CarLinkAppListView this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = this$0.mCarLinkTvNumber1;
        if (textView != null) {
            textView.setText(String.valueOf(str.charAt(0)));
        }
        TextView textView2 = this$0.mCarLinkTvNumber2;
        if (textView2 != null) {
            textView2.setText(String.valueOf(str.charAt(1)));
        }
        TextView textView3 = this$0.mCarLinkTvNumber3;
        if (textView3 != null) {
            textView3.setText(String.valueOf(str.charAt(2)));
        }
        TextView textView4 = this$0.mCarLinkTvNumber4;
        if (textView4 != null) {
            textView4.setText(String.valueOf(str.charAt(3)));
        }
        TextView textView5 = this$0.mCarLinkTvNumber5;
        if (textView5 != null) {
            textView5.setText(String.valueOf(str.charAt(4)));
        }
        TextView textView6 = this$0.mCarLinkTvNumber6;
        if (textView6 == null) {
            return;
        }
        textView6.setText(String.valueOf(str.charAt(5)));
    }

    @Override // com.mega.carlink.view.ICarLinkAppListView
    public void onBluetoothEnableStatusChanged(boolean enable) {
        MLog.d(this.TAG, "onBluetoothEnableStatusChanged() enable:" + enable);
        String connectPhoneID = CarLinkDeviceManager.getInstance(this.mContext).getConnectPhoneID(2);
        MLog.d(this.TAG, "onBluetoothEnableStatusChanged() connectPhoneID:" + connectPhoneID);
        if (connectPhoneID == null || connectPhoneID.length() != 0) {
            return;
        }
        if (enable) {
            LinearLayout linearLayout = this.mLlCarLinkConnecting;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.mLlBluetoothOpening;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            RelativeLayout relativeLayout = this.mRlCarLinkAppList;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
            LinearLayout linearLayout3 = this.mLlPinCode;
            if (linearLayout3 == null) {
                return;
            }
            linearLayout3.setVisibility(0);
            return;
        }
        LinearLayout linearLayout4 = this.mLlBluetoothOpening;
        if (linearLayout4 != null) {
            linearLayout4.setVisibility(0);
        }
        MLog.d(this.TAG, "onBluetoothEnableStatusChanged: mLlCarLinkConnecting gone");
        LinearLayout linearLayout5 = this.mLlCarLinkConnecting;
        if (linearLayout5 != null) {
            linearLayout5.setVisibility(8);
        }
        LinearLayout linearLayout6 = this.mLlPinCode;
        if (linearLayout6 != null) {
            linearLayout6.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.mRlCarLinkAppList;
        if (relativeLayout2 == null) {
            return;
        }
        relativeLayout2.setVisibility(8);
    }

    @Override // com.mega.carlink.view.ICarLinkAppListView
    public void onCarLinkConnectStatusChanged(int state, boolean showAnim) {
        MLog.d(this.TAG, "onCarLinkConnectStatusChanged() state:" + state + ", showAnim:" + showAnim);
        if (state != 1) {
            if (state == 2) {
                MLog.d(this.TAG, "onCarLinkConnectStatusChanged: carLinkDeviceName==" + CarLinkDeviceManager.getInstance(this.mContext).getCarLinkDeviceName());
                LinearLayout linearLayout = this.mLlCarLinkConnecting;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                LinearLayout linearLayout2 = this.mLlPinCode;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                LinearLayout linearLayout3 = this.mLlBluetoothOpening;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(8);
                }
                RelativeLayout relativeLayout = this.mRlCarLinkAppList;
                if (relativeLayout == null) {
                    return;
                }
                relativeLayout.setVisibility(0);
                return;
            }
            if (state != 3) {
                return;
            }
        }
        MLog.d(this.TAG, "onCarLinkConnectStatusChanged: mLlPinCode==" + this.mLlPinCode);
        LinearLayout linearLayout4 = this.mLlPinCode;
        if (linearLayout4 != null) {
            linearLayout4.setVisibility(0);
        }
        LinearLayout linearLayout5 = this.mLlPinCode;
        if (linearLayout5 != null) {
            linearLayout5.invalidate();
        }
        LinearLayout linearLayout6 = this.mLlBluetoothOpening;
        if (linearLayout6 != null) {
            linearLayout6.setVisibility(8);
        }
        MLog.d(this.TAG, "onCarLinkConnectStatusChanged: mLlCarLinkConnecting gone");
        LinearLayout linearLayout7 = this.mLlCarLinkConnecting;
        if (linearLayout7 != null) {
            linearLayout7.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.mRlCarLinkAppList;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(8);
        }
        boolean zIsDisconnectByUser = CarLinkDeviceManager.getInstance(this.mContext).isDisconnectByUser();
        MLog.d(this.TAG, "onCarLinkConnectStatusChanged: disconnectByUser==" + zIsDisconnectByUser);
        int i = Settings.System.getInt(this.mContext.getContentResolver(), CarLinkDeviceManager.SHOW_PIN_VIEW, 0);
        MLog.d(this.TAG, "onCarLinkConnectStatusChanged: isShowPinView==" + i);
        int i2 = Settings.System.getInt(this.mContext.getContentResolver(), CarLinkDeviceManager.CONNECTING_TO_ZERO, 0);
        int i3 = Settings.System.getInt(this.mContext.getContentResolver(), CarLinkDeviceManager.CARLINK_SHOW, 0);
        MLog.d(this.TAG, "onCarLinkConnectStatusChanged: connectingToZero==" + i2);
        MLog.d(this.TAG, "onCarLinkConnectStatusChanged: showCarlink==" + i3);
        MLog.d(this.TAG, "onCarLinkConnectStatusChanged: mMixCarLinkVisible==" + this.mMixCarLinkVisible);
        if (showAnim && zIsDisconnectByUser && i == 0 && i2 == 1) {
            boolean z = this.mMixCarLinkVisible;
            if (z || (!z && i3 == 1)) {
                CarLinkAppListManager.INSTANCE.getInstance(this.mContext).startAppList();
            }
        }
    }

    @Override // com.mega.carlink.view.ICarLinkAppListView
    public void onLoadAllAppInfo(final List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        MLog.d(this.TAG, "onLoadAllAppInfo() list:" + list);
        this.mUiThreadHandler.postDelayed(new Runnable() { // from class: com.mega.carlink.view.CarLinkAppListView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CarLinkAppListView.onLoadAllAppInfo$lambda$4(this.f$0, list);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onLoadAllAppInfo$lambda$4(CarLinkAppListView this$0, List list) {
        AnimationDrawable animationDrawable;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        MLog.d(this$0.TAG, "onLoadAllAppInfo() mConnectingAnimationDrawable:" + (this$0.mConnectingAnimationDrawable == null));
        AnimationDrawable animationDrawable2 = this$0.mConnectingAnimationDrawable;
        if (animationDrawable2 != null && animationDrawable2.isRunning() && (animationDrawable = this$0.mConnectingAnimationDrawable) != null) {
            animationDrawable.stop();
        }
        MLog.d(this$0.TAG, "onLoadAllAppInfo() mLlCarLinkConnecting:" + (this$0.mLlCarLinkConnecting == null));
        MLog.d(this$0.TAG, "onLoadAllAppInfo: mLlCarLinkConnecting gone");
        LinearLayout linearLayout = this$0.mLlCarLinkConnecting;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        if (!list.isEmpty()) {
            LinearLayout linearLayout2 = this$0.mLlPinCode;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            LinearLayout linearLayout3 = this$0.mLlBluetoothOpening;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            RelativeLayout relativeLayout = this$0.mRlCarLinkAppList;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
        } else {
            LinearLayout linearLayout4 = this$0.mLlPinCode;
            if (linearLayout4 != null) {
                linearLayout4.setVisibility(0);
            }
            LinearLayout linearLayout5 = this$0.mLlBluetoothOpening;
            if (linearLayout5 != null) {
                linearLayout5.setVisibility(8);
            }
            RelativeLayout relativeLayout2 = this$0.mRlCarLinkAppList;
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(8);
            }
        }
        CarLinkAppListAdapter carLinkAppListAdapter = this$0.mCarLinkAppListAdapter;
        if (carLinkAppListAdapter != null) {
            carLinkAppListAdapter.setAppInfoList(list);
        }
    }

    @Override // com.mega.carlink.view.ICarLinkAppListView
    public void onAppInfoAdd(final List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.mUiThreadHandler.post(new Runnable() { // from class: com.mega.carlink.view.CarLinkAppListView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CarLinkAppListView.onAppInfoAdd$lambda$5(this.f$0, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAppInfoAdd$lambda$5(CarLinkAppListView this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        MLog.d(this$0.TAG, "onAppInfoAdd() list:" + list);
        CarLinkAppListAdapter carLinkAppListAdapter = this$0.mCarLinkAppListAdapter;
        if (carLinkAppListAdapter != null) {
            carLinkAppListAdapter.appendNewAppInfoList(list);
        }
    }

    @Override // com.mega.carlink.view.ICarLinkAppListView
    public void onAppInfoRemove(final List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.mUiThreadHandler.post(new Runnable() { // from class: com.mega.carlink.view.CarLinkAppListView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CarLinkAppListView.onAppInfoRemove$lambda$6(this.f$0, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAppInfoRemove$lambda$6(CarLinkAppListView this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        MLog.d(this$0.TAG, "onAppInfoRemove() list:" + list);
        CarLinkAppListAdapter carLinkAppListAdapter = this$0.mCarLinkAppListAdapter;
        if (carLinkAppListAdapter != null) {
            carLinkAppListAdapter.removeAppInfoList(list);
        }
    }

    @Override // com.mega.carlink.view.ICarLinkAppListView
    public void onAppInfoUpdate(final List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.mUiThreadHandler.post(new Runnable() { // from class: com.mega.carlink.view.CarLinkAppListView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                CarLinkAppListView.onAppInfoUpdate$lambda$7(this.f$0, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAppInfoUpdate$lambda$7(CarLinkAppListView this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        MLog.d(this$0.TAG, "onAppInfoUpdate() list:" + list);
        CarLinkAppListAdapter carLinkAppListAdapter = this$0.mCarLinkAppListAdapter;
        if (carLinkAppListAdapter != null) {
            carLinkAppListAdapter.updateAppInfoList(list);
        }
    }

    @Override // com.mega.carlink.view.ICarLinkAppListView
    public void onConnectingProgress(final String deviceID, final int progress, final String deviceName, final String productName) {
        Intrinsics.checkNotNullParameter(deviceID, "deviceID");
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        Intrinsics.checkNotNullParameter(productName, "productName");
        if (progress != 0) {
            this.mUiThreadHandler.post(new Runnable() { // from class: com.mega.carlink.view.CarLinkAppListView$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    CarLinkAppListView.onConnectingProgress$lambda$8(this.f$0, deviceID, progress, deviceName, productName);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConnectingProgress$lambda$8(CarLinkAppListView this$0, String deviceID, int i, String deviceName, String productName) {
        AnimationDrawable animationDrawable;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(deviceID, "$deviceID");
        Intrinsics.checkNotNullParameter(deviceName, "$deviceName");
        Intrinsics.checkNotNullParameter(productName, "$productName");
        MLog.d(this$0.TAG, "onConnectingProgress() deviceID:" + deviceID + ", progress:" + i + ", deviceName:" + deviceName + ", productName:" + productName);
        LinearLayout linearLayout = this$0.mLlPinCode;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this$0.mLlBluetoothOpening;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RelativeLayout relativeLayout = this$0.mRlCarLinkAppList;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        LinearLayout linearLayout3 = this$0.mLlCarLinkConnecting;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(0);
        }
        AnimationDrawable animationDrawable2 = this$0.mConnectingAnimationDrawable;
        if (animationDrawable2 != null && !animationDrawable2.isRunning() && (animationDrawable = this$0.mConnectingAnimationDrawable) != null) {
            animationDrawable.start();
        }
        TextView textView = this$0.mTvCarLinkConnectingProgress;
        if (textView != null) {
            textView.setText(new StringBuilder().append(i).append('%').toString());
        }
        TextView textView2 = this$0.mTvCarLinkConnectingNotice;
        if (textView2 == null) {
            return;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = this$0.mContext.getString(R.string.connecting_device_notice_gc);
        Intrinsics.checkNotNullExpressionValue(string, "mContext.getString(R.str…necting_device_notice_gc)");
        String str = String.format(string, Arrays.copyOf(new Object[]{deviceName}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
        textView2.setText(str);
    }

    /* JADX INFO: compiled from: CarLinkAppListView.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"Lcom/mega/carlink/view/CarLinkAppListView$AppListPaddingDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "()V", "getItemOffsets", "", "outRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", TestProtocol.STATE_FIELD, "Landroidx/recyclerview/widget/RecyclerView$State;", "carlink-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AppListPaddingDecoration extends RecyclerView.ItemDecoration {
        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
            Intrinsics.checkNotNullParameter(outRect, "outRect");
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view) % 6;
            float f = (910 * 1.0f) / 6;
            float f2 = 330 + (childAdapterPosition * (50 - f));
            outRect.left = Math.round(f2);
            outRect.right = Math.round(f - f2);
            outRect.top = 15;
            outRect.bottom = 20;
        }
    }
}
