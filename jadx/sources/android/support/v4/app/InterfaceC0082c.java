package android.support.v4.app;

import android.app.Notification;
import android.os.IInterface;
import kotlin.text.Typography;
import org.apache.commons.p161io.FilenameUtils;

/* JADX INFO: renamed from: android.support.v4.app.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0082c extends IInterface {

    /* JADX INFO: renamed from: a */
    public static final String f162a = "android$support$v4$app$INotificationSideChannel".replace(Typography.dollar, FilenameUtils.EXTENSION_SEPARATOR);

    void cancel(String str, int i10, String str2);

    void cancelAll(String str);

    void notify(String str, int i10, String str2, Notification notification);
}
