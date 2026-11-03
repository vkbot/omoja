package com.android.launcher3.folder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputMethodManager;
import com.android.launcher3.ExtendedEditText;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FolderNameEditText extends ExtendedEditText {
    private static final boolean DEBUG = false;
    private static final String TAG = "FolderNameEditText";
    private boolean mEnteredCompose;

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence s, int start, int before, int count) {
        if (start == 0 && count == 0 && before > 0) {
            this.mEnteredCompose = true;
        }
    }

    protected void setEnteredCompose(boolean value) {
        this.mEnteredCompose = value;
    }

    public FolderNameEditText(Context context) {
        super(context);
        this.mEnteredCompose = false;
    }

    public FolderNameEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mEnteredCompose = false;
    }

    public FolderNameEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mEnteredCompose = false;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        return new FolderNameEditTextInputConnection(super.onCreateInputConnection(outAttrs), true);
    }

    public void displayCompletions(List<String> suggestList) {
        int iMin = Math.min(suggestList.size(), 4);
        final CompletionInfo[] completionInfoArr = new CompletionInfo[iMin];
        for (int i = 0; i < iMin; i++) {
            completionInfoArr[i] = new CompletionInfo(i, i, suggestList.get(i));
        }
        postDelayed(new Runnable() { // from class: com.android.launcher3.folder.FolderNameEditText$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m93xb283e365(completionInfoArr);
            }
        }, 40L);
    }

    /* JADX INFO: renamed from: lambda$displayCompletions$0$com-android-launcher3-folder-FolderNameEditText, reason: not valid java name */
    /* synthetic */ void m93xb283e365(CompletionInfo[] completionInfoArr) {
        ((InputMethodManager) getContext().getSystemService(InputMethodManager.class)).displayCompletions(this, completionInfoArr);
    }

    @Override // android.widget.TextView
    public void onCommitCompletion(CompletionInfo text) {
        setText(text.getText());
        setSelection(text.getText().length());
        this.mEnteredCompose = false;
    }

    private class FolderNameEditTextInputConnection extends InputConnectionWrapper {
        FolderNameEditTextInputConnection(InputConnection target, boolean mutable) {
            super(target, mutable);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean setComposingText(CharSequence cs, int newCursorPos) {
            FolderNameEditText.this.mEnteredCompose = true;
            return super.setComposingText(cs, newCursorPos);
        }
    }
}
