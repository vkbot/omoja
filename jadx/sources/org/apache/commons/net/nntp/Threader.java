package org.apache.commons.net.nntp;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class Threader {
    private void buildContainer(Threadable threadable, HashMap<String, NntpThreadContainer> map) {
        String strMessageThreadId = threadable.messageThreadId();
        NntpThreadContainer nntpThreadContainer = map.get(strMessageThreadId);
        if (nntpThreadContainer != null) {
            if (nntpThreadContainer.threadable != null) {
                strMessageThreadId = AbstractC0074a.m155f(1, "<Bogus-id:", ">");
                nntpThreadContainer = null;
            } else {
                nntpThreadContainer.threadable = threadable;
            }
        }
        if (nntpThreadContainer == null) {
            nntpThreadContainer = new NntpThreadContainer();
            nntpThreadContainer.threadable = threadable;
            map.put(strMessageThreadId, nntpThreadContainer);
        }
        String[] strArrMessageThreadReferences = threadable.messageThreadReferences();
        int length = strArrMessageThreadReferences.length;
        int i10 = 0;
        NntpThreadContainer nntpThreadContainer2 = null;
        while (i10 < length) {
            String str = strArrMessageThreadReferences[i10];
            NntpThreadContainer nntpThreadContainer3 = map.get(str);
            if (nntpThreadContainer3 == null) {
                nntpThreadContainer3 = new NntpThreadContainer();
                map.put(str, nntpThreadContainer3);
            }
            if (nntpThreadContainer2 != null && nntpThreadContainer3.parent == null && nntpThreadContainer2 != nntpThreadContainer3 && !nntpThreadContainer3.findChild(nntpThreadContainer2)) {
                nntpThreadContainer3.parent = nntpThreadContainer2;
                nntpThreadContainer3.next = nntpThreadContainer2.child;
                nntpThreadContainer2.child = nntpThreadContainer3;
            }
            i10++;
            nntpThreadContainer2 = nntpThreadContainer3;
        }
        if (nntpThreadContainer2 != null && (nntpThreadContainer2 == nntpThreadContainer || nntpThreadContainer.findChild(nntpThreadContainer2))) {
            nntpThreadContainer2 = null;
        }
        NntpThreadContainer nntpThreadContainer4 = nntpThreadContainer.parent;
        if (nntpThreadContainer4 != null) {
            NntpThreadContainer nntpThreadContainer5 = nntpThreadContainer4.child;
            NntpThreadContainer nntpThreadContainer6 = null;
            while (nntpThreadContainer5 != null && nntpThreadContainer5 != nntpThreadContainer) {
                nntpThreadContainer6 = nntpThreadContainer5;
                nntpThreadContainer5 = nntpThreadContainer5.next;
            }
            if (nntpThreadContainer5 == null) {
                StringBuilder sb = new StringBuilder("Didnt find ");
                sb.append(nntpThreadContainer);
                C0075b.m191p(sb, " in parent ", nntpThreadContainer.parent);
                return;
            } else {
                if (nntpThreadContainer6 == null) {
                    nntpThreadContainer.parent.child = nntpThreadContainer.next;
                } else {
                    nntpThreadContainer6.next = nntpThreadContainer.next;
                }
                nntpThreadContainer.next = null;
                nntpThreadContainer.parent = null;
            }
        }
        if (nntpThreadContainer2 != null) {
            nntpThreadContainer.parent = nntpThreadContainer2;
            nntpThreadContainer.next = nntpThreadContainer2.child;
            nntpThreadContainer2.child = nntpThreadContainer;
        }
    }

    private NntpThreadContainer findRootSet(HashMap<String, NntpThreadContainer> map) {
        NntpThreadContainer nntpThreadContainer = new NntpThreadContainer();
        Iterator<Map.Entry<String, NntpThreadContainer>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            NntpThreadContainer value = it.next().getValue();
            if (value.parent == null) {
                if (value.next != null) {
                    throw new IllegalStateException("c.next is " + value.next.toString());
                }
                value.next = nntpThreadContainer.child;
                nntpThreadContainer.child = value;
            }
        }
        return nntpThreadContainer;
    }

    private void gatherSubjects(NntpThreadContainer nntpThreadContainer) {
        NntpThreadContainer nntpThreadContainer2;
        Threadable threadable;
        NntpThreadContainer nntpThreadContainer3;
        Threadable threadable2;
        Threadable threadable3;
        int i10 = 0;
        int i11 = 0;
        for (NntpThreadContainer nntpThreadContainer4 = nntpThreadContainer.child; nntpThreadContainer4 != null; nntpThreadContainer4 = nntpThreadContainer4.next) {
            i11++;
        }
        HashMap map = new HashMap((int) (((double) i11) * 1.2d), 0.9f);
        for (NntpThreadContainer nntpThreadContainer5 = nntpThreadContainer.child; nntpThreadContainer5 != null; nntpThreadContainer5 = nntpThreadContainer5.next) {
            Threadable threadable4 = nntpThreadContainer5.threadable;
            if (threadable4 == null) {
                threadable4 = nntpThreadContainer5.child.threadable;
            }
            String strSimplifiedSubject = threadable4.simplifiedSubject();
            if (strSimplifiedSubject != null && !strSimplifiedSubject.isEmpty() && ((nntpThreadContainer3 = (NntpThreadContainer) map.get(strSimplifiedSubject)) == null || ((nntpThreadContainer5.threadable == null && nntpThreadContainer3.threadable != null) || ((threadable2 = nntpThreadContainer3.threadable) != null && threadable2.subjectIsReply() && (threadable3 = nntpThreadContainer5.threadable) != null && !threadable3.subjectIsReply())))) {
                map.put(strSimplifiedSubject, nntpThreadContainer5);
                i10++;
            }
        }
        if (i10 == 0) {
            return;
        }
        NntpThreadContainer nntpThreadContainer6 = nntpThreadContainer.child;
        NntpThreadContainer nntpThreadContainer7 = nntpThreadContainer6.next;
        NntpThreadContainer nntpThreadContainer8 = null;
        while (nntpThreadContainer6 != null) {
            Threadable threadable5 = nntpThreadContainer6.threadable;
            if (threadable5 == null) {
                threadable5 = nntpThreadContainer6.child.threadable;
            }
            String strSimplifiedSubject2 = threadable5.simplifiedSubject();
            if (strSimplifiedSubject2 == null || strSimplifiedSubject2.isEmpty() || (nntpThreadContainer2 = (NntpThreadContainer) map.get(strSimplifiedSubject2)) == nntpThreadContainer6) {
                nntpThreadContainer8 = nntpThreadContainer6;
            } else {
                NntpThreadContainer nntpThreadContainer9 = nntpThreadContainer6.next;
                if (nntpThreadContainer8 == null) {
                    nntpThreadContainer.child = nntpThreadContainer9;
                } else {
                    nntpThreadContainer8.next = nntpThreadContainer9;
                }
                nntpThreadContainer6.next = null;
                Threadable threadable6 = nntpThreadContainer2.threadable;
                if (threadable6 == null && nntpThreadContainer6.threadable == null) {
                    NntpThreadContainer nntpThreadContainer10 = nntpThreadContainer2.child;
                    while (nntpThreadContainer10 != null) {
                        NntpThreadContainer nntpThreadContainer11 = nntpThreadContainer10.next;
                        if (nntpThreadContainer11 == null) {
                            break;
                        } else {
                            nntpThreadContainer10 = nntpThreadContainer11;
                        }
                    }
                    if (nntpThreadContainer10 != null) {
                        nntpThreadContainer10.next = nntpThreadContainer6.child;
                    }
                    for (NntpThreadContainer nntpThreadContainer12 = nntpThreadContainer6.child; nntpThreadContainer12 != null; nntpThreadContainer12 = nntpThreadContainer12.next) {
                        nntpThreadContainer12.parent = nntpThreadContainer2;
                    }
                    nntpThreadContainer6.child = null;
                } else if (threadable6 == null || !((threadable = nntpThreadContainer6.threadable) == null || !threadable.subjectIsReply() || nntpThreadContainer2.threadable.subjectIsReply())) {
                    nntpThreadContainer6.parent = nntpThreadContainer2;
                    nntpThreadContainer6.next = nntpThreadContainer2.child;
                    nntpThreadContainer2.child = nntpThreadContainer6;
                } else {
                    NntpThreadContainer nntpThreadContainer13 = new NntpThreadContainer();
                    nntpThreadContainer13.threadable = nntpThreadContainer2.threadable;
                    NntpThreadContainer nntpThreadContainer14 = nntpThreadContainer2.child;
                    nntpThreadContainer13.child = nntpThreadContainer14;
                    while (nntpThreadContainer14 != null) {
                        nntpThreadContainer14.parent = nntpThreadContainer13;
                        nntpThreadContainer14 = nntpThreadContainer14.next;
                    }
                    nntpThreadContainer2.threadable = null;
                    nntpThreadContainer6.parent = nntpThreadContainer2;
                    nntpThreadContainer13.parent = nntpThreadContainer2;
                    nntpThreadContainer2.child = nntpThreadContainer6;
                    nntpThreadContainer6.next = nntpThreadContainer13;
                }
            }
            NntpThreadContainer nntpThreadContainer15 = nntpThreadContainer7;
            nntpThreadContainer7 = nntpThreadContainer7 == null ? null : nntpThreadContainer7.next;
            nntpThreadContainer6 = nntpThreadContainer15;
        }
        map.clear();
    }

    private void pruneEmptyContainers(NntpThreadContainer nntpThreadContainer) {
        NntpThreadContainer nntpThreadContainer2;
        NntpThreadContainer nntpThreadContainer3 = nntpThreadContainer.child;
        NntpThreadContainer nntpThreadContainer4 = nntpThreadContainer3.next;
        NntpThreadContainer nntpThreadContainer5 = null;
        while (nntpThreadContainer3 != null) {
            Threadable threadable = nntpThreadContainer3.threadable;
            if (threadable == null && nntpThreadContainer3.child == null) {
                NntpThreadContainer nntpThreadContainer6 = nntpThreadContainer3.next;
                if (nntpThreadContainer5 == null) {
                    nntpThreadContainer.child = nntpThreadContainer6;
                } else {
                    nntpThreadContainer5.next = nntpThreadContainer6;
                }
            } else if (threadable != null || (nntpThreadContainer3.parent == null && nntpThreadContainer3.child.next != null)) {
                if (nntpThreadContainer3.child != null) {
                    pruneEmptyContainers(nntpThreadContainer3);
                }
                nntpThreadContainer5 = nntpThreadContainer3;
            } else {
                nntpThreadContainer4 = nntpThreadContainer3.child;
                if (nntpThreadContainer5 == null) {
                    nntpThreadContainer.child = nntpThreadContainer4;
                } else {
                    nntpThreadContainer5.next = nntpThreadContainer4;
                }
                NntpThreadContainer nntpThreadContainer7 = nntpThreadContainer4;
                while (true) {
                    NntpThreadContainer nntpThreadContainer8 = nntpThreadContainer7.next;
                    nntpThreadContainer2 = nntpThreadContainer3.parent;
                    if (nntpThreadContainer8 == null) {
                        break;
                    }
                    nntpThreadContainer7.parent = nntpThreadContainer2;
                    nntpThreadContainer7 = nntpThreadContainer8;
                }
                nntpThreadContainer7.parent = nntpThreadContainer2;
                nntpThreadContainer7.next = nntpThreadContainer3.next;
            }
            nntpThreadContainer3 = nntpThreadContainer4;
            nntpThreadContainer4 = nntpThreadContainer3 == null ? null : nntpThreadContainer3.next;
        }
    }

    public Threadable thread(Iterable<? extends Threadable> iterable) {
        if (iterable == null) {
            return null;
        }
        HashMap<String, NntpThreadContainer> map = new HashMap<>();
        for (Threadable threadable : iterable) {
            if (!threadable.isDummy()) {
                buildContainer(threadable, map);
            }
        }
        if (map.isEmpty()) {
            return null;
        }
        NntpThreadContainer nntpThreadContainerFindRootSet = findRootSet(map);
        map.clear();
        pruneEmptyContainers(nntpThreadContainerFindRootSet);
        nntpThreadContainerFindRootSet.reverseChildren();
        gatherSubjects(nntpThreadContainerFindRootSet);
        if (nntpThreadContainerFindRootSet.next != null) {
            C0075b.m192q(nntpThreadContainerFindRootSet, "root node has a next:");
            return null;
        }
        for (NntpThreadContainer nntpThreadContainer = nntpThreadContainerFindRootSet.child; nntpThreadContainer != null; nntpThreadContainer = nntpThreadContainer.next) {
            if (nntpThreadContainer.threadable == null) {
                nntpThreadContainer.threadable = nntpThreadContainer.child.threadable.makeDummy();
            }
        }
        NntpThreadContainer nntpThreadContainer2 = nntpThreadContainerFindRootSet.child;
        Threadable threadable2 = nntpThreadContainer2 != null ? nntpThreadContainer2.threadable : null;
        nntpThreadContainerFindRootSet.flush();
        return threadable2;
    }

    public Threadable thread(List<? extends Threadable> list) {
        return thread((Iterable<? extends Threadable>) list);
    }

    @Deprecated
    public Threadable thread(Threadable[] threadableArr) {
        if (threadableArr == null) {
            return null;
        }
        return thread(Arrays.asList(threadableArr));
    }
}
