package androidx.fragment.app;

import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$9 implements ActivityResultCallback<ActivityResult> {
    final /* synthetic */ FragmentManager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentManager$9(FragmentManager fragmentManager) {
        this.this$0 = fragmentManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: onActivityResult, reason: avoid collision after fix types in other method */
    public void onActivityResult2(ActivityResult activityResult) {
        FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfoPollFirst = this.this$0.mLaunchedFragments.pollFirst();
        if (fragmentManager$LaunchedFragmentInfoPollFirst == null) {
            Log.w(FragmentManager.TAG, "No IntentSenders were started for " + this);
            return;
        }
        String str = fragmentManager$LaunchedFragmentInfoPollFirst.mWho;
        int i9 = fragmentManager$LaunchedFragmentInfoPollFirst.mRequestCode;
        Fragment fragmentFindFragmentByWho = FragmentManager.access$200(this.this$0).findFragmentByWho(str);
        if (fragmentFindFragmentByWho != null) {
            fragmentFindFragmentByWho.onActivityResult(i9, activityResult.getResultCode(), activityResult.getData());
            return;
        }
        Log.w(FragmentManager.TAG, "Intent Sender result delivered for unknown Fragment " + str);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.activity.result.ActivityResultCallback
    public /* bridge */ /* synthetic */ void onActivityResult(ActivityResult activityResult) {
        onActivityResult2(activityResult);
    }
}
