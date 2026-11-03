package com.mega.hicar.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.mega.hicar.lib.R;

/* JADX INFO: loaded from: classes2.dex */
public class FileReceiveProgressDialog extends BaseDialog {
    private final OnProgressDialogClickListener mListener;
    private ProgressBar mProgressBar;
    private TextView mTvContent;
    private TextView mTvProgress;

    public interface OnProgressDialogClickListener {
        void onProgressDialogHideClick();

        void onProgressDialogStopClick();
    }

    public FileReceiveProgressDialog(Context context, OnProgressDialogClickListener onProgressDialogClickListener) {
        super(context);
        this.mContext = context;
        this.mListener = onProgressDialogClickListener;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        View viewInflate = View.inflate(this.mContext, R.layout.dialog_receive_progress, null);
        this.mTvContent = (TextView) viewInflate.findViewById(R.id.content);
        viewInflate.findViewById(R.id.hide).setOnClickListener(new View.OnClickListener() { // from class: com.mega.hicar.view.dialog.FileReceiveProgressDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m267x63a14e36(view);
            }
        });
        viewInflate.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.mega.hicar.view.dialog.FileReceiveProgressDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m268x7dbcccd5(view);
            }
        });
        this.mTvProgress = (TextView) viewInflate.findViewById(R.id.progress_text);
        this.mProgressBar = (ProgressBar) viewInflate.findViewById(R.id.progress_bar);
        setContentView(viewInflate);
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-mega-hicar-view-dialog-FileReceiveProgressDialog, reason: not valid java name */
    /* synthetic */ void m267x63a14e36(View view) {
        dismiss();
        OnProgressDialogClickListener onProgressDialogClickListener = this.mListener;
        if (onProgressDialogClickListener != null) {
            onProgressDialogClickListener.onProgressDialogHideClick();
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-mega-hicar-view-dialog-FileReceiveProgressDialog, reason: not valid java name */
    /* synthetic */ void m268x7dbcccd5(View view) {
        dismiss();
        OnProgressDialogClickListener onProgressDialogClickListener = this.mListener;
        if (onProgressDialogClickListener != null) {
            onProgressDialogClickListener.onProgressDialogStopClick();
        }
    }

    public void updateProgress(int i) {
        TextView textView = this.mTvProgress;
        if (textView != null) {
            textView.setText(String.format("%d%%", Integer.valueOf(i)));
        }
    }

    public void setTvContent(String str) {
        TextView textView = this.mTvContent;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
