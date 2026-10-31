package com.google.protobuf;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class y extends a {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, y> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize;
    protected j1 unknownFields;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y() {
        this.memoizedHashCode = 0;
        this.memoizedSerializedSize = -1;
        this.unknownFields = j1.f1521f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static y f(Class cls) {
        y yVar = defaultInstanceMap.get(cls);
        if (yVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                yVar = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (yVar != null) {
            return yVar;
        }
        y yVar2 = (y) ((y) s1.b(cls)).e(6);
        if (yVar2 == null) {
            throw new IllegalStateException();
        }
        defaultInstanceMap.put(cls, yVar2);
        return yVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object g(Method method, y yVar, Object... objArr) {
        try {
            return method.invoke(yVar, objArr);
        } catch (IllegalAccessException e) {
            ai.onnxruntime.b.o("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e6) {
            Throwable cause = e6.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            ai.onnxruntime.b.o("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean h(y yVar, boolean z8) {
        byte bByteValue = ((Byte) yVar.e(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        y0 y0Var = y0.c;
        y0Var.getClass();
        boolean zD = y0Var.a(yVar.getClass()).d(yVar);
        if (z8) {
            yVar.e(2);
        }
        return zD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void l(Class cls, y yVar) {
        yVar.j();
        defaultInstanceMap.put(cls, yVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.a
    public final int a(b1 b1Var) {
        int iF;
        int iF2;
        if (i()) {
            if (b1Var == null) {
                y0 y0Var = y0.c;
                y0Var.getClass();
                iF2 = y0Var.a(getClass()).f(this);
            } else {
                iF2 = b1Var.f(this);
            }
            if (iF2 >= 0) {
                return iF2;
            }
            j1.i.l(ai.onnxruntime.a.e(iF2, "serialized size must be non-negative, was "));
            return 0;
        }
        int i9 = this.memoizedSerializedSize;
        if ((i9 & Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i9 & Integer.MAX_VALUE;
        }
        if (b1Var == null) {
            y0 y0Var2 = y0.c;
            y0Var2.getClass();
            iF = y0Var2.a(getClass()).f(this);
        } else {
            iF = b1Var.f(this);
        }
        m(iF);
        return iF;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.a
    public final void c(n nVar) {
        y0 y0Var = y0.c;
        y0Var.getClass();
        b1 b1VarA = y0Var.a(getClass());
        l0 l0Var = nVar.f1535a;
        if (l0Var == null) {
            l0Var = new l0(nVar);
        }
        b1VarA.a(this, l0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final w d() {
        return (w) e(5);
    }

    public abstract Object e(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        y0 y0Var = y0.c;
        y0Var.getClass();
        return y0Var.a(getClass()).g(this, (y) obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        if (i()) {
            y0 y0Var = y0.c;
            y0Var.getClass();
            return y0Var.a(getClass()).e(this);
        }
        if (this.memoizedHashCode == 0) {
            y0 y0Var2 = y0.c;
            y0Var2.getClass();
            this.memoizedHashCode = y0Var2.a(getClass()).e(this);
        }
        return this.memoizedHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean i() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final y k() {
        return (y) e(4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(int i9) {
        if (i9 < 0) {
            j1.i.l(ai.onnxruntime.a.e(i9, "serialized size must be non-negative, was "));
        } else {
            this.memoizedSerializedSize = (i9 & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        String string = super.toString();
        char[] cArr = s0.f1549a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        s0.c(this, sb, 0);
        return sb.toString();
    }
}
