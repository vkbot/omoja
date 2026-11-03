package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.notification.NotificationFooterLayout;
import com.android.launcher3.notification.NotificationMainView;

/* JADX INFO: loaded from: classes.dex */
public final class NotificationContentBinding implements ViewBinding {
    public final View divider;
    public final NotificationFooterLayout footer;
    public final FrameLayout header;
    public final LinearLayout iconRow;
    public final NotificationMainView mainView;
    public final TextView notificationCount;
    public final TextView notificationText;
    public final View overflow;
    public final View popupItemIcon;
    private final View rootView;
    public final TextView text;
    public final LinearLayout textAndBackground;
    public final TextView title;

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    private NotificationContentBinding(View rootView, View divider, NotificationFooterLayout footer, FrameLayout header, LinearLayout iconRow, NotificationMainView mainView, TextView notificationCount, TextView notificationText, View overflow, View popupItemIcon, TextView text, LinearLayout textAndBackground, TextView title) {
        this.rootView = rootView;
        this.divider = divider;
        this.footer = footer;
        this.header = header;
        this.iconRow = iconRow;
        this.mainView = mainView;
        this.notificationCount = notificationCount;
        this.notificationText = notificationText;
        this.overflow = overflow;
        this.popupItemIcon = popupItemIcon;
        this.text = text;
        this.textAndBackground = textAndBackground;
        this.title = title;
    }

    public static NotificationContentBinding inflate(LayoutInflater inflater, ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.notification_content, parent);
        return bind(parent);
    }

    public static NotificationContentBinding bind(View rootView) {
        int i = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
        if (viewFindChildViewById != null) {
            i = R.id.footer;
            NotificationFooterLayout notificationFooterLayout = (NotificationFooterLayout) ViewBindings.findChildViewById(rootView, R.id.footer);
            if (notificationFooterLayout != null) {
                i = R.id.header;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.header);
                if (frameLayout != null) {
                    i = R.id.icon_row;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.icon_row);
                    if (linearLayout != null) {
                        i = R.id.main_view;
                        NotificationMainView notificationMainView = (NotificationMainView) ViewBindings.findChildViewById(rootView, R.id.main_view);
                        if (notificationMainView != null) {
                            i = R.id.notification_count;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.notification_count);
                            if (textView != null) {
                                i = R.id.notification_text;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.notification_text);
                                if (textView2 != null) {
                                    i = R.id.overflow;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.overflow);
                                    if (viewFindChildViewById2 != null) {
                                        i = R.id.popup_item_icon;
                                        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.popup_item_icon);
                                        if (viewFindChildViewById3 != null) {
                                            i = R.id.text;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.text);
                                            if (textView3 != null) {
                                                i = R.id.text_and_background;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.text_and_background);
                                                if (linearLayout2 != null) {
                                                    i = R.id.title;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                    if (textView4 != null) {
                                                        return new NotificationContentBinding(rootView, viewFindChildViewById, notificationFooterLayout, frameLayout, linearLayout, notificationMainView, textView, textView2, viewFindChildViewById2, viewFindChildViewById3, textView3, linearLayout2, textView4);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
