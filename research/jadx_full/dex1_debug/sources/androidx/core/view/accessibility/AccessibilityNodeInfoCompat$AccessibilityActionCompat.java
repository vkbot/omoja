package androidx.core.view.accessibility;

import android.R$id;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import androidx.activity.i;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.os.BuildCompat$PrereleaseSdkCheck;
import androidx.core.view.n;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AccessibilityNodeInfoCompat$AccessibilityActionCompat {
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CONTEXT_CLICK;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_DRAG_CANCEL;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_DRAG_DROP;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_DRAG_START;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_HIDE_TOOLTIP;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_IME_ENTER;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_MOVE_WINDOW;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PAGE_DOWN;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PAGE_LEFT;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PAGE_RIGHT;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PAGE_UP;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PRESS_AND_HOLD;

    @NonNull
    @OptIn(markerClass = {BuildCompat$PrereleaseSdkCheck.class})
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_IN_DIRECTION;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SET_PROGRESS;

    @NonNull
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SHOW_TEXT_SUGGESTIONS;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SHOW_TOOLTIP;
    private static final String TAG = "A11yActionCompat";
    final Object mAction;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    protected final AccessibilityViewCommand mCommand;
    private final int mId;
    private final Class<? extends AccessibilityViewCommand$CommandArguments> mViewCommandArgumentClass;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_FOCUS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(1, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CLEAR_FOCUS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(2, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SELECT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(4, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CLEAR_SELECTION = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(8, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CLICK = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(16, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_LONG_CLICK = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(32, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(64, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(128, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(256, (CharSequence) null, (Class<? extends AccessibilityViewCommand$CommandArguments>) AccessibilityViewCommand$MoveAtGranularityArguments.class);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(512, (CharSequence) null, (Class<? extends AccessibilityViewCommand$CommandArguments>) AccessibilityViewCommand$MoveAtGranularityArguments.class);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(1024, (CharSequence) null, (Class<? extends AccessibilityViewCommand$CommandArguments>) AccessibilityViewCommand$MoveHtmlArguments.class);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(2048, (CharSequence) null, (Class<? extends AccessibilityViewCommand$CommandArguments>) AccessibilityViewCommand$MoveHtmlArguments.class);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_FORWARD = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(4096, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_BACKWARD = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(8192, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_COPY = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(16384, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PASTE = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(32768, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CUT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(65536, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SET_SELECTION = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(131072, (CharSequence) null, (Class<? extends AccessibilityViewCommand$CommandArguments>) AccessibilityViewCommand$SetSelectionArguments.class);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_EXPAND = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(262144, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_COLLAPSE = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(524288, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_DISMISS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(1048576, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SET_TEXT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(2097152, (CharSequence) null, (Class<? extends AccessibilityViewCommand$CommandArguments>) AccessibilityViewCommand$SetTextArguments.class);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SHOW_ON_SCREEN = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(AccessibilityNodeInfo$AccessibilityAction.ACTION_SHOW_ON_SCREEN, R$id.accessibilityActionShowOnScreen, null, null, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_TO_POSITION = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_TO_POSITION, R$id.accessibilityActionScrollToPosition, null, null, AccessibilityViewCommand$ScrollToPositionArguments.class);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_UP = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_UP, R$id.accessibilityActionScrollUp, null, null, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_LEFT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_LEFT, R$id.accessibilityActionScrollLeft, null, null, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_DOWN = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_DOWN, R$id.accessibilityActionScrollDown, null, null, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_RIGHT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_RIGHT, R$id.accessibilityActionScrollRight, null, null, null);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int i9 = Build$VERSION.SDK_INT;
        ACTION_PAGE_UP = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 29 ? n.i() : null, R$id.accessibilityActionPageUp, null, null, null);
        ACTION_PAGE_DOWN = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 29 ? n.x() : null, R$id.accessibilityActionPageDown, null, null, null);
        ACTION_PAGE_LEFT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 29 ? n.B() : null, R$id.accessibilityActionPageLeft, null, null, null);
        ACTION_PAGE_RIGHT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 29 ? n.D() : null, R$id.accessibilityActionPageRight, null, null, null);
        ACTION_CONTEXT_CLICK = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(AccessibilityNodeInfo$AccessibilityAction.ACTION_CONTEXT_CLICK, R$id.accessibilityActionContextClick, null, null, null);
        ACTION_SET_PROGRESS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(AccessibilityNodeInfo$AccessibilityAction.ACTION_SET_PROGRESS, R$id.accessibilityActionSetProgress, null, null, AccessibilityViewCommand$SetProgressArguments.class);
        ACTION_MOVE_WINDOW = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 26 ? androidx.core.graphics.a.o() : null, R$id.accessibilityActionMoveWindow, null, null, AccessibilityViewCommand$MoveWindowArguments.class);
        ACTION_SHOW_TOOLTIP = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 28 ? a.i() : null, R$id.accessibilityActionShowTooltip, null, null, null);
        ACTION_HIDE_TOOLTIP = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 28 ? a.w() : null, R$id.accessibilityActionHideTooltip, null, null, null);
        ACTION_PRESS_AND_HOLD = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 30 ? b.e() : null, R$id.accessibilityActionPressAndHold, null, null, null);
        ACTION_IME_ENTER = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 30 ? b.j() : null, R$id.accessibilityActionImeEnter, null, null, null);
        ACTION_DRAG_START = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 32 ? c.a() : null, R$id.accessibilityActionDragStart, null, null, null);
        ACTION_DRAG_DROP = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 32 ? c.b() : null, R$id.accessibilityActionDragDrop, null, null, null);
        ACTION_DRAG_CANCEL = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 32 ? c.c() : null, R$id.accessibilityActionDragCancel, null, null, null);
        ACTION_SHOW_TEXT_SUGGESTIONS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 33 ? i.d() : null, R$id.accessibilityActionShowTextSuggestions, null, null, null);
        ACTION_SCROLL_IN_DIRECTION = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(i9 >= 34 ? AccessibilityNodeInfoCompat$Api34Impl.getActionScrollInDirection() : null, R$id.accessibilityActionScrollInDirection, null, null, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AccessibilityNodeInfoCompat$AccessibilityActionCompat(Object obj, int i9, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand, Class<? extends AccessibilityViewCommand$CommandArguments> cls) {
        this.mId = i9;
        this.mCommand = accessibilityViewCommand;
        if (obj == null) {
            this.mAction = new AccessibilityNodeInfo$AccessibilityAction(i9, charSequence);
        } else {
            this.mAction = obj;
        }
        this.mViewCommandArgumentClass = cls;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public AccessibilityNodeInfoCompat$AccessibilityActionCompat createReplacementAction(CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
        return new AccessibilityNodeInfoCompat$AccessibilityActionCompat(null, this.mId, charSequence, accessibilityViewCommand, this.mViewCommandArgumentClass);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof AccessibilityNodeInfoCompat$AccessibilityActionCompat)) {
            return false;
        }
        Object obj2 = this.mAction;
        Object obj3 = ((AccessibilityNodeInfoCompat$AccessibilityActionCompat) obj).mAction;
        if (obj2 == null) {
            return obj3 == null;
        }
        return obj2.equals(obj3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getId() {
        return ((AccessibilityNodeInfo$AccessibilityAction) this.mAction).getId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharSequence getLabel() {
        return ((AccessibilityNodeInfo$AccessibilityAction) this.mAction).getLabel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        Object obj = this.mAction;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean perform(View view, Bundle bundle) {
        if (this.mCommand == null) {
            return false;
        }
        Class<? extends AccessibilityViewCommand$CommandArguments> cls = this.mViewCommandArgumentClass;
        AccessibilityViewCommand$CommandArguments accessibilityViewCommand$CommandArguments = null;
        if (cls != null) {
            try {
                AccessibilityViewCommand$CommandArguments accessibilityViewCommand$CommandArgumentsNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
                try {
                    accessibilityViewCommand$CommandArgumentsNewInstance.setBundle(bundle);
                    accessibilityViewCommand$CommandArguments = accessibilityViewCommand$CommandArgumentsNewInstance;
                } catch (Exception e) {
                    e = e;
                    accessibilityViewCommand$CommandArguments = accessibilityViewCommand$CommandArgumentsNewInstance;
                    Class<? extends AccessibilityViewCommand$CommandArguments> cls2 = this.mViewCommandArgumentClass;
                    Log.e(TAG, "Failed to execute command with argument class ViewCommandArgument: ".concat(cls2 == null ? "null" : cls2.getName()), e);
                }
            } catch (Exception e6) {
                e = e6;
            }
        }
        return this.mCommand.perform(view, accessibilityViewCommand$CommandArguments);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String actionSymbolicName = AccessibilityNodeInfoCompat.getActionSymbolicName(this.mId);
        if (actionSymbolicName.equals("ACTION_UNKNOWN") && getLabel() != null) {
            actionSymbolicName = getLabel().toString();
        }
        sb.append(actionSymbolicName);
        return sb.toString();
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public AccessibilityNodeInfoCompat$AccessibilityActionCompat(int i9, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
        this(null, i9, charSequence, accessibilityViewCommand, null);
    }

    public AccessibilityNodeInfoCompat$AccessibilityActionCompat(Object obj) {
        this(obj, 0, null, null, null);
    }

    private AccessibilityNodeInfoCompat$AccessibilityActionCompat(int i9, CharSequence charSequence, Class<? extends AccessibilityViewCommand$CommandArguments> cls) {
        this(null, i9, charSequence, null, cls);
    }

    public AccessibilityNodeInfoCompat$AccessibilityActionCompat(int i9, CharSequence charSequence) {
        this(null, i9, charSequence, null, null);
    }
}
