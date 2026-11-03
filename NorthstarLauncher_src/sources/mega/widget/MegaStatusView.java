package mega.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.mega.internal.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class MegaStatusView extends RelativeLayout {
    protected static final RelativeLayout.LayoutParams DEFAULT_LAYOUT_PARAMS = new RelativeLayout.LayoutParams(-1, -1);
    private static final int NULL_RESOURCE_ID = -1;
    public static final int STATUS_CONTENT = 0;
    public static final int STATUS_EMPTY = 2;
    public static final int STATUS_ERROR = 3;
    public static final int STATUS_LOADING = 1;
    public static final int STATUS_NO_NETWORK = 4;
    private ConfigChangedListener mConfigChangeListener;
    private View mContentView;
    private int mContentViewResId;
    private View mEmptyView;
    private int mEmptyViewResId;
    private View mErrorView;
    private int mErrorViewResId;
    protected final LayoutInflater mInflater;
    private View mLoadingView;
    private int mLoadingViewResId;
    private View mNoNetworkView;
    private int mNoNetworkViewResId;
    private View.OnClickListener mOnRetryClickListener;
    protected final ArrayList<Integer> mOtherIds;
    private int mViewStatus;
    private OnViewStatusChangeListener mViewStatusListener;

    public interface ConfigChangedListener {
        void onConfigChange(Configuration configuration, View view, View view2, View view3, View view4, View view5);
    }

    public interface OnViewStatusChangeListener {
        void onChange(int i, int i2);
    }

    private View getTargetView(int i) {
        if (i == 1) {
            return this.mLoadingView;
        }
        if (i == 2) {
            return this.mEmptyView;
        }
        if (i == 3) {
            return this.mErrorView;
        }
        if (i != 4) {
            return null;
        }
        return this.mNoNetworkView;
    }

    public int getViewStatus() {
        return this.mViewStatus;
    }

    public void initRetryView(View view) {
    }

    public void setConfigChangedListener(ConfigChangedListener configChangedListener) {
        this.mConfigChangeListener = configChangedListener;
    }

    public void setOnRetryClickListener(View.OnClickListener onClickListener) {
        this.mOnRetryClickListener = onClickListener;
    }

    public void setOnViewStatusChangeListener(OnViewStatusChangeListener onViewStatusChangeListener) {
        this.mViewStatusListener = onViewStatusChangeListener;
    }

    public MegaStatusView(Context context) {
        this(context, null);
    }

    public MegaStatusView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MegaStatusView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mViewStatus = -1;
        this.mOtherIds = new ArrayList<>();
        this.mInflater = LayoutInflater.from(getContext());
        initStyleAttr(context, attributeSet, i);
    }

    protected void initStyleAttr(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MegaStatusView, i, 0);
        this.mEmptyViewResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MegaStatusView_emptyView, R.layout.empty_view);
        this.mErrorViewResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MegaStatusView_errorView, R.layout.error_view);
        this.mLoadingViewResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MegaStatusView_loadingView, R.layout.loading_view);
        this.mNoNetworkViewResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MegaStatusView_noNetworkView, R.layout.no_network_view);
        this.mContentViewResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MegaStatusView_contentView, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        showContent();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ConfigChangedListener configChangedListener = this.mConfigChangeListener;
        if (configChangedListener != null) {
            configChangedListener.onConfigChange(configuration, this.mEmptyView, this.mErrorView, this.mLoadingView, this.mNoNetworkView, this.mContentView);
        }
    }

    public final void showEmpty() {
        showEmpty(this.mEmptyViewResId, DEFAULT_LAYOUT_PARAMS);
    }

    public final void showEmpty(String str) {
        showEmpty();
        setStatusHintContent(this.mEmptyView, str);
    }

    public final void showEmpty(int i, String str, int i2) {
        showEmpty();
        View view = this.mEmptyView;
        if (view != null) {
            ImageView imageView = (ImageView) view.findViewById(R.id.iv_empty_view);
            if (imageView != null) {
                imageView.setImageResource(i);
            }
            TextView textView = (TextView) this.mEmptyView.findViewById(R.id.status_hint_content);
            if (textView != null) {
                textView.setText(str);
                if (i2 != 0) {
                    textView.setTextColor(i2);
                }
            }
        }
    }

    public final void showEmpty(int i, int i2, int i3) {
        showEmpty(i, getContext().getString(i2), i3);
    }

    public final void showEmpty(int i, ViewGroup.LayoutParams layoutParams) {
        View targetView = getTargetView(2, i, layoutParams);
        this.mEmptyView = targetView;
        showStatusView(2, targetView);
    }

    public final void showError() {
        showError(this.mErrorViewResId, DEFAULT_LAYOUT_PARAMS);
    }

    public final void showError(String str) {
        showError();
        setStatusHintContent(this.mErrorView, str);
    }

    public final void showError(String str, String str2) {
        showError();
        setStatusHintContent(this.mErrorView, str);
        setStatusRetryHintContent(this.mErrorView, str2);
    }

    public final void showError(String str, String str2, int i) {
        showError();
        setStatusHintContent(this.mErrorView, str);
        setStatusRetryHintContent(this.mErrorView, str2);
        setStatusImgRes(this.mErrorView, i);
    }

    public final void showError(int i, ViewGroup.LayoutParams layoutParams) {
        View targetView = getTargetView(3, i, layoutParams);
        this.mErrorView = targetView;
        showStatusView(3, targetView);
    }

    public final void showLoading() {
        showLoading(this.mLoadingViewResId, DEFAULT_LAYOUT_PARAMS);
    }

    public final void showLoading(String str) {
        showLoading();
        setStatusHintContent(this.mLoadingView, str);
    }

    public final void showLoading(int i, ViewGroup.LayoutParams layoutParams) {
        View targetView = getTargetView(1, i, layoutParams);
        this.mLoadingView = targetView;
        showStatusView(1, targetView);
    }

    public final void showNoNetwork() {
        showNoNetwork(this.mNoNetworkViewResId, DEFAULT_LAYOUT_PARAMS);
    }

    public final void showNoNetwork(String str) {
        showNoNetwork();
        setStatusHintContent(this.mNoNetworkView, str);
    }

    public final void showNoNetwork(int i, ViewGroup.LayoutParams layoutParams) {
        View targetView = getTargetView(4, i, layoutParams);
        this.mNoNetworkView = targetView;
        showStatusView(4, targetView);
    }

    public final void showContent() {
        int i;
        changeViewStatus(0);
        if (this.mContentView == null && (i = this.mContentViewResId) != -1) {
            View viewInflate = this.mInflater.inflate(i, (ViewGroup) null);
            this.mContentView = viewInflate;
            addView(viewInflate, 0, DEFAULT_LAYOUT_PARAMS);
        }
        showContentView();
    }

    public final void showContent(int i, ViewGroup.LayoutParams layoutParams) {
        showContent(inflateView(i), layoutParams);
    }

    private void showContent(View view, ViewGroup.LayoutParams layoutParams) {
        checkNull(view, "Content view is null.");
        checkNull(layoutParams, "Layout params is null.");
        changeViewStatus(0);
        clear(this.mContentView);
        this.mContentView = view;
        addView(view, 0, layoutParams);
        showViewById(this.mContentView.getId());
    }

    private View getTargetView(int i, int i2, ViewGroup.LayoutParams layoutParams) {
        View targetView = getTargetView(i);
        if (targetView == null) {
            targetView = inflateView(i2);
            checkNull(targetView, i + " view is null.");
            checkNull(layoutParams, i + " Layout params is null.");
            View viewFindViewById = targetView.findViewById(getRetryId(i));
            View.OnClickListener onClickListener = this.mOnRetryClickListener;
            if (onClickListener != null && viewFindViewById != null) {
                viewFindViewById.setOnClickListener(onClickListener);
            }
            this.mOtherIds.add(Integer.valueOf(targetView.getId()));
            addView(targetView, 0, layoutParams);
        }
        return targetView;
    }

    private void showStatusView(int i, View view) {
        changeViewStatus(i);
        showViewById(view.getId());
    }

    private int getRetryId(int i) {
        if (i == 2) {
            return R.id.empty_retry_view;
        }
        if (i == 3) {
            return R.id.error_retry_view;
        }
        if (i != 4) {
            return -1;
        }
        return R.id.no_network_retry_view;
    }

    protected void setStatusHintContent(View view, String str) {
        checkNull(view, "Target view is null.");
        TextView textView = (TextView) view.findViewById(R.id.status_hint_content);
        if (textView != null) {
            textView.setText(str);
            return;
        }
        throw new NullPointerException("Not find the view ID `status_hint_content`");
    }

    protected void setStatusRetryHintContent(View view, String str) {
        checkNull(view, "Target view is null.");
        TextView textView = (TextView) view.findViewById(R.id.error_retry_view);
        if (textView != null) {
            textView.setText(str);
            return;
        }
        throw new NullPointerException("Not find the view ID `error_retry_view`");
    }

    protected void setStatusImgRes(View view, int i) {
        checkNull(view, "Target view is null.");
        ImageView imageView = (ImageView) view.findViewById(R.id.status_hint_icon);
        if (imageView != null) {
            imageView.setImageResource(i);
            return;
        }
        throw new NullPointerException("Not find the view ID `status_hint_icon`");
    }

    protected View inflateView(int i) {
        return this.mInflater.inflate(i, (ViewGroup) null);
    }

    protected void showViewById(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            childAt.setVisibility(childAt.getId() == i ? 0 : 8);
        }
    }

    private void showContentView() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            childAt.setVisibility(this.mOtherIds.contains(Integer.valueOf(childAt.getId())) ? 8 : 0);
        }
    }

    protected void checkNull(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    private void clear(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            if (view != null) {
                removeView(view);
            }
        }
    }

    protected void changeViewStatus(int i) {
        int i2 = this.mViewStatus;
        if (i2 == i) {
            return;
        }
        OnViewStatusChangeListener onViewStatusChangeListener = this.mViewStatusListener;
        if (onViewStatusChangeListener != null) {
            onViewStatusChangeListener.onChange(i2, i);
        }
        this.mViewStatus = i;
    }

    private void setContentViewResId(int i) {
        this.mContentViewResId = i;
        View viewInflate = this.mInflater.inflate(i, (ViewGroup) null);
        this.mContentView = viewInflate;
        addView(viewInflate, 0, DEFAULT_LAYOUT_PARAMS);
    }

    private void setContentView(ViewGroup viewGroup) {
        this.mContentView = viewGroup;
        addView(viewGroup, 0, DEFAULT_LAYOUT_PARAMS);
    }

    public static MegaStatusView attach(Fragment fragment, int i) {
        ViewGroup viewGroup;
        if (fragment == null || fragment.getView() == null) {
            throw new IllegalArgumentException("fragment is null or fragment.getView is null");
        }
        if (-1 != i && (viewGroup = (ViewGroup) fragment.getView().findViewById(i)) != null) {
            attach(viewGroup);
        }
        return attach((ViewGroup) fragment.getView().getParent());
    }

    public static MegaStatusView attach(Activity activity, int i) {
        ViewGroup viewGroup;
        if (-1 != i && (viewGroup = (ViewGroup) activity.findViewById(i)) != null) {
            attach(viewGroup);
        }
        return attach((ViewGroup) activity.findViewById(android.R.id.content));
    }

    public static MegaStatusView attach(ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("root Anchor View can't be null");
        }
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(viewGroup);
        if (-1 == iIndexOfChild) {
            return null;
        }
        viewGroup2.removeView(viewGroup);
        MegaStatusView megaStatusView = new MegaStatusView(viewGroup.getContext());
        megaStatusView.setContentView(viewGroup);
        viewGroup2.addView(megaStatusView, iIndexOfChild, viewGroup.getLayoutParams());
        return megaStatusView;
    }
}
