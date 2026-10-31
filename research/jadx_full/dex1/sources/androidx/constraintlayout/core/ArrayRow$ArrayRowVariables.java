package androidx.constraintlayout.core;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface ArrayRow$ArrayRowVariables {
    void add(SolverVariable solverVariable, float f8, boolean z8);

    void clear();

    boolean contains(SolverVariable solverVariable);

    void display();

    void divideByAmount(float f8);

    float get(SolverVariable solverVariable);

    int getCurrentSize();

    SolverVariable getVariable(int i9);

    float getVariableValue(int i9);

    int indexOf(SolverVariable solverVariable);

    void invert();

    void put(SolverVariable solverVariable, float f8);

    float remove(SolverVariable solverVariable, boolean z8);

    int sizeInBytes();

    float use(ArrayRow arrayRow, boolean z8);
}
