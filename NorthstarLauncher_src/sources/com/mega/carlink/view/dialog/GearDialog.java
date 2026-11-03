package com.mega.carlink.view.dialog;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.mega.carlink.lib.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class GearDialog extends BaseDialog {
    public static final int OTHER_TYPE = 2;
    private static final String TAG = "GearDialog";
    public static final int VIDEO_TYPE = 1;
    private TextView mContentTV;
    private Context mContext;
    private OnCheckDialogClickListener mListener;
    private int mType;

    public interface OnCheckDialogClickListener {
        void onCheckDialogConfirmClick();
    }

    public int getType() {
        return this.mType;
    }

    public void setOnCheckDialogClickListener(OnCheckDialogClickListener onCheckDialogClickListener) {
        this.mListener = onCheckDialogClickListener;
    }

    public GearDialog(Context context, int i) {
        super(context);
        this.mType = i;
        this.mContext = new ContextThemeWrapper(context, R.style.AppTheme);
        MLog.d(TAG, "GearDialog() constructor");
        requestWindowFeature(1);
        View viewInflate = View.inflate(getContext(), R.layout.dialog_check_device_carlink, null);
        MLog.d(TAG, "GearDialog: view: " + viewInflate);
        setContentView(viewInflate);
        TextView textView = (TextView) viewInflate.findViewById(R.id.content);
        this.mContentTV = textView;
        if (i == 1) {
            textView.setText(R.string.p_gear_video);
        }
        if (i == 2) {
            this.mContentTV.setText(R.string.p_gear_video1);
        }
        viewInflate.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: com.mega.carlink.view.dialog.GearDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m249lambda$new$0$commegacarlinkviewdialogGearDialog(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-mega-carlink-view-dialog-GearDialog, reason: not valid java name */
    /* synthetic */ void m249lambda$new$0$commegacarlinkviewdialogGearDialog(View view) {
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        Window window = getWindow();
        layoutParams.copyFrom(window.getAttributes());
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.gravity = 17;
        layoutParams.windowAnimations = R.style.AnimDialog;
        layoutParams.type = 2003;
        window.setAttributes(layoutParams);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        setCancelable(true);
        setCanceledOnTouchOutside(true);
    }

    public void setContent(int i) {
        MLog.d(TAG, "setContent: ");
        this.mContentTV.setText(i);
    }

    public void setContent(String str) {
        MLog.d(TAG, "setContent: content==" + str);
        this.mContentTV.setText(str);
    }

    public String getContent() {
        return (String) this.mContentTV.getText();
    }

    @Override // com.mega.carlink.view.dialog.BaseDialog
    protected void onOwnerStop() {
        super.onOwnerStop();
        dismiss();
    }
}
