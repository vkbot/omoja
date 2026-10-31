package org.apache.commons.net.nntp;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class NntpThreadContainer {
    NntpThreadContainer child;
    NntpThreadContainer next;
    NntpThreadContainer parent;
    Threadable threadable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean findChild(NntpThreadContainer nntpThreadContainer) {
        NntpThreadContainer nntpThreadContainer2 = this.child;
        if (nntpThreadContainer2 == null) {
            return false;
        }
        if (nntpThreadContainer2 == nntpThreadContainer) {
            return true;
        }
        return nntpThreadContainer2.findChild(nntpThreadContainer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void flush() {
        if (this.parent != null && this.threadable == null) {
            throw new IllegalStateException("no threadable in " + toString());
        }
        this.parent = null;
        Threadable threadable = this.threadable;
        if (threadable != null) {
            NntpThreadContainer nntpThreadContainer = this.child;
            threadable.setChild(nntpThreadContainer == null ? null : nntpThreadContainer.threadable);
        }
        NntpThreadContainer nntpThreadContainer2 = this.child;
        if (nntpThreadContainer2 != null) {
            nntpThreadContainer2.flush();
            this.child = null;
        }
        Threadable threadable2 = this.threadable;
        if (threadable2 != null) {
            NntpThreadContainer nntpThreadContainer3 = this.next;
            threadable2.setNext(nntpThreadContainer3 == null ? null : nntpThreadContainer3.threadable);
        }
        NntpThreadContainer nntpThreadContainer4 = this.next;
        if (nntpThreadContainer4 != null) {
            nntpThreadContainer4.flush();
            this.next = null;
        }
        this.threadable = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reverseChildren() {
        NntpThreadContainer nntpThreadContainer = this.child;
        if (nntpThreadContainer != null) {
            NntpThreadContainer nntpThreadContainer2 = nntpThreadContainer.next;
            NntpThreadContainer nntpThreadContainer3 = null;
            while (nntpThreadContainer != null) {
                nntpThreadContainer.next = nntpThreadContainer3;
                nntpThreadContainer3 = nntpThreadContainer;
                nntpThreadContainer = nntpThreadContainer2;
                nntpThreadContainer2 = nntpThreadContainer2 == null ? null : nntpThreadContainer2.next;
            }
            this.child = nntpThreadContainer3;
            while (nntpThreadContainer3 != null) {
                nntpThreadContainer3.reverseChildren();
                nntpThreadContainer3 = nntpThreadContainer3.next;
            }
        }
    }
}
