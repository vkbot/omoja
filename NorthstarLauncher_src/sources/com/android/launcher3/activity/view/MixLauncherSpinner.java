package com.android.launcher3.activity.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSpinner;
import com.android.launcher3.R;
import com.android.launcher3.activity.AppListContext;
import com.mega.carlink.CarLinkDeviceManager;
import java.util.Objects;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class MixLauncherSpinner extends AppCompatSpinner {
    public static final int POS_CAR_LINK = 0;
    public static final int POS_HICAR = 1;
    private static final String TAG = "MixLauncherSpinner";
    private final Adapter mAdapter;
    private final SparseArray<String> mItems;
    private OnDropDownItemClickListener mOnDropDownItemClickListener;
    private int mPosition;
    private boolean mSpinnerOpened;
    private int mTitleColor;
    private View mTitleView;

    public interface OnDropDownItemClickListener {
        void onItemClicked(int position);
    }

    private boolean isSpinnerOpened() {
        return this.mSpinnerOpened;
    }

    public void setOnDropDownItemClickListener(OnDropDownItemClickListener listener) {
        this.mOnDropDownItemClickListener = listener;
    }

    public MixLauncherSpinner(Context context) {
        this(context, null);
    }

    public MixLauncherSpinner(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mItems = new SparseArray<>();
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mix_launcher_drop_down_width);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.mix_launcher_drop_down_horizontal_offset);
        int dimensionPixelSize3 = context.getResources().getDimensionPixelSize(R.dimen.mix_launcher_drop_down_vertical_offset);
        setDropDownWidth(dimensionPixelSize);
        setDropDownHorizontalOffset(dimensionPixelSize2);
        setDropDownVerticalOffset(dimensionPixelSize3);
        setPopupBackgroundResource(R.drawable.mix_launcher_drop_down_background);
        Adapter adapter = new Adapter(context);
        this.mAdapter = adapter;
        setAdapter((SpinnerAdapter) adapter);
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner, android.widget.Spinner, android.view.View
    public boolean performClick() {
        AppListContext appListContextLookupContext = AppListContext.INSTANCE.lookupContext(getContext());
        if (appListContextLookupContext != null && appListContextLookupContext.changeTab(1)) {
            MLog.d(TAG, "performClick: change tab first");
            return true;
        }
        boolean zPerformClick = super.performClick();
        if (zPerformClick) {
            onSpinnerOpened();
        }
        return zPerformClick;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
        if (isSpinnerOpened() && hasWindowFocus) {
            onSpinnerClosed();
        }
    }

    private void onSpinnerOpened() {
        this.mSpinnerOpened = true;
        setBackgroundResource(R.drawable.spinner_background_arrow_up);
    }

    private void onSpinnerClosed() {
        this.mSpinnerOpened = false;
        setBackgroundResource(R.drawable.spinner_background);
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View child, int index, ViewGroup.LayoutParams params) {
        MLog.d(TAG, "addViewInLayout: " + index + " " + child);
        this.mTitleView = child;
        if (child instanceof TextView) {
            ((TextView) child).setGravity(17);
        }
        child.setImportantForAccessibility(2);
        updateTitleText();
        updateTitleColor();
        return super.addViewInLayout(child, index, params);
    }

    @Override // android.widget.AbsSpinner, android.widget.AdapterView
    public void setSelection(int position) {
        super.setSelection(position);
        MLog.d(TAG, "setSelection: position=" + position);
        OnDropDownItemClickListener onDropDownItemClickListener = this.mOnDropDownItemClickListener;
        if (onDropDownItemClickListener != null) {
            onDropDownItemClickListener.onItemClicked(position);
        }
    }

    public void setTextColor(int color) {
        this.mTitleColor = color;
        updateTitleColor();
    }

    public void setPosition(int position) {
        this.mPosition = position;
        updateTitleText();
    }

    public void updateName(boolean connected) {
        MLog.d(TAG, "updateName: connected=" + connected);
        if (connected) {
            String carLinkDeviceName = CarLinkDeviceManager.getInstance(getContext()).getCarLinkDeviceName();
            if (!TextUtils.isEmpty(carLinkDeviceName) && !Objects.equals(carLinkDeviceName, "-1") && !Objects.equals(carLinkDeviceName, "-2")) {
                this.mItems.put(0, carLinkDeviceName);
            } else {
                this.mItems.remove(0);
            }
        } else {
            this.mItems.remove(0);
        }
        updateTitleText();
    }

    private String getCurItem() {
        int i = this.mPosition;
        if (i < 0 || i >= getCount()) {
            return null;
        }
        return getItem(this.mPosition);
    }

    private String getItem(int position) {
        if (this.mItems.contains(position)) {
            return this.mItems.get(position);
        }
        return this.mAdapter.getItem(position);
    }

    private void updateTitleText() {
        String curItem = getCurItem();
        if (TextUtils.isEmpty(curItem)) {
            return;
        }
        View view = this.mTitleView;
        if (view instanceof TextView) {
            ((TextView) view).setText(curItem);
            setContentDescription(curItem);
        }
    }

    private void updateTitleColor() {
        int i;
        MLog.d(TAG, "updateTitleColor: " + this.mTitleView + " mTitleColor=" + this.mTitleColor);
        View view = this.mTitleView;
        if (!(view instanceof TextView) || (i = this.mTitleColor) == 0) {
            return;
        }
        ((TextView) view).setTextColor(i);
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner, android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == 1) {
            playSoundEffect(0);
        }
        return super.onTouchEvent(event);
    }

    public class Adapter extends ArrayAdapter<String> {
        public Adapter(Context context) {
            super(context, R.layout.item_mix_launcher_spinner, context.getResources().getStringArray(R.array.mix_launcher_items_t1gc));
            setDropDownViewResource(R.layout.item_mix_launcher_spinner_drop_down);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            View view = super.getView(position, convertView, parent);
            MLog.d(MixLauncherSpinner.TAG, "getView: " + position + " " + view);
            return view;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int position, View convertView, ViewGroup parent) {
            View dropDownView = super.getDropDownView(position, convertView, parent);
            MLog.d(MixLauncherSpinner.TAG, "getDropDownView: " + position + " " + dropDownView);
            if (position == MixLauncherSpinner.this.mPosition) {
                dropDownView.setBackgroundResource(R.drawable.bg_spinner_dropdown_item);
            } else {
                dropDownView.setBackground(null);
            }
            return dropDownView;
        }
    }
}
