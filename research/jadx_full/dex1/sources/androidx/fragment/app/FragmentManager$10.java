package androidx.fragment.app;

import android.util.Log;
import androidx.activity.result.ActivityResultCallback;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentManager$10 implements ActivityResultCallback<Map<String, Boolean>> {
    final /* synthetic */ FragmentManager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentManager$10(FragmentManager fragmentManager) {
        this.this$0 = fragmentManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: onActivityResult, reason: avoid collision after fix types in other method */
    public void onActivityResult2(Map<String, Boolean> map) {
        String[] strArr = (String[]) map.keySet().toArray(new String[0]);
        ArrayList arrayList = new ArrayList(map.values());
        int[] iArr = new int[arrayList.size()];
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            iArr[i9] = ((Boolean) arrayList.get(i9)).booleanValue() ? 0 : -1;
        }
        FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfoPollFirst = this.this$0.mLaunchedFragments.pollFirst();
        if (fragmentManager$LaunchedFragmentInfoPollFirst == null) {
            Log.w(FragmentManager.TAG, "No permissions were requested for " + this);
            return;
        }
        String str = fragmentManager$LaunchedFragmentInfoPollFirst.mWho;
        int i10 = fragmentManager$LaunchedFragmentInfoPollFirst.mRequestCode;
        Fragment fragmentFindFragmentByWho = FragmentManager.access$200(this.this$0).findFragmentByWho(str);
        if (fragmentFindFragmentByWho != null) {
            fragmentFindFragmentByWho.onRequestPermissionsResult(i10, strArr, iArr);
            return;
        }
        Log.w(FragmentManager.TAG, "Permission request result delivered for unknown Fragment " + str);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.activity.result.ActivityResultCallback
    public /* bridge */ /* synthetic */ void onActivityResult(Map<String, Boolean> map) {
        onActivityResult2(map);
    }
}
