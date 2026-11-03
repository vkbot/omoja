package com.android.launcher3.views;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.ArrowPopup;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.widget.WidgetsTableSheet;
import com.mega.chery.utils.ToastViewUtils;
import com.mega.nexus.content.pm.MegaPackageManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class OptionsPopupView extends ArrowPopup implements View.OnClickListener, View.OnLongClickListener {
    private final ArrayMap<View, OptionItem> mItemMap;
    private RectF mTargetRect;

    @Override // com.android.launcher3.AbstractFloatingView
    protected boolean isOfType(int type) {
        return (type & 2048) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int command) {
    }

    public OptionsPopupView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public OptionsPopupView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mItemMap = new ArrayMap<>();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        handleViewClick(view);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        return handleViewClick(view);
    }

    private boolean handleViewClick(View view) {
        OptionItem optionItem = this.mItemMap.get(view);
        if (optionItem == null || !optionItem.mClickListener.onLongClick(view)) {
            return false;
        }
        close(true);
        return true;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() != 0 || getPopupContainer().isEventOverView(this, ev)) {
            return false;
        }
        close(true);
        return true;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    protected void getTargetObjectLocation(Rect outPos) {
        this.mTargetRect.roundOut(outPos);
    }

    public static void show(Launcher launcher, RectF rectF, List<OptionItem> list) {
        OptionsPopupView optionsPopupView = (OptionsPopupView) launcher.getLayoutInflater().inflate(R.layout.longpress_options_menu, (ViewGroup) launcher.getDragLayer(), false);
        optionsPopupView.mTargetRect = rectF;
        for (OptionItem optionItem : list) {
            DeepShortcutView deepShortcutView = (DeepShortcutView) optionsPopupView.inflateAndAdd(R.layout.system_shortcut, optionsPopupView);
            deepShortcutView.getIconView().setBackgroundResource(optionItem.mIconRes);
            deepShortcutView.getBubbleText().setText(optionItem.mLabelRes);
            deepShortcutView.setDividerVisibility(4);
            deepShortcutView.setOnClickListener(optionsPopupView);
            deepShortcutView.setOnLongClickListener(optionsPopupView);
            optionsPopupView.mItemMap.put(deepShortcutView, optionItem);
        }
        optionsPopupView.reorderAndShow(optionsPopupView.getChildCount());
    }

    public static ArrowPopup getOptionsPopup(Launcher launcher) {
        return (ArrowPopup) launcher.findViewById(R.id.deep_shortcuts_container);
    }

    public static void showDefaultOptions(Launcher launcher, float x, float y) {
        float dimension = launcher.getResources().getDimension(R.dimen.options_menu_thumb_size) / 2.0f;
        if (x < 0.0f || y < 0.0f) {
            x = launcher.getDragLayer().getWidth() / 2;
            y = launcher.getDragLayer().getHeight() / 2;
        }
        RectF rectF = new RectF(x - dimension, y - dimension, x + dimension, y + dimension);
        ArrayList arrayList = new ArrayList();
        Utilities.existsStyleWallpapers(launcher);
        Utilities.existsStyleWallpapers(launcher);
        arrayList.add(new OptionItem(R.string.widget_button_text, R.drawable.ic_widget, StatsLogManager.LauncherEvent.LAUNCHER_WIDGETSTRAY_BUTTON_TAP_OR_LONGPRESS, new View.OnLongClickListener() { // from class: com.android.launcher3.views.OptionsPopupView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return OptionsPopupView.onWidgetsClicked(view);
            }
        }));
        show(launcher, rectF, arrayList);
    }

    public static boolean onWidgetsClicked(View view) {
        return openWidgets(Launcher.getLauncher(view.getContext())) != null;
    }

    public static WidgetsTableSheet openWidgets(Launcher launcher) {
        if (launcher.getPackageManager().isSafeMode()) {
            ToastViewUtils.makeText(launcher, R.string.safemode_widget_error, 3000L).show();
            return null;
        }
        if (AbstractFloatingView.getOpenView(launcher, 16) == null) {
            return WidgetsTableSheet.show(launcher, true);
        }
        return null;
    }

    public static boolean startSettings(View view) {
        TestLogging.recordEvent(TestProtocol.SEQUENCE_MAIN, "start: startSettings");
        Launcher launcher = Launcher.getLauncher(view.getContext());
        launcher.startActivity(new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(launcher.getPackageName()).addFlags(MegaPackageManager.MATCH_DEBUG_TRIAGED_MISSING));
        return true;
    }

    static WorkspaceItemInfo dummyInfo(Intent intent) {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.intent = intent;
        workspaceItemInfo.itemType = 1;
        workspaceItemInfo.container = LauncherSettings.Favorites.CONTAINER_SETTINGS;
        return workspaceItemInfo;
    }

    public static class OptionItem {
        private final View.OnLongClickListener mClickListener;
        private final StatsLogManager.EventEnum mEventId;
        private final int mIconRes;
        private final int mLabelRes;

        public OptionItem(int labelRes, int iconRes, StatsLogManager.EventEnum eventId, View.OnLongClickListener clickListener) {
            this.mLabelRes = labelRes;
            this.mIconRes = iconRes;
            this.mEventId = eventId;
            this.mClickListener = clickListener;
        }
    }
}
