package androidx.customview.widget;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j1.i;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class FocusStrategy {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FocusStrategy() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean beamBeats(int i9, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean zBeamsOverlap = beamsOverlap(i9, rect, rect2);
        if (beamsOverlap(i9, rect, rect3) || !zBeamsOverlap) {
            return false;
        }
        return !isToDirectionOf(i9, rect, rect3) || i9 == 17 || i9 == 66 || majorAxisDistance(i9, rect, rect2) < majorAxisDistanceToFarEdge(i9, rect, rect3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean beamsOverlap(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i9 != 17) {
            if (i9 != 33) {
                if (i9 != 66) {
                    if (i9 != 130) {
                        i.k("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return false;
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <L, T> T findNextFocusInAbsoluteDirection(@NonNull L l9, @NonNull FocusStrategy$CollectionAdapter<L, T> focusStrategy$CollectionAdapter, @NonNull FocusStrategy$BoundsAdapter<T> focusStrategy$BoundsAdapter, @Nullable T t, @NonNull Rect rect, int i9) {
        Rect rect2 = new Rect(rect);
        if (i9 == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i9 == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i9 == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else {
            if (i9 != 130) {
                i.k("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return null;
            }
            rect2.offset(0, -(rect.height() + 1));
        }
        int size = focusStrategy$CollectionAdapter.size(l9);
        Rect rect3 = new Rect();
        T t3 = null;
        for (int i10 = 0; i10 < size; i10++) {
            T t9 = focusStrategy$CollectionAdapter.get(l9, i10);
            if (t9 != t) {
                focusStrategy$BoundsAdapter.obtainBounds(t9, rect3);
                if (isBetterCandidate(i9, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t3 = t9;
                }
            }
        }
        return t3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l9, @NonNull FocusStrategy$CollectionAdapter<L, T> focusStrategy$CollectionAdapter, @NonNull FocusStrategy$BoundsAdapter<T> focusStrategy$BoundsAdapter, @Nullable T t, int i9, boolean z8, boolean z9) {
        int size = focusStrategy$CollectionAdapter.size(l9);
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(focusStrategy$CollectionAdapter.get(l9, i10));
        }
        Collections.sort(arrayList, new FocusStrategy$SequentialComparator(z8, focusStrategy$BoundsAdapter));
        if (i9 == 1) {
            return (T) getPreviousFocusable(t, arrayList, z9);
        }
        if (i9 == 2) {
            return (T) getNextFocusable(t, arrayList, z9);
        }
        i.k("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <T> T getNextFocusable(T t, ArrayList<T> arrayList, boolean z8) {
        int size = arrayList.size();
        int iLastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        if (iLastIndexOf < size) {
            return arrayList.get(iLastIndexOf);
        }
        if (!z8 || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <T> T getPreviousFocusable(T t, ArrayList<T> arrayList, boolean z8) {
        int size = arrayList.size();
        int iIndexOf = (t == null ? size : arrayList.indexOf(t)) - 1;
        if (iIndexOf >= 0) {
            return arrayList.get(iIndexOf);
        }
        if (!z8 || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int getWeightedDistanceFor(int i9, int i10) {
        return (i10 * i10) + (i9 * 13 * i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isBetterCandidate(int i9, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        if (!isCandidate(rect, rect2, i9)) {
            return false;
        }
        if (isCandidate(rect, rect3, i9) && !beamBeats(i9, rect, rect2, rect3)) {
            return !beamBeats(i9, rect, rect3, rect2) && getWeightedDistanceFor(majorAxisDistance(i9, rect, rect2), minorAxisDistance(i9, rect, rect2)) < getWeightedDistanceFor(majorAxisDistance(i9, rect, rect3), minorAxisDistance(i9, rect, rect3));
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isCandidate(@NonNull Rect rect, @NonNull Rect rect2, int i9) {
        if (i9 == 17) {
            int i10 = rect.right;
            int i11 = rect2.right;
            return (i10 > i11 || rect.left >= i11) && rect.left > rect2.left;
        }
        if (i9 == 33) {
            int i12 = rect.bottom;
            int i13 = rect2.bottom;
            return (i12 > i13 || rect.top >= i13) && rect.top > rect2.top;
        }
        if (i9 == 66) {
            int i14 = rect.left;
            int i15 = rect2.left;
            return (i14 < i15 || rect.right <= i15) && rect.right < rect2.right;
        }
        if (i9 != 130) {
            i.k("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            return false;
        }
        int i16 = rect.top;
        int i17 = rect2.top;
        return (i16 < i17 || rect.bottom <= i17) && rect.bottom < rect2.bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isToDirectionOf(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i9 == 17) {
            return rect.left >= rect2.right;
        }
        if (i9 == 33) {
            return rect.top >= rect2.bottom;
        }
        if (i9 == 66) {
            return rect.right <= rect2.left;
        }
        if (i9 == 130) {
            return rect.bottom <= rect2.top;
        }
        i.k("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int majorAxisDistance(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, majorAxisDistanceRaw(i9, rect, rect2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int majorAxisDistanceRaw(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i9 == 17) {
            return rect.left - rect2.right;
        }
        if (i9 == 33) {
            return rect.top - rect2.bottom;
        }
        if (i9 == 66) {
            return rect2.left - rect.right;
        }
        if (i9 == 130) {
            return rect2.top - rect.bottom;
        }
        i.k("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int majorAxisDistanceToFarEdge(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, majorAxisDistanceToFarEdgeRaw(i9, rect, rect2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int majorAxisDistanceToFarEdgeRaw(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i9 == 17) {
            return rect.left - rect2.left;
        }
        if (i9 == 33) {
            return rect.top - rect2.top;
        }
        if (i9 == 66) {
            return rect2.right - rect.right;
        }
        if (i9 == 130) {
            return rect2.bottom - rect.bottom;
        }
        i.k("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int minorAxisDistance(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i9 != 17) {
            if (i9 != 33) {
                if (i9 != 66) {
                    if (i9 != 130) {
                        i.k("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return 0;
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }
}
