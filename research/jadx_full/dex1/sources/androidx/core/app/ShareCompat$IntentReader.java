package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.IntentCompat;
import androidx.core.util.Preconditions;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ShareCompat$IntentReader {
    private static final String TAG = "IntentReader";

    @Nullable
    private final ComponentName mCallingActivity;

    @Nullable
    private final String mCallingPackage;

    @NonNull
    private final Context mContext;

    @NonNull
    private final Intent mIntent;

    @Nullable
    private ArrayList<Uri> mStreams;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ShareCompat$IntentReader(@NonNull Context context, @NonNull Intent intent) {
        this.mContext = (Context) Preconditions.checkNotNull(context);
        this.mIntent = (Intent) Preconditions.checkNotNull(intent);
        this.mCallingPackage = ShareCompat.getCallingPackage(intent);
        this.mCallingActivity = ShareCompat.getCallingActivity(intent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public static ShareCompat$IntentReader from(@NonNull Activity activity) {
        return new ShareCompat$IntentReader(activity);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ComponentName getCallingActivity() {
        return this.mCallingActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getCallingActivityIcon() {
        if (this.mCallingActivity == null) {
            return null;
        }
        try {
            return this.mContext.getPackageManager().getActivityIcon(this.mCallingActivity);
        } catch (PackageManager$NameNotFoundException e) {
            Log.e(TAG, "Could not retrieve icon for calling activity", e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getCallingApplicationIcon() {
        if (this.mCallingPackage == null) {
            return null;
        }
        try {
            return this.mContext.getPackageManager().getApplicationIcon(this.mCallingPackage);
        } catch (PackageManager$NameNotFoundException e) {
            Log.e(TAG, "Could not retrieve icon for calling application", e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getCallingApplicationLabel() {
        if (this.mCallingPackage == null) {
            return null;
        }
        PackageManager packageManager = this.mContext.getPackageManager();
        try {
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.mCallingPackage, 0));
        } catch (PackageManager$NameNotFoundException e) {
            Log.e(TAG, "Could not retrieve label for calling application", e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getCallingPackage() {
        return this.mCallingPackage;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String[] getEmailBcc() {
        return this.mIntent.getStringArrayExtra("android.intent.extra.BCC");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String[] getEmailCc() {
        return this.mIntent.getStringArrayExtra("android.intent.extra.CC");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String[] getEmailTo() {
        return this.mIntent.getStringArrayExtra("android.intent.extra.EMAIL");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getHtmlText() {
        String stringExtra = this.mIntent.getStringExtra(IntentCompat.EXTRA_HTML_TEXT);
        if (stringExtra != null) {
            return stringExtra;
        }
        CharSequence text = getText();
        if (text instanceof Spanned) {
            return Html.toHtml((Spanned) text);
        }
        return text != null ? Html.escapeHtml(text) : stringExtra;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Uri getStream(int i9) {
        if (this.mStreams == null && isMultipleShare()) {
            this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
        }
        ArrayList<Uri> arrayList = this.mStreams;
        if (arrayList != null) {
            return arrayList.get(i9);
        }
        if (i9 == 0) {
            return (Uri) this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
        }
        throw new IndexOutOfBoundsException("Stream items available: " + getStreamCount() + " index requested: " + i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStreamCount() {
        if (this.mStreams == null && isMultipleShare()) {
            this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
        }
        ArrayList<Uri> arrayList = this.mStreams;
        return arrayList != null ? arrayList.size() : this.mIntent.hasExtra("android.intent.extra.STREAM") ? 1 : 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getSubject() {
        return this.mIntent.getStringExtra("android.intent.extra.SUBJECT");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getText() {
        return this.mIntent.getCharSequenceExtra("android.intent.extra.TEXT");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getType() {
        return this.mIntent.getType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isMultipleShare() {
        return "android.intent.action.SEND_MULTIPLE".equals(this.mIntent.getAction());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isShareIntent() {
        String action = this.mIntent.getAction();
        return "android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSingleShare() {
        return "android.intent.action.SEND".equals(this.mIntent.getAction());
    }

    public ShareCompat$IntentReader(@NonNull Activity activity) {
        this((Context) Preconditions.checkNotNull(activity), activity.getIntent());
    }

    @Nullable
    public Uri getStream() {
        return (Uri) this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
    }
}
