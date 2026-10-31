package androidx.appcompat.app;

import android.R$id;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnDismissListener;
import android.content.DialogInterface$OnKeyListener;
import android.content.DialogInterface$OnMultiChoiceClickListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemSelectedListener;
import android.widget.ListAdapter;
import android.widget.SimpleCursorAdapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AlertController$AlertParams {
    public ListAdapter mAdapter;
    public boolean[] mCheckedItems;
    public final Context mContext;
    public Cursor mCursor;
    public View mCustomTitleView;
    public boolean mForceInverseBackground;
    public Drawable mIcon;
    public final LayoutInflater mInflater;
    public String mIsCheckedColumn;
    public boolean mIsMultiChoice;
    public boolean mIsSingleChoice;
    public CharSequence[] mItems;
    public String mLabelColumn;
    public CharSequence mMessage;
    public Drawable mNegativeButtonIcon;
    public DialogInterface$OnClickListener mNegativeButtonListener;
    public CharSequence mNegativeButtonText;
    public Drawable mNeutralButtonIcon;
    public DialogInterface$OnClickListener mNeutralButtonListener;
    public CharSequence mNeutralButtonText;
    public DialogInterface$OnCancelListener mOnCancelListener;
    public DialogInterface$OnMultiChoiceClickListener mOnCheckboxClickListener;
    public DialogInterface$OnClickListener mOnClickListener;
    public DialogInterface$OnDismissListener mOnDismissListener;
    public AdapterView$OnItemSelectedListener mOnItemSelectedListener;
    public DialogInterface$OnKeyListener mOnKeyListener;
    public AlertController$AlertParams$OnPrepareListViewListener mOnPrepareListViewListener;
    public Drawable mPositiveButtonIcon;
    public DialogInterface$OnClickListener mPositiveButtonListener;
    public CharSequence mPositiveButtonText;
    public CharSequence mTitle;
    public View mView;
    public int mViewLayoutResId;
    public int mViewSpacingBottom;
    public int mViewSpacingLeft;
    public int mViewSpacingRight;
    public int mViewSpacingTop;
    public int mIconId = 0;
    public int mIconAttrId = 0;
    public boolean mViewSpacingSpecified = false;
    public int mCheckedItem = -1;
    public boolean mRecycleOnMeasure = true;
    public boolean mCancelable = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AlertController$AlertParams(Context context) {
        this.mContext = context;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void createListView(AlertController alertController) {
        AlertController$AlertParams alertController$AlertParams;
        AlertController alertController2;
        ListAdapter alertController$CheckedItemAdapter;
        AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) this.mInflater.inflate(alertController.mListLayout, (ViewGroup) null);
        if (!this.mIsMultiChoice) {
            alertController$AlertParams = this;
            alertController2 = alertController;
            int i9 = alertController$AlertParams.mIsSingleChoice ? alertController2.mSingleChoiceItemLayout : alertController2.mListItemLayout;
            if (alertController$AlertParams.mCursor != null) {
                alertController$CheckedItemAdapter = new SimpleCursorAdapter(alertController$AlertParams.mContext, i9, alertController$AlertParams.mCursor, new String[]{alertController$AlertParams.mLabelColumn}, new int[]{R$id.text1});
            } else {
                alertController$CheckedItemAdapter = alertController$AlertParams.mAdapter;
                if (alertController$CheckedItemAdapter == null) {
                    alertController$CheckedItemAdapter = new AlertController$CheckedItemAdapter(alertController$AlertParams.mContext, i9, R$id.text1, alertController$AlertParams.mItems);
                }
            }
        } else if (this.mCursor == null) {
            alertController$AlertParams = this;
            alertController$CheckedItemAdapter = new AlertController$AlertParams$1(alertController$AlertParams, this.mContext, alertController.mMultiChoiceItemLayout, R$id.text1, this.mItems, alertController$RecycleListView);
            alertController$RecycleListView = alertController$RecycleListView;
            alertController2 = alertController;
        } else {
            alertController$AlertParams = this;
            alertController2 = alertController;
            alertController$CheckedItemAdapter = new AlertController$AlertParams$2(alertController$AlertParams, alertController$AlertParams.mContext, alertController$AlertParams.mCursor, false, alertController$RecycleListView, alertController2);
        }
        AlertController$AlertParams$OnPrepareListViewListener alertController$AlertParams$OnPrepareListViewListener = alertController$AlertParams.mOnPrepareListViewListener;
        if (alertController$AlertParams$OnPrepareListViewListener != null) {
            alertController$AlertParams$OnPrepareListViewListener.onPrepareListView(alertController$RecycleListView);
        }
        alertController2.mAdapter = alertController$CheckedItemAdapter;
        alertController2.mCheckedItem = alertController$AlertParams.mCheckedItem;
        if (alertController$AlertParams.mOnClickListener != null) {
            alertController$RecycleListView.setOnItemClickListener(new AlertController$AlertParams$3(this, alertController2));
        } else if (alertController$AlertParams.mOnCheckboxClickListener != null) {
            alertController$RecycleListView.setOnItemClickListener(new AlertController$AlertParams$4(this, alertController$RecycleListView, alertController2));
        }
        AdapterView$OnItemSelectedListener adapterView$OnItemSelectedListener = alertController$AlertParams.mOnItemSelectedListener;
        if (adapterView$OnItemSelectedListener != null) {
            alertController$RecycleListView.setOnItemSelectedListener(adapterView$OnItemSelectedListener);
        }
        if (alertController$AlertParams.mIsSingleChoice) {
            alertController$RecycleListView.setChoiceMode(1);
        } else if (alertController$AlertParams.mIsMultiChoice) {
            alertController$RecycleListView.setChoiceMode(2);
        }
        alertController2.mListView = alertController$RecycleListView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void apply(AlertController alertController) {
        AlertController alertController2;
        View view = this.mCustomTitleView;
        if (view != null) {
            alertController.setCustomTitle(view);
        } else {
            CharSequence charSequence = this.mTitle;
            if (charSequence != null) {
                alertController.setTitle(charSequence);
            }
            Drawable drawable = this.mIcon;
            if (drawable != null) {
                alertController.setIcon(drawable);
            }
            int i9 = this.mIconId;
            if (i9 != 0) {
                alertController.setIcon(i9);
            }
            int i10 = this.mIconAttrId;
            if (i10 != 0) {
                alertController.setIcon(alertController.getIconAttributeResId(i10));
            }
        }
        CharSequence charSequence2 = this.mMessage;
        if (charSequence2 != null) {
            alertController.setMessage(charSequence2);
        }
        CharSequence charSequence3 = this.mPositiveButtonText;
        if (charSequence3 == null && this.mPositiveButtonIcon == null) {
            alertController2 = alertController;
        } else {
            alertController.setButton(-1, charSequence3, this.mPositiveButtonListener, null, this.mPositiveButtonIcon);
            alertController2 = alertController;
        }
        CharSequence charSequence4 = this.mNegativeButtonText;
        if (charSequence4 != null || this.mNegativeButtonIcon != null) {
            alertController2.setButton(-2, charSequence4, this.mNegativeButtonListener, null, this.mNegativeButtonIcon);
        }
        CharSequence charSequence5 = this.mNeutralButtonText;
        if (charSequence5 != null || this.mNeutralButtonIcon != null) {
            alertController2.setButton(-3, charSequence5, this.mNeutralButtonListener, null, this.mNeutralButtonIcon);
        }
        if (this.mItems != null || this.mCursor != null || this.mAdapter != null) {
            createListView(alertController2);
        }
        View view2 = this.mView;
        if (view2 != null) {
            if (this.mViewSpacingSpecified) {
                alertController2.setView(view2, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
                return;
            } else {
                alertController2.setView(view2);
                return;
            }
        }
        int i11 = this.mViewLayoutResId;
        if (i11 != 0) {
            alertController2.setView(i11);
        }
    }
}
