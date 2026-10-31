package com.sun.jna;

import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Structure$StructureSet extends AbstractCollection<Structure> implements Set<Structure> {
    private int count;
    Structure[] elements;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureCapacity(int i9) {
        Structure[] structureArr = this.elements;
        if (structureArr == null) {
            this.elements = new Structure[(i9 * 3) / 2];
        } else if (structureArr.length < i9) {
            Structure[] structureArr2 = new Structure[(i9 * 3) / 2];
            System.arraycopy(structureArr, 0, structureArr2, 0, structureArr.length);
            this.elements = structureArr2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int indexOf(Structure structure) {
        for (int i9 = 0; i9 < this.count; i9++) {
            Structure structure2 = this.elements[i9];
            if (structure == structure2 || (structure.getClass() == structure2.getClass() && structure.size() == structure2.size() && structure.getPointer().equals(structure2.getPointer()))) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean add(Structure structure) {
        if (contains(structure)) {
            return false;
        }
        ensureCapacity(this.count + 1);
        Structure[] structureArr = this.elements;
        int i9 = this.count;
        this.count = i9 + 1;
        structureArr[i9] = structure;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf((Structure) obj) != -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Structure[] getElements() {
        return this.elements;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Structure> iterator() {
        int i9 = this.count;
        Structure[] structureArr = new Structure[i9];
        if (i9 > 0) {
            System.arraycopy(this.elements, 0, structureArr, 0, i9);
        }
        return Arrays.asList(structureArr).iterator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf((Structure) obj);
        if (iIndexOf == -1) {
            return false;
        }
        int i9 = this.count - 1;
        this.count = i9;
        if (i9 >= 0) {
            Structure[] structureArr = this.elements;
            structureArr[iIndexOf] = structureArr[i9];
            structureArr[i9] = null;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.count;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return add((Structure) obj);
    }
}
