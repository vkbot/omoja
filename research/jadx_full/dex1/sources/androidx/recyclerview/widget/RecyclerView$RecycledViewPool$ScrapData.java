package androidx.recyclerview.widget;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$RecycledViewPool$ScrapData {
    final ArrayList<RecyclerView$ViewHolder> mScrapHeap = new ArrayList<>();
    int mMaxScrap = 5;
    long mCreateRunningAverageNs = 0;
    long mBindRunningAverageNs = 0;
}
