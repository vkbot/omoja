package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderNameEditText;
import com.android.launcher3.folder.FolderPagedView;
import com.android.launcher3.pageindicators.PageIndicatorDots;

/* JADX INFO: loaded from: classes.dex */
public final class UserFolderIconNormalizedBinding implements ViewBinding {
    public final FolderPagedView folderContent;
    public final LinearLayout folderFooter;
    public final FolderNameEditText folderName;
    public final PageIndicatorDots folderPageIndicator;
    private final Folder rootView;

    @Override // androidx.viewbinding.ViewBinding
    public Folder getRoot() {
        return this.rootView;
    }

    private UserFolderIconNormalizedBinding(Folder rootView, FolderPagedView folderContent, LinearLayout folderFooter, FolderNameEditText folderName, PageIndicatorDots folderPageIndicator) {
        this.rootView = rootView;
        this.folderContent = folderContent;
        this.folderFooter = folderFooter;
        this.folderName = folderName;
        this.folderPageIndicator = folderPageIndicator;
    }

    public static UserFolderIconNormalizedBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static UserFolderIconNormalizedBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.user_folder_icon_normalized, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static UserFolderIconNormalizedBinding bind(View rootView) {
        int i = R.id.folder_content;
        FolderPagedView folderPagedView = (FolderPagedView) ViewBindings.findChildViewById(rootView, R.id.folder_content);
        if (folderPagedView != null) {
            i = R.id.folder_footer;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.folder_footer);
            if (linearLayout != null) {
                i = R.id.folder_name;
                FolderNameEditText folderNameEditText = (FolderNameEditText) ViewBindings.findChildViewById(rootView, R.id.folder_name);
                if (folderNameEditText != null) {
                    i = R.id.folder_page_indicator;
                    PageIndicatorDots pageIndicatorDots = (PageIndicatorDots) ViewBindings.findChildViewById(rootView, R.id.folder_page_indicator);
                    if (pageIndicatorDots != null) {
                        return new UserFolderIconNormalizedBinding((Folder) rootView, folderPagedView, linearLayout, folderNameEditText, pageIndicatorDots);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
