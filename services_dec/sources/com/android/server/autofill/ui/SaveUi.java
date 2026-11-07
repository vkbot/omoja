package com.android.server.autofill.ui;

import android.R;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.metrics.LogMaker;
import android.os.Handler;
import android.os.IBinder;
import android.os.UserHandle;
import android.service.autofill.BatchUpdates;
import android.service.autofill.CustomDescription;
import android.service.autofill.InternalOnClickAction;
import android.service.autofill.InternalTransformation;
import android.service.autofill.InternalValidator;
import android.service.autofill.SaveInfo;
import android.service.autofill.ValueFinder;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.ArraySet;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.ArrayUtils;
import com.android.server.UiThread;
import com.android.server.autofill.Helper;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
final class SaveUi {
    private static final int SCROLL_BAR_DEFAULT_DELAY_BEFORE_FADE_MS = 500;
    private static final String TAG = "SaveUi";
    private static final int THEME_ID_DARK = 16974817;
    private static final int THEME_ID_LIGHT = 16974826;
    private final boolean mCompatMode;
    private final ComponentName mComponentName;
    private boolean mDestroyed;
    private final Dialog mDialog;
    private final OneActionThenDestroyListener mListener;
    private final OverlayControl mOverlayControl;
    private final PendingUi mPendingUi;
    private final String mServicePackageName;
    private final CharSequence mSubTitle;
    private final int mThemeId;
    private final CharSequence mTitle;
    private final int mType;
    private final Handler mHandler = UiThread.getHandler();
    private final MetricsLogger mMetricsLogger = new MetricsLogger();

    public interface OnSaveListener {
        void onCancel(IntentSender intentSender);

        void onDestroy();

        void onSave();

        void startIntentSender(IntentSender intentSender, Intent intent);
    }

    private class OneActionThenDestroyListener implements OnSaveListener {
        private boolean mDone;
        private final OnSaveListener mRealListener;

        OneActionThenDestroyListener(OnSaveListener realListener) {
            this.mRealListener = realListener;
        }

        @Override // com.android.server.autofill.ui.SaveUi.OnSaveListener
        public void onSave() {
            if (Helper.sDebug) {
                Slog.d(SaveUi.TAG, "OneTimeListener.onSave(): " + this.mDone);
            }
            if (this.mDone) {
                return;
            }
            this.mRealListener.onSave();
        }

        @Override // com.android.server.autofill.ui.SaveUi.OnSaveListener
        public void onCancel(IntentSender listener) {
            if (Helper.sDebug) {
                Slog.d(SaveUi.TAG, "OneTimeListener.onCancel(): " + this.mDone);
            }
            if (this.mDone) {
                return;
            }
            this.mRealListener.onCancel(listener);
        }

        @Override // com.android.server.autofill.ui.SaveUi.OnSaveListener
        public void onDestroy() {
            if (Helper.sDebug) {
                Slog.d(SaveUi.TAG, "OneTimeListener.onDestroy(): " + this.mDone);
            }
            if (this.mDone) {
                return;
            }
            this.mDone = true;
            this.mRealListener.onDestroy();
        }

