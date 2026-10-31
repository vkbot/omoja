package androidx.fragment.app;

import android.R$anim;
import android.R$attr;
import android.R$id;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ListFragment extends Fragment {
    static final int INTERNAL_EMPTY_ID = 16711681;
    static final int INTERNAL_LIST_CONTAINER_ID = 16711683;
    static final int INTERNAL_PROGRESS_CONTAINER_ID = 16711682;
    ListAdapter mAdapter;
    CharSequence mEmptyText;
    View mEmptyView;
    ListView mList;
    View mListContainer;
    boolean mListShown;
    View mProgressContainer;
    TextView mStandardEmptyView;
    private final Handler mHandler = new Handler();
    private final Runnable mRequestFocus = new ListFragment$1(this);
    private final AdapterView$OnItemClickListener mOnClickListener = new ListFragment$2(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureList() {
        if (this.mList != null) {
            return;
        }
        View view = getView();
        if (view == null) {
            j1.i.l("Content view not yet created");
            return;
        }
        if (view instanceof ListView) {
            this.mList = (ListView) view;
        } else {
            TextView textView = (TextView) view.findViewById(INTERNAL_EMPTY_ID);
            this.mStandardEmptyView = textView;
            if (textView == null) {
                this.mEmptyView = view.findViewById(R$id.empty);
            } else {
                textView.setVisibility(8);
            }
            this.mProgressContainer = view.findViewById(INTERNAL_PROGRESS_CONTAINER_ID);
            this.mListContainer = view.findViewById(INTERNAL_LIST_CONTAINER_ID);
            View viewFindViewById = view.findViewById(R$id.list);
            if (!(viewFindViewById instanceof ListView)) {
                if (viewFindViewById == null) {
                    ai.onnxruntime.b.h("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                    return;
                } else {
                    ai.onnxruntime.b.h("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                    return;
                }
            }
            ListView listView = (ListView) viewFindViewById;
            this.mList = listView;
            View view2 = this.mEmptyView;
            if (view2 != null) {
                listView.setEmptyView(view2);
            } else {
                CharSequence charSequence = this.mEmptyText;
                if (charSequence != null) {
                    this.mStandardEmptyView.setText(charSequence);
                    this.mList.setEmptyView(this.mStandardEmptyView);
                }
            }
        }
        this.mListShown = true;
        this.mList.setOnItemClickListener(this.mOnClickListener);
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter != null) {
            this.mAdapter = null;
            setListAdapter(listAdapter);
        } else if (this.mProgressContainer != null) {
            setListShown(false, false);
        }
        this.mHandler.post(this.mRequestFocus);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setListShown(boolean z8, boolean z9) {
        ensureList();
        View view = this.mProgressContainer;
        if (view == null) {
            j1.i.l("Can't be used with a custom content view");
            return;
        }
        if (this.mListShown == z8) {
            return;
        }
        this.mListShown = z8;
        if (z8) {
            if (z9) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), R$anim.fade_out));
                this.mListContainer.startAnimation(AnimationUtils.loadAnimation(getContext(), R$anim.fade_in));
            } else {
                view.clearAnimation();
                this.mListContainer.clearAnimation();
            }
            this.mProgressContainer.setVisibility(8);
            this.mListContainer.setVisibility(0);
            return;
        }
        if (z9) {
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R$anim.fade_in));
            this.mListContainer.startAnimation(AnimationUtils.loadAnimation(getContext(), R$anim.fade_out));
        } else {
            view.clearAnimation();
            this.mListContainer.clearAnimation();
        }
        this.mProgressContainer.setVisibility(0);
        this.mListContainer.setVisibility(8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ListAdapter getListAdapter() {
        return this.mAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ListView getListView() {
        ensureList();
        return this.mList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getSelectedItemId() {
        ensureList();
        return this.mList.getSelectedItemId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSelectedItemPosition() {
        ensureList();
        return this.mList.getSelectedItemPosition();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Context contextRequireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(contextRequireContext);
        LinearLayout linearLayout = new LinearLayout(contextRequireContext);
        linearLayout.setId(INTERNAL_PROGRESS_CONTAINER_ID);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(contextRequireContext, null, R$attr.progressBarStyleLarge), new FrameLayout$LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout$LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(contextRequireContext);
        frameLayout2.setId(INTERNAL_LIST_CONTAINER_ID);
        TextView textView = new TextView(contextRequireContext);
        textView.setId(INTERNAL_EMPTY_ID);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout$LayoutParams(-1, -1));
        ListView listView = new ListView(contextRequireContext);
        listView.setId(R$id.list);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout$LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout$LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout$LayoutParams(-1, -1));
        return frameLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.mHandler.removeCallbacks(this.mRequestFocus);
        this.mList = null;
        this.mListShown = false;
        this.mListContainer = null;
        this.mProgressContainer = null;
        this.mEmptyView = null;
        this.mStandardEmptyView = null;
        super.onDestroyView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        ensureList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public final ListAdapter requireListAdapter() {
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter != null) {
            return listAdapter;
        }
        ai.onnxruntime.b.g(this, "ListFragment ", " does not have a ListAdapter.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEmptyText(@Nullable CharSequence charSequence) {
        ensureList();
        TextView textView = this.mStandardEmptyView;
        if (textView == null) {
            j1.i.l("Can't be used with a custom content view");
            return;
        }
        textView.setText(charSequence);
        if (this.mEmptyText == null) {
            this.mList.setEmptyView(this.mStandardEmptyView);
        }
        this.mEmptyText = charSequence;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setListAdapter(@Nullable ListAdapter listAdapter) {
        boolean z8 = this.mAdapter != null;
        this.mAdapter = listAdapter;
        ListView listView = this.mList;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            if (this.mListShown || z8) {
                return;
            }
            setListShown(true, requireView().getWindowToken() != null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setListShownNoAnimation(boolean z8) {
        setListShown(z8, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSelection(int i9) {
        ensureList();
        this.mList.setSelection(i9);
    }

    public void setListShown(boolean z8) {
        setListShown(z8, true);
    }

    public void onListItemClick(@NonNull ListView listView, @NonNull View view, int i9, long j9) {
    }
}
