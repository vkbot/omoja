package com.mega.hicar.view;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.testing.TestProtocol;
import com.mega.hicar.HiCarDeviceManager;
import com.mega.hicar.lib.R;
import com.mega.hicar.model.AppInfo;
import com.mega.hicar.util.HandlerUtil;
import com.mega.hicar.view.widget.HicarAppListIndicator;
import com.mega.hicar.view.widget.HicarPagerGridLayoutManager;
import com.mega.hicar.view.widget.HicarPagerGridSnapHelper;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import mega.log.MLog;

/* JADX INFO: compiled from: HiCarAppListView.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u00020\u00012\u00020\u0002:\u0001>B%\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020*H\u0002J\u0016\u0010,\u001a\u00020*2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.H\u0016J\u0016\u00100\u001a\u00020*2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.H\u0016J\u0016\u00101\u001a\u00020*2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.H\u0016J\u0010\u00102\u001a\u00020*2\u0006\u00103\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020*2\u0006\u00106\u001a\u00020\b2\u0006\u00107\u001a\u000204H\u0016J\u0016\u00108\u001a\u00020*2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.H\u0016J\u0012\u00109\u001a\u00020*2\b\u0010:\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010;\u001a\u00020*2\u0006\u0010<\u001a\u000204H\u0016J\b\u0010=\u001a\u00020*H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006?"}, d2 = {"Lcom/mega/hicar/view/HiCarAppListView;", "Landroid/widget/RelativeLayout;", "Lcom/mega/hicar/view/IHiCarAppListView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "TAG", "", "mConnectingAnimationDrawable", "Landroid/graphics/drawable/AnimationDrawable;", "mCurrentPageIndex", "mHicarAppIndicator", "Lcom/mega/hicar/view/widget/HicarAppListIndicator;", "mHicarAppListAdapter", "Lcom/mega/hicar/view/HicarAppListAdapter;", "mHicarIvLoading", "Landroid/widget/ImageView;", "mHicarTvNumber1", "Landroid/widget/TextView;", "mHicarTvNumber2", "mHicarTvNumber3", "mHicarTvNumber4", "mHicarTvNumber5", "mHicarTvNumber6", "mLlBluetoothOpening", "Landroid/widget/LinearLayout;", "mLlHicarConnecting", "mLlPinCode", "mLlPinCodeInput", "mPageListener", "Lcom/mega/hicar/view/widget/HicarPagerGridLayoutManager$PageListener;", "mRlHicarAppList", "mRvHicarAppList", "Landroidx/recyclerview/widget/RecyclerView;", "mTvHicarConnectingNotice", "mUiThreadHandler", "Landroid/os/Handler;", "initApplistManager", "", "initView", "onAppInfoAdd", "list", "", "Lcom/mega/hicar/model/AppInfo;", "onAppInfoRemove", "onAppInfoUpdate", "onBluetoothEnableStatusChanged", "enable", "", "onHiCarConnectStatusChanged", TestProtocol.STATE_FIELD, "showAnim", "onLoadAllAppInfo", "onPinCodeChange", "pinCode", "onVisibilityAggregated", "isVisible", "startAppList", "AppListPaddingDecoration", "hicar-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HiCarAppListView extends RelativeLayout implements IHiCarAppListView {
    private final String TAG;
    private AnimationDrawable mConnectingAnimationDrawable;
    private int mCurrentPageIndex;
    private HicarAppListIndicator mHicarAppIndicator;
    private HicarAppListAdapter mHicarAppListAdapter;
    private ImageView mHicarIvLoading;
    private TextView mHicarTvNumber1;
    private TextView mHicarTvNumber2;
    private TextView mHicarTvNumber3;
    private TextView mHicarTvNumber4;
    private TextView mHicarTvNumber5;
    private TextView mHicarTvNumber6;
    private LinearLayout mLlBluetoothOpening;
    private LinearLayout mLlHicarConnecting;
    private LinearLayout mLlPinCode;
    private LinearLayout mLlPinCodeInput;
    private final HicarPagerGridLayoutManager.PageListener mPageListener;
    private RelativeLayout mRlHicarAppList;
    private RecyclerView mRvHicarAppList;
    private TextView mTvHicarConnectingNotice;
    private Handler mUiThreadHandler;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HiCarAppListView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HiCarAppListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ HiCarAppListView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HiCarAppListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.TAG = "HiCarAppListView";
        this.mUiThreadHandler = new Handler(Looper.getMainLooper());
        this.mPageListener = new HicarPagerGridLayoutManager.PageListener() { // from class: com.mega.hicar.view.HiCarAppListView$mPageListener$1
            @Override // com.mega.hicar.view.widget.HicarPagerGridLayoutManager.PageListener
            public void onPageSizeChanged(int pageSize) {
                HicarAppListIndicator hicarAppListIndicator;
                MLog.i("onPageSizeChanged " + pageSize);
                if (this.this$0.mHicarAppIndicator == null || (hicarAppListIndicator = this.this$0.mHicarAppIndicator) == null) {
                    return;
                }
                hicarAppListIndicator.setCellCount(pageSize);
            }

            @Override // com.mega.hicar.view.widget.HicarPagerGridLayoutManager.PageListener
            public void onPageSelect(int pageIndex) {
                HicarAppListIndicator hicarAppListIndicator;
                MLog.i("onPageSelect " + pageIndex);
                this.this$0.mCurrentPageIndex = pageIndex;
                if (this.this$0.mHicarAppIndicator == null || (hicarAppListIndicator = this.this$0.mHicarAppIndicator) == null) {
                    return;
                }
                hicarAppListIndicator.setCurrentPosition(pageIndex);
            }
        };
        MLog.d("HiCarAppListView", "initforkotlin HiCarAppListView");
        RelativeLayout.inflate(context, R.layout.hicar_layout_hicar_applist, this);
        initView();
        initApplistManager();
        HandlerUtil.postDelayed(500L, new Runnable() { // from class: com.mega.hicar.view.HiCarAppListView$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                HiCarAppListView._init_$lambda$1(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(final HiCarAppListView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean zIsHiCarConnected = HiCarDeviceManager.getInstance().isHiCarConnected();
        MLog.d(this$0.TAG, "init hiCarConnected = " + zIsHiCarConnected);
        if (zIsHiCarConnected) {
            final List<AppInfo> allAppInfoList = HiCarDeviceManager.getInstance().getAllAppInfoList();
            MLog.d(this$0.TAG, "init allAppInfoList = " + (allAppInfoList != null ? Integer.valueOf(allAppInfoList.size()) : null));
            if (allAppInfoList == null || allAppInfoList.size() == 0) {
                return;
            }
            this$0.mUiThreadHandler.post(new Runnable() { // from class: com.mega.hicar.view.HiCarAppListView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    HiCarAppListView.lambda$1$lambda$0(this.f$0, allAppInfoList);
                }
            });
        }
    }

    static final void lambda$1$lambda$0(HiCarAppListView this$0, List allAppInfoList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MLog.d(this$0.TAG, "initforkotlin: mLlHicarConnecting gone");
        LinearLayout linearLayout = this$0.mLlHicarConnecting;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        if (!allAppInfoList.isEmpty()) {
            LinearLayout linearLayout2 = this$0.mLlPinCode;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            RelativeLayout relativeLayout = this$0.mRlHicarAppList;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
        } else {
            RelativeLayout relativeLayout2 = this$0.mRlHicarAppList;
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(8);
            }
        }
        HicarAppListAdapter hicarAppListAdapter = this$0.mHicarAppListAdapter;
        if (hicarAppListAdapter != null) {
            Intrinsics.checkNotNullExpressionValue(allAppInfoList, "allAppInfoList");
            hicarAppListAdapter.setAppInfoList(allAppInfoList);
        }
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean isVisible) {
        MLog.d(this.TAG, "onVisibilityAggregated isVisible = " + isVisible);
        super.onVisibilityAggregated(isVisible);
        HiCarAppListManager.Companion companion = HiCarAppListManager.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        companion.getInstance(context).setMAppListViewVisible(isVisible);
        MLog.d(this.TAG, "onVisibilityAggregated: mLlHicarConnecting gone");
        LinearLayout linearLayout = this.mLlHicarConnecting;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        Intent intent = new Intent(HiCarDeviceManager.MIX_LAUNCHER_ACTION);
        intent.putExtra("mixLauncher", isVisible);
        getContext().sendBroadcast(intent);
        if (isVisible) {
            HiCarAppListManager.Companion companion2 = HiCarAppListManager.INSTANCE;
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            companion2.getInstance(context2).checkHicarState();
            return;
        }
        HiCarAppListManager.Companion companion3 = HiCarAppListManager.INSTANCE;
        Context context3 = getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "context");
        companion3.getInstance(context3).dismissAllDialog();
    }

    private final void initView() {
        this.mRlHicarAppList = (RelativeLayout) findViewById(R.id.rl_hicar_app_list);
        this.mRvHicarAppList = (RecyclerView) findViewById(R.id.rv_hicar_app_list);
        this.mHicarAppIndicator = (HicarAppListIndicator) findViewById(R.id.hicar_app_indicator);
        this.mLlBluetoothOpening = (LinearLayout) findViewById(R.id.ll_bluetooth_opening);
        this.mLlHicarConnecting = (LinearLayout) findViewById(R.id.ll_hicar_connecting);
        ImageView imageView = (ImageView) findViewById(R.id.iv_loading);
        this.mHicarIvLoading = imageView;
        this.mConnectingAnimationDrawable = (AnimationDrawable) (imageView != null ? imageView.getDrawable() : null);
        this.mTvHicarConnectingNotice = (TextView) findViewById(R.id.tv_connecting_notice);
        this.mLlPinCode = (LinearLayout) findViewById(R.id.ll_pin_code);
        this.mLlPinCodeInput = (LinearLayout) findViewById(R.id.ll_pin_code_input);
        this.mHicarTvNumber1 = (TextView) findViewById(R.id.hicar_tv_number1);
        this.mHicarTvNumber2 = (TextView) findViewById(R.id.hicar_tv_number2);
        this.mHicarTvNumber3 = (TextView) findViewById(R.id.hicar_tv_number3);
        this.mHicarTvNumber4 = (TextView) findViewById(R.id.hicar_tv_number4);
        this.mHicarTvNumber5 = (TextView) findViewById(R.id.hicar_tv_number5);
        this.mHicarTvNumber6 = (TextView) findViewById(R.id.hicar_tv_number6);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        this.mHicarAppListAdapter = new HicarAppListAdapter(context);
        HicarPagerGridLayoutManager hicarPagerGridLayoutManager = new HicarPagerGridLayoutManager(3, 6, 1);
        hicarPagerGridLayoutManager.setPageListener(this.mPageListener);
        RecyclerView recyclerView = this.mRvHicarAppList;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(hicarPagerGridLayoutManager);
        }
        RecyclerView recyclerView2 = this.mRvHicarAppList;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.mHicarAppListAdapter);
        }
        RecyclerView recyclerView3 = this.mRvHicarAppList;
        if (recyclerView3 != null) {
            recyclerView3.addItemDecoration(new AppListPaddingDecoration());
        }
        HicarPagerGridSnapHelper hicarPagerGridSnapHelper = new HicarPagerGridSnapHelper();
        RecyclerView recyclerView4 = this.mRvHicarAppList;
        if (recyclerView4 != null) {
            hicarPagerGridSnapHelper.attachToRecyclerView(recyclerView4);
        }
    }

    @Override // com.mega.hicar.view.IHiCarAppListView
    public void initApplistManager() {
        HiCarAppListManager.Companion companion = HiCarAppListManager.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        companion.getInstance(context).init(this);
    }

    @Override // com.mega.hicar.view.IHiCarAppListView
    public void onPinCodeChange(final String pinCode) {
        MLog.d(this.TAG, "onPinCodeChange() pinCode:" + pinCode);
        if (pinCode == null || pinCode.length() != 6) {
            MLog.e(this.TAG, "invalid pin code!");
        } else {
            this.mUiThreadHandler.post(new Runnable() { // from class: com.mega.hicar.view.HiCarAppListView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    HiCarAppListView.onPinCodeChange$lambda$3(this.f$0, pinCode);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPinCodeChange$lambda$3(HiCarAppListView this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = this$0.mHicarTvNumber1;
        if (textView != null) {
            textView.setText(String.valueOf(str.charAt(0)));
        }
        TextView textView2 = this$0.mHicarTvNumber2;
        if (textView2 != null) {
            textView2.setText(String.valueOf(str.charAt(1)));
        }
        TextView textView3 = this$0.mHicarTvNumber3;
        if (textView3 != null) {
            textView3.setText(String.valueOf(str.charAt(2)));
        }
        TextView textView4 = this$0.mHicarTvNumber4;
        if (textView4 != null) {
            textView4.setText(String.valueOf(str.charAt(3)));
        }
        TextView textView5 = this$0.mHicarTvNumber5;
        if (textView5 != null) {
            textView5.setText(String.valueOf(str.charAt(4)));
        }
        TextView textView6 = this$0.mHicarTvNumber6;
        if (textView6 == null) {
            return;
        }
        textView6.setText(String.valueOf(str.charAt(5)));
    }

    @Override // com.mega.hicar.view.IHiCarAppListView
    public void onBluetoothEnableStatusChanged(boolean enable) {
        MLog.d(this.TAG, "onBluetoothEnableStatusChanged() enable:" + enable);
        String connectPhoneID = HiCarDeviceManager.getInstance().getConnectPhoneID();
        MLog.d(this.TAG, "onBluetoothEnableStatusChanged() connectPhoneID:" + connectPhoneID);
        Intrinsics.checkNotNullExpressionValue(connectPhoneID, "connectPhoneID");
        if (connectPhoneID.length() == 0) {
            if (enable) {
                LinearLayout linearLayout = this.mLlBluetoothOpening;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                LinearLayout linearLayout2 = this.mLlPinCode;
                if (linearLayout2 == null) {
                    return;
                }
                linearLayout2.setVisibility(0);
                return;
            }
            LinearLayout linearLayout3 = this.mLlBluetoothOpening;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(0);
            }
            MLog.d(this.TAG, "onBluetoothEnableStatusChanged: mLlHicarConnecting gone");
            LinearLayout linearLayout4 = this.mLlHicarConnecting;
            if (linearLayout4 != null) {
                linearLayout4.setVisibility(8);
            }
            LinearLayout linearLayout5 = this.mLlPinCode;
            if (linearLayout5 != null) {
                linearLayout5.setVisibility(8);
            }
            RelativeLayout relativeLayout = this.mRlHicarAppList;
            if (relativeLayout == null) {
                return;
            }
            relativeLayout.setVisibility(8);
        }
    }

    @Override // com.mega.hicar.view.IHiCarAppListView
    public void onHiCarConnectStatusChanged(int state, boolean showAnim) {
        MLog.d(this.TAG, "onHiCarConnectStatusChanged() state:" + state + ", showAnim:" + showAnim);
        if (state == 101) {
            LinearLayout linearLayout = this.mLlPinCode;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.mLlBluetoothOpening;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            if (showAnim) {
                HandlerUtil.post(new Runnable() { // from class: com.mega.hicar.view.HiCarAppListView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        HiCarAppListView.onHiCarConnectStatusChanged$lambda$5(this.f$0);
                    }
                });
                return;
            }
            return;
        }
        LinearLayout linearLayout3 = this.mLlPinCode;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(0);
        }
        LinearLayout linearLayout4 = this.mLlBluetoothOpening;
        if (linearLayout4 != null) {
            linearLayout4.setVisibility(8);
        }
        MLog.d(this.TAG, "onHiCarConnectStatusChanged: mLlHicarConnecting gone");
        LinearLayout linearLayout5 = this.mLlHicarConnecting;
        if (linearLayout5 != null) {
            linearLayout5.setVisibility(8);
        }
        RelativeLayout relativeLayout = this.mRlHicarAppList;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        IconCache.INSTANCE.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onHiCarConnectStatusChanged$lambda$5(final HiCarAppListView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<AppInfo> allAppInfoList = HiCarDeviceManager.getInstance().getAllAppInfoList();
        if (allAppInfoList == null || !allAppInfoList.isEmpty()) {
            return;
        }
        MLog.d(this$0.TAG, "onHiCarConnectStatusChanged: mLlHicarConnecting visible");
        this$0.mUiThreadHandler.post(new Runnable() { // from class: com.mega.hicar.view.HiCarAppListView$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                HiCarAppListView.onHiCarConnectStatusChanged$lambda$5$lambda$4(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onHiCarConnectStatusChanged$lambda$5$lambda$4(HiCarAppListView this$0) {
        AnimationDrawable animationDrawable;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AnimationDrawable animationDrawable2 = this$0.mConnectingAnimationDrawable;
        if (animationDrawable2 != null && !animationDrawable2.isRunning() && (animationDrawable = this$0.mConnectingAnimationDrawable) != null) {
            animationDrawable.start();
        }
        TextView textView = this$0.mTvHicarConnectingNotice;
        if (textView == null) {
            return;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = this$0.getContext().getString(R.string.connecting_device_notice_gc);
        Intrinsics.checkNotNullExpressionValue(string, "context\n                …necting_device_notice_gc)");
        HiCarAppListManager.Companion companion = HiCarAppListManager.INSTANCE;
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        String str = String.format(string, Arrays.copyOf(new Object[]{companion.getInstance(context).getDeviceName()}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
        textView.setText(str);
    }

    @Override // com.mega.hicar.view.IHiCarAppListView
    public void onLoadAllAppInfo(final List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        MLog.d(this.TAG, "onLoadAllAppInfo() list:" + list);
        this.mUiThreadHandler.postDelayed(new Runnable() { // from class: com.mega.hicar.view.HiCarAppListView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HiCarAppListView.onLoadAllAppInfo$lambda$6(this.f$0, list);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onLoadAllAppInfo$lambda$6(HiCarAppListView this$0, List list) {
        AnimationDrawable animationDrawable;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        MLog.d(this$0.TAG, "onLoadAllAppInfo() mConnectingAnimationDrawable:" + (this$0.mConnectingAnimationDrawable == null));
        AnimationDrawable animationDrawable2 = this$0.mConnectingAnimationDrawable;
        if (animationDrawable2 != null && animationDrawable2.isRunning() && (animationDrawable = this$0.mConnectingAnimationDrawable) != null) {
            animationDrawable.stop();
        }
        MLog.d(this$0.TAG, "onLoadAllAppInfo() mLlHicarConnecting:" + (this$0.mLlHicarConnecting == null));
        MLog.d(this$0.TAG, "onLoadAllAppInfo: mLlHicarConnecting gone");
        LinearLayout linearLayout = this$0.mLlHicarConnecting;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        boolean zIsHiCarConnected = HiCarDeviceManager.getInstance().isHiCarConnected();
        MLog.d(this$0.TAG, "onLoadAllAppInfo: hiCarConn==" + zIsHiCarConnected);
        if (zIsHiCarConnected) {
            if (!list.isEmpty()) {
                LinearLayout linearLayout2 = this$0.mLlPinCode;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                RelativeLayout relativeLayout = this$0.mRlHicarAppList;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(0);
                }
            } else {
                RelativeLayout relativeLayout2 = this$0.mRlHicarAppList;
                if (relativeLayout2 != null) {
                    relativeLayout2.setVisibility(8);
                }
            }
            HicarAppListAdapter hicarAppListAdapter = this$0.mHicarAppListAdapter;
            if (hicarAppListAdapter != null) {
                hicarAppListAdapter.setAppInfoList(list);
            }
        }
    }

    @Override // com.mega.hicar.view.IHiCarAppListView
    public void onAppInfoAdd(final List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.mUiThreadHandler.post(new Runnable() { // from class: com.mega.hicar.view.HiCarAppListView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                HiCarAppListView.onAppInfoAdd$lambda$7(this.f$0, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAppInfoAdd$lambda$7(HiCarAppListView this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        MLog.d(this$0.TAG, "onAppInfoAdd() list:" + list);
        HicarAppListAdapter hicarAppListAdapter = this$0.mHicarAppListAdapter;
        if (hicarAppListAdapter != null) {
            hicarAppListAdapter.appendNewAppInfoList(list);
        }
    }

    @Override // com.mega.hicar.view.IHiCarAppListView
    public void onAppInfoRemove(final List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.mUiThreadHandler.post(new Runnable() { // from class: com.mega.hicar.view.HiCarAppListView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                HiCarAppListView.onAppInfoRemove$lambda$8(this.f$0, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAppInfoRemove$lambda$8(HiCarAppListView this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        MLog.d(this$0.TAG, "onAppInfoRemove() list:" + list);
        HicarAppListAdapter hicarAppListAdapter = this$0.mHicarAppListAdapter;
        if (hicarAppListAdapter != null) {
            hicarAppListAdapter.removeAppInfoList(list);
        }
    }

    @Override // com.mega.hicar.view.IHiCarAppListView
    public void onAppInfoUpdate(final List<AppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.mUiThreadHandler.post(new Runnable() { // from class: com.mega.hicar.view.HiCarAppListView$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                HiCarAppListView.onAppInfoUpdate$lambda$9(this.f$0, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAppInfoUpdate$lambda$9(HiCarAppListView this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        MLog.d(this$0.TAG, "onAppInfoUpdate() list:" + list);
        HicarAppListAdapter hicarAppListAdapter = this$0.mHicarAppListAdapter;
        if (hicarAppListAdapter != null) {
            hicarAppListAdapter.updateAppInfoList(list);
        }
    }

    private final void startAppList() {
        MLog.d(this.TAG, "startAppList()");
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.android.launcher3", "com.android.launcher3.activity.AppListActivity"));
        intent.putExtra("to_tab", 0);
        intent.addFlags(805306368);
        getContext().startActivity(intent);
    }

    /* JADX INFO: compiled from: HiCarAppListView.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"Lcom/mega/hicar/view/HiCarAppListView$AppListPaddingDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "()V", "getItemOffsets", "", "outRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", TestProtocol.STATE_FIELD, "Landroidx/recyclerview/widget/RecyclerView$State;", "hicar-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
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
            outRect.bottom = 0;
        }
    }
}
