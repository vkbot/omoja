package com.android.launcher3.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class TableWidgetImageView extends ImageView {
    private static final String TAG = "TableWidgetImageView";

    public TableWidgetImageView(Context context) {
        this(context, null);
    }

    public TableWidgetImageView(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TableWidgetImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
