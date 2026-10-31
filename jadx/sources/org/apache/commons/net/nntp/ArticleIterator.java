package org.apache.commons.net.nntp;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class ArticleIterator implements Iterator<Article>, Iterable<Article> {
    private final Iterator<String> stringIterator;

    public ArticleIterator(Iterable<String> iterable) {
        this.stringIterator = iterable.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.stringIterator.hasNext();
    }

    @Override // java.util.Iterator
    public Article next() {
        return NNTPClient.parseArticleEntry(this.stringIterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this.stringIterator.remove();
    }

    @Override // java.lang.Iterable
    public Iterator<Article> iterator() {
        return this;
    }
}
