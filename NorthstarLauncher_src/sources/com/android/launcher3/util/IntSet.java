package com.android.launcher3.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class IntSet {
    final IntArray mArray = new IntArray();

    public IntArray getArray() {
        return this.mArray;
    }

    public void add(int value) {
        int iBinarySearch = Arrays.binarySearch(this.mArray.mValues, 0, this.mArray.mSize, value);
        if (iBinarySearch < 0) {
            this.mArray.add((-iBinarySearch) - 1, value);
        }
    }

    public boolean contains(int value) {
        return Arrays.binarySearch(this.mArray.mValues, 0, this.mArray.mSize, value) >= 0;
    }

    public boolean isEmpty() {
        return this.mArray.isEmpty();
    }

    public int size() {
        return this.mArray.size();
    }

    public void clear() {
        this.mArray.clear();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof IntSet) && ((IntSet) obj).mArray.equals(this.mArray);
    }

    public void copyFrom(IntSet other) {
        this.mArray.copyFrom(other.mArray);
    }

    public static IntSet wrap(IntArray array) {
        IntSet intSet = new IntSet();
        intSet.mArray.addAll(array);
        Arrays.sort(intSet.mArray.mValues, 0, intSet.mArray.mSize);
        return intSet;
    }
}
