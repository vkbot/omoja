package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.util.Set;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo$Scope.LIBRARY})
final class EmojiProcessor {
    private static final int ACTION_ADVANCE_BOTH = 1;
    private static final int ACTION_ADVANCE_END = 2;
    private static final int ACTION_FLUSH = 3;
    private static final int MAX_LOOK_AROUND_CHARACTER = 16;

    @Nullable
    private final int[] mEmojiAsDefaultStyleExceptions;

    @NonNull
    private EmojiCompat$GlyphChecker mGlyphChecker;

    @NonNull
    private final MetadataRepo mMetadataRepo;

    @NonNull
    private final EmojiCompat$SpanFactory mSpanFactory;
    private final boolean mUseEmojiAsDefaultStyle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiProcessor(@NonNull MetadataRepo metadataRepo, @NonNull EmojiCompat$SpanFactory emojiCompat$SpanFactory, @NonNull EmojiCompat$GlyphChecker emojiCompat$GlyphChecker, boolean z8, @Nullable int[] iArr, @NonNull Set<int[]> set) {
        this.mSpanFactory = emojiCompat$SpanFactory;
        this.mMetadataRepo = metadataRepo;
        this.mGlyphChecker = emojiCompat$GlyphChecker;
        this.mUseEmojiAsDefaultStyle = z8;
        this.mEmojiAsDefaultStyleExceptions = iArr;
        initExclusions(set);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean delete(@NonNull Editable editable, @NonNull KeyEvent keyEvent, boolean z8) {
        EmojiSpan[] emojiSpanArr;
        if (hasModifiers(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!hasInvalidSelection(selectionStart, selectionEnd) && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z8 && spanStart == selectionStart) || ((!z8 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean handleDeleteSurroundingText(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange(from = ULong.MIN_VALUE) int i9, @IntRange(from = ULong.MIN_VALUE) int i10, boolean z8) {
        int iMax;
        int iMin;
        if (editable != null && inputConnection != null && i9 >= 0 && i10 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (hasInvalidSelection(selectionStart, selectionEnd)) {
                return false;
            }
            if (z8) {
                iMax = EmojiProcessor$CodepointIndexFinder.findIndexBackward(editable, selectionStart, Math.max(i9, 0));
                iMin = EmojiProcessor$CodepointIndexFinder.findIndexForward(editable, selectionEnd, Math.max(i10, 0));
                if (iMax == -1 || iMin == -1) {
                    return false;
                }
            } else {
                iMax = Math.max(selectionStart - i9, 0);
                iMin = Math.min(selectionEnd + i10, editable.length());
            }
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(iMax, iMin, EmojiSpan.class);
            if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    iMax = Math.min(spanStart, iMax);
                    iMin = Math.max(spanEnd, iMin);
                }
                int iMax2 = Math.max(iMax, 0);
                int iMin2 = Math.min(iMin, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(iMax2, iMin2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean handleOnKeyDown(@NonNull Editable editable, int i9, @NonNull KeyEvent keyEvent) {
        boolean zDelete;
        if (i9 != 67) {
            zDelete = i9 != 112 ? false : delete(editable, keyEvent, true);
        } else {
            zDelete = delete(editable, keyEvent, false);
        }
        if (!zDelete) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean hasGlyph(CharSequence charSequence, int i9, int i10, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if (typefaceEmojiRasterizer.getHasGlyph() == 0) {
            typefaceEmojiRasterizer.setHasGlyph(this.mGlyphChecker.hasGlyph(charSequence, i9, i10, typefaceEmojiRasterizer.getSdkAdded()));
        }
        return typefaceEmojiRasterizer.getHasGlyph() == 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean hasInvalidSelection(int i9, int i10) {
        return i9 == -1 || i10 == -1 || i9 != i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean hasModifiers(@NonNull KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initExclusions(@NonNull Set<int[]> set) {
        if (set.isEmpty()) {
            return;
        }
        for (int[] iArr : set) {
            String str = new String(iArr, 0, iArr.length);
            process(str, 0, str.length(), 1, true, new EmojiProcessor$MarkExclusionCallback(str));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEmojiEnd(@NonNull CharSequence charSequence, @IntRange(from = ULong.MIN_VALUE) int i9) {
        if (i9 < 0 || i9 >= charSequence.length()) {
            return -1;
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i9, i9 + 1, EmojiSpan.class);
            if (emojiSpanArr.length > 0) {
                return spanned.getSpanEnd(emojiSpanArr[0]);
            }
        }
        return ((EmojiProcessor$EmojiProcessLookupCallback) process(charSequence, Math.max(0, i9 - 16), Math.min(charSequence.length(), i9 + 16), Integer.MAX_VALUE, true, new EmojiProcessor$EmojiProcessLookupCallback(i9))).end;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEmojiMatch(@NonNull CharSequence charSequence, int i9) {
        EmojiProcessor$ProcessorSm emojiProcessor$ProcessorSm = new EmojiProcessor$ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
        int length = charSequence.length();
        int iCharCount = 0;
        int i10 = 0;
        int i11 = 0;
        while (iCharCount < length) {
            int iCodePointAt = Character.codePointAt(charSequence, iCharCount);
            int iCheck = emojiProcessor$ProcessorSm.check(iCodePointAt);
            TypefaceEmojiRasterizer currentMetadata = emojiProcessor$ProcessorSm.getCurrentMetadata();
            if (iCheck == 1) {
                iCharCount += Character.charCount(iCodePointAt);
                i11 = 0;
            } else if (iCheck == 2) {
                iCharCount += Character.charCount(iCodePointAt);
            } else if (iCheck == 3) {
                currentMetadata = emojiProcessor$ProcessorSm.getFlushMetadata();
                if (currentMetadata.getCompatAdded() <= i9) {
                    i10++;
                }
            }
            if (currentMetadata != null && currentMetadata.getCompatAdded() <= i9) {
                i11++;
            }
        }
        if (i10 != 0) {
            return 2;
        }
        if (!emojiProcessor$ProcessorSm.isInFlushableState() || emojiProcessor$ProcessorSm.getCurrentMetadata().getCompatAdded() > i9) {
            return i11 == 0 ? 0 : 2;
        }
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEmojiStart(@NonNull CharSequence charSequence, @IntRange(from = ULong.MIN_VALUE) int i9) {
        if (i9 < 0 || i9 >= charSequence.length()) {
            return -1;
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i9, i9 + 1, EmojiSpan.class);
            if (emojiSpanArr.length > 0) {
                return spanned.getSpanStart(emojiSpanArr[0]);
            }
        }
        return ((EmojiProcessor$EmojiProcessLookupCallback) process(charSequence, Math.max(0, i9 - 16), Math.min(charSequence.length(), i9 + 16), Integer.MAX_VALUE, true, new EmojiProcessor$EmojiProcessLookupCallback(i9))).start;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:28:0x004b A[Catch: all -> 0x002a, TryCatch #2 {all -> 0x002a, blocks: (B:7:0x000e, B:10:0x0013, B:12:0x0017, B:14:0x0024, B:22:0x003c, B:24:0x0044, B:26:0x0047, B:28:0x004b, B:30:0x0057, B:31:0x005a, B:41:0x0078), top: B:70:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0057 A[Catch: all -> 0x002a, TryCatch #2 {all -> 0x002a, blocks: (B:7:0x000e, B:10:0x0013, B:12:0x0017, B:14:0x0024, B:22:0x003c, B:24:0x0044, B:26:0x0047, B:28:0x004b, B:30:0x0057, B:31:0x005a, B:41:0x0078), top: B:70:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:37:0x006f  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:73:? A[SYNTHETIC] */
    public CharSequence process(@NonNull CharSequence charSequence, @IntRange(from = ULong.MIN_VALUE) int i9, @IntRange(from = ULong.MIN_VALUE) int i10, @IntRange(from = ULong.MIN_VALUE) int i11, boolean z8) throws Throwable {
        UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable;
        CharSequence charSequence2;
        Throwable th;
        int i12;
        int i13;
        SpannableBuilder spannableBuilder;
        EmojiSpan[] emojiSpanArr;
        int i14;
        int spanStart;
        boolean z9 = charSequence instanceof SpannableBuilder;
        if (z9) {
            ((SpannableBuilder) charSequence).beginBatchEdit();
        }
        if (z9) {
            unprecomputeTextOnModificationSpannable = new UnprecomputeTextOnModificationSpannable((Spannable) charSequence);
            if (unprecomputeTextOnModificationSpannable != null) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    spanStart = unprecomputeTextOnModificationSpannable.getSpanStart(emojiSpan);
                    int spanEnd = unprecomputeTextOnModificationSpannable.getSpanEnd(emojiSpan);
                    if (spanStart != i10) {
                        unprecomputeTextOnModificationSpannable.removeSpan(emojiSpan);
                    }
                    i9 = Math.min(spanStart, i9);
                    i10 = Math.max(spanEnd, i10);
                }
            }
            i12 = i9;
            i13 = i10;
            if (i12 == i13) {
                charSequence2 = charSequence;
                if (!z9) {
                    return charSequence2;
                }
                spannableBuilder = (SpannableBuilder) charSequence2;
                spannableBuilder.endBatchEdit();
            } else {
                charSequence2 = charSequence;
                if (!z9) {
                    return charSequence2;
                }
                spannableBuilder = (SpannableBuilder) charSequence2;
                spannableBuilder.endBatchEdit();
            }
            return charSequence2;
        }
        try {
            if (charSequence instanceof Spannable) {
                try {
                    unprecomputeTextOnModificationSpannable = new UnprecomputeTextOnModificationSpannable((Spannable) charSequence);
                } catch (Throwable th2) {
                    th = th2;
                    charSequence2 = charSequence;
                    th = th;
                    if (!z9) {
                        throw th;
                    }
                    ((SpannableBuilder) charSequence2).endBatchEdit();
                    throw th;
                }
            } else {
                unprecomputeTextOnModificationSpannable = (!(charSequence instanceof Spanned) || ((Spanned) charSequence).nextSpanTransition(i9 + (-1), i10 + 1, EmojiSpan.class) > i10) ? null : new UnprecomputeTextOnModificationSpannable(charSequence);
            }
            if (unprecomputeTextOnModificationSpannable != null && (emojiSpanArr = (EmojiSpan[]) unprecomputeTextOnModificationSpannable.getSpans(i9, i10, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
                while (i14 < r5) {
                    spanStart = unprecomputeTextOnModificationSpannable.getSpanStart(emojiSpan);
                    int spanEnd2 = unprecomputeTextOnModificationSpannable.getSpanEnd(emojiSpan);
                    if (spanStart != i10) {
                        unprecomputeTextOnModificationSpannable.removeSpan(emojiSpan);
                    }
                    i9 = Math.min(spanStart, i9);
                    i10 = Math.max(spanEnd2, i10);
                }
            }
            i12 = i9;
            i13 = i10;
            if (i12 == i13 && i12 < charSequence.length()) {
                if (i11 != Integer.MAX_VALUE && unprecomputeTextOnModificationSpannable != null) {
                    i11 -= ((EmojiSpan[]) unprecomputeTextOnModificationSpannable.getSpans(0, unprecomputeTextOnModificationSpannable.length(), EmojiSpan.class)).length;
                }
                charSequence2 = charSequence;
                try {
                    UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable2 = (UnprecomputeTextOnModificationSpannable) process(charSequence2, i12, i13, i11, z8, new EmojiProcessor$EmojiProcessAddSpanCallback(unprecomputeTextOnModificationSpannable, this.mSpanFactory));
                    if (unprecomputeTextOnModificationSpannable2 == null) {
                        if (z9) {
                            spannableBuilder = (SpannableBuilder) charSequence2;
                        }
                        return charSequence2;
                    }
                    Spannable unwrappedSpannable = unprecomputeTextOnModificationSpannable2.getUnwrappedSpannable();
                    if (z9) {
                        ((SpannableBuilder) charSequence2).endBatchEdit();
                    }
                    return unwrappedSpannable;
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    if (!z9) {
                        throw th;
                    }
                    ((SpannableBuilder) charSequence2).endBatchEdit();
                    throw th;
                }
            }
            charSequence2 = charSequence;
            if (!z9) {
                return charSequence2;
            }
            spannableBuilder = (SpannableBuilder) charSequence2;
            spannableBuilder.endBatchEdit();
            return charSequence2;
        } catch (Throwable th4) {
            th = th4;
            charSequence2 = charSequence;
        }
        if (!z9) {
            throw th;
        }
        ((SpannableBuilder) charSequence2).endBatchEdit();
        throw th;
    }

    public int getEmojiMatch(@NonNull CharSequence charSequence) {
        return getEmojiMatch(charSequence, this.mMetadataRepo.getMetadataVersion());
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:5:0x0019
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private <T> T process(@androidx.annotation.NonNull java.lang.CharSequence r9, @androidx.annotation.IntRange(from = kotlin.ULong.MIN_VALUE) int r10, @androidx.annotation.IntRange(from = kotlin.ULong.MIN_VALUE) int r11, @androidx.annotation.IntRange(from = kotlin.ULong.MIN_VALUE) int r12, boolean r13, androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback<T> r14) {
        /*
            r8 = this;
            androidx.emoji2.text.EmojiProcessor$ProcessorSm r0 = new androidx.emoji2.text.EmojiProcessor$ProcessorSm
            androidx.emoji2.text.MetadataRepo r1 = r8.mMetadataRepo
            androidx.emoji2.text.MetadataRepo$Node r1 = r1.getRootNode()
            boolean r2 = r8.mUseEmojiAsDefaultStyle
            int[] r3 = r8.mEmojiAsDefaultStyleExceptions
            r0.<init>(r1, r2, r3)
            int r1 = java.lang.Character.codePointAt(r9, r10)
            r2 = 0
            r3 = 1
            r4 = r2
            r5 = r3
        L17:
            r2 = r1
        L18:
            r1 = r10
        L19:
            if (r10 >= r11) goto L61
            if (r4 >= r12) goto L61
            if (r5 == 0) goto L61
            int r6 = r0.check(r2)
            if (r6 == r3) goto L51
            r7 = 2
            if (r6 == r7) goto L43
            r7 = 3
            if (r6 == r7) goto L2c
            goto L19
        L2c:
            if (r13 != 0) goto L38
            androidx.emoji2.text.TypefaceEmojiRasterizer r6 = r0.getFlushMetadata()
            boolean r6 = r8.hasGlyph(r9, r1, r10, r6)
            if (r6 != 0) goto L18
        L38:
            androidx.emoji2.text.TypefaceEmojiRasterizer r5 = r0.getFlushMetadata()
            boolean r5 = r14.handleEmoji(r9, r1, r10, r5)
            int r4 = r4 + 1
            goto L18
        L43:
            int r6 = java.lang.Character.charCount(r2)
            int r6 = r6 + r10
            if (r6 >= r11) goto L4f
            int r10 = java.lang.Character.codePointAt(r9, r6)
            r2 = r10
        L4f:
            r10 = r6
            goto L19
        L51:
            int r10 = java.lang.Character.codePointAt(r9, r1)
            int r10 = java.lang.Character.charCount(r10)
            int r10 = r10 + r1
            if (r10 >= r11) goto L18
            int r1 = java.lang.Character.codePointAt(r9, r10)
            goto L17
        L61:
            boolean r11 = r0.isInFlushableState()
            if (r11 == 0) goto L7e
            if (r4 >= r12) goto L7e
            if (r5 == 0) goto L7e
            if (r13 != 0) goto L77
            androidx.emoji2.text.TypefaceEmojiRasterizer r11 = r0.getCurrentMetadata()
            boolean r11 = r8.hasGlyph(r9, r1, r10, r11)
            if (r11 != 0) goto L7e
        L77:
            androidx.emoji2.text.TypefaceEmojiRasterizer r11 = r0.getCurrentMetadata()
            r14.handleEmoji(r9, r1, r10, r11)
        L7e:
            java.lang.Object r9 = r14.getResult()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiProcessor.process(java.lang.CharSequence, int, int, int, boolean, androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback):java.lang.Object");
    }
}
