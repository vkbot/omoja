package androidx.core.app;

import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.R$color;
import androidx.core.R$id;
import androidx.core.R$layout;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationCompat$DecoratedCustomViewStyle extends NotificationCompat$Style {
    private static final int MAX_ACTION_BUTTONS = 3;
    private static final String TEMPLATE_CLASS_NAME = "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RemoteViews createRemoteViews(RemoteViews remoteViews, boolean z8) {
        int iMin;
        int i9 = 0;
        RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(true, R$layout.notification_template_custom_big, false);
        remoteViewsApplyStandardTemplate.removeAllViews(R$id.actions);
        List<NotificationCompat$Action> nonContextualActions = getNonContextualActions(this.mBuilder.mActions);
        if (!z8 || nonContextualActions == null || (iMin = Math.min(nonContextualActions.size(), 3)) <= 0) {
            i9 = 8;
        } else {
            for (int i10 = 0; i10 < iMin; i10++) {
                remoteViewsApplyStandardTemplate.addView(R$id.actions, generateActionButton(nonContextualActions.get(i10)));
            }
        }
        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.actions, i9);
        remoteViewsApplyStandardTemplate.setViewVisibility(R$id.action_divider, i9);
        buildIntoRemoteViews(remoteViewsApplyStandardTemplate, remoteViews);
        return remoteViewsApplyStandardTemplate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RemoteViews generateActionButton(NotificationCompat$Action notificationCompat$Action) {
        boolean z8 = notificationCompat$Action.actionIntent == null;
        RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), z8 ? R$layout.notification_action_tombstone : R$layout.notification_action);
        IconCompat iconCompat = notificationCompat$Action.getIconCompat();
        if (iconCompat != null) {
            remoteViews.setImageViewBitmap(R$id.action_image, createColoredBitmap(iconCompat, R$color.notification_action_color_filter));
        }
        remoteViews.setTextViewText(R$id.action_text, notificationCompat$Action.title);
        if (!z8) {
            remoteViews.setOnClickPendingIntent(R$id.action_container, notificationCompat$Action.actionIntent);
        }
        remoteViews.setContentDescription(R$id.action_container, notificationCompat$Action.title);
        return remoteViews;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static List<NotificationCompat$Action> getNonContextualActions(List<NotificationCompat$Action> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NotificationCompat$Action notificationCompat$Action : list) {
            if (!notificationCompat$Action.isContextual()) {
                arrayList.add(notificationCompat$Action);
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        notificationBuilderWithBuilderAccessor.getBuilder().setStyle(NotificationCompat$DecoratedCustomViewStyle$Api24Impl.createDecoratedCustomViewStyle());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean displayCustomViewInline() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public String getClassName() {
        return TEMPLATE_CLASS_NAME;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }
}
