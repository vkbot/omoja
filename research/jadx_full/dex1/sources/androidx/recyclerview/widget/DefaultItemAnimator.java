package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DefaultItemAnimator extends SimpleItemAnimator {
    private static final boolean DEBUG = false;
    private static TimeInterpolator sDefaultInterpolator;
    private ArrayList<RecyclerView$ViewHolder> mPendingRemovals = new ArrayList<>();
    private ArrayList<RecyclerView$ViewHolder> mPendingAdditions = new ArrayList<>();
    private ArrayList<DefaultItemAnimator$MoveInfo> mPendingMoves = new ArrayList<>();
    private ArrayList<DefaultItemAnimator$ChangeInfo> mPendingChanges = new ArrayList<>();
    ArrayList<ArrayList<RecyclerView$ViewHolder>> mAdditionsList = new ArrayList<>();
    ArrayList<ArrayList<DefaultItemAnimator$MoveInfo>> mMovesList = new ArrayList<>();
    ArrayList<ArrayList<DefaultItemAnimator$ChangeInfo>> mChangesList = new ArrayList<>();
    ArrayList<RecyclerView$ViewHolder> mAddAnimations = new ArrayList<>();
    ArrayList<RecyclerView$ViewHolder> mMoveAnimations = new ArrayList<>();
    ArrayList<RecyclerView$ViewHolder> mRemoveAnimations = new ArrayList<>();
    ArrayList<RecyclerView$ViewHolder> mChangeAnimations = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void animateRemoveImpl(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        View view = recyclerView$ViewHolder.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mRemoveAnimations.add(recyclerView$ViewHolder);
        viewPropertyAnimatorAnimate.setDuration(getRemoveDuration()).alpha(0.0f).setListener(new DefaultItemAnimator$4(this, recyclerView$ViewHolder, viewPropertyAnimatorAnimate, view)).start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void endChangeAnimation(List<DefaultItemAnimator$ChangeInfo> list, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        for (int size = list.size() - 1; size >= 0; size--) {
            DefaultItemAnimator$ChangeInfo defaultItemAnimator$ChangeInfo = list.get(size);
            if (endChangeAnimationIfNecessary(defaultItemAnimator$ChangeInfo, recyclerView$ViewHolder) && defaultItemAnimator$ChangeInfo.oldHolder == null && defaultItemAnimator$ChangeInfo.newHolder == null) {
                list.remove(defaultItemAnimator$ChangeInfo);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean endChangeAnimationIfNecessary(DefaultItemAnimator$ChangeInfo defaultItemAnimator$ChangeInfo, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        boolean z8 = false;
        if (defaultItemAnimator$ChangeInfo.newHolder == recyclerView$ViewHolder) {
            defaultItemAnimator$ChangeInfo.newHolder = null;
        } else {
            if (defaultItemAnimator$ChangeInfo.oldHolder != recyclerView$ViewHolder) {
                return false;
            }
            defaultItemAnimator$ChangeInfo.oldHolder = null;
            z8 = true;
        }
        recyclerView$ViewHolder.itemView.setAlpha(1.0f);
        recyclerView$ViewHolder.itemView.setTranslationX(0.0f);
        recyclerView$ViewHolder.itemView.setTranslationY(0.0f);
        dispatchChangeFinished(recyclerView$ViewHolder, z8);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resetAnimation(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (sDefaultInterpolator == null) {
            sDefaultInterpolator = new ValueAnimator().getInterpolator();
        }
        recyclerView$ViewHolder.itemView.animate().setInterpolator(sDefaultInterpolator);
        endAnimation(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateAdd(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        resetAnimation(recyclerView$ViewHolder);
        recyclerView$ViewHolder.itemView.setAlpha(0.0f);
        this.mPendingAdditions.add(recyclerView$ViewHolder);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void animateAddImpl(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        View view = recyclerView$ViewHolder.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mAddAnimations.add(recyclerView$ViewHolder);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(getAddDuration()).setListener(new DefaultItemAnimator$5(this, recyclerView$ViewHolder, view, viewPropertyAnimatorAnimate)).start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateChange(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ViewHolder recyclerView$ViewHolder2, int i9, int i10, int i11, int i12) {
        if (recyclerView$ViewHolder == recyclerView$ViewHolder2) {
            return animateMove(recyclerView$ViewHolder, i9, i10, i11, i12);
        }
        float translationX = recyclerView$ViewHolder.itemView.getTranslationX();
        float translationY = recyclerView$ViewHolder.itemView.getTranslationY();
        float alpha = recyclerView$ViewHolder.itemView.getAlpha();
        resetAnimation(recyclerView$ViewHolder);
        int i13 = (int) ((i11 - i9) - translationX);
        int i14 = (int) ((i12 - i10) - translationY);
        recyclerView$ViewHolder.itemView.setTranslationX(translationX);
        recyclerView$ViewHolder.itemView.setTranslationY(translationY);
        recyclerView$ViewHolder.itemView.setAlpha(alpha);
        if (recyclerView$ViewHolder2 != null) {
            resetAnimation(recyclerView$ViewHolder2);
            recyclerView$ViewHolder2.itemView.setTranslationX(-i13);
            recyclerView$ViewHolder2.itemView.setTranslationY(-i14);
            recyclerView$ViewHolder2.itemView.setAlpha(0.0f);
        }
        this.mPendingChanges.add(new DefaultItemAnimator$ChangeInfo(recyclerView$ViewHolder, recyclerView$ViewHolder2, i9, i10, i11, i12));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void animateChangeImpl(DefaultItemAnimator$ChangeInfo defaultItemAnimator$ChangeInfo) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = defaultItemAnimator$ChangeInfo.oldHolder;
        View view = recyclerView$ViewHolder == null ? null : recyclerView$ViewHolder.itemView;
        RecyclerView$ViewHolder recyclerView$ViewHolder2 = defaultItemAnimator$ChangeInfo.newHolder;
        View view2 = recyclerView$ViewHolder2 != null ? recyclerView$ViewHolder2.itemView : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(getChangeDuration());
            this.mChangeAnimations.add(defaultItemAnimator$ChangeInfo.oldHolder);
            duration.translationX(defaultItemAnimator$ChangeInfo.toX - defaultItemAnimator$ChangeInfo.fromX);
            duration.translationY(defaultItemAnimator$ChangeInfo.toY - defaultItemAnimator$ChangeInfo.fromY);
            duration.alpha(0.0f).setListener(new DefaultItemAnimator$7(this, defaultItemAnimator$ChangeInfo, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.mChangeAnimations.add(defaultItemAnimator$ChangeInfo.newHolder);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration()).alpha(1.0f).setListener(new DefaultItemAnimator$8(this, defaultItemAnimator$ChangeInfo, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateMove(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9, int i10, int i11, int i12) {
        View view = recyclerView$ViewHolder.itemView;
        int translationX = i9 + ((int) view.getTranslationX());
        int translationY = i10 + ((int) recyclerView$ViewHolder.itemView.getTranslationY());
        resetAnimation(recyclerView$ViewHolder);
        int i13 = i11 - translationX;
        int i14 = i12 - translationY;
        if (i13 == 0 && i14 == 0) {
            dispatchMoveFinished(recyclerView$ViewHolder);
            return false;
        }
        if (i13 != 0) {
            view.setTranslationX(-i13);
        }
        if (i14 != 0) {
            view.setTranslationY(-i14);
        }
        this.mPendingMoves.add(new DefaultItemAnimator$MoveInfo(recyclerView$ViewHolder, translationX, translationY, i11, i12));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void animateMoveImpl(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9, int i10, int i11, int i12) {
        View view = recyclerView$ViewHolder.itemView;
        int i13 = i11 - i9;
        int i14 = i12 - i10;
        if (i13 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i14 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.mMoveAnimations.add(recyclerView$ViewHolder);
        viewPropertyAnimatorAnimate.setDuration(getMoveDuration()).setListener(new DefaultItemAnimator$6(this, recyclerView$ViewHolder, i13, view, i14, viewPropertyAnimatorAnimate)).start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateRemove(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        resetAnimation(recyclerView$ViewHolder);
        this.mPendingRemovals.add(recyclerView$ViewHolder);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull List<Object> list) {
        return !list.isEmpty() || super.canReuseUpdatedViewHolder(recyclerView$ViewHolder, list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cancelAll(List<RecyclerView$ViewHolder> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchFinishedWhenDone() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0011 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public void endAnimation(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        View view = recyclerView$ViewHolder.itemView;
        view.animate().cancel();
        int size = this.mPendingMoves.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.mPendingMoves.get(size).holder == recyclerView$ViewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchMoveFinished(recyclerView$ViewHolder);
                this.mPendingMoves.remove(size);
            }
        }
        endChangeAnimation(this.mPendingChanges, recyclerView$ViewHolder);
        if (this.mPendingRemovals.remove(recyclerView$ViewHolder)) {
            view.setAlpha(1.0f);
            dispatchRemoveFinished(recyclerView$ViewHolder);
        }
        if (this.mPendingAdditions.remove(recyclerView$ViewHolder)) {
            view.setAlpha(1.0f);
            dispatchAddFinished(recyclerView$ViewHolder);
        }
        for (int size2 = this.mChangesList.size() - 1; size2 >= 0; size2--) {
            ArrayList<DefaultItemAnimator$ChangeInfo> arrayList = this.mChangesList.get(size2);
            endChangeAnimation(arrayList, recyclerView$ViewHolder);
            if (arrayList.isEmpty()) {
                this.mChangesList.remove(size2);
            }
        }
        for (int size3 = this.mMovesList.size() - 1; size3 >= 0; size3--) {
            ArrayList<DefaultItemAnimator$MoveInfo> arrayList2 = this.mMovesList.get(size3);
            for (int size4 = arrayList2.size() - 1; size4 >= 0; size4--) {
                if (arrayList2.get(size4).holder == recyclerView$ViewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(recyclerView$ViewHolder);
                    arrayList2.remove(size4);
                    if (!arrayList2.isEmpty()) {
                        break;
                    }
                    this.mMovesList.remove(size3);
                    break;
                }
            }
        }
        for (int size5 = this.mAdditionsList.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView$ViewHolder> arrayList3 = this.mAdditionsList.get(size5);
            if (arrayList3.remove(recyclerView$ViewHolder)) {
                view.setAlpha(1.0f);
                dispatchAddFinished(recyclerView$ViewHolder);
                if (arrayList3.isEmpty()) {
                    this.mAdditionsList.remove(size5);
                }
            }
        }
        this.mRemoveAnimations.remove(recyclerView$ViewHolder);
        this.mAddAnimations.remove(recyclerView$ViewHolder);
        this.mChangeAnimations.remove(recyclerView$ViewHolder);
        this.mMoveAnimations.remove(recyclerView$ViewHolder);
        dispatchFinishedWhenDone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:10:0x004f */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:14:0x0073 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0008 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public void endAnimations() {
        ArrayList<DefaultItemAnimator$ChangeInfo> arrayList;
        int size = this.mPendingMoves.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            DefaultItemAnimator$MoveInfo defaultItemAnimator$MoveInfo = this.mPendingMoves.get(size);
            View view = defaultItemAnimator$MoveInfo.holder.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(defaultItemAnimator$MoveInfo.holder);
            this.mPendingMoves.remove(size);
        }
        for (int size2 = this.mPendingRemovals.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished(this.mPendingRemovals.get(size2));
            this.mPendingRemovals.remove(size2);
        }
        int size3 = this.mPendingAdditions.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mPendingAdditions.get(size3);
            recyclerView$ViewHolder.itemView.setAlpha(1.0f);
            dispatchAddFinished(recyclerView$ViewHolder);
            this.mPendingAdditions.remove(size3);
        }
        int size4 = this.mPendingChanges.size();
        while (true) {
            size4--;
            arrayList = this.mPendingChanges;
            if (size4 < 0) {
                break;
            } else {
                endChangeAnimationIfNecessary(arrayList.get(size4));
            }
        }
        arrayList.clear();
        if (isRunning()) {
            for (int size5 = this.mMovesList.size() - 1; size5 >= 0; size5--) {
                ArrayList<DefaultItemAnimator$MoveInfo> arrayList2 = this.mMovesList.get(size5);
                for (int size6 = arrayList2.size() - 1; size6 >= 0; size6--) {
                    DefaultItemAnimator$MoveInfo defaultItemAnimator$MoveInfo2 = arrayList2.get(size6);
                    View view2 = defaultItemAnimator$MoveInfo2.holder.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    dispatchMoveFinished(defaultItemAnimator$MoveInfo2.holder);
                    arrayList2.remove(size6);
                    if (arrayList2.isEmpty()) {
                        this.mMovesList.remove(arrayList2);
                    }
                }
            }
            for (int size7 = this.mAdditionsList.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView$ViewHolder> arrayList3 = this.mAdditionsList.get(size7);
                for (int size8 = arrayList3.size() - 1; size8 >= 0; size8--) {
                    RecyclerView$ViewHolder recyclerView$ViewHolder2 = arrayList3.get(size8);
                    recyclerView$ViewHolder2.itemView.setAlpha(1.0f);
                    dispatchAddFinished(recyclerView$ViewHolder2);
                    arrayList3.remove(size8);
                    if (arrayList3.isEmpty()) {
                        this.mAdditionsList.remove(arrayList3);
                    }
                }
            }
            for (int size9 = this.mChangesList.size() - 1; size9 >= 0; size9--) {
                ArrayList<DefaultItemAnimator$ChangeInfo> arrayList4 = this.mChangesList.get(size9);
                for (int size10 = arrayList4.size() - 1; size10 >= 0; size10--) {
                    endChangeAnimationIfNecessary(arrayList4.get(size10));
                    if (arrayList4.isEmpty()) {
                        this.mChangesList.remove(arrayList4);
                    }
                }
            }
            cancelAll(this.mRemoveAnimations);
            cancelAll(this.mMoveAnimations);
            cancelAll(this.mAddAnimations);
            cancelAll(this.mChangeAnimations);
            dispatchAnimationsFinished();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public boolean isRunning() {
        return (this.mPendingAdditions.isEmpty() && this.mPendingChanges.isEmpty() && this.mPendingMoves.isEmpty() && this.mPendingRemovals.isEmpty() && this.mMoveAnimations.isEmpty() && this.mRemoveAnimations.isEmpty() && this.mAddAnimations.isEmpty() && this.mChangeAnimations.isEmpty() && this.mMovesList.isEmpty() && this.mAdditionsList.isEmpty() && this.mChangesList.isEmpty()) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public void runPendingAnimations() {
        boolean zIsEmpty = this.mPendingRemovals.isEmpty();
        boolean zIsEmpty2 = this.mPendingMoves.isEmpty();
        boolean zIsEmpty3 = this.mPendingChanges.isEmpty();
        boolean zIsEmpty4 = this.mPendingAdditions.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        ArrayList<RecyclerView$ViewHolder> arrayList = this.mPendingRemovals;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = arrayList.get(i9);
            i9++;
            animateRemoveImpl(recyclerView$ViewHolder);
        }
        this.mPendingRemovals.clear();
        if (!zIsEmpty2) {
            ArrayList<DefaultItemAnimator$MoveInfo> arrayList2 = new ArrayList<>();
            arrayList2.addAll(this.mPendingMoves);
            this.mMovesList.add(arrayList2);
            this.mPendingMoves.clear();
            DefaultItemAnimator$1 defaultItemAnimator$1 = new DefaultItemAnimator$1(this, arrayList2);
            if (zIsEmpty) {
                defaultItemAnimator$1.run();
            } else {
                ViewCompat.postOnAnimationDelayed(arrayList2.get(0).holder.itemView, defaultItemAnimator$1, getRemoveDuration());
            }
        }
        if (!zIsEmpty3) {
            ArrayList<DefaultItemAnimator$ChangeInfo> arrayList3 = new ArrayList<>();
            arrayList3.addAll(this.mPendingChanges);
            this.mChangesList.add(arrayList3);
            this.mPendingChanges.clear();
            DefaultItemAnimator$2 defaultItemAnimator$2 = new DefaultItemAnimator$2(this, arrayList3);
            if (zIsEmpty) {
                defaultItemAnimator$2.run();
            } else {
                ViewCompat.postOnAnimationDelayed(arrayList3.get(0).oldHolder.itemView, defaultItemAnimator$2, getRemoveDuration());
            }
        }
        if (zIsEmpty4) {
            return;
        }
        ArrayList<RecyclerView$ViewHolder> arrayList4 = new ArrayList<>();
        arrayList4.addAll(this.mPendingAdditions);
        this.mAdditionsList.add(arrayList4);
        this.mPendingAdditions.clear();
        DefaultItemAnimator$3 defaultItemAnimator$3 = new DefaultItemAnimator$3(this, arrayList4);
        if (zIsEmpty && zIsEmpty2 && zIsEmpty3) {
            defaultItemAnimator$3.run();
        } else {
            ViewCompat.postOnAnimationDelayed(arrayList4.get(0).itemView, defaultItemAnimator$3, Math.max(!zIsEmpty2 ? getMoveDuration() : 0L, zIsEmpty3 ? 0L : getChangeDuration()) + (!zIsEmpty ? getRemoveDuration() : 0L));
        }
    }

    private void endChangeAnimationIfNecessary(DefaultItemAnimator$ChangeInfo defaultItemAnimator$ChangeInfo) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = defaultItemAnimator$ChangeInfo.oldHolder;
        if (recyclerView$ViewHolder != null) {
            endChangeAnimationIfNecessary(defaultItemAnimator$ChangeInfo, recyclerView$ViewHolder);
        }
        RecyclerView$ViewHolder recyclerView$ViewHolder2 = defaultItemAnimator$ChangeInfo.newHolder;
        if (recyclerView$ViewHolder2 != null) {
            endChangeAnimationIfNecessary(defaultItemAnimator$ChangeInfo, recyclerView$ViewHolder2);
        }
    }
}
