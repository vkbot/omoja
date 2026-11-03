package com.mega.chery.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.GravityCompat;
import com.mega.chery.utils.CarConfigUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AlignTextView extends AppCompatTextView {
    private static final String TAG = "AlignTextView";

    public AlignTextView(Context context) {
        this(context, null);
    }

    public AlignTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlignTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        if (CarConfigUtils.isINT() || CarConfigUtils.isT1GCDOM()) {
            setBreakStrategy(0);
            getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.mega.chery.widget.AlignTextView.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    if (AlignTextView.this.getLineCount() <= 3) {
                        AlignTextView.this.setGravity(17);
                    } else {
                        AlignTextView.this.setGravity(GravityCompat.START);
                    }
                    AlignTextView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
        }
    }
}
