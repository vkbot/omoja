package org.apache.commons.net.nntp;

import org.apache.commons.net.nntp.Threadable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface Threadable<T extends Threadable<T>> {
    boolean isDummy();

    T makeDummy();

    String messageThreadId();

    String[] messageThreadReferences();

    void setChild(T t);

    void setNext(T t);

    String simplifiedSubject();

    boolean subjectIsReply();
}