        @Override // com.android.server.autofill.ui.SaveUi.OnSaveListener
        public void startIntentSender(IntentSender intentSender, Intent intent) {
            if (Helper.sDebug) {
                Slog.d(SaveUi.TAG, "OneTimeListener.startIntentSender(): " + this.mDone);
            }
            if (this.mDone) {
                return;
            }
            this.mRealListener.startIntentSender(intentSender, intent);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:35:0x0108  */
    /* JADX WARN: Code duplicated, block: B:38:0x0119  */
    /* JADX WARN: Code duplicated, block: B:40:0x011c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0120 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0122  */
    /* JADX WARN: Code duplicated, block: B:44:0x0126  */
    /* JADX WARN: Code duplicated, block: B:47:0x013c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x013e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0142  */
    /* JADX WARN: Code duplicated, block: B:52:0x016d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x016f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0173  */
    /* JADX WARN: Code duplicated, block: B:57:0x0197 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x0199  */
    /* JADX WARN: Code duplicated, block: B:59:0x019d  */
    /* JADX WARN: Code duplicated, block: B:63:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:65:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:67:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:69:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:70:0x0215  */
    /* JADX WARN: Code duplicated, block: B:73:0x021b  */
    /* JADX WARN: Code duplicated, block: B:76:0x024c  */
    /* JADX WARN: Code duplicated, block: B:78:0x024f  */
    /* JADX WARN: Code duplicated, block: B:79:0x0256  */
    /* JADX WARN: Code duplicated, block: B:80:0x025d  */
    /* JADX WARN: Code duplicated, block: B:83:0x027c  */
    /* JADX WARN: Code duplicated, block: B:84:0x0283 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x0285  */
    /* JADX WARN: Instruction removed from duplicated block: B:73:0x021b, please report this as an issue */
    SaveUi(Context context, PendingUi pendingUi, CharSequence serviceLabel, Drawable serviceIcon, String servicePackageName, ComponentName componentName, final SaveInfo info, ValueFinder valueFinder, OverlayControl overlayControl, OnSaveListener listener, boolean nightMode, boolean isUpdate, boolean compatMode) {
        int size;
        int i;
        boolean hasCustomDescription;
        CharSequence description;
        TextView noButton;
        int negativeActionStyle;
        TextView yesButton;
        int i2;
        int i3;
        int i4;
        if (Helper.sVerbose) {
            Slog.v(TAG, "nightMode: " + nightMode);
        }
        this.mThemeId = nightMode ? 16974817 : 16974826;
        this.mPendingUi = pendingUi;
        this.mListener = new OneActionThenDestroyListener(listener);
        this.mOverlayControl = overlayControl;
        this.mServicePackageName = servicePackageName;
        this.mComponentName = componentName;
        this.mCompatMode = compatMode;
        Context context2 = new ContextThemeWrapper(context, this.mThemeId) { // from class: com.android.server.autofill.ui.SaveUi.1
            @Override // android.content.ContextWrapper, android.content.Context
            public void startActivity(Intent intent) {
                if (resolveActivity(intent) == null) {
                    if (Helper.sDebug) {
                        Slog.d(SaveUi.TAG, "Can not startActivity for save UI with intent=" + intent);
                        return;
                    }
                    return;
                }
                intent.putExtra("android.view.autofill.extra.RESTORE_CROSS_ACTIVITY", true);
                PendingIntent p = PendingIntent.getActivityAsUser(this, 0, intent, 0, null, UserHandle.CURRENT);
                if (Helper.sDebug) {
                    Slog.d(SaveUi.TAG, "startActivity add save UI restored with intent=" + intent);
                }
                SaveUi.this.startIntentSenderWithRestore(p, intent);
            }

            private ComponentName resolveActivity(Intent intent) {
                PackageManager packageManager = getPackageManager();
                ComponentName componentName2 = intent.resolveActivity(packageManager);
                if (componentName2 != null) {
                    return componentName2;
                }
                intent.addFlags(2048);
                return intent.resolveActivity(packageManager);
            }
        };
        LayoutInflater inflater = LayoutInflater.from(context2);
        View view = inflater.inflate(R.layout.auto_complete_list, (ViewGroup) null);
        TextView titleView = (TextView) view.findViewById(R.id.arc);
        ArraySet<String> types = new ArraySet<>(3);
        int type = info.getType();
        this.mType = type;
        if ((type & 1) != 0) {
            types.add(context2.getString(R.string.chooseActivity));
        }
        if ((this.mType & 2) != 0) {
            types.add(context2.getString(R.string.cfTemplateForwardedTime));
        }
        int count = Integer.bitCount(this.mType & 100);
        if (count <= 1) {
            int i5 = this.mType;
            int count2 = i5 & 128;
            if (count2 == 0) {
                if ((i5 & 64) != 0) {
                    types.add(context2.getString(R.string.chooseUsbActivity));
                } else if ((i5 & 4) != 0) {
                    types.add(context2.getString(R.string.cfTemplateNotForwarded));
                } else if ((i5 & 32) != 0) {
                    types.add(context2.getString(R.string.cfTemplateRegistered));
                }
            }
            if ((this.mType & 8) != 0) {
                types.add(context2.getString(R.string.choose_account_label));
            }
            if ((this.mType & 16) != 0) {
                types.add(context2.getString(R.string.cfTemplateRegisteredTime));
            }
            size = types.size();
            if (size != 1) {
                if (isUpdate) {
                    i = R.string.common_last_name_prefixes;
                } else {
                    i = R.string.cfTemplateForwarded;
                }
                this.mTitle = Html.fromHtml(context2.getString(i, types.valueAt(0), serviceLabel), 0);
            } else if (size != 2) {
                if (isUpdate) {
                    i2 = R.string.color_correction_feature_name;
                } else {
                    i2 = R.string.carrier_app_notification_text;
                }
                this.mTitle = Html.fromHtml(context2.getString(i2, types.valueAt(0), types.valueAt(1), serviceLabel), 0);
            } else if (size != 3) {
                if (isUpdate) {
                    i3 = R.string.color_inversion_feature_name;
                } else {
                    i3 = R.string.carrier_app_notification_title;
                }
                this.mTitle = Html.fromHtml(context2.getString(i3, types.valueAt(0), types.valueAt(1), types.valueAt(2), serviceLabel), 0);
            } else {
                if (isUpdate) {
                    i4 = R.string.close_button_text;
                } else {
                    i4 = R.string.car_mode_disable_notification_title;
                }
                this.mTitle = Html.fromHtml(context2.getString(i4, serviceLabel), 0);
            }
            titleView.setText(this.mTitle);
            setServiceIcon(context2, view, serviceIcon);
            hasCustomDescription = applyCustomDescription(context2, view, valueFinder, info);
            if (hasCustomDescription) {
                this.mSubTitle = null;
                if (Helper.sDebug) {
                    Slog.d(TAG, "on constructor: applied custom description");
                }
            } else {
                description = info.getDescription();
                this.mSubTitle = description;
                if (description != null) {
                    writeLog(1131);
                    ViewGroup subtitleContainer = (ViewGroup) view.findViewById(R.id.app_name_text);
                    TextView subtitleView = new TextView(context2);
                    subtitleView.setText(this.mSubTitle);
                    applyMovementMethodIfNeed(subtitleView);
                    subtitleContainer.addView(subtitleView, new ViewGroup.LayoutParams(-1, -2));
                    subtitleContainer.setVisibility(0);
                    subtitleContainer.setScrollBarDefaultDelayBeforeFade(500);
                }
                if (Helper.sDebug) {
                    Slog.d(TAG, "on constructor: title=" + ((Object) this.mTitle) + ", subTitle=" + ((Object) this.mSubTitle));
                }
            }
            noButton = (TextView) view.findViewById(R.id.appop);
            negativeActionStyle = info.getNegativeActionStyle();
            if (negativeActionStyle != 1) {
                noButton.setText(R.string.car_mode_disable_notification_message);
            } else if (negativeActionStyle != 2) {
                noButton.setText(R.string.capital_on);
            } else {
                noButton.setText(R.string.car_loading_profile);
            }
            noButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.server.autofill.ui.-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$0$SaveUi(info, view2);
                }
            });
            yesButton = (TextView) view.findViewById(R.id.arrow);
            if (info.getPositiveActionStyle() == 1) {
                yesButton.setText(R.string.bluetooth_airplane_mode_toast);
            } else if (isUpdate) {
                yesButton.setText(R.string.common_name);
            }
            yesButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.server.autofill.ui.-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$1$SaveUi(view2);
                }
            });
            Dialog dialog = new Dialog(context2, this.mThemeId);
            this.mDialog = dialog;
            dialog.setContentView(view);
            this.mDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.server.autofill.ui.-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$new$2$SaveUi(dialogInterface);
                }
            });
            Window window = this.mDialog.getWindow();
            window.setType(2038);
            window.addFlags(393248);
            window.addPrivateFlags(16);
            window.setSoftInputMode(32);
            window.setGravity(81);
            window.setCloseOnTouchOutside(true);
            WindowManager.LayoutParams params = window.getAttributes();
            params.width = -1;
            params.accessibilityTitle = context2.getString(R.string.capital_off);
            params.windowAnimations = R.style.Animation.RecentApplications;
            show();
        }
        types.add(context2.getString(R.string.checked));
        if ((this.mType & 8) != 0) {
            types.add(context2.getString(R.string.choose_account_label));
        }
        if ((this.mType & 16) != 0) {
            types.add(context2.getString(R.string.cfTemplateRegisteredTime));
        }
        size = types.size();
        if (size != 1) {
            if (isUpdate) {
                i = R.string.common_last_name_prefixes;
            } else {
                i = R.string.cfTemplateForwarded;
            }
            this.mTitle = Html.fromHtml(context2.getString(i, types.valueAt(0), serviceLabel), 0);
        } else if (size != 2) {
            if (isUpdate) {
                i2 = R.string.color_correction_feature_name;
            } else {
                i2 = R.string.carrier_app_notification_text;
            }
            this.mTitle = Html.fromHtml(context2.getString(i2, types.valueAt(0), types.valueAt(1), serviceLabel), 0);
        } else if (size != 3) {
            if (isUpdate) {
                i3 = R.string.color_inversion_feature_name;
            } else {
                i3 = R.string.carrier_app_notification_title;
            }
            this.mTitle = Html.fromHtml(context2.getString(i3, types.valueAt(0), types.valueAt(1), types.valueAt(2), serviceLabel), 0);
        } else {
            if (isUpdate) {
                i4 = R.string.close_button_text;
            } else {
                i4 = R.string.car_mode_disable_notification_title;
            }
            this.mTitle = Html.fromHtml(context2.getString(i4, serviceLabel), 0);
        }
        titleView.setText(this.mTitle);
        setServiceIcon(context2, view, serviceIcon);
        hasCustomDescription = applyCustomDescription(context2, view, valueFinder, info);
        if (hasCustomDescription) {
            this.mSubTitle = null;
            if (Helper.sDebug) {
                Slog.d(TAG, "on constructor: applied custom description");
            }
        } else {
            description = info.getDescription();
            this.mSubTitle = description;
            if (description != null) {
                writeLog(1131);
                ViewGroup subtitleContainer2 = (ViewGroup) view.findViewById(R.id.app_name_text);
                TextView subtitleView2 = new TextView(context2);
                subtitleView2.setText(this.mSubTitle);
                applyMovementMethodIfNeed(subtitleView2);
                subtitleContainer2.addView(subtitleView2, new ViewGroup.LayoutParams(-1, -2));
                subtitleContainer2.setVisibility(0);
                subtitleContainer2.setScrollBarDefaultDelayBeforeFade(500);
            }
            if (Helper.sDebug) {
                Slog.d(TAG, "on constructor: title=" + ((Object) this.mTitle) + ", subTitle=" + ((Object) this.mSubTitle));
            }
        }
        noButton = (TextView) view.findViewById(R.id.appop);
        negativeActionStyle = info.getNegativeActionStyle();
        if (negativeActionStyle != 1) {
            noButton.setText(R.string.car_mode_disable_notification_message);
        } else if (negativeActionStyle != 2) {
            noButton.setText(R.string.capital_on);
        } else {
            noButton.setText(R.string.car_loading_profile);
        }
        noButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.server.autofill.ui.-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$0$SaveUi(info, view2);
            }
        });
        yesButton = (TextView) view.findViewById(R.id.arrow);
        if (info.getPositiveActionStyle() == 1) {
            yesButton.setText(R.string.bluetooth_airplane_mode_toast);
        } else if (isUpdate) {
            yesButton.setText(R.string.common_name);
        }
        yesButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.server.autofill.ui.-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$1$SaveUi(view2);
            }
        });
        Dialog dialog2 = new Dialog(context2, this.mThemeId);
        this.mDialog = dialog2;
        dialog2.setContentView(view);
        this.mDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.server.autofill.ui.-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$new$2$SaveUi(dialogInterface);
            }
        });
        Window window2 = this.mDialog.getWindow();
        window2.setType(2038);
        window2.addFlags(393248);
        window2.addPrivateFlags(16);
        window2.setSoftInputMode(32);
        window2.setGravity(81);
        window2.setCloseOnTouchOutside(true);
        WindowManager.LayoutParams params2 = window2.getAttributes();
        params2.width = -1;
        params2.accessibilityTitle = context2.getString(R.string.capital_off);
        params2.windowAnimations = R.style.Animation.RecentApplications;
        show();
    }

    public /* synthetic */ void lambda$new$0$SaveUi(SaveInfo info, View v) {
        this.mListener.onCancel(info.getNegativeActionListener());
    }

    public /* synthetic */ void lambda$new$1$SaveUi(View v) {
        this.mListener.onSave();
    }

    public /* synthetic */ void lambda$new$2$SaveUi(DialogInterface d) {
        this.mListener.onCancel(null);
    }

    private boolean applyCustomDescription(Context context, View saveUiView, ValueFinder valueFinder, SaveInfo info) {
        CustomDescription customDescription = info.getCustomDescription();
        if (customDescription == null) {
            return false;
        }
        writeLog(1129);
        RemoteViews template = Helper.sanitizeRemoteView(customDescription.getPresentation());
        if (template == null) {
            Slog.w(TAG, "No remote view on custom description");
            return false;
        }
        ArrayList<Pair<Integer, InternalTransformation>> transformations = customDescription.getTransformations();
        if (Helper.sVerbose) {
            Slog.v(TAG, "applyCustomDescription(): transformations = " + transformations);
        }
        if (transformations != null && !InternalTransformation.batchApply(valueFinder, template, transformations)) {
            Slog.w(TAG, "could not apply main transformations on custom description");
            return false;
        }
        RemoteViews.OnClickHandler handler = new RemoteViews.OnClickHandler() { // from class: com.android.server.autofill.ui.-$$Lambda$SaveUi$9E3wVcFykoYBpXtez_dJMd6U_Nw
            public final boolean onClickHandler(View view, PendingIntent pendingIntent, RemoteViews.RemoteResponse remoteResponse) {
                return this.f$0.lambda$applyCustomDescription$3$SaveUi(view, pendingIntent, remoteResponse);
            }
        };
        try {
            View customSubtitleView = template.applyWithTheme(context, null, handler, this.mThemeId);
            ArrayList<Pair<InternalValidator, BatchUpdates>> updates = customDescription.getUpdates();
            if (Helper.sVerbose) {
                try {
                    Slog.v(TAG, "applyCustomDescription(): view = " + customSubtitleView + " updates=" + updates);
                } catch (Exception e) {
                    e = e;
                }
            }
            if (updates != null) {
                int size = updates.size();
                if (Helper.sDebug) {
                    Slog.d(TAG, "custom description has " + size + " batch updates");
                }
                int i = 0;
                while (i < size) {
                    Pair<InternalValidator, BatchUpdates> pair = updates.get(i);
                    InternalValidator condition = (InternalValidator) pair.first;
                    if (condition == null || !condition.isValid(valueFinder)) {
                        try {
                            if (Helper.sDebug) {
                                Slog.d(TAG, "Skipping batch update #" + i);
                            }
                            i++;
                            transformations = transformations;
                            handler = handler;
                            updates = updates;
                        } catch (Exception e2) {
                            e = e2;
                        }
                    } else {
                        BatchUpdates batchUpdates = (BatchUpdates) pair.second;
                        RemoteViews templateUpdates = Helper.sanitizeRemoteView(batchUpdates.getUpdates());
                        transformations = transformations;
                        if (templateUpdates != null) {
                            try {
                                if (Helper.sDebug) {
                                    Slog.d(TAG, "Applying template updates for batch update #" + i);
                                }
                                templateUpdates.reapply(context, customSubtitleView);
                            } catch (Exception e3) {
                                e = e3;
                            }
                        } else {
                            handler = handler;
                            updates = updates;
                        }
                        ArrayList<Pair<Integer, InternalTransformation>> batchTransformations = batchUpdates.getTransformations();
                        if (batchTransformations != null) {
                            if (Helper.sDebug) {
                                Slog.d(TAG, "Applying child transformation for batch update #" + i + ": " + batchTransformations);
                            }
                            if (!InternalTransformation.batchApply(valueFinder, template, batchTransformations)) {
                                Slog.w(TAG, "Could not apply child transformation for batch update #" + i + ": " + batchTransformations);
                                return false;
                            }
                            template.reapply(context, customSubtitleView);
                        }
                        i++;
                        transformations = transformations;
                        handler = handler;
                        updates = updates;
                    }
                    Slog.e(TAG, "Error applying custom description. ", e);
                    return false;
                }
            }
            SparseArray<InternalOnClickAction> actions = customDescription.getActions();
            if (actions == null) {
                applyTextViewStyle(customSubtitleView);
                ViewGroup subtitleContainer = (ViewGroup) saveUiView.findViewById(R.id.app_name_text);
                subtitleContainer.addView(customSubtitleView);
                subtitleContainer.setVisibility(0);
                subtitleContainer.setScrollBarDefaultDelayBeforeFade(500);
                return true;
            }
            int size2 = actions.size();
            if (Helper.sDebug) {
                Slog.d(TAG, "custom description has " + size2 + " actions");
            }
            if (customSubtitleView instanceof ViewGroup) {
                final ViewGroup rootView = (ViewGroup) customSubtitleView;
                for (int i2 = 0; i2 < size2; i2++) {
                    int id = actions.keyAt(i2);
                    final InternalOnClickAction action = actions.valueAt(i2);
                    View child = rootView.findViewById(id);
                    if (child == null) {
                        Slog.w(TAG, "Ignoring action " + action + " for view " + id + " because it's not on " + rootView);
                    } else {
                        try {
                            child.setOnClickListener(new View.OnClickListener() { // from class: com.android.server.autofill.ui.-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    SaveUi.lambda$applyCustomDescription$4(action, rootView, view);
                                }
                            });
                        } catch (Exception e4) {
                            e = e4;
                        }
                    }
                }
            } else {
                Slog.w(TAG, "cannot apply actions because custom description root is not a ViewGroup: " + customSubtitleView);
            }
            applyTextViewStyle(customSubtitleView);
            try {
                ViewGroup subtitleContainer2 = (ViewGroup) saveUiView.findViewById(R.id.app_name_text);
                subtitleContainer2.addView(customSubtitleView);
                subtitleContainer2.setVisibility(0);
                subtitleContainer2.setScrollBarDefaultDelayBeforeFade(500);
                return true;
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Exception e6) {
            e = e6;
        }
        Slog.e(TAG, "Error applying custom description. ", e);
        return false;
    }

    public /* synthetic */ boolean lambda$applyCustomDescription$3$SaveUi(View view, PendingIntent pendingIntent, RemoteViews.RemoteResponse response) {
        Intent intent = (Intent) response.getLaunchOptions(view).first;
        boolean isValid = isValidLink(pendingIntent, intent);
        if (!isValid) {
            LogMaker log = newLogMaker(1132, this.mType);
            log.setType(0);
            this.mMetricsLogger.write(log);
            return false;
        }
        startIntentSenderWithRestore(pendingIntent, intent);
        return true;
    }

    static /* synthetic */ void lambda$applyCustomDescription$4(InternalOnClickAction action, ViewGroup rootView, View v) {
        if (Helper.sVerbose) {
            Slog.v(TAG, "Applying " + action + " after " + v + " was clicked");
        }
        action.onClick(rootView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIntentSenderWithRestore(PendingIntent pendingIntent, Intent intent) {
        if (Helper.sVerbose) {
            Slog.v(TAG, "Intercepting custom description intent");
        }
        IBinder token = this.mPendingUi.getToken();
        intent.putExtra("android.view.autofill.extra.RESTORE_SESSION_TOKEN", token);
        this.mListener.startIntentSender(pendingIntent.getIntentSender(), intent);
        this.mPendingUi.setState(2);
        if (Helper.sDebug) {
            Slog.d(TAG, "hiding UI until restored with token " + token);
        }
        hide();
        LogMaker log = newLogMaker(1132, this.mType);
        log.setType(1);
        this.mMetricsLogger.write(log);
    }

    private void applyTextViewStyle(View rootView) {
        final List<TextView> textViews = new ArrayList<>();
        Predicate<View> predicate = new Predicate() { // from class: com.android.server.autofill.ui.-$$Lambda$SaveUi$MHTJI4CEYKh8w8RM-t9zG_19Jjc
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return SaveUi.lambda$applyTextViewStyle$5(textViews, (View) obj);
            }
        };
        rootView.findViewByPredicate(predicate);
        int size = textViews.size();
        for (int i = 0; i < size; i++) {
            applyMovementMethodIfNeed(textViews.get(i));
        }
    }

    static /* synthetic */ boolean lambda$applyTextViewStyle$5(List textViews, View view) {
        if (view instanceof TextView) {
            textViews.add((TextView) view);
            return false;
        }
        return false;
    }

    private void applyMovementMethodIfNeed(TextView textView) {
        CharSequence message = textView.getText();
        if (TextUtils.isEmpty(message)) {
            return;
        }
        SpannableStringBuilder ssb = new SpannableStringBuilder(message);
        ClickableSpan[] spans = (ClickableSpan[]) ssb.getSpans(0, ssb.length(), ClickableSpan.class);
        if (ArrayUtils.isEmpty(spans)) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    private void setServiceIcon(Context context, View view, Drawable serviceIcon) {
        ImageView iconView = (ImageView) view.findViewById(R.id.app_ops);
        Resources res = context.getResources();
        int maxWidth = res.getDimensionPixelSize(R.dimen.car_activity_resolver_width);
        int actualWidth = serviceIcon.getMinimumWidth();
        int actualHeight = serviceIcon.getMinimumHeight();
        if (actualWidth <= maxWidth && actualHeight <= maxWidth) {
            if (Helper.sDebug) {
                Slog.d(TAG, "Adding service icon (" + actualWidth + "x" + actualHeight + ") as it's less than maximum (" + maxWidth + "x" + maxWidth + ").");
            }
            iconView.setImageDrawable(serviceIcon);
            return;
        }
        Slog.w(TAG, "Not adding service icon of size (" + actualWidth + "x" + actualHeight + ") because maximum is (" + maxWidth + "x" + maxWidth + ").");
        ((ViewGroup) iconView.getParent()).removeView(iconView);
    }

    private static boolean isValidLink(PendingIntent pendingIntent, Intent intent) {
        if (pendingIntent == null) {
            Slog.w(TAG, "isValidLink(): custom description without pending intent");
            return false;
        }
        if (!pendingIntent.isActivity()) {
            Slog.w(TAG, "isValidLink(): pending intent not for activity");
            return false;
        }
        if (intent == null) {
            Slog.w(TAG, "isValidLink(): no intent");
            return false;
        }
        return true;
    }

    private LogMaker newLogMaker(int category, int saveType) {
        return newLogMaker(category).addTaggedData(1130, Integer.valueOf(saveType));
    }

    private LogMaker newLogMaker(int category) {
        return Helper.newLogMaker(category, this.mComponentName, this.mServicePackageName, this.mPendingUi.sessionId, this.mCompatMode);
    }

    private void writeLog(int category) {
        this.mMetricsLogger.write(newLogMaker(category, this.mType));
    }

    void onPendingUi(int operation, IBinder token) {
        if (!this.mPendingUi.matches(token)) {
            Slog.w(TAG, "restore(" + operation + "): got token " + token + " instead of " + this.mPendingUi.getToken());
            return;
        }
        LogMaker log = newLogMaker(1134);
        try {
            if (operation == 1) {
                log.setType(5);
                if (Helper.sDebug) {
                    Slog.d(TAG, "Cancelling pending save dialog for " + token);
                }
                hide();
            } else if (operation == 2) {
                if (Helper.sDebug) {
                    Slog.d(TAG, "Restoring save dialog for " + token);
                }
                log.setType(1);
                show();
            } else {
                log.setType(11);
                Slog.w(TAG, "restore(): invalid operation " + operation);
            }
            this.mMetricsLogger.write(log);
            this.mPendingUi.setState(4);
        } catch (Throwable th) {
            this.mMetricsLogger.write(log);
            throw th;
        }
    }

    private void show() {
        Slog.i(TAG, "Showing save dialog: " + ((Object) this.mTitle));
        this.mDialog.show();
        this.mOverlayControl.hideOverlays();
    }

    PendingUi hide() {
        if (Helper.sVerbose) {
            Slog.v(TAG, "Hiding save dialog.");
        }
        try {
            this.mDialog.hide();
            return this.mPendingUi;
        } finally {
            this.mOverlayControl.showOverlays();
        }
    }

    boolean isShowing() {
        return this.mDialog.isShowing();
    }

    void destroy() {
        try {
            if (Helper.sDebug) {
                Slog.d(TAG, "destroy()");
            }
            throwIfDestroyed();
            this.mListener.onDestroy();
            this.mHandler.removeCallbacksAndMessages(this.mListener);
            this.mDialog.dismiss();
            this.mDestroyed = true;
        } finally {
            this.mOverlayControl.showOverlays();
        }
    }

    private void throwIfDestroyed() {
        if (this.mDestroyed) {
            throw new IllegalStateException("cannot interact with a destroyed instance");
        }
    }

    public String toString() {
        CharSequence charSequence = this.mTitle;
        return charSequence == null ? "NO TITLE" : charSequence.toString();
    }

    void dump(PrintWriter pw, String prefix) {
        pw.print(prefix);
        pw.print("title: ");
        pw.println(this.mTitle);
        pw.print(prefix);
        pw.print("subtitle: ");
        pw.println(this.mSubTitle);
        pw.print(prefix);
        pw.print("pendingUi: ");
        pw.println(this.mPendingUi);
        pw.print(prefix);
        pw.print("service: ");
        pw.println(this.mServicePackageName);
        pw.print(prefix);
        pw.print("app: ");
        pw.println(this.mComponentName.toShortString());
        pw.print(prefix);
        pw.print("compat mode: ");
        pw.println(this.mCompatMode);
        pw.print(prefix);
        pw.print("theme id: ");
        pw.print(this.mThemeId);
        int i = this.mThemeId;
        if (i == 16974817) {
            pw.println(" (dark)");
        } else if (i == 16974826) {
            pw.println(" (light)");
        } else {
            pw.println("(UNKNOWN_MODE)");
        }
        View view = this.mDialog.getWindow().getDecorView();
        int[] loc = view.getLocationOnScreen();
        pw.print(prefix);
        pw.print("coordinates: ");
        pw.print('(');
        pw.print(loc[0]);
        pw.print(',');
        pw.print(loc[1]);
        pw.print(')');
        pw.print('(');
        pw.print(loc[0] + view.getWidth());
        pw.print(',');
        pw.print(loc[1] + view.getHeight());
        pw.println(')');
        pw.print(prefix);
        pw.print("destroyed: ");
        pw.println(this.mDestroyed);
    }
}
