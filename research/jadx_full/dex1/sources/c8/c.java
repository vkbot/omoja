package c8;

import c3.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import m8.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f544b;
    public volatile boolean c;
    public Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9) {
        this.f544b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a(z7.a aVar) {
        switch (this.f544b) {
            case 0:
                if (!this.c) {
                    synchronized (this) {
                        try {
                            if (!this.c) {
                                LinkedList linkedList = (LinkedList) this.d;
                                if (linkedList == null) {
                                    linkedList = new LinkedList();
                                    this.d = linkedList;
                                }
                                linkedList.add(aVar);
                                return true;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                aVar.dispose();
                return false;
            default:
                if (!this.c) {
                    synchronized (this) {
                        try {
                            if (!this.c) {
                                i iVar = (i) this.d;
                                if (iVar == null) {
                                    iVar = new i();
                                    int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(15));
                                    iVar.f487a = iNumberOfLeadingZeros - 1;
                                    iVar.c = (int) (0.75f * iNumberOfLeadingZeros);
                                    iVar.d = new Object[iNumberOfLeadingZeros];
                                    this.d = iVar;
                                }
                                iVar.a(aVar);
                                return true;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                aVar.dispose();
                return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b(z7.a aVar) {
        Object obj;
        switch (this.f544b) {
            case 0:
                boolean z8 = false;
                if (!this.c) {
                    synchronized (this) {
                        try {
                            if (!this.c) {
                                LinkedList linkedList = (LinkedList) this.d;
                                if (linkedList != null && linkedList.remove(aVar)) {
                                    z8 = true;
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    break;
                }
                return z8;
            default:
                if (this.c) {
                    return false;
                }
                synchronized (this) {
                    try {
                        if (this.c) {
                            return false;
                        }
                        i iVar = (i) this.d;
                        if (iVar != null) {
                            Object[] objArr = (Object[]) iVar.d;
                            int i9 = iVar.f487a;
                            int iHashCode = aVar.hashCode() * (-1640531527);
                            int i10 = (iHashCode ^ (iHashCode >>> 16)) & i9;
                            Object obj2 = objArr[i10];
                            if (obj2 != null) {
                                if (obj2.equals(aVar)) {
                                    iVar.x(i10, i9, objArr);
                                } else {
                                    do {
                                        i10 = (i10 + 1) & i9;
                                        obj = objArr[i10];
                                        if (obj == null) {
                                        }
                                    } while (!obj.equals(aVar));
                                    iVar.x(i10, i9, objArr);
                                }
                                return true;
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c(z7.a aVar) {
        switch (this.f544b) {
            case 0:
                if (!b(aVar)) {
                    return false;
                }
                ((m) aVar).dispose();
                return true;
            default:
                if (!b(aVar)) {
                    return false;
                }
                aVar.dispose();
                return true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        switch (this.f544b) {
            case 0:
                if (this.c) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (!this.c) {
                            this.c = true;
                            LinkedList linkedList = (LinkedList) this.d;
                            ArrayList arrayList = null;
                            this.d = null;
                            if (linkedList != null) {
                                Iterator it = linkedList.iterator();
                                while (it.hasNext()) {
                                    try {
                                        ((z7.a) it.next()).dispose();
                                    } catch (Throwable th) {
                                        com.bumptech.glide.d.v(th);
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        arrayList.add(th);
                                    }
                                }
                                if (arrayList != null) {
                                    if (arrayList.size() != 1) {
                                        throw new a8.c(arrayList);
                                    }
                                    throw p8.d.c((Throwable) arrayList.get(0));
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
            default:
                if (this.c) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (!this.c) {
                            this.c = true;
                            i iVar = (i) this.d;
                            ArrayList arrayList2 = null;
                            this.d = null;
                            if (iVar != null) {
                                for (Object obj : (Object[]) iVar.d) {
                                    if (obj instanceof z7.a) {
                                        try {
                                            ((z7.a) obj).dispose();
                                        } catch (Throwable th3) {
                                            com.bumptech.glide.d.v(th3);
                                            if (arrayList2 == null) {
                                                arrayList2 = new ArrayList();
                                            }
                                            arrayList2.add(th3);
                                        }
                                    }
                                }
                                if (arrayList2 != null) {
                                    if (arrayList2.size() != 1) {
                                        throw new a8.c(arrayList2);
                                    }
                                    throw p8.d.c((Throwable) arrayList2.get(0));
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
                return;
        }
    }
}
