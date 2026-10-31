package androidx.recyclerview.widget;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class OpReorderer {
    final OpReorderer$Callback mCallback;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OpReorderer(OpReorderer$Callback opReorderer$Callback) {
        this.mCallback = opReorderer$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getLastMoveOutOfOrder(List<AdapterHelper$UpdateOp> list) {
        boolean z8 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).cmd != 8) {
                z8 = true;
            } else if (z8) {
                return size;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void swapMoveAdd(List<AdapterHelper$UpdateOp> list, int i9, AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i10, AdapterHelper$UpdateOp adapterHelper$UpdateOp2) {
        int i11 = adapterHelper$UpdateOp.itemCount;
        int i12 = adapterHelper$UpdateOp2.positionStart;
        int i13 = i11 < i12 ? -1 : 0;
        int i14 = adapterHelper$UpdateOp.positionStart;
        if (i14 < i12) {
            i13++;
        }
        if (i12 <= i14) {
            adapterHelper$UpdateOp.positionStart = i14 + adapterHelper$UpdateOp2.itemCount;
        }
        int i15 = adapterHelper$UpdateOp2.positionStart;
        if (i15 <= i11) {
            adapterHelper$UpdateOp.itemCount = i11 + adapterHelper$UpdateOp2.itemCount;
        }
        adapterHelper$UpdateOp2.positionStart = i15 + i13;
        list.set(i9, adapterHelper$UpdateOp2);
        list.set(i10, adapterHelper$UpdateOp);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void swapMoveOp(List<AdapterHelper$UpdateOp> list, int i9, int i10) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOp = list.get(i9);
        AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = list.get(i10);
        int i11 = adapterHelper$UpdateOp2.cmd;
        if (i11 == 1) {
            swapMoveAdd(list, i9, adapterHelper$UpdateOp, i10, adapterHelper$UpdateOp2);
        } else if (i11 == 2) {
            swapMoveRemove(list, i9, adapterHelper$UpdateOp, i10, adapterHelper$UpdateOp2);
        } else {
            if (i11 != 4) {
                return;
            }
            swapMoveUpdate(list, i9, adapterHelper$UpdateOp, i10, adapterHelper$UpdateOp2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reorderOps(List<AdapterHelper$UpdateOp> list) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(list);
            if (lastMoveOutOfOrder == -1) {
                return;
            } else {
                swapMoveOp(list, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void swapMoveRemove(List<AdapterHelper$UpdateOp> list, int i9, AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i10, AdapterHelper$UpdateOp adapterHelper$UpdateOp2) {
        boolean z8;
        int i11 = adapterHelper$UpdateOp.positionStart;
        int i12 = adapterHelper$UpdateOp.itemCount;
        boolean z9 = false;
        if (i11 < i12) {
            if (adapterHelper$UpdateOp2.positionStart == i11 && adapterHelper$UpdateOp2.itemCount == i12 - i11) {
                z8 = false;
                z9 = true;
            } else {
                z8 = false;
            }
        } else if (adapterHelper$UpdateOp2.positionStart == i12 + 1 && adapterHelper$UpdateOp2.itemCount == i11 - i12) {
            z8 = true;
            z9 = true;
        } else {
            z8 = true;
        }
        int i13 = adapterHelper$UpdateOp2.positionStart;
        if (i12 < i13) {
            adapterHelper$UpdateOp2.positionStart = i13 - 1;
        } else {
            int i14 = adapterHelper$UpdateOp2.itemCount;
            if (i12 < i13 + i14) {
                adapterHelper$UpdateOp2.itemCount = i14 - 1;
                adapterHelper$UpdateOp.cmd = 2;
                adapterHelper$UpdateOp.itemCount = 1;
                if (adapterHelper$UpdateOp2.itemCount == 0) {
                    list.remove(i10);
                    this.mCallback.recycleUpdateOp(adapterHelper$UpdateOp2);
                    return;
                }
                return;
            }
        }
        int i15 = adapterHelper$UpdateOp.positionStart;
        int i16 = adapterHelper$UpdateOp2.positionStart;
        AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp = null;
        if (i15 <= i16) {
            adapterHelper$UpdateOp2.positionStart = i16 + 1;
        } else {
            int i17 = adapterHelper$UpdateOp2.itemCount;
            if (i15 < i16 + i17) {
                adapterHelper$UpdateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(2, i15 + 1, (i16 + i17) - i15, null);
                adapterHelper$UpdateOp2.itemCount = adapterHelper$UpdateOp.positionStart - adapterHelper$UpdateOp2.positionStart;
            }
        }
        if (z9) {
            list.set(i9, adapterHelper$UpdateOp2);
            list.remove(i10);
            this.mCallback.recycleUpdateOp(adapterHelper$UpdateOp);
            return;
        }
        if (z8) {
            if (adapterHelper$UpdateOpObtainUpdateOp != null) {
                int i18 = adapterHelper$UpdateOp.positionStart;
                if (i18 > adapterHelper$UpdateOpObtainUpdateOp.positionStart) {
                    adapterHelper$UpdateOp.positionStart = i18 - adapterHelper$UpdateOpObtainUpdateOp.itemCount;
                }
                int i19 = adapterHelper$UpdateOp.itemCount;
                if (i19 > adapterHelper$UpdateOpObtainUpdateOp.positionStart) {
                    adapterHelper$UpdateOp.itemCount = i19 - adapterHelper$UpdateOpObtainUpdateOp.itemCount;
                }
            }
            int i20 = adapterHelper$UpdateOp.positionStart;
            if (i20 > adapterHelper$UpdateOp2.positionStart) {
                adapterHelper$UpdateOp.positionStart = i20 - adapterHelper$UpdateOp2.itemCount;
            }
            int i21 = adapterHelper$UpdateOp.itemCount;
            if (i21 > adapterHelper$UpdateOp2.positionStart) {
                adapterHelper$UpdateOp.itemCount = i21 - adapterHelper$UpdateOp2.itemCount;
            }
        } else {
            if (adapterHelper$UpdateOpObtainUpdateOp != null) {
                int i22 = adapterHelper$UpdateOp.positionStart;
                if (i22 >= adapterHelper$UpdateOpObtainUpdateOp.positionStart) {
                    adapterHelper$UpdateOp.positionStart = i22 - adapterHelper$UpdateOpObtainUpdateOp.itemCount;
                }
                int i23 = adapterHelper$UpdateOp.itemCount;
                if (i23 >= adapterHelper$UpdateOpObtainUpdateOp.positionStart) {
                    adapterHelper$UpdateOp.itemCount = i23 - adapterHelper$UpdateOpObtainUpdateOp.itemCount;
                }
            }
            int i24 = adapterHelper$UpdateOp.positionStart;
            if (i24 >= adapterHelper$UpdateOp2.positionStart) {
                adapterHelper$UpdateOp.positionStart = i24 - adapterHelper$UpdateOp2.itemCount;
            }
            int i25 = adapterHelper$UpdateOp.itemCount;
            if (i25 >= adapterHelper$UpdateOp2.positionStart) {
                adapterHelper$UpdateOp.itemCount = i25 - adapterHelper$UpdateOp2.itemCount;
            }
        }
        list.set(i9, adapterHelper$UpdateOp2);
        if (adapterHelper$UpdateOp.positionStart != adapterHelper$UpdateOp.itemCount) {
            list.set(i10, adapterHelper$UpdateOp);
        } else {
            list.remove(i10);
        }
        if (adapterHelper$UpdateOpObtainUpdateOp != null) {
            list.add(i9, adapterHelper$UpdateOpObtainUpdateOp);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    public void swapMoveUpdate(List<AdapterHelper$UpdateOp> list, int i9, AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i10, AdapterHelper$UpdateOp adapterHelper$UpdateOp2) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp;
        int i11;
        int i12;
        int i13;
        int i14 = adapterHelper$UpdateOp.itemCount;
        int i15 = adapterHelper$UpdateOp2.positionStart;
        AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp2 = null;
        if (i14 >= i15) {
            int i16 = adapterHelper$UpdateOp2.itemCount;
            if (i14 < i15 + i16) {
                adapterHelper$UpdateOp2.itemCount = i16 - 1;
                adapterHelper$UpdateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(4, adapterHelper$UpdateOp.positionStart, 1, adapterHelper$UpdateOp2.payload);
            }
            i11 = adapterHelper$UpdateOp.positionStart;
            i12 = adapterHelper$UpdateOp2.positionStart;
            if (i11 <= i12) {
                adapterHelper$UpdateOp2.positionStart = i12 + 1;
            } else {
                i13 = adapterHelper$UpdateOp2.itemCount;
                if (i11 < i12 + i13) {
                    int i17 = (i12 + i13) - i11;
                    adapterHelper$UpdateOpObtainUpdateOp2 = this.mCallback.obtainUpdateOp(4, i11 + 1, i17, adapterHelper$UpdateOp2.payload);
                    adapterHelper$UpdateOp2.itemCount -= i17;
                }
            }
            list.set(i10, adapterHelper$UpdateOp);
            if (adapterHelper$UpdateOp2.itemCount > 0) {
                list.set(i9, adapterHelper$UpdateOp2);
            } else {
                list.remove(i9);
                this.mCallback.recycleUpdateOp(adapterHelper$UpdateOp2);
            }
            if (adapterHelper$UpdateOpObtainUpdateOp != null) {
                list.add(i9, adapterHelper$UpdateOpObtainUpdateOp);
            }
            if (adapterHelper$UpdateOpObtainUpdateOp2 != null) {
                list.add(i9, adapterHelper$UpdateOpObtainUpdateOp2);
            }
        }
        adapterHelper$UpdateOp2.positionStart = i15 - 1;
        adapterHelper$UpdateOpObtainUpdateOp = null;
        i11 = adapterHelper$UpdateOp.positionStart;
        i12 = adapterHelper$UpdateOp2.positionStart;
        if (i11 <= i12) {
            adapterHelper$UpdateOp2.positionStart = i12 + 1;
        } else {
            i13 = adapterHelper$UpdateOp2.itemCount;
            if (i11 < i12 + i13) {
                int i18 = (i12 + i13) - i11;
                adapterHelper$UpdateOpObtainUpdateOp2 = this.mCallback.obtainUpdateOp(4, i11 + 1, i18, adapterHelper$UpdateOp2.payload);
                adapterHelper$UpdateOp2.itemCount -= i18;
            }
        }
        list.set(i10, adapterHelper$UpdateOp);
        if (adapterHelper$UpdateOp2.itemCount > 0) {
            list.set(i9, adapterHelper$UpdateOp2);
        } else {
            list.remove(i9);
            this.mCallback.recycleUpdateOp(adapterHelper$UpdateOp2);
        }
        if (adapterHelper$UpdateOpObtainUpdateOp != null) {
            list.add(i9, adapterHelper$UpdateOpObtainUpdateOp);
        }
        if (adapterHelper$UpdateOpObtainUpdateOp2 != null) {
            list.add(i9, adapterHelper$UpdateOpObtainUpdateOp2);
        }
    }
}
