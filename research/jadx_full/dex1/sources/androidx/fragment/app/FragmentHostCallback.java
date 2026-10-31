package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class FragmentHostCallback<E> extends FragmentContainer {

    @Nullable
    private final Activity mActivity;

    @NonNull
    private final Context mContext;
    final FragmentManager mFragmentManager;

    @NonNull
    private final Handler mHandler;
    private final int mWindowAnimations;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentHostCallback(@Nullable Activity activity, @NonNull Context context, @NonNull Handler handler, int i9) {
        this.mFragmentManager = new FragmentManagerImpl();
        this.mActivity = activity;
        this.mContext = (Context) Preconditions.checkNotNull(context, "context == null");
        this.mHandler = (Handler) Preconditions.checkNotNull(handler, "handler == null");
        this.mWindowAnimations = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Activity getActivity() {
        return this.mActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public Handler getHandler() {
        return this.mHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentContainer
    @Nullable
    public View onFindViewById(int i9) {
        return null;
    }

    @Nullable
    public abstract E onGetHost();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public LayoutInflater onGetLayoutInflater() {
        return LayoutInflater.from(this.mContext);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int onGetWindowAnimations() {
        return this.mWindowAnimations;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentContainer
    public boolean onHasView() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onHasWindowAnimations() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onShouldSaveFragmentState(@NonNull Fragment fragment) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onShouldShowRequestPermissionRationale(@NonNull String str) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onStartActivityFromFragment(@NonNull Fragment fragment, @NonNull Intent intent, int i9, @Nullable Bundle bundle) {
        if (i9 == -1) {
            ContextCompat.startActivity(this.mContext, intent, bundle);
        } else {
            j1.i.l("Starting activity with a requestCode requires a FragmentActivity host");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void onStartIntentSenderFromFragment(@NonNull Fragment fragment, @NonNull IntentSender intentSender, int i9, @Nullable Intent intent, int i10, int i11, int i12, @Nullable Bundle bundle) {
        if (i9 == -1) {
            ActivityCompat.startIntentSenderForResult(this.mActivity, intentSender, i9, intent, i10, i11, i12, bundle);
        } else {
            j1.i.l("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
    }

    public void onStartActivityFromFragment(@NonNull Fragment fragment, @NonNull Intent intent, int i9) {
        onStartActivityFromFragment(fragment, intent, i9, null);
    }

    public void onSupportInvalidateOptionsMenu() {
    }

    public FragmentHostCallback(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    public FragmentHostCallback(@NonNull Context context, @NonNull Handler handler, int i9) {
        this(context instanceof Activity ? (Activity) context : null, context, handler, i9);
    }

    @Deprecated
    public void onRequestPermissionsFromFragment(@NonNull Fragment fragment, @NonNull String[] strArr, int i9) {
    }

    public void onDump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }
}
